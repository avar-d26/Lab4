----------------------------------------------------------------------------
--  Lab 3: Streaming Audio DSP
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: Brandon Zhao
----------------------------------------------------------------------------
--	Testbench Description: I2S ADC -> FIFO0 (loopback) + FIFO1 -> FFT -> 8-bit FIFO2
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity tb_fft_processing is
end tb_fft_processing;

architecture testbench of tb_fft_processing is



component axis_fifo is
  generic (
    DATA_WIDTH  : integer := AXI_DATA_WIDTH;
    FIFO_DEPTH  : integer := AXI_FIFO_DEPTH
  );
  port (
    s00_axis_aclk     : in std_logic;
    s00_axis_aresetn  : in std_logic;
    s00_axis_tready   : out std_logic;
    s00_axis_tdata    : in std_logic_vector(DATA_WIDTH-1 downto 0);
    s00_axis_tstrb    : in std_logic_vector((DATA_WIDTH/8)-1 downto 0);
    s00_axis_tlast    : in std_logic;
    s00_axis_tvalid   : in std_logic;
    m00_axis_aclk     : in std_logic;
    m00_axis_aresetn  : in std_logic;
    m00_axis_tvalid   : out std_logic;
    m00_axis_tdata    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m00_axis_tstrb    : out std_logic_vector((DATA_WIDTH/8)-1 downto 0);
    m00_axis_tlast    : out std_logic;
    m00_axis_tready   : in std_logic
  );
end component;

component small_axis_fifo is
	generic (
		DATA_WIDTH	: integer	:= 8;
		FIFO_DEPTH	: integer	:= 4096
	);
	port (
	
		-- Ports of Axi Responder Bus Interface S00_AXIS -- Receiver
		s00_axis_aclk     :  in std_logic; --
		s00_axis_aresetn  :  in std_logic; --
		s00_axis_tready   : out std_logic; --
		s00_axis_tdata	  :  in std_logic_vector(DATA_WIDTH-1 downto 0); -- our data
		s00_axis_tstrb    :  in std_logic; -- dont care
		s00_axis_tlast    :  in std_logic;
		s00_axis_tvalid   :  in std_logic;

		-- Ports of Axi Controller Bus Interface M00_AXIS -- Transmitter
		m00_axis_aclk     :  in std_logic; -- dont care
		m00_axis_aresetn  :  in std_logic; -- dont care
		m00_axis_tvalid   : out std_logic; 
		m00_axis_tdata    : out std_logic_vector(DATA_WIDTH-1 downto 0); -- our data
		m00_axis_tstrb    : out std_logic; -- dont care
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   :  in std_logic
	);
end component;

component axis_i2s_wrapper is
	generic (
		-- Parameters of Axi Stream Bus Interface S00_AXIS, M00_AXIS
		C_AXI_STREAM_DATA_WIDTH	: integer	:= 32;
		AC_DATA_WIDTH : integer := 24;
	    ----------------------------------------------------------------------------
		-- Users to add parameters here
		DDS_DATA_WIDTH : integer := 24;         -- DDS data width
        DDS_PHASE_DATA_WIDTH : integer := 12;   -- DDS phase increment data width
        ----------------------------------------------------------------------------

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4);
    Port ( 
        ----------------------------------------------------------------------------
        -- Fabric clock from Zynq PS
		sysclk_i : in std_logic;	
		
        ----------------------------------------------------------------------------
        -- I2S audio codec ports		
		-- User controls
		--ac_mute_en_i : in STD_LOGIC; -- FOR TASK 2
		--audio_input_sel_i : in STD_LOGIC;
		
		-- Audio Codec I2S controls
        ac_bclk_o : out STD_LOGIC;
        ac_mclk_o : out STD_LOGIC;
        ac_mute_n_o : out STD_LOGIC;	-- Active Low
        
        -- Audio Codec DAC (audio out)
        ac_dac_data_o : out STD_LOGIC;
        ac_dac_lrclk_o : out STD_LOGIC;
        
        -- Audio Codec ADC (audio in)
        ac_adc_data_i : in STD_LOGIC;
        ac_adc_lrclk_o : out STD_LOGIC;
        lrclk_unbuff_o : out STD_LOGIC;

        ----------------------------------------------------------------------------
        -- AXI Stream Interface (Receiver/Responder)
    	-- Ports of Axi Responder Bus Interface S00_AXIS
		s00_axis_aclk     : in std_logic;
		s00_axis_aresetn  : in std_logic;
		s00_axis_tready   : out std_logic;
		s00_axis_tdata	  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast    : in std_logic;
		s00_axis_tvalid   : in std_logic;
		
        -- AXI Stream Interface (Tranmitter/Controller)
		-- Ports of Axi Controller Bus Interface M00_AXIS
		m00_axis_aclk     : in std_logic;
		m00_axis_aresetn  : in std_logic;
		m00_axis_tvalid   : out std_logic;
		m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   : in std_logic;
		

		m01_axis_tvalid   : out std_logic;
		m01_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		m01_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		m01_axis_tlast    : out std_logic;
		m01_axis_tready   : in std_logic
		
		);
