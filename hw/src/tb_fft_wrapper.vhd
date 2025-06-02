library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity tb_fft_wrapper is
end tb_fft_wrapper;

architecture Behavioral of tb_fft_wrapper is
  -- COMPONENT DECLARATIONS (unchanged from your original)
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
      fifo_full         : out std_logic;
      fifo_empty        : out std_logic;
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
      fifo_full         : in std_logic;
      fifo_empty        : in std_logic;
        mag_sum_dbg_o        : out std_logic_vector(9 downto 0);
        threshold_dbg_o      : out std_logic_vector(9 downto 0);
        fft_data_o_dbg_o     : out std_logic;
        re_FFT_output_dbg  : out std_logic_vector(23 downto 0);
        im_FFT_output_dbg  : out std_logic_vector(23 downto 0);
      tvalid_o          : out std_logic;
      fft_data_o        : out std_logic;
      fft_done_o        : out std_logic;
      bin_addr_o        : out std_logic_vector(4 downto 0)
    );
  end component;

  -- CONSTANTS
  constant AXI_WIDTH      : integer := 32;
  constant CLOCK_PERIOD   : time := 10 ns;
  constant FAST_CLK_PER   : time := 7.46 ns;
  constant SINE_AMPL      : real := 8388607.0;  -- 24-bit signed max
  constant SINE_FREQ      : real := 1880.0;      -- 123 Hz test tone
  constant T_SAMPLE       : real := 1.0/48000.0;-- Sample period for 48kHz
  constant AUDIO_DATA_WIDTH : integer := 24;

  -- SIGNAL DECLARATIONS (corrected and complete)
  signal clk_100MHz       : std_logic := '0';
  signal clk_134MHz       : std_logic := '0';
  signal rstn             : std_logic := '0';

  -- I2S signals
  signal bclk             : std_logic := '0';
  signal lrclk            : std_logic := '0';
  signal ac_adc_data_i    : std_logic := '0';
  signal ac_dac_data_o    : std_logic := '0';
  
  -- AXI Stream signals
  signal m_axis_tvalid    : std_logic := '0';
  signal m_axis_tdata     : std_logic_vector(31 downto 0) := (others => '0');
  signal m_axis_tready    : std_logic := '0';
  signal m_axis_tstrb     : std_logic_vector(3 downto 0) := (others => '0');
  signal m_axis_tlast     : std_logic := '0';
  
  -- FIFO signals
  signal fifo_tvalid      : std_logic := '0';
  signal fifo_tdata       : std_logic_vector(31 downto 0) := (others => '0');
  signal fifo_tready      : std_logic := '0';
  signal fifo_tstrb       : std_logic_vector(3 downto 0) := (others => '0');
  signal fifo_tlast       : std_logic := '0';
  
  -- FFT signals
  signal fft_tready       : std_logic := '0';
  signal fft_valid        : std_logic := '0';
  signal fft_data         : std_logic := '0';
  signal fft_done, fifo_full, fifo_empty         : std_logic := '0';
  signal fft_bin_addr     : std_logic_vector(4 downto 0) := (others => '0');

  -- Audio generation signals
  signal sine_data        : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sine_data_tx     : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
  signal bit_count        : integer := AUDIO_DATA_WIDTH-1;
  signal data_in          : std_logic := '0';  -- Added missing signal
  signal re_FFT_output, im_FFT_output : std_logic_vector(23 downto 0);

