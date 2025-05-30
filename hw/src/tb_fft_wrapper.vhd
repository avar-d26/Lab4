library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity tb_fft_wrapper is
end tb_fft_wrapper;

architecture Behavioral of tb_fft_wrapper is
  -- COMPONENTS (keep your original component declarations)
  component axis_i2s_wrapper is
    generic (
      C_AXI_STREAM_DATA_WIDTH : integer := 32;
      AC_DATA_WIDTH           : integer := 24;
      DDS_DATA_WIDTH          : integer := 24;
      DDS_PHASE_DATA_WIDTH    : integer := 12;
      C_S00_AXI_DATA_WIDTH    : integer := 32;
      C_S00_AXI_ADDR_WIDTH    : integer := 4
    );
    port (
      sysclk_i         : in std_logic;
      ac_bclk_o        : out std_logic;
      ac_mclk_o        : out std_logic;
      ac_mute_n_o      : out std_logic;
      ac_dac_data_o    : out std_logic;
      ac_dac_lrclk_o   : out std_logic;
      ac_adc_data_i    : in  std_logic;
      ac_adc_lrclk_o   : out std_logic;
      lrclk_unbuff_o   : out std_logic;
      m00_axis_aclk    : in std_logic;
      m00_axis_aresetn : in std_logic;
      m00_axis_tvalid  : out std_logic;
      m00_axis_tdata   : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
      m00_axis_tstrb   : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
      m00_axis_tlast   : out std_logic;
      m00_axis_tready  : in  std_logic
    );
  end component;

  component axis_fifo is
    generic (
      DATA_WIDTH : integer;
      FIFO_DEPTH : integer
    );
    port (
      s00_axis_aclk     : in std_logic;
      s00_axis_aresetn  : in std_logic;
      s00_axis_tready   : out std_logic;
      s00_axis_tdata    : in std_logic_vector(DATA_WIDTH-1 downto 0);
      s00_axis_tstrb    : in std_logic_vector((DATA_WIDTH/8)-1 downto 0);
      s00_axis_tlast    : in std_logic;
      s00_axis_tvalid   : in std_logic;
      m00_axis_aclk     : in std_logic;
      m00_axis_aresetn  : in std_logic;
      m00_axis_tvalid   : out std_logic;
      m00_axis_tdata    : out std_logic_vector(DATA_WIDTH-1 downto 0);
      m00_axis_tstrb    : out std_logic_vector((DATA_WIDTH/8)-1 downto 0);
      m00_axis_tlast    : out std_logic;
      m00_axis_tready   : in std_logic
    );
  end component;

  component small_test_FFT_wrapper is
    generic (
      INPUT_DATA_WIDTH  : integer := 32;
      OUTPUT_DATA_WIDTH : integer := 1;
      FFT_WIDTH        : integer := 64;
      ADDR_LENGTH      : integer := 32
    );
    port (
      s00_axis_aclk     : in std_logic;
      s00_axis_aresetn  : in std_logic;
      s00_axis_tready   : out std_logic;
      s00_axis_tdata    : in std_logic_vector(INPUT_DATA_WIDTH-1 downto 0);
      s00_axis_tstrb    : in std_logic_vector((INPUT_DATA_WIDTH/8)-1 downto 0);
      s00_axis_tlast    : in std_logic;
      s00_axis_tvalid   : in std_logic;
      tvalid_o          : out std_logic;
      fft_data_o        : out std_logic;
      fft_done_o        : out std_logic;
      bin_addr_o        : out std_logic_vector(4 downto 0)
    );
  end component;

  -- CONSTANTS & SIGNALS
  constant AXI_WIDTH      : integer := 32;
  constant CLOCK_PERIOD   : time := 10 ns;
  constant FAST_CLK_PER   : time := 7.46 ns;
  constant AMP            : real := 8388607.0;  -- 24-bit signed max
  constant FS             : real := 48000.0;
  constant TEST_FREQ      : real := 123.0;     -- 123 Hz test tone
  constant AUDIO_WIDTH    : integer := 24;

  signal clk_100MHz       : std_logic := '0';
  signal clk_134MHz       : std_logic := '0';
  signal rstn             : std_logic := '0';

  signal bclk             : std_logic := '0';
  signal lrclk            : std_logic;
  signal ac_adc_data_i    : std_logic := '0';

  signal m_axis_tvalid    : std_logic;
  signal m_axis_tdata     : std_logic_vector(31 downto 0);
  signal m_axis_tready    : std_logic;

  signal fifo_tvalid      : std_logic;
  signal fifo_tdata       : std_logic_vector(31 downto 0);
  signal fifo_tready      : std_logic;

  signal fft_tready       : std_logic;
  signal fft_valid        : std_logic;
  signal fft_data         : std_logic;
  signal fft_done         : std_logic;
  signal fft_bin_addr     : std_logic_vector(4 downto 0);

  -- Audio generation signals
  signal sine_data        : std_logic_vector(AUDIO_WIDTH-1 downto 0) := (others => '0');
  signal sine_data_tx     : std_logic_vector(AUDIO_WIDTH-1 downto 0) := (others => '0');
  signal bit_count        : integer := AUDIO_WIDTH-1;
  signal ac_dac_data_o    : std_logic := '0';