end component;

component FFT_wrapper is 
	generic (
		INPUT_DATA_WIDTH	: integer	:= 32;
		OUTPUT_DATA_WIDTH   : integer   := 8
	);
    PORT (
    s00_axis_aclk     :  in std_logic; --
    s00_axis_aresetn  :  in std_logic; --
    s00_axis_tready   : out std_logic; --
    s00_axis_tdata	  :  in std_logic_vector(INPUT_DATA_WIDTH-1 downto 0); -- our data
    s00_axis_tstrb    :  in std_logic_vector((INPUT_DATA_WIDTH/8)-1 downto 0); -- dont care
    s00_axis_tlast    :  in std_logic;
    s00_axis_tvalid   :  in std_logic;

    m00_axis_aclk     :  in std_logic; -- dont care
    m00_axis_aresetn  :  in std_logic; -- dont care
    m00_axis_tvalid   : out std_logic; 
    m00_axis_tdata    : out std_logic_vector(OUTPUT_DATA_WIDTH-1 downto 0); -- our data
    m00_axis_tstrb    : out std_logic; -- dont carestd_logic; -- dont care
    m00_axis_tlast    : out std_logic;
    m00_axis_tready   :  in std_logic
    );
end component;







----------------------------------------------------------------------------
-- Constants
constant AXI_DATA_WIDTH  : integer := 32;       -- Main AXI data width
constant FFT_DATA_WIDTH  : integer := 8;        -- FFT output width
constant CLOCK_PERIOD    : time := 10ns;        -- 100 MHz clock
constant AUDIO_DATA_WIDTH: integer := 24;       -- I2S data width
constant SINE_FREQ1      : real := 1000.0;     -- First test frequency
constant SINE_FREQ2      : real := 3000.0;     -- Second test frequency
constant SINE_AMPL       : real := 8388607.0;  -- 24-bit amplitude
constant SAMPLING_FREQ   : real := 48000.0;    -- 48 kHz sampling rate

----------------------------------------------------------------------------
-- Signals
signal clk, axi_reset_n : std_logic := '0';
signal mclk, bclk, lrclk, lrclk_unbuff : std_logic := '0';
signal ac_adc_data_i, ac_dac_data_o : std_logic := '0';
signal ac_mute_en_o : std_logic := '0';

-- I2S to FIFO0 (loopback) Signals
signal fifo0_s_tready, fifo0_m_tvalid : std_logic := '0';
signal fifo0_m_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);

-- I2S to FIFO1 (FFT input) Signals
signal fifo1_s_tready, fifo1_m_tvalid : std_logic := '0';
signal fifo1_m_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);

-- FFT to FIFO2 (8-bit) Signals
signal fifo2_s_tready, fifo2_m_tvalid : std_logic := '0';
signal fifo2_m_tdata : std_logic_vector(FFT_DATA_WIDTH-1 downto 0);

-- Testbench Signals
signal sine_data : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
signal bit_count : integer := 0;
signal lrclk_prev : std_logic := '0';

begin
----------------------------------------------------------------------------
-- Clock Generation
clk <= not clk after CLOCK_PERIOD/2;

----------------------------------------------------------------------------
-- Component Instantiations

