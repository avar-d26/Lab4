----------------------------------------------------------------------------
--  Lab 3: Streaming Audio DSP
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: Brandon Zhao
----------------------------------------------------------------------------
--	Description: DDS -> AXIS Tx -> FIFO -> FIR -> FIFO -> AXIS Rx -> I2S Tx TESTBENCH
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity tb_passthru is
end tb_passthru;

architecture testbench of tb_passthru is
----------------------------------------------------------------------------
-- Constants
constant AXI_DATA_WIDTH : integer := 32;        -- 32-bit AXI data bus
constant AXI_FIFO_DEPTH : integer := 12;        -- AXI stream FIFO depth
constant CLOCK_PERIOD   : time := 10ns;          -- 100 MHz clock
constant AUDIO_DATA_WIDTH : integer := 24;      -- I2S data width
constant SINE_FREQ      : real := 1000.0;       -- Test sine wave frequency
constant SINE_AMPL      : real := 8388607.0;    -- 24-bit amplitude
constant SAMPLING_FREQ  : real := 48000.00;     -- 48 kHz sampling rate
constant T_SAMPLE : real := 1.0/SAMPLING_FREQ;

----------------------------------------------------------------------------
-- Signals
signal clk, axi_reset_n : std_logic := '0';
signal mclk, bclk, lrclk, lrclk_unbuff : std_logic := '0';
signal ac_adc_data_i, ac_dac_data_o : std_logic := '0';
signal ac_mute_en, ac_mute_en_o : std_logic := '0';

-- AXI Stream FIFO 0 Signals
signal fifo0_s00_tready, fifo0_m00_tvalid : std_logic := '0';
signal fifo0_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
signal fifo0_m00_tstrb, fifo0_m00_tlast : std_logic := '0';

-- AXI Stream FIFO 1 Signals
signal fifo1_s00_tready, fifo1_m00_tvalid : std_logic := '0';
signal fifo1_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal fifo1_m00_tstrb, fifo1_m00_tlast : std_logic := '0';

-- I2S Wrapper AXI Stream Signals
signal i2s_s00_tready, i2s_m00_tvalid : std_logic := '0';
signal i2s_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');

-- FIR Wrapper Signals
signal fir_s00_tready, fir_m00_tvalid : std_logic := '0';
signal fir_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal fir_m00_tstrb, fir_m00_tlast : std_logic := '0';
signal ch_select_sig : std_logic_vector(1 downto 0) := "00";
signal enable_fir_sig : std_logic := '1';

-- Testbench Signals
signal sine_data, sine_data_tx : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
signal bit_count : integer := 0;

----------------------------------------------------------------------------
-- Component Declarations
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

