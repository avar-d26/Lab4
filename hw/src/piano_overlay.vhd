library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity piano_overlay is
  Port (
    clk            : in  std_logic;
    rst            : in  std_logic;

    -- Video timing
    active_video   : in  std_logic;
    hsync          : in  std_logic;
    vsync          : in  std_logic;
    vblank         : in  std_logic;
    hblank         : in  std_logic;

    -- Key frame input
    key_state      : in  std_logic_vector(87 downto 0);

    -- AXI-Stream video slave
    s_axis_tdata   : in  std_logic_vector(23 downto 0);
    s_axis_tvalid  : in  std_logic;
    s_axis_tuser   : in  std_logic;
    s_axis_tlast   : in  std_logic;
    s_axis_tready  : out std_logic;

    -- AXI-Stream video master
    m_axis_tdata   : out std_logic_vector(23 downto 0);
    m_axis_tvalid  : out std_logic;
    m_axis_tuser   : out std_logic;
    m_axis_tlast   : out std_logic;
    m_axis_tready  : in  std_logic
  );
end piano_overlay;

-- Internal Signals
signal current_keys  : std_logic_vector(87 downto 0);
signal hpos          : integer := 0;
constant column_width : integer := 21;
signal column_index  : integer range 0 to 87;
signal override_rgb  : std_logic_vector(23 downto 0) := x"FF0000"; -- red
