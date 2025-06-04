--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


entity create_88key is
generic (
    PIANO_DATA_LENGTH : integer := 88
);
port(
    clkb_i : in std_logic;
    data_i : in std_logic;
    en_i : in std_logic;
    
    -- debugs
    addr_dbg_o : out std_logic_vector(8 downto 0);
    paino_dbg_o : out std_logic_vector(PIANO_DATA_LENGTH - 1 downto 0);
    r_addr_o : out std_logic_vector(8 downto 0);
    paino_data_o : out std_logic_vector(PIANO_DATA_LENGTH - 1 downto 0);
    paino_done_o : out std_logic
    );
end create_88key;

architecture Behavioral of create_88key is
signal load_enable_reg, load_enable : std_logic := '0';
signal address_counter, counterdelay1, address_counter_delayed : unsigned(8 downto 0) := (others => '0');
signal paino : std_logic_vector(PIANO_DATA_LENGTH - 1 downto 0) := (others => '0');

type statetype is (init, countAddress, countWait1, countWait2, createPaino, sendPaino);
signal current_state, next_state : statetype := init;
signal count_en, buildbinreg_en, count_tc, counttc_delay1, count_tc_delayed, createPaino_en, rst : std_logic := '0';
--signal bin_reg : std_logic_vector(4095 downto 0) := (others => '0');
signal addr : integer := 0;
begin

-- double flop synchronizer
FLOPPA : process(clkb_i) begin
if rising_edge(clkb_i) then
    load_enable_reg <= en_i;
    load_enable <= load_enable_reg;
end if;
end process;

-- delay address counter by two clock cycles because of 2 cycle BRAM read latency
delayer : process(clkb_i) begin
if rising_edge(clkb_i) then
    counterdelay1 <= address_counter;
    address_counter_delayed <= counterdelay1;
    counttc_delay1 <= count_tc;
    count_tc_delayed <= counttc_delay1;
end if;
end process;

-- USE DELAYED ADDRESS COUNTER TO INDEX THE PIANO VECTOR
counter_tc : process(address_counter) begin
    if (address_counter = to_unsigned(511, 12)) then
        count_tc <= '1';
    else
        count_tc <= '0';
    end if;
end process;

load_count: process(clkb_i) begin
if rising_edge(clkb_i) then
    if (rst = '1' or address_counter = to_unsigned(511, 12)) then
        address_counter <= (others => '0');
    elsif (count_en = '1' and address_counter <= (to_unsigned(511, 12))) then
        address_counter <= address_counter + 1;
    end if;
end if;
end process;

-- SEND OUT UNDELAYED ADDRESS TO READ FROM BRAM
r_addr_o <= std_logic_vector(address_counter);


        
-- UPDATE the piano
update: process(clkb_i) begin
if rising_edge(clkb_i) then
    if (createPaino_en = '1') then
        paino_data_o <= paino;
    end if;
end if;
end process;        


