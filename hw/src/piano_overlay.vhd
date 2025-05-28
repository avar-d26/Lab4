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
    resetn_i            : in  std_logic; -- active low reset

    -- Video timing
    active_video_i   : in  std_logic;
    hsync_i          : in  std_logic;
    vsync_i          : in  std_logic;
    vblank_i         : in  std_logic;
    hblank_i         : in  std_logic;

    -- Key frame input
    key_state_i      : in  std_logic_vector(KEY_NUM-1 downto 0);

    -- AXI-Stream video slave
    s_axis_tdata_i   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    s_axis_tvalid_i  : in  std_logic;
    s_axis_tuser_i   : in  std_logic;
    s_axis_tlast_i   : in  std_logic;
    s_axis_tready_i  : out std_logic;

    -- AXI-Stream video master
    m_axis_tdata_o   : out std_logic_vector(DATA_WIDTH-1 downto 0);
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
signal key_length : unsigned(3 downto 0) := (others => '0');
signal key_counter_tc : std_logic := '0';
signal m_axis_tdata_sig   :  std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

-- FSM signals
type statetype is (Idle, Blank1, ActiveRow, IncrKey, Blank2);
signal curr_state, next_state : statetype := Idle;

begin


----------------------------------------------------------------------------
-- State machine
----------------------------------------------------------------------------
  
-- FSM Next State Logic (asynchronous, no clock)
-- Include all state change triggering signals in the sensitivity list
-- The only signal getting assigned in this process should be next_state
next_state_logic : process(curr_state, lrclk_main)
-- ++++ Add necessary signals to the sensitivity list above ++++
-- ++++ Modify next state logic to match your paper design ++++
begin

	-- Default conditions
	next_state <= curr_state; 	-- default is to stay in the same state

	-- Use a case statement to switch between states
	case curr_state is	
        when Idle =>
            if (vsynch_i = '1') then     -- wait until start of new frame
                next_state <= Blank1;
            end if;
        when Blank1 =>
            if (active_video_i = '1') then     -- wait until video is active
                next_state <= ActiveRow;
            end if;
        when ActiveRow =>    
            if (active_video_i = '0') then     -- wait until start of new frame
                next_state <= Blank2;
            elsif (key_counter_tc = '1') then
                next_state <= IncrKey;
            end if;
        when IncrKey =>
            next_state <= ActiveRow;
        when Blank2 =>
            if (hsynch_i = '1') then     -- wait until start of new frame
                next_state <= Blank1;
            end if; 
        when others => -- this is like the "else" part of an if/else statement, but shouldn't reached
            next_state <= Idle;
	end case;					-- end of case statement
end process next_state_logic;

----------------------------------------------------------------------------
-- FSM Output Logic Process (asynchronous, no clock)
-- Only the current state signal (curr_state) should be in the sensitivity list
-- FSM "outputs" are simply signals or ports that are assigned by the FSM state logic
fsm_output_logic : process(curr_state, s00_axis_tdata_i) 
begin

incr_col_index <= '0';
output_en <= '0';

case curr_state is	
        when Idle => output_en <= '0';
  
        when Blank1 => output_en <= '0';
           
        when ActiveRow =>    
            output_en <= '1';
        when IncrKey =>
            incr_col_index <= '1';
        when Blank2 => output_en <= '0';

        when others => output_en <= '0';
	end case;					-- end of case statement

end process fsm_output_logic;

----------------------------------------------------------------------------
-- FSM State Update Process (synchronous, clocked)
state_update : process (clk_i)
begin
	if (rising_edge(clk_i)) then
		curr_state <= next_state; 		-- update current state on rising edge of the clock
	end if;
end process state_update;


-- Latch key_state on vsync
current_keys_reg : process(clk_i)
begin
  if rising_edge(clk_i) then
    if resetn_i = '0' then
      current_keys <= (others => '0');
    elsif vsync_i = '1' then
      current_keys <= key_state_i;
    end if;
  end if;
end process current_keys_reg;

-- Column Index Counter
column_index_counter : process(clk_i)
begin
  if rising_edge(clk_i) then
    if resetn_i = '0' then
      column_index <= 0;   -- reset
    elsif column_index = KEY_NUM - 1 then
      column_index <= 0;
    elsif incr_column_index = '1' then
      column_index <= column_index + 1; -- increment
    end if;
  end if;
end process column_index_counter;

-- Key Length Counter
key_length_counter : process(clk_i)
begin
  if rising_edge(clk_i) then
    if resetn_i = '0' then
      key_length <= (others => '0');   -- reset
    elsif key_counter_tc = '1' then
      key_length <= (others => '0');   -- set back to 0 after done counting
    elsif incr_column_index = '1' then
      key_length <= key_length + 1; -- increment
    end if;
  end if;
end process key_length_counter;

key_counter_tc <='1' when key_length = COLUMN_WIDTH - 1 else '0';

-- Key Override Process to output red instead of default key color (black or white)
key_override : process (s_axis_tdata_i, current_keys, output_en)
begin
  if output_en = '1'then
    if current_keys(column_index) = '1' then
      m_axis_tdata_sig <= x"FF0000";  -- Pure red (R=255, G=0, B=0)
    else m_axis_tdata_sig <= s_axis_tdata_i;
    end if;
  else m_axis_tdata_sig <= s_axis_tdata_i;
  end if;
end process key_override;

m_axis_tdata_o <= m_axis_tdata_sig;   
m_axis_tvalid_o <= s_axis_tvalid_i;
m_axis_tuser_o <= s_axis_tuser_i;
m_axis_tlast_o <= s_axis_tlast_i;
m_axis_tready_o <= s_axis_tready_i;
end Behavioral;