begin
  -- Clock generation
  clk_100MHz <= not clk_100MHz after CLOCK_PERIOD/2;
  clk_134MHz <= not clk_134MHz after FAST_CLK_PER/2;
  bclk       <= not bclk after 50 ns; -- ~3.072 MHz for I2S

  -- Reset generation
  process
  begin
    rstn <= '0';
    wait for 100 ns;
    rstn <= '1';
    wait;
  end process;

  -- I2S Wrapper
  i2s_inst : axis_i2s_wrapper
    generic map (
      C_AXI_STREAM_DATA_WIDTH => AXI_WIDTH,
      AC_DATA_WIDTH           => 24,
      DDS_DATA_WIDTH          => 24,
      DDS_PHASE_DATA_WIDTH    => 12,
      C_S00_AXI_DATA_WIDTH    => 32,
      C_S00_AXI_ADDR_WIDTH    => 4
    )
    port map (
      sysclk_i         => clk_100MHz,
      ac_bclk_o        => open,
      ac_mclk_o        => open,
      ac_mute_n_o      => open,
      ac_dac_data_o    => ac_dac_data_o,
      ac_dac_lrclk_o   => open,
      ac_adc_data_i    => ac_adc_data_i,
      ac_adc_lrclk_o   => lrclk,
      lrclk_unbuff_o   => open,
      m00_axis_aclk    => clk_100MHz,
      m00_axis_aresetn => rstn,
      m00_axis_tvalid  => m_axis_tvalid,
      m00_axis_tdata   => m_axis_tdata,
      m00_axis_tstrb   => open,
      m00_axis_tlast   => open,
      m00_axis_tready  => m_axis_tready
    );

  -- FIFO
  fifo_inst : axis_fifo
    generic map (
      DATA_WIDTH => AXI_WIDTH,
      FIFO_DEPTH => 1024
    )
    port map (
      s00_axis_aclk    => clk_100MHz,
      s00_axis_aresetn => rstn,
      s00_axis_tready  => m_axis_tready,
      s00_axis_tdata   => m_axis_tdata,
      s00_axis_tstrb   => (others => '1'),
      s00_axis_tlast   => '0',
      s00_axis_tvalid  => m_axis_tvalid,
      m00_axis_aclk    => clk_100MHz,
      m00_axis_aresetn => rstn,
      m00_axis_tvalid  => fifo_tvalid,
      m00_axis_tdata   => fifo_tdata,
      m00_axis_tstrb   => open,
      m00_axis_tlast   => open,
      m00_axis_tready  => fifo_tready
    );

  -- FFT
  fft_inst : small_test_FFT_wrapper
    port map (
      s00_axis_aclk    => clk_100MHz,
      s00_axis_aresetn => rstn,
      s00_axis_tready  => fifo_tready,
      s00_axis_tdata   => fifo_tdata,
      s00_axis_tstrb   => (others => '1'),
      s00_axis_tlast   => '0',
      s00_axis_tvalid  => fifo_tvalid,
      tvalid_o         => fft_valid,
      fft_data_o       => fft_data,
      fft_done_o       => fft_done,
      bin_addr_o       => fft_bin_addr
    );

  -- Audio generation process (maintaining your structure)
-- Audio generation process - now properly formatted for I2S
generate_audio_data: process
    variable t : real := 0.0;
    variable sample_int : integer;
    variable shift_reg : std_logic_vector(23 downto 0) := (others => '0');
    variable bit_counter : integer := 0;
begin
    wait until rstn = '1';
    wait for 100 ns; -- Additional settling time
    
    -- Loop forever
    loop
        -- Generate new sine wave sample (24-bit signed)
        sample_int := integer(AMP * sin(2.0 * MATH_PI * TEST_FREQ * t));
        shift_reg := std_logic_vector(to_signed(sample_int, 24));
        t := t + 1.0/FS; -- Increment time for next sample
        
        -- Wait for left channel (LRCLK = 0)
        wait until falling_edge(bclk) and lrclk = '0';
        
        -- Transmit left channel data (MSB first)
        for i in 23 downto 0 loop
            ac_adc_data_i <= shift_reg(i);
            wait until falling_edge(bclk);
        end loop;
        
        -- Pad with zeros (I2S requires 32 bits per channel)
        for i in 1 to 8 loop
            ac_adc_data_i <= '0';
            wait until falling_edge(bclk);
        end loop;
        
        -- Wait for right channel (LRCLK = 1)
        wait until falling_edge(bclk) and lrclk = '1';
        
        -- Transmit right channel data (same as left for test)
        for i in 23 downto 0 loop
            ac_adc_data_i <= shift_reg(i);
            wait until falling_edge(bclk);
        end loop;
        
        -- Pad with zeros
        for i in 1 to 8 loop
            ac_adc_data_i <= '0';
            wait until falling_edge(bclk);
        end loop;
    end loop;
end process generate_audio_data;

end Behavioral;