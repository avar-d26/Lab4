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
    addr_dbg_o : out std_logic_vector(11 downto 0);
    paino_dbg_o : out std_logic_vector(PIANO_DATA_LENGTH - 1 downto 0);
    r_addr_o : out std_logic_vector(11 downto 0);
    paino_data_o : out std_logic_vector(PIANO_DATA_LENGTH - 1 downto 0);
    paino_done_o : out std_logic
    );
end create_88key;

architecture Behavioral of create_88key is
signal load_enable_reg, load_enable : std_logic := '0';
signal address_counter, counterdelay1, address_counter_delayed : unsigned(11 downto 0) := (others => '0');
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
    if (address_counter = to_unsigned(4095, 12)) then
        count_tc <= '1';
    else
        count_tc <= '0';
    end if;
end process;

load_count: process(clkb_i) begin
if rising_edge(clkb_i) then
    if (rst = '1' or address_counter = to_unsigned(4095, 12)) then
        address_counter <= (others => '0');
    elsif (count_en = '1' and address_counter <= (to_unsigned(4095, 12))) then
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
              -- Key  1 (A0) - Bin    4 (  23.44 Hz) vs   27.50 Hz (-276.7 cents)
              when    4 => paino(0) <= data_i;
              -- Key  2 (A#0) - Bin    5 (  29.30 Hz) vs   29.14 Hz (  +9.6 cents)
              when    5 => paino(1) <= data_i;
              -- Key  5 (C#1) - Bin    6 (  35.16 Hz) vs   34.65 Hz ( +25.2 cents)
              when    6 => paino(4) <= data_i;
              -- Key  8 (E1) - Bin    7 (  41.02 Hz) vs   41.20 Hz (  -7.9 cents)
              when    7 => paino(7) <= data_i;
              -- Key 10 (F#1) - Bin    8 (  46.88 Hz) vs   46.25 Hz ( +23.3 cents)
              when    8 => paino(9) <= data_i;
              -- Key 12 (G#1) - Bin    9 (  52.73 Hz) vs   51.91 Hz ( +27.2 cents)
              when    9 => paino(11) <= data_i;
              -- Key 14 (A#1) - Bin   10 (  58.59 Hz) vs   58.27 Hz (  +9.6 cents)
              when   10 => paino(13) <= data_i;
              -- Key 16 (C2) - Bin   11 (  64.45 Hz) vs   65.41 Hz ( -25.4 cents)
              when   11 => paino(15) <= data_i;
              -- Key 17 (C#2) - Bin   12 (  70.31 Hz) vs   69.30 Hz ( +25.2 cents)
              when   12 => paino(16) <= data_i;
              -- Key 19 (D#2) - Bin   13 (  76.17 Hz) vs   77.78 Hz ( -36.2 cents)
              when   13 => paino(18) <= data_i;
              -- Key 20 (E2) - Bin   14 (  82.03 Hz) vs   82.41 Hz (  -7.9 cents)
              when   14 => paino(19) <= data_i;
              -- Key 21 (F2) - Bin   15 (  87.89 Hz) vs   87.31 Hz ( +11.5 cents)
              when   15 => paino(20) <= data_i;
              -- Key 22 (F#2) - Bin   16 (  93.75 Hz) vs   92.50 Hz ( +23.3 cents)
              when   16 => paino(21) <= data_i;
              -- Key 23 (G2) - Bin   17 (  99.61 Hz) vs   98.00 Hz ( +28.2 cents)
              when   17 => paino(22) <= data_i;
              -- Key 24 (G#2) - Bin   18 ( 105.47 Hz) vs  103.83 Hz ( +27.2 cents)
              when   18 => paino(23) <= data_i;
              -- Key 25 (A2) - Bin   19 ( 111.33 Hz) vs  110.00 Hz ( +20.8 cents)
              when   19 => paino(24) <= data_i;
              -- Key 26 (A#2) - Bin   20 ( 117.19 Hz) vs  116.54 Hz (  +9.6 cents)
              when   20 => paino(25) <= data_i;
              -- Key 27 (B2) - Bin   21 ( 123.05 Hz) vs  123.47 Hz (  -6.0 cents)
              when   21 => paino(26) <= data_i;
              -- Key 28 (C3) - Bin   22 ( 128.91 Hz) vs  130.81 Hz ( -25.4 cents)
              when   22 => paino(27) <= data_i;
              -- Key 29 (C#3) - Bin   24 ( 140.62 Hz) vs  138.59 Hz ( +25.2 cents)
              when   24 => paino(28) <= data_i;
              -- Key 30 (D3) - Bin   25 ( 146.48 Hz) vs  146.83 Hz (  -4.1 cents)
              when   25 => paino(29) <= data_i;
              -- Key 31 (D#3) - Bin   27 ( 158.20 Hz) vs  155.56 Hz ( +29.1 cents)
              when   27 => paino(30) <= data_i;
              -- Key 32 (E3) - Bin   28 ( 164.06 Hz) vs  164.81 Hz (  -7.9 cents)
              when   28 => paino(31) <= data_i;
              -- Key 33 (F3) - Bin   30 ( 175.78 Hz) vs  174.61 Hz ( +11.5 cents)
              when   30 => paino(32) <= data_i;
              -- Key 34 (F#3) - Bin   32 ( 187.50 Hz) vs  185.00 Hz ( +23.3 cents)
              when   32 => paino(33) <= data_i;
              -- Key 35 (G3) - Bin   33 ( 193.36 Hz) vs  196.00 Hz ( -23.5 cents)
              when   33 => paino(34) <= data_i;
              -- Key 36 (G#3) - Bin   35 ( 205.08 Hz) vs  207.65 Hz ( -21.6 cents)
              when   35 => paino(35) <= data_i;
              -- Key 37 (A3) - Bin   38 ( 222.66 Hz) vs  220.00 Hz ( +20.8 cents)
              when   38 => paino(36) <= data_i;
              -- Key 38 (A#3) - Bin   40 ( 234.38 Hz) vs  233.08 Hz (  +9.6 cents)
              when   40 => paino(37) <= data_i;
              -- Key 39 (B3) - Bin   42 ( 246.09 Hz) vs  246.94 Hz (  -6.0 cents)
              when   42 => paino(38) <= data_i;
              -- Key 40 (C4) - Bin   45 ( 263.67 Hz) vs  261.63 Hz ( +13.5 cents)
              when   45 => paino(39) <= data_i;
              -- Key 41 (C#4) - Bin   47 ( 275.39 Hz) vs  277.18 Hz ( -11.2 cents)
              when   47 => paino(40) <= data_i;
              -- Key 42 (D4) - Bin   50 ( 292.97 Hz) vs  293.66 Hz (  -4.1 cents)
              when   50 => paino(41) <= data_i;
              -- Key 43 (D#4) - Bin   53 ( 310.55 Hz) vs  311.13 Hz (  -3.2 cents)
              when   53 => paino(42) <= data_i;
              -- Key 44 (E4) - Bin   56 ( 328.12 Hz) vs  329.63 Hz (  -7.9 cents)
              when   56 => paino(43) <= data_i;
              -- Key 45 (F4) - Bin   60 ( 351.56 Hz) vs  349.23 Hz ( +11.5 cents)
              when   60 => paino(44) <= data_i;
              -- Key 46 (F#4) - Bin   63 ( 369.14 Hz) vs  369.99 Hz (  -4.0 cents)
              when   63 => paino(45) <= data_i;
              -- Key 47 (G4) - Bin   67 ( 392.58 Hz) vs  392.00 Hz (  +2.6 cents)
              when   67 => paino(46) <= data_i;
              -- Key 48 (G#4) - Bin   71 ( 416.02 Hz) vs  415.30 Hz (  +3.0 cents)
              when   71 => paino(47) <= data_i;
              -- Key 49 (A4) - Bin   75 ( 439.45 Hz) vs  440.00 Hz (  -2.2 cents)
              when   75 => paino(48) <= data_i;
              -- Key 50 (A#4) - Bin   80 ( 468.75 Hz) vs  466.16 Hz (  +9.6 cents)
              when   80 => paino(49) <= data_i;
              -- Key 51 (B4) - Bin   84 ( 492.19 Hz) vs  493.88 Hz (  -6.0 cents)
              when   84 => paino(50) <= data_i;
              -- Key 52 (C5) - Bin   89 ( 521.48 Hz) vs  523.25 Hz (  -5.9 cents)
              when   89 => paino(51) <= data_i;
              -- Key 53 (C#5) - Bin   95 ( 556.64 Hz) vs  554.37 Hz (  +7.1 cents)
              when   95 => paino(52) <= data_i;
              -- Key 54 (D5) - Bin  100 ( 585.94 Hz) vs  587.33 Hz (  -4.1 cents)
              when  100 => paino(53) <= data_i;
              -- Key 55 (D#5) - Bin  106 ( 621.09 Hz) vs  622.25 Hz (  -3.2 cents)
              when  106 => paino(54) <= data_i;
              -- Key 56 (E5) - Bin  113 ( 662.11 Hz) vs  659.26 Hz (  +7.5 cents)
              when  113 => paino(55) <= data_i;
              -- Key 57 (F5) - Bin  119 ( 697.27 Hz) vs  698.46 Hz (  -3.0 cents)
              when  119 => paino(56) <= data_i;
              -- Key 58 (F#5) - Bin  126 ( 738.28 Hz) vs  739.99 Hz (  -4.0 cents)
              when  126 => paino(57) <= data_i;
              -- Key 59 (G5) - Bin  134 ( 785.16 Hz) vs  783.99 Hz (  +2.6 cents)
              when  134 => paino(58) <= data_i;
              -- Key 60 (G#5) - Bin  142 ( 832.03 Hz) vs  830.61 Hz (  +3.0 cents)
              when  142 => paino(59) <= data_i;
              -- Key 61 (A5) - Bin  150 ( 878.91 Hz) vs  880.00 Hz (  -2.2 cents)
              when  150 => paino(60) <= data_i;
              -- Key 62 (A#5) - Bin  159 ( 931.64 Hz) vs  932.33 Hz (  -1.3 cents)
              when  159 => paino(61) <= data_i;
              -- Key 63 (B5) - Bin  169 ( 990.23 Hz) vs  987.77 Hz (  +4.3 cents)
              when  169 => paino(62) <= data_i;
              -- Key 64 (C6) - Bin  179 (1048.83 Hz) vs 1046.50 Hz (  +3.8 cents)
              when  179 => paino(63) <= data_i;
              -- Key 65 (C#6) - Bin  189 (1107.42 Hz) vs 1108.73 Hz (  -2.0 cents)
              when  189 => paino(64) <= data_i;
              -- Key 66 (D6) - Bin  200 (1171.88 Hz) vs 1174.66 Hz (  -4.1 cents)
              when  200 => paino(65) <= data_i;
              -- Key 67 (D#6) - Bin  212 (1242.19 Hz) vs 1244.51 Hz (  -3.2 cents)
              when  212 => paino(66) <= data_i;
              -- Key 68 (E6) - Bin  225 (1318.36 Hz) vs 1318.51 Hz (  -0.2 cents)
              when  225 => paino(67) <= data_i;
              -- Key 69 (F6) - Bin  238 (1394.53 Hz) vs 1396.91 Hz (  -3.0 cents)
              when  238 => paino(68) <= data_i;
              -- Key 70 (F#6) - Bin  253 (1482.42 Hz) vs 1479.98 Hz (  +2.9 cents)
              when  253 => paino(69) <= data_i;
              -- Key 71 (G6) - Bin  268 (1570.31 Hz) vs 1567.98 Hz (  +2.6 cents)
              when  268 => paino(70) <= data_i;
              -- Key 72 (G#6) - Bin  284 (1664.06 Hz) vs 1661.22 Hz (  +3.0 cents)
              when  284 => paino(71) <= data_i;
              -- Key 73 (A6) - Bin  300 (1757.81 Hz) vs 1760.00 Hz (  -2.2 cents)
              when  300 => paino(72) <= data_i;
              -- Key 74 (A#6) - Bin  318 (1863.28 Hz) vs 1864.66 Hz (  -1.3 cents)
              when  318 => paino(73) <= data_i;
              -- Key 75 (B6) - Bin  337 (1974.61 Hz) vs 1975.53 Hz (  -0.8 cents)
              when  337 => paino(74) <= data_i;
              -- Key 76 (C7) - Bin  357 (2091.80 Hz) vs 2093.00 Hz (  -1.0 cents)
              when  357 => paino(75) <= data_i;
              -- Key 77 (C#7) - Bin  378 (2214.84 Hz) vs 2217.46 Hz (  -2.0 cents)
              when  378 => paino(76) <= data_i;
              -- Key 78 (D7) - Bin  401 (2349.61 Hz) vs 2349.32 Hz (  +0.2 cents)
              when  401 => paino(77) <= data_i;
              -- Key 79 (D#7) - Bin  425 (2490.23 Hz) vs 2489.02 Hz (  +0.8 cents)
              when  425 => paino(78) <= data_i;
              -- Key 80 (E7) - Bin  450 (2636.72 Hz) vs 2637.02 Hz (  -0.2 cents)
              when  450 => paino(79) <= data_i;
              -- Key 81 (F7) - Bin  477 (2794.92 Hz) vs 2793.83 Hz (  +0.7 cents)
              when  477 => paino(80) <= data_i;
              -- Key 82 (F#7) - Bin  505 (2958.98 Hz) vs 2959.96 Hz (  -0.6 cents)
              when  505 => paino(81) <= data_i;
              -- Key 83 (G7) - Bin  535 (3134.77 Hz) vs 3135.96 Hz (  -0.7 cents)
              when  535 => paino(82) <= data_i;
              -- Key 84 (G#7) - Bin  567 (3322.27 Hz) vs 3322.44 Hz (  -0.1 cents)
              when  567 => paino(83) <= data_i;
              -- Key 85 (A7) - Bin  601 (3521.48 Hz) vs 3520.00 Hz (  +0.7 cents)
              when  601 => paino(84) <= data_i;
              -- Key 86 (A#7) - Bin  636 (3726.56 Hz) vs 3729.31 Hz (  -1.3 cents)
              when  636 => paino(85) <= data_i;
              -- Key 87 (B7) - Bin  674 (3949.22 Hz) vs 3951.07 Hz (  -0.8 cents)
              when  674 => paino(86) <= data_i;
              -- Key 88 (C8) - Bin  714 (4183.59 Hz) vs 4186.01 Hz (  -1.0 cents)
              when  714 => paino(87) <= data_i;
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
