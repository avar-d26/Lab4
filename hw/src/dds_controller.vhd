----------------------------------------------------------------------------
--  Lab 3: Streaming Audio DSP
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
-- Author: Brandon Zhao
----------------------------------------------------------------------------
-- Description: DDS Controller with Block Memory (BROM) for storing the samples
----------------------------------------------------------------------------
-- Add libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;             -- required for modulus function
use IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------
-- Entity definition
entity dds_controller is
    Generic ( DDS_DATA_WIDTH : integer := 24;       -- DDS data width
            PHASE_DATA_WIDTH : integer := 12);      -- DDS phase increment data width
    Port (
      clk_i         : in std_logic; -- 48kHz
      enable_i      : in std_logic; -- increment phase
      reset_i       : in std_logic; -- reset BRAM Addr to 0
      phase_inc_i   : in std_logic_vector(PHASE_DATA_WIDTH-1 downto 0); --
     
      data_o        : out std_logic_vector(DDS_DATA_WIDTH-1 downto 0));
end dds_controller;
----------------------------------------------------------------------------
architecture Behavioral of dds_controller is
----------------------------------------------------------------------------
-- Define constants, signals, and declare sub-components
----------------------------------------------------------------------------
signal addr_counter_reg : unsigned (PHASE_DATA_WIDTH - 1 downto 0) := (others => '0');
signal dout_sig : std_logic_vector(DDS_DATA_WIDTH-1 downto 0) := (others => '0');
signal sine_BRAM_addr : std_logic_vector (PHASE_DATA_WIDTH - 1 downto 0) := (others => '0');

component blk_mem_gen_1 is
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(PHASE_DATA_WIDTH - 1 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(DDS_DATA_WIDTH-1 DOWNTO 0)
  );
end component;

begin
----------------------------------------------------------------------------
-- Port-map sub-components, and describe the entity behavior
----------------------------------------------------------------------------
-- BRAM INSTANTIATION
BRAM_inst: blk_mem_gen_1 PORT MAP(
    clka => clk_i,
    addra => sine_BRAM_addr, -- counter serves as address
    douta => dout_sig);


-- Counter for phase incrementer
phase_increment_proc: process(clk_i)
begin
if rising_edge(clk_i) then
    if (reset_i = '1') then
        addr_counter_reg <= (others => '0');
    elsif (enable_i = '1') then
        addr_counter_reg <= addr_counter_reg + unsigned(phase_inc_i) + 1;
    end if;
end if;
end process;

sine_BRAM_addr <= std_logic_vector(addr_counter_reg); -- cast to a standard logic address
data_o <= dout_sig; -- connect to BRAM output



end Behavioral;