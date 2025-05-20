library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity tb_audio_axi_system is
end tb_audio_axi_system;

architecture testbench of tb_audio_axi_system is
----------------------------------------------------------------------------
-- Constants for Audio Processing System
constant AXI_DATA_WIDTH : integer := 32;        -- 32-bit AXI data bus
constant AXI_FIFO_DEPTH : integer := 12;        -- AXI stream FIFO depth
constant CLOCK_PERIOD   : time := 10ns;         -- 100 MHz clock for audio system
constant AXI_CLOCK_PERIOD : time := 8ns;        -- 125 MHz clock for AXI Lite
constant AUDIO_DATA_WIDTH : integer := 24;      -- I2S data width
constant SINE_FREQ      : real := 1000.0;       -- Test sine wave frequency
constant SINE_AMPL      : real := 8388607.0;    -- 24-bit amplitude
constant SAMPLING_FREQ  : real := 48000.00;     -- 48 kHz sampling rate
constant T_SAMPLE : real := 1.0/SAMPLING_FREQ;

-- Constants for AXI Lite Interface
constant REG_DATA_WIDTH : integer := 4;
constant C_S00_AXI_DATA_WIDTH : integer := 32;
constant C_S00_AXI_ADDR_WIDTH : integer := 6;

----------------------------------------------------------------------------
-- Signals for Audio Processing System
signal clk, axi_reset_n : std_logic := '0';
signal mclk, bclk, lrclk, lrclk_unbuff : std_logic := '0';
signal ac_adc_data_i, ac_dac_data_o : std_logic := '0';
signal ac_mute_en, ac_mute_en_o : std_logic := '0';

-- AXI Stream FIFO 0 Signals
signal fifo0_s00_tready, fifo0_m00_tvalid : std_logic := '0';
signal fifo0_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
signal fifo0_m00_tstrb, fifo0_m00_tlast : std_logic := '0';

-- AXI Stream FIFO 1 Signals
signal fifo1_s00_tready, fifo1_m00_tvalid : std_logic := '0';
signal fifo1_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal fifo1_m00_tstrb, fifo1_m00_tlast : std_logic := '0';

-- I2S Wrapper AXI Stream Signals
signal i2s_s00_tready, i2s_m00_tvalid : std_logic := '0';
signal i2s_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');

-- FIR Wrapper Signals
signal fir_s00_tready, fir_m00_tvalid : std_logic := '0';
signal fir_m00_tdata : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal fir_m00_tstrb, fir_m00_tlast : std_logic := '0';
signal ch_select_sig : std_logic_vector(1 downto 0) := "00";
signal enable_fir_sig : std_logic := '1';

-- Testbench Signals
signal sine_data, sine_data_tx : std_logic_vector(AUDIO_DATA_WIDTH-1 downto 0) := (others => '0');
signal bit_count : integer := 0;

----------------------------------------------------------------------------
-- Signals for AXI Lite Interface
signal S_AXI_ACLK                     : std_logic;
signal S_AXI_ARESETN                  : std_logic;
signal S_AXI_AWADDR                   : std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
signal S_AXI_AWVALID                  : std_logic;
signal S_AXI_WDATA                    : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
signal S_AXI_WSTRB                    : std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
signal S_AXI_WVALID                   : std_logic;
signal S_AXI_BREADY                   : std_logic;
signal S_AXI_ARADDR                   : std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
signal S_AXI_ARVALID                  : std_logic;
signal S_AXI_RREADY                   : std_logic;
signal S_AXI_ARREADY                  : std_logic;
signal S_AXI_RDATA                    : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
signal S_AXI_RRESP                    : std_logic_vector(1 downto 0);
signal S_AXI_RVALID                   : std_logic;
signal S_AXI_WREADY                   : std_logic;
signal S_AXI_BRESP                    : std_logic_vector(1 downto 0);
signal S_AXI_BVALID                   : std_logic;
signal S_AXI_AWREADY                  : std_logic;
signal S_AXI_AWPROT                   : std_logic_vector(2 downto 0);
signal S_AXI_ARPROT                   : std_logic_vector(2 downto 0);