component axis_i2s_wrapper is
	generic (
		C_AXI_STREAM_DATA_WIDTH	: integer	:= 32;
		AC_DATA_WIDTH : integer := 24;
		DDS_DATA_WIDTH : integer := 24;         
        DDS_PHASE_DATA_WIDTH : integer := 12   
	);
    Port ( 
        sysclk_i          : in std_logic;	
		--ac_mute_en_i      : in std_logic;
		audio_input_sel_i : in std_logic;
		ac_bclk_o         : out std_logic;
        ac_mclk_o         : out std_logic;
        ac_mute_n_o       : out std_logic;    
        ac_dac_data_o     : out std_logic;
        ac_dac_lrclk_o    : out std_logic;            
        ac_adc_data_i     : in std_logic;
        ac_adc_lrclk_o    : out std_logic;    
        lrclk_unbuff_o    : out std_logic;          
        s00_axis_aclk     : in std_logic;
		s00_axis_aresetn  : in std_logic;
		s00_axis_tready   : out std_logic;
		s00_axis_tdata	  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast    : in std_logic;
		s00_axis_tvalid   : in std_logic;
		m00_axis_aclk     : in std_logic;
		m00_axis_aresetn  : in std_logic;
		m00_axis_tvalid   : out std_logic;
		m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   : in std_logic;
		left_dds_phase_inc_dbg_o : out std_logic_vector(DDS_PHASE_DATA_WIDTH-1 downto 0);   
		right_dds_phase_inc_dbg_o : out std_logic_vector(DDS_PHASE_DATA_WIDTH-1 downto 0);   
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(3 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(31 downto 0);
		s00_axi_wstrb	: in std_logic_vector(3 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(3 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(31 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic);
end component;

component axi_stream_fir_wrapper is
generic (
    C_AXI_STREAM_DATA_WIDTH : integer := 32;
    AC_DATA_WIDTH : integer := 24
);
Port (
    lrclk_i : in STD_LOGIC;
    ch_select_i : in std_logic_vector (1 downto 0);
    enable_fir_i : in std_logic;
    aresetn_i  : in std_logic;
    s00_axis_aclk     : in std_logic;
    s00_axis_tready   : out std_logic;
    s00_axis_tdata  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
    s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
    s00_axis_tlast    : in std_logic;
    s00_axis_tvalid   : in std_logic;
    m00_axis_aclk     : in std_logic;
    m00_axis_tvalid   : out std_logic;
    m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
    m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
    m00_axis_tlast    : out std_logic;
    m00_axis_tready   : in std_logic);
end component;

begin
----------------------------------------------------------------------------
-- Clock Generation
clk <= not clk after CLOCK_PERIOD/2;

----------------------------------------------------------------------------
-- Component Instantiations
-- FIFO0: I2S(master) → FIFO0(slave)
fifo0: axis_fifo
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo0_s00_tready,
    s00_axis_tdata    => i2s_m00_tdata,
    s00_axis_tstrb    => (others => '1'),
    s00_axis_tlast    => '0',
    s00_axis_tvalid   => i2s_m00_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo0_m00_tvalid,
    m00_axis_tdata    => fifo0_m00_tdata,
    m00_axis_tstrb    => open,
    m00_axis_tlast    => open,
    m00_axis_tready   => fir_s00_tready
  );

-- FIR: FIFO0(master) → FIR(slave)
fir_inst: axi_stream_fir_wrapper
  generic map (
    C_AXI_STREAM_DATA_WIDTH => AXI_DATA_WIDTH,
    AC_DATA_WIDTH => AUDIO_DATA_WIDTH
  )
  port map (
    lrclk_i => lrclk_unbuff,
    ch_select_i => ch_select_sig,
    enable_fir_i => enable_fir_sig,
    aresetn_i => axi_reset_n,
    s00_axis_aclk => clk,
    s00_axis_tready => fir_s00_tready,
    s00_axis_tdata => fifo0_m00_tdata,
    s00_axis_tstrb => (others => '1'),
    s00_axis_tlast => '0',
    s00_axis_tvalid => fifo0_m00_tvalid,
    m00_axis_aclk => clk,
    m00_axis_tvalid => fir_m00_tvalid,
    m00_axis_tdata => fir_m00_tdata,
    m00_axis_tstrb => open,
    m00_axis_tlast => open,
    m00_axis_tready => fifo1_s00_tready
  );

-- FIFO1: FIR(master) → FIFO1(slave)
fifo1: axis_fifo
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo1_s00_tready,
    s00_axis_tdata    => fir_m00_tdata,
    s00_axis_tstrb    => (others => '1'),
    s00_axis_tlast    => '0',
    s00_axis_tvalid   => fir_m00_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo1_m00_tvalid,
    m00_axis_tdata    => fifo1_m00_tdata,
    m00_axis_tstrb    => open,
    m00_axis_tlast    => open,
    m00_axis_tready   => i2s_s00_tready
  );

-- I2S Wrapper: FIFO1(master) → I2S(slave)
i2s_wrapper: axis_i2s_wrapper
  port map (
    sysclk_i          => clk,
    --ac_mute_en_i      => ac_mute_en,
    audio_input_sel_i => '0', -- Test DDS
    ac_bclk_o         => bclk,
    ac_mclk_o         => mclk,
    ac_mute_n_o       => ac_mute_en_o,
    ac_dac_data_o     => ac_dac_data_o,
    ac_dac_lrclk_o    => lrclk,
    ac_adc_data_i     => ac_adc_data_i,
    ac_adc_lrclk_o    => open,
    lrclk_unbuff_o    => lrclk_unbuff,
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => i2s_s00_tready,
    s00_axis_tdata    => fifo1_m00_tdata,
    s00_axis_tstrb    => (others => '1'),
    s00_axis_tlast    => '0',
    s00_axis_tvalid   => fifo1_m00_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => i2s_m00_tvalid,
    m00_axis_tdata    => i2s_m00_tdata,
    m00_axis_tstrb    => open,
    m00_axis_tlast    => open,
    m00_axis_tready   => fifo0_s00_tready,
    left_dds_phase_inc_dbg_o => open,
    right_dds_phase_inc_dbg_o => open,
    s00_axi_aclk      => clk,
    s00_axi_aresetn   => axi_reset_n,
    s00_axi_awaddr    => (others => '0'),
    s00_axi_awprot    => (others => '0'),
    s00_axi_awvalid   => '0',
    s00_axi_awready   => open,
    s00_axi_wdata     => (others => '0'),
    s00_axi_wstrb     => (others => '0'),
    s00_axi_wvalid    => '0',
    s00_axi_wready    => open,
    s00_axi_bresp     => open,
    s00_axi_bvalid    => open,
    s00_axi_bready    => '1',
    s00_axi_araddr    => (others => '0'),
    s00_axi_arprot    => (others => '0'),
    s00_axi_arvalid   => '0',
    s00_axi_arready   => open,
    s00_axi_rdata     => open,
    s00_axi_rresp     => open,
    s00_axi_rvalid    => open,
    s00_axi_rready    => '1'
  );



----------------------------------------------------------------------------
-- Test Sequence
stim_proc: process
begin
  -- Initialize
  axi_reset_n <= '0';
  ac_mute_en <= '0';
  ch_select_sig <= "00";  -- Default to both channels
  enable_fir_sig <= '1';  -- Enable FIR by default
  wait for 50 ns;
  
  -- Release reset
  axi_reset_n <= '1';

  -- Run simulation with different channel selections
  ac_mute_en <= '1';
  
  -- Test both channels
  ch_select_sig <= "00";
  wait for 700 us;
  
  -- Test left channel only
  ch_select_sig <= "01";
  wait for 500 us;
  
  -- Test right channel only
  ch_select_sig <= "10";
  wait for 500 us;
  
  ch_select_sig <= "11";
  wait for 500 us;
  -- Test FIR bypass (both channels)
  ch_select_sig <= "00";
  enable_fir_sig <= '0';
  wait for 500 us;
  
end process;

end testbench;