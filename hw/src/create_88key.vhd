
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


entity create_88key is
port(
    clkb_i : in std_logic;
    data_i : in std_logic;
    en_i : in std_logic;
    r_addr_o : out std_logic_vector(10 downto 0);
    paino_data_o : out std_logic_vector(87 downto 0);
    paino_done_o : out std_logic
    );
end create_88key;

architecture Behavioral of create_88key is
signal load_enable_reg, load_enable : std_logic := '0';
signal address_counter : unsigned(10 downto 0) := (others => '0');
signal paino : std_logic_vector(87 downto 0) := (others => '0');

type statetype is (init, count_address, create_paino, send_paino);
signal cs, ns : statetype := init;
signal count_en, count_tc, create_paino_en, rst : std_logic := '0';

begin

-- double flop synchronizer
FLOPPA : process(clkb_i) begin
if rising_edge(clkb_i) then
    load_enable_reg <= en_i;
    load_enable <= load_enable_reg;
end if;
end process;

load_count: process(clkb_i) begin
if rising_edge(clkb_i) then
    if (rst = '1') then
        address_counter <= (others => '0');
    elsif (count_en = '1' and address_counter <= (to_unsigned(2047, 11)) then
        address_counter <= address_counter + 1;
    end if;
end if;
end process;

r_addr_o <= std_logic_vector(address_counter);

counter_tc : process(address_counter) begin
    if (address_counter = to_unsigned(2047, 11)) then
        count_tc <= '1';
    else
        count_tc <= '0';
    end if;
end process;
        
        
-- MAP BINS TO PIANO KEYS

--paino_data_o <= paino;
--mapp : process(clkb_i) begin
--if (rising_edge(clkb_i) then
--    if (rst = '1') then
--        paino <= (others => '0');
--    else
--        if (address_counter < ) then
--            paino
        
------------------------FSM-----------------
stateupdate: process(clkb_i) begin
if rising_edge(clkb_i) then 
    cs <= ns;
end if;
end process;

nextstate : process(cs, load_enable, count_tc) begin
ns <= cs;
count_en <= '0';
create_paino_en <= '0';
paino_done_o <= '0';
rst <= '0';
case cs is
    when init =>
        if (load_enable = '1') then
            ns <= count_address;
        end if;
        rst <= '1';
    when count_address =>
        count_en <= '1';
        if (count_tc = '1') then
            ns <= create_paino;
        end if;
    when create_paino => 
        create_paino_en <= '1';
    when send_paino => 
        paino_done_o <= '1';
        if (load_enable = '0') then
            ns <= init;
        end if;
    when others => ns <= init;
end case;
end process;
            
        
            
end Behavioral;