---- MAP BINS TO PIANO KEYS
addr <= to_integer(address_counter_delayed);
addr_dbg_o <= std_logic_vector(address_counter_delayed);
paino_dbg_o <= paino;
mapp : process(clkb_i)
begin
    if rising_edge(clkb_i) then
        if (rst = '1') then
            paino <= (others => '0');
        elsif (buildbinreg_en = '1') then
            -- Default: keep previous state
            paino <= paino;
            
            case addr is
              -- Key  1 (A0) - Bin    0 (   0.00 Hz) vs   27.50 Hz (  +0.0 cents)
              when    0 => paino(0) <= data_i;
              -- Key 10 (F#1) - Bin    1 (  46.88 Hz) vs   46.25 Hz ( +23.3 cents)
              when    1 => paino(9) <= data_i;
              -- Key 22 (F#2) - Bin    2 (  93.75 Hz) vs   92.50 Hz ( +23.3 cents)
              when    2 => paino(21) <= data_i;
              -- Key 29 (C#3) - Bin    3 ( 140.62 Hz) vs  138.59 Hz ( +25.2 cents)
              when    3 => paino(28) <= data_i;
              -- Key 34 (F#3) - Bin    4 ( 187.50 Hz) vs  185.00 Hz ( +23.3 cents)
              when    4 => paino(33) <= data_i;
              -- Key 38 (A#3) - Bin    5 ( 234.38 Hz) vs  233.08 Hz (  +9.6 cents)
              when    5 => paino(37) <= data_i;
              -- Key 41 (C#4) - Bin    6 ( 281.25 Hz) vs  277.18 Hz ( +25.2 cents)
              when    6 => paino(40) <= data_i;
              -- Key 44 (E4) - Bin    7 ( 328.12 Hz) vs  329.63 Hz (  -7.9 cents)
              when    7 => paino(43) <= data_i;
              -- Key 46 (F#4) - Bin    8 ( 375.00 Hz) vs  369.99 Hz ( +23.3 cents)
              when    8 => paino(45) <= data_i;
              -- Key 48 (G#4) - Bin    9 ( 421.88 Hz) vs  415.30 Hz ( +27.2 cents)
              when    9 => paino(47) <= data_i;
              -- Key 50 (A#4) - Bin   10 ( 468.75 Hz) vs  466.16 Hz (  +9.6 cents)
              when   10 => paino(49) <= data_i;
              -- Key 52 (C5) - Bin   11 ( 515.62 Hz) vs  523.25 Hz ( -25.4 cents)
              when   11 => paino(51) <= data_i;
              -- Key 53 (C#5) - Bin   12 ( 562.50 Hz) vs  554.37 Hz ( +25.2 cents)
              when   12 => paino(52) <= data_i;
              -- Key 55 (D#5) - Bin   13 ( 609.38 Hz) vs  622.25 Hz ( -36.2 cents)
              when   13 => paino(54) <= data_i;
              -- Key 56 (E5) - Bin   14 ( 656.25 Hz) vs  659.26 Hz (  -7.9 cents)
              when   14 => paino(55) <= data_i;
              -- Key 57 (F5) - Bin   15 ( 703.12 Hz) vs  698.46 Hz ( +11.5 cents)
              when   15 => paino(56) <= data_i;
              -- Key 58 (F#5) - Bin   16 ( 750.00 Hz) vs  739.99 Hz ( +23.3 cents)
              when   16 => paino(57) <= data_i;
              -- Key 59 (G5) - Bin   17 ( 796.88 Hz) vs  783.99 Hz ( +28.2 cents)
              when   17 => paino(58) <= data_i;
              -- Key 60 (G#5) - Bin   18 ( 843.75 Hz) vs  830.61 Hz ( +27.2 cents)
              when   18 => paino(59) <= data_i;
              -- Key 61 (A5) - Bin   19 ( 890.62 Hz) vs  880.00 Hz ( +20.8 cents)
              when   19 => paino(60) <= data_i;
              -- Key 62 (A#5) - Bin   20 ( 937.50 Hz) vs  932.33 Hz (  +9.6 cents)
              when   20 => paino(61) <= data_i;
              -- Key 63 (B5) - Bin   21 ( 984.38 Hz) vs  987.77 Hz (  -6.0 cents)
              when   21 => paino(62) <= data_i;
              -- Key 64 (C6) - Bin   22 (1031.25 Hz) vs 1046.50 Hz ( -25.4 cents)
              when   22 => paino(63) <= data_i;
              -- Key 65 (C#6) - Bin   24 (1125.00 Hz) vs 1108.73 Hz ( +25.2 cents)
              when   24 => paino(64) <= data_i;
              -- Key 66 (D6) - Bin   25 (1171.88 Hz) vs 1174.66 Hz (  -4.1 cents)
              when   25 => paino(65) <= data_i;
              -- Key 67 (D#6) - Bin   27 (1265.62 Hz) vs 1244.51 Hz ( +29.1 cents)
              when   27 => paino(66) <= data_i;
              -- Key 68 (E6) - Bin   28 (1312.50 Hz) vs 1318.51 Hz (  -7.9 cents)
              when   28 => paino(67) <= data_i;
              -- Key 69 (F6) - Bin   30 (1406.25 Hz) vs 1396.91 Hz ( +11.5 cents)
              when   30 => paino(68) <= data_i;
              -- Key 70 (F#6) - Bin   32 (1500.00 Hz) vs 1479.98 Hz ( +23.3 cents)
              when   32 => paino(69) <= data_i;
              -- Key 71 (G6) - Bin   33 (1546.88 Hz) vs 1567.98 Hz ( -23.5 cents)
              when   33 => paino(70) <= data_i;
              -- Key 72 (G#6) - Bin   35 (1640.62 Hz) vs 1661.22 Hz ( -21.6 cents)
              when   35 => paino(71) <= data_i;
              -- Key 73 (A6) - Bin   38 (1781.25 Hz) vs 1760.00 Hz ( +20.8 cents)
              when   38 => paino(72) <= data_i;
              -- Key 74 (A#6) - Bin   40 (1875.00 Hz) vs 1864.66 Hz (  +9.6 cents)
              when   40 => paino(73) <= data_i;
              -- Key 75 (B6) - Bin   42 (1968.75 Hz) vs 1975.53 Hz (  -6.0 cents)
              when   42 => paino(74) <= data_i;
              -- Key 76 (C7) - Bin   45 (2109.38 Hz) vs 2093.00 Hz ( +13.5 cents)
              when   45 => paino(75) <= data_i;
              -- Key 77 (C#7) - Bin   47 (2203.12 Hz) vs 2217.46 Hz ( -11.2 cents)
              when   47 => paino(76) <= data_i;
              -- Key 78 (D7) - Bin   50 (2343.75 Hz) vs 2349.32 Hz (  -4.1 cents)
              when   50 => paino(77) <= data_i;
              -- Key 79 (D#7) - Bin   53 (2484.38 Hz) vs 2489.02 Hz (  -3.2 cents)
              when   53 => paino(78) <= data_i;
              -- Key 80 (E7) - Bin   56 (2625.00 Hz) vs 2637.02 Hz (  -7.9 cents)
              when   56 => paino(79) <= data_i;
              -- Key 81 (F7) - Bin   60 (2812.50 Hz) vs 2793.83 Hz ( +11.5 cents)
              when   60 => paino(80) <= data_i;
              -- Key 82 (F#7) - Bin   63 (2953.12 Hz) vs 2959.96 Hz (  -4.0 cents)
              when   63 => paino(81) <= data_i;
              -- Key 83 (G7) - Bin   67 (3140.62 Hz) vs 3135.96 Hz (  +2.6 cents)
              when   67 => paino(82) <= data_i;
              -- Key 84 (G#7) - Bin   71 (3328.12 Hz) vs 3322.44 Hz (  +3.0 cents)
              when   71 => paino(83) <= data_i;
              -- Key 85 (A7) - Bin   75 (3515.62 Hz) vs 3520.00 Hz (  -2.2 cents)
              when   75 => paino(84) <= data_i;
              -- Key 86 (A#7) - Bin   80 (3750.00 Hz) vs 3729.31 Hz (  +9.6 cents)
              when   80 => paino(85) <= data_i;
              -- Key 87 (B7) - Bin   84 (3937.50 Hz) vs 3951.07 Hz (  -6.0 cents)
              when   84 => paino(86) <= data_i;
              -- Key 88 (C8) - Bin   89 (4171.88 Hz) vs 4186.01 Hz (  -5.9 cents)
              when   89 => paino(87) <= data_i;
              when others => paino <= paino;
            end case;
        end if;
    end if;
end process;





        
------------------------FSM-----------------
stateupdate: process(clkb_i) begin
if rising_edge(clkb_i) then 
    current_state <= next_state;
end if;
end process;

nextstate : process(current_state, load_enable, count_tc) begin
next_state <= current_state;

case current_state is
    when init =>
        if (load_enable = '1') then
            next_state <= countAddress;
        end if;
        
    when countAddress =>
        if (count_tc = '1') then
            next_state <= countWait1;
        end if;
    when countWait1 =>
        next_state <= countWait2;
    when countWait2 =>
        next_state <= createPaino;
    when createPaino => 
        next_state <= sendPaino;
    when sendPaino => 
        if (load_enable = '0') then
            next_state <= init;
        end if;
    when others => next_state <= init;
end case;
end process;
            
outputlogic : process(current_state) begin
count_en <= '0';
createPaino_en <= '0';
paino_done_o <= '0';
rst <= '0';
buildbinreg_en <= '0';
     case current_state is
    when init =>
        rst <= '1';
    when countAddress =>
        count_en <= '1';
        buildbinreg_en <= '1';
    when countWait1 =>
        buildbinreg_en <= '1';
    when countWait2 =>
        buildbinreg_en <= '1';
    when createPaino => 
        createPaino_en <= '1';
    when sendPaino => 
        paino_done_o <= '1';
    when others => null;
end case;
end process;   
            
end Behavioral;
