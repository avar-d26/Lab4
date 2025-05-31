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
  signal doutb              : std_logic := '0';

  signal en_i               : std_logic := '0';
  signal r_addr_o           : std_logic_vector(11 downto 0);
  signal paino_data_o       : std_logic_vector(87 downto 0);
  signal paino_done_o       : std_logic;
  
  -- clock period
  constant CLK_PERIOD : time := 10 ns;
  constant anotherclkperiod : time := 7.46 ns;

begin

  -- Clock generation
  process
  begin
    wait for CLK_PERIOD / 2;
    clka <= not clka;
  end process;

  process
  begin
    wait for anotherclkperiod / 2;
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
  -- Simulation control
  stim_proc : process
  begin
    -- Wait for global reset
    wait for 50 ns;

    -- Write 4096 values, only index 0 and 500 get '1', others get '0'
    for i in 0 to 4095 loop
      -- Longer pause for wea = '0'
      if i = 1024 then
        wea <= '0';  -- Temporarily disable write
        wait for 5000 ns;  -- Increased from 200 ns to 500 ns
      end if;

      -- Start reading earlier for more overlap
      if i = 4000 then
        en_i <= '1';  -- Trigger FSM ~100 writes before end
      end if;

      wea    <= '1';
      addra  <= std_logic_vector(to_unsigned(i, 12));
      if (i = 50 or i = 500 or i = 1 or i = 4095) then
        dina <= '1';
      else
        dina <= '0';
      end if;
      wait for CLK_PERIOD;
    end loop;

    -- Stop writing
    wea <= '0';

    -- Let FSM run for a while
    wait for 3000 ns;

    -- Stop simulation
    wait;
  end process;



end sim;