-- Testbench Signals for AXI Lite
signal enable_send, enable_read : std_logic;
signal axi_data_out : std_logic_vector(REG_DATA_WIDTH-1 downto 0);
signal axi_data_write : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
signal data_select : std_logic_vector(C_S00_AXI_ADDR_WIDTH-3 downto 0);
signal axi_reg : integer := 0;

----------------------------------------------------------------------------
-- Component Declarations
----------------------------------------------------------------------------

-- Audio Processing Components
component axis_fifo is
  generic (
    DATA_WIDTH  : integer := AXI_DATA_WIDTH;
    FIFO_DEPTH  : integer := AXI_FIFO_DEPTH
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

component axis_i2s_wrapper is
    generic (
        C_AXI_STREAM_DATA_WIDTH    : integer    := 32;
        AC_DATA_WIDTH : integer := 24;
        DDS_DATA_WIDTH : integer := 24;         
        DDS_PHASE_DATA_WIDTH : integer := 12   
    );
    Port ( 
        sysclk_i          : in std_logic;    
        ac_mute_en_i      : in std_logic;
        ac_bclk_o         : out std_logic;
        ac_mclk_o         : out std_logic;
        ac_mute_n_o       : out std_logic;    
        ac_dac_data_o     : out std_logic;
        ac_dac_lrclk_o    : out std_logic;            
        ac_adc_data_i     : in std_logic;
        ac_adc_lrclk_o    : out std_logic;    
        lrclk_unbuff_o    : out std_logic;          
        s00_axis_aclk     : in std_logic;
        s00_axis_aresetn  : in std_logic;
        s00_axis_tready   : out std_logic;
        s00_axis_tdata      : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
        s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
        s00_axis_tlast    : in std_logic;
        s00_axis_tvalid   : in std_logic;
        m00_axis_aclk     : in std_logic;
        m00_axis_aresetn  : in std_logic;
        m00_axis_tvalid   : out std_logic;
        m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
        m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
        m00_axis_tlast    : out std_logic;
        m00_axis_tready   : in std_logic;
        left_dds_phase_inc_dbg_o : out std_logic_vector(DDS_PHASE_DATA_WIDTH-1 downto 0);   
        right_dds_phase_inc_dbg_o : out std_logic_vector(DDS_PHASE_DATA_WIDTH-1 downto 0);   
        s00_axi_aclk    : in std_logic;
        s00_axi_aresetn    : in std_logic;
        s00_axi_awaddr    : in std_logic_vector(3 downto 0);
        s00_axi_awprot    : in std_logic_vector(2 downto 0);
        s00_axi_awvalid    : in std_logic;
        s00_axi_awready    : out std_logic;
        s00_axi_wdata    : in std_logic_vector(31 downto 0);
        s00_axi_wstrb    : in std_logic_vector(3 downto 0);
        s00_axi_wvalid    : in std_logic;
        s00_axi_wready    : out std_logic;
        s00_axi_bresp    : out std_logic_vector(1 downto 0);
        s00_axi_bvalid    : out std_logic;
        s00_axi_bready    : in std_logic;
        s00_axi_araddr    : in std_logic_vector(3 downto 0);
        s00_axi_arprot    : in std_logic_vector(2 downto 0);
        s00_axi_arvalid    : in std_logic;
        s00_axi_arready    : out std_logic;
        s00_axi_rdata    : out std_logic_vector(31 downto 0);
        s00_axi_rresp    : out std_logic_vector(1 downto 0);
        s00_axi_rvalid    : out std_logic;
        s00_axi_rready    : in std_logic);
end component;

component axi_stream_fir_wrapper is
generic (
    C_AXI_STREAM_DATA_WIDTH : integer := 32;
    AC_DATA_WIDTH : integer := 24
);
Port (
    lrclk_i : in STD_LOGIC;
    ch_select_i : in std_logic_vector (1 downto 0);
    enable_fir_i : in std_logic;
    aresetn_i  : in std_logic;
    s00_axis_aclk     : in std_logic;
    s00_axis_tready   : out std_logic;
    s00_axis_tdata  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
    s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
    s00_axis_tlast    : in std_logic;
    s00_axis_tvalid   : in std_logic;
    m00_axis_aclk     : in std_logic;
    m00_axis_tvalid   : out std_logic;
    m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
    m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
    m00_axis_tlast    : out std_logic;
    m00_axis_tready   : in std_logic);
end component;

-- AXI Lite Component
component engs128_axi_demo is
    generic (
        REG_OUTPUT_DATA_WIDTH : integer := 4;   -- output data width
        C_S00_AXI_DATA_WIDTH    : integer    := C_S00_AXI_DATA_WIDTH;
        C_S00_AXI_ADDR_WIDTH    : integer    := C_S00_AXI_ADDR_WIDTH
    );
    port (
        reg_select_i  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-3 downto 0);
        data_o  : out std_logic_vector(REG_OUTPUT_DATA_WIDTH-1 downto 0);
        s00_axi_aclk    : in std_logic;
        s00_axi_aresetn    : in std_logic;
        s00_axi_awaddr    : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_awprot    : in std_logic_vector(2 downto 0);
        s00_axi_awvalid    : in std_logic;
        s00_axi_awready    : out std_logic;
        s00_axi_wdata    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_wstrb    : in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
        s00_axi_wvalid    : in std_logic;
        s00_axi_wready    : out std_logic;
        s00_axi_bresp    : out std_logic_vector(1 downto 0);
        s00_axi_bvalid    : out std_logic;
        s00_axi_bready    : in std_logic;
        s00_axi_araddr    : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_arprot    : in std_logic_vector(2 downto 0);
        s00_axi_arvalid    : in std_logic;
        s00_axi_arready    : out std_logic;
        s00_axi_rdata    : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_rresp    : out std_logic_vector(1 downto 0);
        s00_axi_rvalid    : out std_logic;
        s00_axi_rready    : in std_logic
    );
