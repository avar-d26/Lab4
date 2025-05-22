----------------------------------------------------------------------------
--  Final Project: Video & Audio Streaming
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: Ava Rosenbaum
----------------------------------------------------------------------------
--	Description: Active Key Piano Overlay Display
----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity piano_overlay is
  Generic (
    KEY_NUM : integer := 88;
    DATA_WIDTH : integer := 24;
    COLUMN_WIDTH : 14);
  Port (
    clk_i            : in  std_logic;
    reset_i            : in  std_logic;

    -- Video timing
    active_video_i   : in  std_logic;
    hsync_i          : in  std_logic;
    vsync_i          : in  std_logic;
    vblank_i         : in  std_logic;
    hblank_i         : in  std_logic;

    -- Key frame input
    key_state_i      : in  std_logic_vector(87 downto 0);

    -- AXI-Stream video slave
    s_axis_tdata_i   : in  std_logic_vector(23 downto 0);
    s_axis_tvalid_i  : in  std_logic;
    s_axis_tuser_i   : in  std_logic;
    s_axis_tlast_i   : in  std_logic;
    s_axis_tready_i  : out std_logic;

    -- AXI-Stream video master
    m_axis_tdata_o   : out std_logic_vector(23 downto 0);
    m_axis_tvalid_o  : out std_logic;
    m_axis_tuser_o   : out std_logic;
    m_axis_tlast_o   : out std_logic;
    m_axis_tready_o  : in  std_logic
  );
end piano_overlay;
  
architecture Behavioral of piano_overlay is

  
-- Internal Signals
signal current_keys  : std_logic_vector(KEY_NUM - 1 downto 0);
signal horizontal_pos: integer := 0; -- horizontal position counter

signal column_index  : integer range 0 to KEY_NUM - 1;
signal override_rgb  : std_logic_vector(DATA_WIDTH downto 0) := x"FF0000"; -- red

begin


-- Latch key_state on vsync
key_update : process(clk_i)
begin
  if rising_edge(clk_i) then
    if reset_i = '1' then
      current_keys <= (others => '0');
    elsif vsync_i = '1' then
      current_keys <= key_state_i;
    end if;
  end if;
end process key_update;

-- Horizontal Position Counter
hor_pos_counter : process(clk_i)
begin
  if rising_edge(clk_i) then
    if reset_i = '1' then
      horizontal_pos <= 0;
    elsif active_video_i = '1' then
      horizontal_pos <= horizontal_pos + 1;
    elsif hblank_i = '1' then
      horizontal_pos <= 0;
    end if;
  end if;
end process hor_pos_counter;
    
end Behavioral;