-- FIFO0: I2S m00 -> FIFO0 -> I2S s00 (loopback)
fifo0: axis_fifo
  generic map (
    DATA_WIDTH => AXI_DATA_WIDTH,
    FIFO_DEPTH => 1024
  )
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo0_s_tready,
    s00_axis_tdata    => open,  -- Connected to I2S m00
    s00_axis_tvalid   => '0',   -- Handled by I2S
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo0_m_tvalid,
    m00_axis_tdata    => fifo0_m_tdata,
    m00_axis_tready   => '1'    -- Always ready for loopback
  );

-- FIFO1: I2S m01 -> FIFO1 -> FFT
fifo1: axis_fifo
  generic map (
    DATA_WIDTH => AXI_DATA_WIDTH,
    FIFO_DEPTH => 1024
  )
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo1_s_tready,
    s00_axis_tdata    => open,  -- Connected to I2S m01
    s00_axis_tvalid   => '0',   -- Handled by I2S
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo1_m_tvalid,
    m00_axis_tdata    => fifo1_m_tdata,
    m00_axis_tready   => fft_s_tready
  );

-- FFT Wrapper
fft_wrapper: FFT_wrapper
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fft_s_tready,
    s00_axis_tdata    => fifo1_m_tdata,
    s00_axis_tvalid   => fifo1_m_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo2_m_tvalid,
    m00_axis_tdata    => fifo2_m_tdata,
    m00_axis_tready   => fifo2_s_tready
  );

-- FIFO2: FFT -> 8-bit FIFO
fifo2: entity small_axis_fifo
  generic map (
    DATA_WIDTH => 8,
    FIFO_DEPTH => 4096
  )
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo2_s_tready,
    s00_axis_tdata    => fifo2_m_tdata,
    s00_axis_tvalid   => fifo2_m_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => open,  -- Connect to your output handler
    m00_axis_tdata    => open,  -- Connect to your output handler
    m00_axis_tready   => '1'    -- Always ready for this test
  );

-- I2S Wrapper
i2s_wrapper: i2s_wrapper
  port map (
    sysclk_i          => clk,
    audio_input_sel_i => '1',    -- Use ADC input
    ac_bclk_o         => bclk,
    ac_mclk_o         => mclk,
    ac_mute_n_o       => ac_mute_en_o,
    ac_dac_data_o     => ac_dac_data_o,
    ac_dac_lrclk_o    => lrclk,
    ac_adc_data_i     => ac_adc_data_i,
    lrclk_unbuff_o    => lrclk_unbuff,
    -- FIFO0 Connections (loopback)
    m00_axis_tvalid   => open,   -- Connected to FIFO0
    m00_axis_tdata    => open,   -- Connected to FIFO0
    m00_axis_tready   => fifo0_s_tready,
    -- FIFO1 Connections (FFT path)
    m01_axis_tvalid   => open,   -- Connected to FIFO1
    m01_axis_tdata    => open,   -- Connected to FIFO1
    m01_axis_tready   => fifo1_s_tready,
    -- Other required ports
    s00_axis_tdata    => fifo0_m_tdata,  -- Loopback data
    s00_axis_tvalid   => fifo0_m_tvalid
  );

----------------------------------------------------------------------------
-- Test Process: Dual-Tone Sine Wave Generation
process
    variable time_var : real := 0.0;
    variable sample_real : real;
begin
    wait until rising_edge(bclk);
    
    -- Generate dual-tone sine wave
    sample_real := SINE_AMPL * (sin(2.0*MATH_PI*SINE_FREQ1*time_var) + 
                                sin(2.0*MATH_PI*SINE_FREQ2*time_var))/2.0;
    sine_data <= std_logic_vector(to_signed(integer(sample_real), AUDIO_DATA_WIDTH);
    
    -- Serialize data on falling edge of bclk
    wait until falling_edge(bclk);
    if lrclk /= lrclk_prev then
        bit_count <= AUDIO_DATA_WIDTH-1;
        lrclk_prev <= lrclk;
    else
        ac_adc_data_i <= sine_data(bit_count);
        bit_count <= bit_count - 1 when bit_count > 0 else AUDIO_DATA_WIDTH-1;
    end if;
    
    time_var := time_var + 1.0/SAMPLING_FREQ;
end process;

----------------------------------------------------------------------------
-- Reset Process
process
begin
    axi_reset_n <= '0';
    wait for 100ns;
    axi_reset_n <= '1';
    wait;
end process;

end testbench;