library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_create_88key is
end tb_create_88key;

architecture sim of tb_create_88key is
  signal clka, clkb         : std_logic := '0';
  signal wea                : std_logic := '0';
  signal addra              : std_logic_vector(11 downto 0) := (others => '0');
  signal dina               : std_logic := '0';
  signal addrb              : std_logic_vector(11 downto 0) := (others => '0');
  signal doutb              : std_logic;

  signal en_i               : std_logic := '0';
  signal r_addr_o           : std_logic_vector(11 downto 0);
  signal paino_data_o       : std_logic_vector(87 downto 0);
  signal paino_done_o       : std_logic;
  
  -- clock period
  constant CLK_PERIOD : time := 10 ns;

begin

  -- Clock generation
  process
  begin
    wait for CLK_PERIOD / 2;
    clka <= not clka;
  end process;

  process
  begin
    wait for CLK_PERIOD / 2;
    clkb <= not clkb;
  end process;

  -- Instantiate BRAM wrapper
  DUT_BRAM : entity work.BRAM_wrapper
    port map (
      clka   => clka,
      wea    => wea,
      addra  => addra,
      dina   => dina,
      clkb   => clkb,
      addrb  => r_addr_o,
      doutb  => doutb
    );

  -- Instantiate create_88key
  DUT_PIANO : entity work.create_88key
    port map (
      clkb_i        => clkb,
      data_i        => doutb,
      en_i          => en_i,
      r_addr_o      => r_addr_o,
      paino_data_o  => paino_data_o,
      paino_done_o  => paino_done_o
    );

  -- Simulation control
  stim_proc : process
  begin
    -- Wait for global reset
    wait for 50 ns;

    -- Write 4096 values alternating between 0 and 1
for i in 0 to 4095 loop
  wea    <= '1';
  addra  <= std_logic_vector(to_unsigned(i, 12));
  if (i mod 2 = 0) then
    dina <= '0';
  else
    dina <= '1';
  end if;
  wait for CLK_PERIOD;
end loop;   
    -- Stop writing
    wea <= '0';
    wait for 20 ns;

    -- Start reading
    en_i <= '1';
    wait for 3000 ns;  -- allow FSM to run

    -- Stop simulation
    wait;
  end process;

end sim;