end component;

----------------------------------------------------------------------------
-- Procedures for driving the AXI Lite bus
----------------------------------------------------------------------------
-- Procedure to write data to our AXI IP registers
procedure master_write_axi_reg(
    signal S_AXI_AWADDR : out std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
    signal S_AXI_WDATA : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_WSTRB : out std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
    signal enable_send : out std_logic;
    signal axi_register : in integer;
    signal write_data    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_BVALID : in std_logic) is
 begin
    S_AXI_AWADDR <= (others => '0');   
    S_AXI_AWADDR(C_S00_AXI_ADDR_WIDTH-1 downto 2) <= std_logic_vector(to_unsigned(axi_register,C_S00_AXI_ADDR_WIDTH-2));
    S_AXI_WSTRB <= (others => '1');
    S_AXI_WDATA <= std_logic_vector(resize(unsigned(write_data),C_S00_AXI_DATA_WIDTH));
    enable_send <= '1';             --Start AXI Write to responder
    wait for 1 ns; 
    enable_send <= '0';             --Clear Start Send Flag
    
    wait until S_AXI_BVALID = '1';
    wait until S_AXI_BVALID = '0';  --AXI Write finished
    S_AXI_WSTRB <= (others => '0');
    wait for AXI_CLOCK_PERIOD;

 end procedure master_write_axi_reg;

