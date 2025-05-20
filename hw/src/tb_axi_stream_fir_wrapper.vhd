----------------------------------------------------------------------------
--  Lab 3
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: Ava Rosenbaum
----------------------------------------------------------------------------
--	Description: Testbench for AXI stream FIR wrapper
----------------------------------------------------------------------------
-- Add libraries 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

----------------------------------------------------------------------------
-- Entity Declaration
entity tb_axi_stream_fir_wrapper is
end tb_axi_stream_fir_wrapper;

----------------------------------------------------------------------------
architecture testbench of tb_axi_stream_fir_wrapper is
----------------------------------------------------------------------------
-- Constants
constant AXIS_DATA_WIDTH : integer := 32;        -- AXI stream data bus
constant CLOCK_PERIOD : time := 8ns;            -- 125 MHz system clock period
constant MCLK_PERIOD : time := 81.38 ns;        -- 12.288 MHz MCLK
constant SAMPLING_FREQ  : real := 48000.00;     -- 48 kHz sampling rate
constant T_SAMPLE : real := 1.0/SAMPLING_FREQ;

-- Input waveform
constant AUDIO_DATA_WIDTH : integer := 24;
constant SINE_FREQ : real := 1000.0;
constant SINE_AMPL  : real := real(2**(AUDIO_DATA_WIDTH-1)-1);

----------------------------------------------------------------------------
-- Signals to hook up to DUT

signal clk : std_logic := '0';
signal ch_select_sig : std_logic_vector (1 downto 0):="00";
signal mute_n, data_in, data_out : std_logic;

signal mclk 			    : std_logic := '0';
signal bclk 			    : std_logic := '0';
signal lrclk   			    : std_logic := '0';
signal lrclk_unbuff   	    : std_logic := '0';

----------------------------------------------------------------------------
-- Testbench signals
signal bit_count : integer;
signal sine_data, sine_data_tx : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
signal aresetn_sig : std_logic := '1';
signal enable_fir_sig : std_logic := '1';
signal test_num : integer := 0;


-- AXI Stream
signal M_AXIS_TDATA, S_AXIS_TDATA : std_logic_vector(AXIS_DATA_WIDTH-1 downto 0);
signal M_AXIS_TSTRB, S_AXIS_TSTRB : std_logic_vector((AXIS_DATA_WIDTH/8)-1 downto 0);
signal M_AXIS_TVALID, S_AXIS_TVALID, S_AXIS_TREADY : std_logic := '0';
signal M_AXIS_TREADY : std_logic := '1';
signal M_AXIS_TLAST, S_AXIS_TLAST : std_logic := '0';

----------------------------------------------------------------------------
-- AXI stream component
component axi_stream_fir_wrapper is
	generic (
		-- Parameters of Axi Stream Bus Interface S00_AXIS, M00_AXIS
		C_AXI_STREAM_DATA_WIDTH	: integer	:= 32;
		AC_DATA_WIDTH : integer := 24
	);
    Port ( 
       -- From I2S clock generator
        lrclk_i : in STD_LOGIC; -- unbuffered

        -- select ports
        ch_select_i         : in std_logic_vector (1 downto 0); -- select filter
        enable_fir_i        : in std_logic; -- enable filter output
              
        aresetn_i  : in std_logic;
       
        ----------------------------------------------------------------------------
        -- AXI Stream Interface (Receiver/Responder)
        -- Ports of Axi Responder Bus Interface S00_AXIS
        s00_axis_aclk     : in std_logic;
        s00_axis_tready   : out std_logic;
        s00_axis_tdata  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
        s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
        s00_axis_tlast    : in std_logic;
        s00_axis_tvalid   : in std_logic;

        -- AXI Stream Interface (Tranmitter/Controller)
        -- Ports of Axi Controller Bus Interface M00_AXIS
        m00_axis_aclk     : in std_logic;
        m00_axis_tvalid   : out std_logic;
        m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
        m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
        m00_axis_tlast    : out std_logic;
        m00_axis_tready   : in std_logic);
end component;