begin
  -- Clock generation (unchanged)
  clk_100MHz <= not clk_100MHz after CLOCK_PERIOD/2;
  clk_134MHz <= not clk_134MHz after FAST_CLK_PER/2;

  -- Reset generation (unchanged)
  process
  begin
    rstn <= '0';
    wait for 100 ns;
    rstn <= '1';
    wait;
  end process;

  -- I2S Wrapper instance (corrected signal connections)
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
      ac_bclk_o        => bclk,
      ac_mclk_o        => open,
      ac_mute_n_o      => open,
      ac_dac_data_o    => ac_dac_data_o,
      ac_dac_lrclk_o   => open,
      ac_adc_data_i    => data_in,  -- Connected to data_in from process
      ac_adc_lrclk_o   => lrclk,
      lrclk_unbuff_o   => open,
      m00_axis_aclk    => clk_100MHz,
      m00_axis_aresetn => rstn,
      m00_axis_tvalid  => m_axis_tvalid,
      m00_axis_tdata   => m_axis_tdata,
      m00_axis_tstrb   => m_axis_tstrb,
      m00_axis_tlast   => m_axis_tlast,
      m00_axis_tready  => m_axis_tready
    );

  -- FIFO instance (corrected signal connections)
  fifo_inst : axis_fifo
    generic map (
      DATA_WIDTH => AXI_WIDTH,
      FIFO_DEPTH => 64
    )
    port map (
      s00_axis_aclk    => clk_100MHz,
      s00_axis_aresetn => rstn,
      s00_axis_tready  => m_axis_tready,
      s00_axis_tdata   => m_axis_tdata,
      s00_axis_tstrb   => m_axis_tstrb,
      s00_axis_tlast   => m_axis_tlast,
      s00_axis_tvalid  => m_axis_tvalid,
      fifo_full        => fifo_full,
      fifo_empty => fifo_empty,
      m00_axis_aclk    => clk_100MHz,
      m00_axis_aresetn => rstn,
      m00_axis_tvalid  => fifo_tvalid,
      m00_axis_tdata   => fifo_tdata,
      m00_axis_tstrb   => fifo_tstrb,
      m00_axis_tlast   => fifo_tlast,
      m00_axis_tready  => fifo_tready
    );

  -- FFT instance (corrected signal connections)
  fft_inst : small_test_FFT_wrapper
    port map (
      s00_axis_aclk    => clk_100MHz,
      s00_axis_aresetn => rstn,
      s00_axis_tready  => fifo_tready,
      s00_axis_tdata   => fifo_tdata,
      s00_axis_tstrb   => fifo_tstrb,
      s00_axis_tlast   => fifo_tlast,
      s00_axis_tvalid  => fifo_tvalid,
      fifo_full => fifo_full,
      fifo_empty => fifo_empty,
        re_FFT_output_dbg  => re_FFT_output,
        im_FFT_output_dbg  => im_FFT_output,
      tvalid_o         => fft_valid,
      fft_data_o       => fft_data,
      fft_done_o       => fft_done,
      bin_addr_o       => fft_bin_addr
    );

  -- Audio generation process (unchanged logic, just fixed signal names)
  generate_audio_data: process
    variable t : real := 0.0;
  begin
    -- Loop forever
    loop
      -- Progress one sample through the sine wave:
      sine_data <= std_logic_vector(to_signed(integer(SINE_AMPL*sin(MATH_2_PI*SINE_FREQ*t)), AUDIO_DATA_WIDTH));

      -- Take sample
      wait until lrclk = '1';
      sine_data_tx <= std_logic_vector(unsigned(not(sine_data(AUDIO_DATA_WIDTH-1)) & sine_data(AUDIO_DATA_WIDTH-2 downto 0)));

      -- Transmit sample to right audio channel
      bit_count <= AUDIO_DATA_WIDTH-1;  -- Initialize bit counter, send MSB first
      for i in 0 to AUDIO_DATA_WIDTH-1 loop
        wait until bclk = '0';
        data_in <= sine_data_tx(bit_count-i);  -- Set input data
      end loop;

      data_in <= '0';
      bit_count <= AUDIO_DATA_WIDTH-1;  -- Reset bit counter to MSB

      -- Transmit sample to left audio channel
      wait until lrclk = '0';
      for i in 0 to AUDIO_DATA_WIDTH-1 loop
        wait until bclk = '0';
        data_in <= sine_data_tx(bit_count-i);  -- Set input data
      end loop;
      data_in <= '0';

      -- Increment by one sample
      t := t + T_SAMPLE;
    end loop;
  end process generate_audio_data;

end Behavioral;