-- Procedure to read data from our AXI IP registers
procedure master_read_axi_reg(
    signal S_AXI_ARADDR : out std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
    signal enable_read : out std_logic;
    signal axi_register : in integer;
    signal S_AXI_RVALID : in std_logic) is
 begin
    S_AXI_ARADDR <= (others => '0');
    S_AXI_ARADDR(C_S00_AXI_ADDR_WIDTH-1 downto 2) <= std_logic_vector(to_unsigned(axi_register,C_S00_AXI_ADDR_WIDTH-2));
    enable_read <= '1';         --Start AXI Read from responder
    wait for 1 ns; 
    enable_read <= '0';         --Clear "Start Read" Flag
    wait until S_AXI_RVALID = '1';
    wait until S_AXI_RVALID = '0';
    wait for AXI_CLOCK_PERIOD;

 end procedure master_read_axi_reg;

begin
----------------------------------------------------------------------------
-- Clock Generation
-- Audio System Clock (100 MHz)
clk <= not clk after CLOCK_PERIOD/2;

-- AXI Lite Clock (125 MHz)
axi_clock_gen : process
begin
    S_AXI_ACLK <= '0';
    wait for AXI_CLOCK_PERIOD/2;
    S_AXI_ACLK <= '1';
    wait for AXI_CLOCK_PERIOD/2;
end process;

----------------------------------------------------------------------------
-- Component Instantiations
-- Audio Processing Chain
-- FIFO0: I2S(master) → FIFO0(slave)
fifo0: axis_fifo
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo0_s00_tready,
    s00_axis_tdata    => i2s_m00_tdata,
    s00_axis_tstrb    => (others => '1'),
    s00_axis_tlast    => '0',
    s00_axis_tvalid   => i2s_m00_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo0_m00_tvalid,
    m00_axis_tdata    => fifo0_m00_tdata,
    m00_axis_tstrb    => open,
    m00_axis_tlast    => open,
    m00_axis_tready   => fir_s00_tready
  );

-- FIR: FIFO0(master) → FIR(slave)
fir_inst: axi_stream_fir_wrapper
  generic map (
    C_AXI_STREAM_DATA_WIDTH => AXI_DATA_WIDTH,
    AC_DATA_WIDTH => AUDIO_DATA_WIDTH
  )
  port map (
    lrclk_i => lrclk_unbuff,
    ch_select_i => ch_select_sig,
    enable_fir_i => enable_fir_sig,
    aresetn_i => axi_reset_n,
    s00_axis_aclk => clk,
    s00_axis_tready => fir_s00_tready,
    s00_axis_tdata => fifo0_m00_tdata,
    s00_axis_tstrb => (others => '1'),
    s00_axis_tlast => '0',
    s00_axis_tvalid => fifo0_m00_tvalid,
    m00_axis_aclk => clk,
    m00_axis_tvalid => fir_m00_tvalid,
    m00_axis_tdata => fir_m00_tdata,
    m00_axis_tstrb => open,
    m00_axis_tlast => open,
    m00_axis_tready => fifo1_s00_tready
  );

-- FIFO1: FIR(master) → FIFO1(slave)
fifo1: axis_fifo
  port map (
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => fifo1_s00_tready,
    s00_axis_tdata    => fir_m00_tdata,
    s00_axis_tstrb    => (others => '1'),
    s00_axis_tlast    => '0',
    s00_axis_tvalid   => fir_m00_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => fifo1_m00_tvalid,
    m00_axis_tdata    => fifo1_m00_tdata,
    m00_axis_tstrb    => open,
    m00_axis_tlast    => open,
    m00_axis_tready   => i2s_s00_tready
  );