----------------------------------------------------------------------------------
-- Clock generation
component i2s_clk_gen is
    Port (

        -- System clock in
		sysclk_125MHz_i   : in  std_logic;	
		
		-- Forwarded clocks
		mclk_fwd_o		  : out std_logic;	
		bclk_fwd_o        : out std_logic;
		adc_lrclk_fwd_o   : out std_logic;
		dac_lrclk_fwd_o   : out std_logic;

        -- Clocks for I2S components
		mclk_o		      : out std_logic;	
		bclk_o            : out std_logic;
		lrclk_o           : out std_logic;
		lrclk_unbuff_o    : out std_logic);  
end component;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
-- Instantiate dut
dut: axi_stream_fir_wrapper
port map (
    lrclk_i => lrclk_unbuff,
    ch_select_i => ch_select_sig,
    enable_fir_i => enable_fir_sig,
    aresetn_i => aresetn_sig,
    s00_axis_aclk => clk,
    s00_axis_tready => S_AXIS_TREADY,
    s00_axis_tdata => S_AXIS_TDATA,
    s00_axis_tstrb => S_AXIS_TSTRB,
    s00_axis_tlast => S_AXIS_TLAST,
    s00_axis_tvalid => S_AXIS_TVALID, 
    m00_axis_aclk => clk,
    m00_axis_tvalid => M_AXIS_TVALID,
    m00_axis_tdata => M_AXIS_TDATA,
    m00_axis_tstrb => M_AXIS_TSTRB,
    m00_axis_tlast => M_AXIS_TLAST,
    m00_axis_tready => M_AXIS_TREADY);
---------------------------------------------------------------------------- 
-- Clock generation
clock_generation: i2s_clk_gen
port map(
    sysclk_125MHz_i => clk,
    mclk_fwd_o      => open,
    bclk_fwd_o      => open,
    adc_lrclk_fwd_o => open,
    dac_lrclk_fwd_o => open,
    mclk_o          => mclk,
    bclk_o			=> bclk,
	lrclk_o			=> lrclk,
	lrclk_unbuff_o  => lrclk_unbuff);
----------------------------------------------------------------------------  

----------------------------------------------------------------------------   
-- Processes
----------------------------------------------------------------------------   
-- Generate clock        
clock_gen_process : process
begin
	clk <= '0';				-- start low
	wait for CLOCK_PERIOD/2;		-- wait for half a clock period
	loop							-- toggle, and loop
	  clk <= not(clk);
	  wait for CLOCK_PERIOD/2;
	end loop;
end process clock_gen_process;

----------------------------------------------------------------------------


----------------------------------------------------------------------------
-- Generate input data (stimulus)
----------------------------------------------------------------------------
generate_audio_data: process
    variable t : real := 0.0;
begin		
----------------------------------------------------------------------------
-- Loop forever	
loop	
----------------------------------------------------------------------------
-- Progress one sample through the sine wave:
sine_data <= std_logic_vector(to_signed(integer(SINE_AMPL*sin(math_2_pi*SINE_FREQ*t) ), AUDIO_DATA_WIDTH));

----------------------------------------------------------------------------
-- Take sample
wait until lrclk = '1';
sine_data_tx <= std_logic_vector(unsigned(not(sine_data(AUDIO_DATA_WIDTH-1)) & sine_data(AUDIO_DATA_WIDTH-2 downto 0)));

S_AXIS_TDATA <= '0' & sine_data_tx & "0000000"; -- MSB = 0 means sending right
----------------------------------------------------------------------------
-- Transmit sample to right audio channel
----------------------------------------------------------------------------
bit_count <= AUDIO_DATA_WIDTH-1;            -- Initialize bit counter, send MSB first
for i in 0 to AUDIO_DATA_WIDTH-1 loop
    wait until bclk = '0';
    data_in <= sine_data_tx(bit_count-i);     -- Set input data
end loop;

data_in <= '0';
bit_count <= AUDIO_DATA_WIDTH-1;            -- Reset bit counter to MSB

----------------------------------------------------------------------------
--Transmit sample to left audio channel
----------------------------------------------------------------------------
wait until lrclk = '0';
S_AXIS_TDATA <= '1' & sine_data_tx & "0000000"; -- MSB = 1 means sending left

----------------------------------------------------------------------------						
--Increment by one sample
t := t + T_SAMPLE;
end loop;
    
end process generate_audio_data;

end architecture;