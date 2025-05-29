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
              when 3 to 4 => -- Key  1 (A0 27.5Hz)
                paino(0) <= paino(0) or data_i;
              when 5 => -- Key  2 (A#0 29.1Hz)
                paino(1) <= paino(1) or data_i;
              when 6 => -- Key  5 (C#1 34.6Hz)
                paino(4) <= paino(4) or data_i;
              when 7 => -- Key  8 (E1 41.2Hz)
                paino(7) <= paino(7) or data_i;
              when 8 => -- Key 10 (F#1 46.2Hz)
                paino(9) <= paino(9) or data_i;
              when 9 => -- Key 12 (G#1 51.9Hz)
                paino(11) <= paino(11) or data_i;
              when 10 => -- Key 14 (A#1 58.3Hz)
                paino(13) <= paino(13) or data_i;
              when 11 => -- Key 16 (C2 65.4Hz)
                paino(15) <= paino(15) or data_i;
              when 12 => -- Key 17 (C#2 69.3Hz)
                paino(16) <= paino(16) or data_i;
              when 13 => -- Key 19 (D#2 77.8Hz)
                paino(18) <= paino(18) or data_i;
              when 14 => -- Key 20 (E2 82.4Hz)
                paino(19) <= paino(19) or data_i;
              when 15 => -- Key 21 (F2 87.3Hz)
                paino(20) <= paino(20) or data_i;
              when 16 => -- Key 22 (F#2 92.5Hz)
                paino(21) <= paino(21) or data_i;
              when 17 => -- Key 23 (G2 98.0Hz)
                paino(22) <= paino(22) or data_i;
              when 18 => -- Key 24 (G#2 103.8Hz)
                paino(23) <= paino(23) or data_i;
              when 19 => -- Key 25 (A2 110.0Hz)
                paino(24) <= paino(24) or data_i;
              when 20 => -- Key 26 (A#2 116.5Hz)
                paino(25) <= paino(25) or data_i;
              when 21 => -- Key 27 (B2 123.5Hz)
                paino(26) <= paino(26) or data_i;
              when 22 => -- Key 28 (C3 130.8Hz)
                paino(27) <= paino(27) or data_i;
              when 23 to 24 => -- Key 29 (C#3 138.6Hz)
                paino(28) <= paino(28) or data_i;
              when 25 => -- Key 30 (D3 146.8Hz)
                paino(29) <= paino(29) or data_i;
              when 26 to 27 => -- Key 31 (D#3 155.6Hz)
                paino(30) <= paino(30) or data_i;
              when 28 => -- Key 32 (E3 164.8Hz)
                paino(31) <= paino(31) or data_i;
              when 29 to 30 => -- Key 33 (F3 174.6Hz)
                paino(32) <= paino(32) or data_i;
              when 31 to 32 => -- Key 34 (F#3 185.0Hz)
                paino(33) <= paino(33) or data_i;
              when 33 to 34 => -- Key 35 (G3 196.0Hz)
                paino(34) <= paino(34) or data_i;
              when 35 to 36 => -- Key 36 (G#3 207.7Hz)
                paino(35) <= paino(35) or data_i;
              when 37 to 38 => -- Key 37 (A3 220.0Hz)
                paino(36) <= paino(36) or data_i;
              when 39 to 40 => -- Key 38 (A#3 233.1Hz)
                paino(37) <= paino(37) or data_i;
              when 41 to 43 => -- Key 39 (B3 246.9Hz)
                paino(38) <= paino(38) or data_i;
              when 44 to 45 => -- Key 40 (C4 261.6Hz)
                paino(39) <= paino(39) or data_i;
              when 46 to 48 => -- Key 41 (C#4 277.2Hz)
                paino(40) <= paino(40) or data_i;
              when 49 to 51 => -- Key 42 (D4 293.7Hz)
                paino(41) <= paino(41) or data_i;
              when 52 to 54 => -- Key 43 (D#4 311.1Hz)
                paino(42) <= paino(42) or data_i;
              when 55 to 57 => -- Key 44 (E4 329.6Hz)
                paino(43) <= paino(43) or data_i;
              when 58 to 61 => -- Key 45 (F4 349.2Hz)
                paino(44) <= paino(44) or data_i;
              when 62 to 64 => -- Key 46 (F#4 370.0Hz)
                paino(45) <= paino(45) or data_i;
              when 65 to 68 => -- Key 47 (G4 392.0Hz)
                paino(46) <= paino(46) or data_i;
              when 69 to 72 => -- Key 48 (G#4 415.3Hz)
                paino(47) <= paino(47) or data_i;
              when 73 to 77 => -- Key 49 (A4 440.0Hz)
                paino(48) <= paino(48) or data_i;
              when 78 to 81 => -- Key 50 (A#4 466.2Hz)
                paino(49) <= paino(49) or data_i;
              when 82 to 86 => -- Key 51 (B4 493.9Hz)
                paino(50) <= paino(50) or data_i;
              when 87 to 91 => -- Key 52 (C5 523.3Hz)
                paino(51) <= paino(51) or data_i;
              when 92 to 97 => -- Key 53 (C#5 554.4Hz)
                paino(52) <= paino(52) or data_i;
              when 98 to 103 => -- Key 54 (D5 587.3Hz)
                paino(53) <= paino(53) or data_i;
              when 104 to 109 => -- Key 55 (D#5 622.3Hz)
                paino(54) <= paino(54) or data_i;
              when 110 to 115 => -- Key 56 (E5 659.3Hz)
                paino(55) <= paino(55) or data_i;
              when 116 to 122 => -- Key 57 (F5 698.5Hz)
                paino(56) <= paino(56) or data_i;
              when 123 to 129 => -- Key 58 (F#5 740.0Hz)
                paino(57) <= paino(57) or data_i;
              when 130 to 137 => -- Key 59 (G5 784.0Hz)
                paino(58) <= paino(58) or data_i;
              when 138 to 145 => -- Key 60 (G#5 830.6Hz)
                paino(59) <= paino(59) or data_i;
              when 146 to 154 => -- Key 61 (A5 880.0Hz)
                paino(60) <= paino(60) or data_i;
              when 155 to 163 => -- Key 62 (A#5 932.3Hz)
                paino(61) <= paino(61) or data_i;
              when 164 to 173 => -- Key 63 (B5 987.8Hz)
                paino(62) <= paino(62) or data_i;
              when 174 to 183 => -- Key 64 (C6 1046.5Hz)
                paino(63) <= paino(63) or data_i;
              when 184 to 194 => -- Key 65 (C#6 1108.7Hz)
                paino(64) <= paino(64) or data_i;
              when 195 to 206 => -- Key 66 (D6 1174.7Hz)
                paino(65) <= paino(65) or data_i;
              when 207 to 218 => -- Key 67 (D#6 1244.5Hz)
                paino(66) <= paino(66) or data_i;
              when 219 to 231 => -- Key 68 (E6 1318.5Hz)
                paino(67) <= paino(67) or data_i;
              when 232 to 245 => -- Key 69 (F6 1396.9Hz)
                paino(68) <= paino(68) or data_i;
              when 246 to 259 => -- Key 70 (F#6 1480.0Hz)
                paino(69) <= paino(69) or data_i;
              when 260 to 275 => -- Key 71 (G6 1568.0Hz)
                paino(70) <= paino(70) or data_i;
              when 276 to 291 => -- Key 72 (G#6 1661.2Hz)
                paino(71) <= paino(71) or data_i;
              when 292 to 309 => -- Key 73 (A6 1760.0Hz)
                paino(72) <= paino(72) or data_i;
              when 310 to 327 => -- Key 74 (A#6 1864.7Hz)
                paino(73) <= paino(73) or data_i;
              when 328 to 347 => -- Key 75 (B6 1975.5Hz)
                paino(74) <= paino(74) or data_i;
              when 348 to 367 => -- Key 76 (C7 2093.0Hz)
                paino(75) <= paino(75) or data_i;
              when 368 to 389 => -- Key 77 (C#7 2217.5Hz)
                paino(76) <= paino(76) or data_i;
              when 390 to 412 => -- Key 78 (D7 2349.3Hz)
                paino(77) <= paino(77) or data_i;
              when 413 to 437 => -- Key 79 (D#7 2489.0Hz)
                paino(78) <= paino(78) or data_i;
              when 438 to 463 => -- Key 80 (E7 2637.0Hz)
                paino(79) <= paino(79) or data_i;
              when 464 to 490 => -- Key 81 (F7 2793.8Hz)
                paino(80) <= paino(80) or data_i;
              when 491 to 519 => -- Key 82 (F#7 2960.0Hz)
                paino(81) <= paino(81) or data_i;
              when 520 to 550 => -- Key 83 (G7 3136.0Hz)
                paino(82) <= paino(82) or data_i;
              when 551 to 583 => -- Key 84 (G#7 3322.4Hz)
                paino(83) <= paino(83) or data_i;
              when 584 to 618 => -- Key 85 (A7 3520.0Hz)
                paino(84) <= paino(84) or data_i;
              when 619 to 655 => -- Key 86 (A#7 3729.3Hz)
                paino(85) <= paino(85) or data_i;
              when 656 to 694 => -- Key 87 (B7 3951.1Hz)
                paino(86) <= paino(86) or data_i;
              when 695 to 768 => -- Key 88 (C8 4186.0Hz)
                paino(87) <= paino(87) or data_i;
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