-- I2S Wrapper: FIFO1(master) → I2S(slave)
i2s_wrapper: axis_i2s_wrapper
  port map (
    sysclk_i          => clk,
    ac_mute_en_i      => ac_mute_en,
    ac_bclk_o         => bclk,
    ac_mclk_o         => mclk,
    ac_mute_n_o       => ac_mute_en_o,
    ac_dac_data_o     => ac_dac_data_o,
    ac_dac_lrclk_o    => lrclk,
    ac_adc_data_i     => ac_adc_data_i,
    ac_adc_lrclk_o    => open,
    lrclk_unbuff_o    => lrclk_unbuff,
    s00_axis_aclk     => clk,
    s00_axis_aresetn  => axi_reset_n,
    s00_axis_tready   => i2s_s00_tready,
    s00_axis_tdata    => fifo1_m00_tdata,
    s00_axis_tstrb    => (others => '1'),
    s00_axis_tlast    => '0',
    s00_axis_tvalid   => fifo1_m00_tvalid,
    m00_axis_aclk     => clk,
    m00_axis_aresetn  => axi_reset_n,
    m00_axis_tvalid   => i2s_m00_tvalid,
    m00_axis_tdata    => i2s_m00_tdata,
    m00_axis_tstrb    => open,
    m00_axis_tlast    => open,
    m00_axis_tready   => fifo0_s00_tready,
    left_dds_phase_inc_dbg_o => open,
    right_dds_phase_inc_dbg_o => open,
    s00_axi_aclk      => S_AXI_ACLK,
    s00_axi_aresetn   => S_AXI_ARESETN,
    s00_axi_awaddr    => (others => '0'),
    s00_axi_awprot    => (others => '0'),
    s00_axi_awvalid   => '0',
    s00_axi_awready   => open,
    s00_axi_wdata     => (others => '0'),
    s00_axi_wstrb     => (others => '0'),
    s00_axi_wvalid    => '0',
    s00_axi_wready    => open,
    s00_axi_bresp     => open,
    s00_axi_bvalid    => open,
    s00_axi_bready    => '1',
    s00_axi_araddr    => (others => '0'),
    s00_axi_arprot    => (others => '0'),
    s00_axi_arvalid   => '0',
    s00_axi_arready   => open,
    s00_axi_rdata     => open,
    s00_axi_rresp     => open,
    s00_axi_rvalid    => open,
    s00_axi_rready    => '1'
  );

-- AXI Lite DUT
axi_lite_dut: engs128_axi_demo
port map (
      reg_select_i => data_select,
      data_o => axi_data_out,
      s00_axi_aclk    => S_AXI_ACLK,
      s00_axi_aresetn => S_AXI_ARESETN,
      s00_axi_awaddr  => S_AXI_AWADDR,
      s00_axi_awprot  => S_AXI_AWPROT,
      s00_axi_awvalid => S_AXI_AWVALID,
      s00_axi_awready => S_AXI_AWREADY,
      s00_axi_wdata   => S_AXI_WDATA,
      s00_axi_wstrb   => S_AXI_WSTRB,
      s00_axi_wvalid  => S_AXI_WVALID,
      s00_axi_wready  => S_AXI_WREADY,
      s00_axi_bresp   => S_AXI_BRESP,
      s00_axi_bvalid  => S_AXI_BVALID,
      s00_axi_bready  => S_AXI_BREADY,
      s00_axi_araddr  => S_AXI_ARADDR,
      s00_axi_arprot  => S_AXI_ARPROT,
      s00_axi_arvalid => S_AXI_ARVALID,
      s00_axi_arready => S_AXI_ARREADY,
      s00_axi_rdata   => S_AXI_RDATA,
      s00_axi_rresp   => S_AXI_RRESP,
      s00_axi_rvalid  => S_AXI_RVALID,
      s00_axi_rready  => S_AXI_RREADY);

