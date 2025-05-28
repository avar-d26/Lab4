----------------------------------------------------------------------------
--  Lab 4: Video & Audio Streaming
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: Ava Rosenbaum
----------------------------------------------------------------------------
--	Description: Testing Video Timing Controller --> piano_overlay logic
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity tb_piano_overlay is
end tb_piano_overlay;

architecture testbench of tb_piano_overlay is


----------------------------------------------------------------------------
-- Constants
constant DATA_WIDTH : integer := 24;        -- 24-bit video RGB data 
constant KEY_NUM : integer := 88;         -- number of keys on piano
constant COLUMN_WIDTH : integer := 14;       -- number of pixels in each key column
constant CLOCK_PERIOD   : time := 10ns;          -- 100 MHz clock
constant AUDIO_DATA_WIDTH : integer := 24;      -- I2S data width
constant SINE_FREQ      : real := 1000.0;       -- Test sine wave frequency
constant SINE_AMPL      : real := 8388607.0;    -- 24-bit amplitude
constant SAMPLING_FREQ  : real := 48000.00;     -- 48 kHz sampling rate
constant T_SAMPLE : real := 1.0/SAMPLING_FREQ;

----------------------------------------------------------------------------
-- Signals
signal clk, resetn_en : std_logic := '0';
signal key_state_sig : std_logic_vector(KEY_NUM-1 downto 0); -- 88-bit piano key status of which keys are active 

-- Video Timing Signals
signal sof_state_sig, active_video_sig, hsync_sig, vsync_sig, vblank_sig, hblank_sig : std_logic := '0';
signal fsync_sig : std_logic_vector (0 downto 0) := (others => '0');

-- Testbench Signals
signal sine_data, sine_data_tx : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
signal bit_count : integer := 0;

-- AXI Stream Signals
signal M_AXIS_TDATA, S_AXIS_TDATA : std_logic_vector(DATA_WIDTH-1 downto 0);
signal M_AXIS_TUSER, S_AXIS_TUSER : std_logic := '0';
signal M_AXIS_TVALID, S_AXIS_TVALID, S_AXIS_TREADY : std_logic := '0';
signal M_AXIS_TREADY : std_logic := '1';
signal M_AXIS_TLAST, S_AXIS_TLAST : std_logic := '0';

----------------------------------------------------------------------------
-- Component Declarations

-- piano overlay logic component
component piano_overlay is
  Generic (
    KEY_NUM : integer := 88;
    DATA_WIDTH : integer := 24;
    COLUMN_WIDTH : integer := 13);
  Port (
    clk_i            : in  std_logic;
    resetn_i            : in  std_logic;

    -- Video timing
    active_video_i   : in  std_logic;
    hsync_i          : in  std_logic;
    vsync_i          : in  std_logic;
    vblank_i         : in  std_logic;
    hblank_i         : in  std_logic;
    fsync_i          : in std_logic_vector (0 downto 0);

    -- Key frame input
    key_state_i      : in  std_logic_vector(KEY_NUM-1 downto 0);

    -- AXI-Stream video slave
    s_axis_tdata_i   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    s_axis_tvalid_i  : in  std_logic;
    s_axis_tuser_i   : in  std_logic;
    s_axis_tlast_i   : in  std_logic;
    s_axis_tready_o  : out std_logic;

    -- AXI-Stream video master
    m_axis_tdata_o   : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m_axis_tvalid_o  : out std_logic;
    m_axis_tuser_o   : out std_logic;
    m_axis_tlast_o   : out std_logic;
    m_axis_tready_i  : in  std_logic
  );
end component;

-- Video Timing Controller IP
component v_tc_1 is
  port (
    clk : IN STD_LOGIC;
    clken : IN STD_LOGIC;
    gen_clken : IN STD_LOGIC;
    sof_state : IN STD_LOGIC;
    hsync_out : OUT STD_LOGIC;
    hblank_out : OUT STD_LOGIC;
    vsync_out : OUT STD_LOGIC;
    vblank_out : OUT STD_LOGIC;
    active_video_out : OUT STD_LOGIC;
    resetn : IN STD_LOGIC;
    fsync_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
end component;

begin

----------------------------------------------------------------------------
-- Clock generation
clock_gen_process : process
begin
	clk <= '0';				    -- start low
	wait for CLOCK_PERIOD;	    -- wait for one CLOCK_PERIOD
	
	loop							-- toggle, wait half a clock period, and loop
	  clk <= not(clk);
	  wait for CLOCK_PERIOD/2;
	end loop;
end process clock_gen_process;

----------------------------------------------------------------------------
-- Component Instantiations
-- piano overlay logic
piano_overlay_dut: piano_overlay
  port map (
    clk_i => clk,
    resetn_i => resetn_en,

    -- Video timing
    active_video_i => active_video_sig,
    hsync_i => hsync_sig,
    vsync_i => vsync_sig,
    vblank_i => vblank_sig,
    hblank_i => hblank_sig,
    fsync_i => fsync_sig,

    -- Key frame input
    key_state_i => key_state_sig,

    -- AXI-Stream video slave
    s_axis_tdata_i => S_AXIS_TDATA,
    s_axis_tvalid_i => S_AXIS_TVALID,
    s_axis_tuser_i => S_AXIS_TUSER,
    s_axis_tlast_i => S_AXIS_TLAST,
    s_axis_tready_o => S_AXIS_TREADY,

    -- AXI-Stream video master
    m_axis_tdata_o => M_AXIS_TDATA,
    m_axis_tvalid_o  => M_AXIS_TVALID,
    m_axis_tuser_o => M_AXIS_TUSER,
    m_axis_tlast_o => M_AXIS_TLAST,
    m_axis_tready_i => M_AXIS_TREADY
  );

-- Video Timing Controller Signals
video_timing_controller: v_tc_1
  port map (
    clk => clk,
    clken => '1',
    gen_clken => '1',
    sof_state => sof_state_sig,
    hsync_out => hsync_sig,
    hblank_out => hblank_sig,
    vsync_out => vsync_sig,
    vblank_out => vblank_sig,
    active_video_out => active_video_sig,
    resetn => resetn_en,
    fsync_out => fsync_sig);


----------------------------------------------------------------------------
-- Test Sequence
stim_proc: process
begin
  -- Initialize
  resetn_en <= '0';
  wait for 50 ns;
  
  -- Release reset
  resetn_en <= '1';

  -- Simulate AXI Stream input to piano overlay (sending default RGB of all white)
  
  -- Set keys 0, 5, and 87 as pressed
  key_state_sig <= (others => '0');
  key_state_sig(0) <= '1';
  key_state_sig(81) <= '1';
  key_state_sig(87) <= '1';


  S_AXIS_TDATA <= x"FFFFFF";     -- White pixel (24-bit RGB)
  S_AXIS_TVALID <= '1';


  wait;  -- Wait indefinitely
  
end process;

end testbench;