----------------------------------------------------------------------------
-- Processes for AXI Lite Interface
----------------------------------------------------------------------------
-- Initiate process which simulates a master wanting to write.
-- This process is blocked on a "Send Flag" (enable_send).
-- When the flag goes to 1, the process exits the wait state and
-- execute a write transaction.
axi_send_process : PROCESS
BEGIN
    S_AXI_AWVALID <= '0';
    S_AXI_WVALID <= '0';
    S_AXI_BREADY <= '0';
    loop
        wait until enable_send = '1';
        wait until S_AXI_ACLK= '0';
            S_AXI_AWVALID <= '1';
            S_AXI_WVALID <= '1';
        wait until (S_AXI_AWREADY and S_AXI_WREADY) = '1';  --Client ready to read address/data        
            S_AXI_BREADY <= '1';
        wait until S_AXI_BVALID = '1';  -- Write result valid
            assert S_AXI_BRESP = "00" report "AXI data not written" severity failure;
            S_AXI_AWVALID <= '0';
            S_AXI_WVALID <= '0';
            S_AXI_BREADY <= '1';
        wait until S_AXI_BVALID = '0';  -- All finished
            S_AXI_BREADY <= '0';
    end loop;
END PROCESS axi_send_process;

-- Initiate process which simulates a master wanting to read.
-- This process is blocked on a "Read Flag" (enable_read).
-- When the flag goes to 1, the process exits the wait state and
-- execute a read transaction.
axi_read_process : PROCESS
BEGIN
    S_AXI_ARVALID <= '0';
    S_AXI_RREADY <= '0';
    loop
        wait until enable_read = '1';
        wait until S_AXI_ACLK= '0';
            S_AXI_ARVALID <= '1';
            S_AXI_RREADY <= '1';
        wait until (S_AXI_RVALID and S_AXI_ARREADY) = '1';  --Client provided data
            assert S_AXI_RRESP = "00" report "AXI data not written" severity failure;
            S_AXI_ARVALID <= '0';
            S_AXI_RREADY <= '0';
    end loop;
END PROCESS axi_read_process;

----------------------------------------------------------------------------
-- I2S ADC Simulation (Sine Wave Input)
-- This process generates a sine wave and transmits it through the I2S interface
-- to simulate audio input
generate_audio_data: process
    variable t : real := 0.0;
begin        
----------------------------------------------------------------------------
-- Loop forever    
loop    
----------------------------------------------------------------------------
-- Progress one sample through the sine wave:
sine_data <= std_logic_vector(to_signed(integer(SINE_AMPL*sin(math_2_pi*SINE_FREQ*t) ), AUDIO_DATA_WIDTH));

----------------------------------------------------------------------------
-- Take sample
wait until lrclk = '1';
sine_data_tx <= std_logic_vector(unsigned(not(sine_data(AUDIO_DATA_WIDTH-1)) & sine_data(AUDIO_DATA_WIDTH-2 downto 0)));

----------------------------------------------------------------------------
-- Transmit sample to right audio channel
----------------------------------------------------------------------------
bit_count <= AUDIO_DATA_WIDTH-1;            -- Initialize bit counter, send MSB first
for i in 0 to AUDIO_DATA_WIDTH-1 loop
    wait until bclk = '0';
    ac_adc_data_i <= sine_data_tx(bit_count-i);     -- Set input data
end loop;

ac_adc_data_i <= '0';
bit_count <= AUDIO_DATA_WIDTH-1;            -- Reset bit counter to MSB

----------------------------------------------------------------------------
--Transmit sample to left audio channel
----------------------------------------------------------------------------
wait until lrclk = '0';
for i in 0 to AUDIO_DATA_WIDTH-1 loop
    wait until bclk = '0';
    ac_adc_data_i <= sine_data_tx(bit_count-i);     -- Set input data
end loop;
ac_adc_data_i <= '0';

----------------------------------------------------------------------------                        
--Increment by one sample
t := t + T_SAMPLE;
end loop;
    
end process generate_audio_data;

----------------------------------------------------------------------------
-- Test Sequence for Audio Processing System
-- This process tests the audio processing chain with different configurations
audio_test_sequence: process
begin
    -- Initialize
    axi_reset_n <= '0';
    ac_mute_en <= '0';
    ch_select_sig <= "00";  -- Default to both channels
    enable_fir_sig <= '1';  -- Enable FIR by default
    wait for 100 ns;
    
    -- Release reset
    axi_reset_n <= '1';
    wait until rising_edge(clk);

    -- Run simulation with different channel selections
    ac_mute_en <= '1';
    
    -- Test both channels
    ch_select_sig <= "00";
    wait for 200 us;
    
    -- Test left channel only
    ch_select_sig <= "01";
    wait for 200 us;
    
    -- Test right channel only
    ch_select_sig <= "10";
    wait for 200 us;
    
    -- Test FIR bypass (both channels)
    ch_select_sig <= "00";
    enable_fir_sig <= '0';
    wait for 200 us;
    
    -- Enable FIR and select both channels
    enable_fir_sig <= '1';
    ch_select_sig <= "00";
    wait for 200 us;
    
    -- Continue running while AXI tests execute
    wait;
end process;

----------------------------------------------------------------------------
-- Test Sequence for AXI Lite Interface
-- This process tests the AXI Lite register interface
axi_test_sequence: PROCESS
BEGIN
    -- Initialize, reset
    S_AXI_ARESETN <= '0';
    enable_send <= '0';
    enable_read <= '0';
    data_select <= (others => '0');
    axi_data_write <= (others => '0');
    axi_reg <= 0;           -- we are writing to AXI register 0
    
    wait for 15 ns;
    S_AXI_ARESETN <= '1';
    
    wait until rising_edge(S_AXI_ACLK);
    wait for AXI_CLOCK_PERIOD;
    
    -- write data to register 0
    axi_reg <= 0;
    axi_data_write <= std_logic_vector(to_unsigned(3,axi_data_write'LENGTH));
    wait for 100 ns;
    master_write_axi_reg(S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, enable_send, axi_reg, axi_data_write, S_AXI_BVALID);
    wait for 100 ns;
    
    -- read data written to register 0
    master_read_axi_reg(S_AXI_ARADDR, enable_read, axi_reg, S_AXI_RVALID);
    wait for 100 ns;
    
    -- write data to register 1
    axi_reg <= 1;
    axi_data_write <= std_logic_vector(to_unsigned(1,axi_data_write'LENGTH));
    wait for 100 ns;
    master_write_axi_reg(S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, enable_send, axi_reg, axi_data_write, S_AXI_BVALID);
    wait for 100 ns;
    
    -- read data written to register 1
    master_read_axi_reg(S_AXI_ARADDR, enable_read, axi_reg, S_AXI_RVALID);
    wait for 100 ns;
    
    -- write data to register 8
    axi_reg <= 8;
    axi_data_write <= std_logic_vector(to_unsigned(2,axi_data_write'LENGTH));
    wait for 100 ns;
    master_write_axi_reg(S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, enable_send, axi_reg, axi_data_write, S_AXI_BVALID);
    wait for 100 ns;
    
    -- read data written to register 8
    master_read_axi_reg(S_AXI_ARADDR, enable_read, axi_reg, S_AXI_RVALID);
    wait for 100 ns;
    
    -- cycle through select bits
    data_select <= std_logic_vector(to_unsigned(1,data_select'LENGTH));
    wait for 100 ns;
    data_select <= std_logic_vector(to_unsigned(2,data_select'LENGTH));
    wait for 100 ns;
    
    -- write data to register 15
    data_select <= (others => '1');
    axi_reg <= 15;
    axi_data_write <= std_logic_vector(to_unsigned(4,axi_data_write'LENGTH));
    wait for 100 ns;
    master_write_axi_reg(S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, enable_send, axi_reg, axi_data_write, S_AXI_BVALID);
    wait for 100 ns;
    
    -- read data written to register 15
    master_read_axi_reg(S_AXI_ARADDR, enable_read, axi_reg, S_AXI_RVALID);
    wait for 100 ns;
    
    -- End simulation after both tests complete
    wait for 1 ms;
    std.env.stop;
END PROCESS axi_test_sequence;

end testbench;