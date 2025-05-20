----------------------------------------------------------------------------
--  Lab 3: Streaming Audio DSP
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: Ava Rosenbaum and Brandon Zhao
----------------------------------------------------------------------------
--	Description: AXI Stream FIR filter selector
----------------------------------------------------------------------------
-- Add libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;    
use IEEE.STD_LOGIC_UNSIGNED.ALL;                                    
----------------------------------------------------------------------------
-- Entity definition
entity axi_stream_fir_wrapper is
generic (
        -- Parameters of Axi Stream Bus Interface S00_AXIS, M00_AXIS
        C_AXI_STREAM_DATA_WIDTH : integer := 32;
        AC_DATA_WIDTH : integer := 24
);
    Port (
       

        -- From I2S clock generator
        lrclk_i : in STD_LOGIC; -- unbuffered

       
        -- select ports
        ch_select_i         : in std_logic_vector (1 downto 0); -- select filter
        enable_fir_i        : in std_logic; -- enable filter output
       
       
        aresetn_i  : in std_logic;
       
        ----------------------------------------------------------------------------
        -- AXI Stream Interface (Receiver/Responder)
        -- Ports of Axi Responder Bus Interface S00_AXIS
        s00_axis_aclk     : in std_logic;
        s00_axis_tready   : out std_logic;
        s00_axis_tdata  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
        s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
        s00_axis_tlast    : in std_logic;
        s00_axis_tvalid   : in std_logic;

        -- AXI Stream Interface (Tranmitter/Controller)
        -- Ports of Axi Controller Bus Interface M00_AXIS
        m00_axis_aclk     : in std_logic;
        m00_axis_tvalid   : out std_logic;
        m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
        m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
        m00_axis_tlast    : out std_logic;
        m00_axis_tready   : in std_logic);
end axi_stream_fir_wrapper;
----------------------------------------------------------------------------
architecture Behavioral of axi_stream_fir_wrapper is

----------------------------------------------------------------------------
-- Define Constants and Signals
----------------------------------------------------------------------------

signal left_audio_data_filt_input, right_audio_data_filt_input, left_audio_data_tran_sig, right_audio_data_tran_sig: std_logic_vector(AC_DATA_WIDTH - 1 downto 0) := (others => '0');

-- signals for filters
signal left_audio_filt_output_lpf, left_audio_filt_output_hpf, left_audio_filt_output_bpf, left_audio_filt_output_bsf, right_audio_filt_output_lpf, right_audio_filt_output_hpf, right_audio_filt_output_bpf, right_audio_filt_output_bsf : std_logic_vector(AC_DATA_WIDTH - 1 downto 0) := (others => '0');
signal left_audio_data_valid_sig, right_audio_data_valid_sig, left_audio_filt_valid, right_audio_filt_valid: std_logic := '0';
signal s00_axis_tready_sig : std_logic := '0';
signal m00_axis_tvalid_left_lpf, m00_axis_tvalid_left_hpf, m00_axis_tvalid_left_bpf, m00_axis_tvalid_left_bsf, m00_axis_tvalid_right_lpf, m00_axis_tvalid_right_hpf, m00_axis_tvalid_right_bpf, m00_axis_tvalid_right_bsf : std_logic := '0';

-- signals to enable IP cores for left and right filters
signal lbsf_en, lbpf_en, lhpf_en, llpf_en : std_logic := '0';
signal rbsf_en, rbpf_en, rhpf_en, rlpf_en : std_logic := '0';

-- output signals




signal m00_axis_tvalid_sig, m00_axis_tlast_sig : std_logic := '0';
signal m00_axis_tdata_sig : std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0):= (others => '0');
signal m00_axis_tstrb_sig : std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0):= (others => '0');

----------------------------------------------------------------------------
-- AXI stream transmitter
component axis_transmitter_interface is
Generic (
    FIFO_DEPTH : integer := 1024;
    I2S_DATA_WIDTH : integer := 24;
    DATA_WIDTH : integer := 32);
Port (
    -- I2S receiver signals
    left_audio_data_i : in std_logic_vector(I2S_DATA_WIDTH-1 downto 0);
    right_audio_data_i : in std_logic_vector(I2S_DATA_WIDTH-1 downto 0);
    lrclk_i       : in std_logic;
   
    -- Ports of Axi Controller Bus Interface M00_AXIS inputs
    m00_axis_aclk_i     : in std_logic;
    m00_axis_aresetn_i     : in std_logic;
    m00_axis_tready_i     : in std_logic;
   
    -- Ports of Axi Controller Bus Interface M00_AXISouputs
    m00_axis_tdata_o    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m00_axis_tlast_o    : out std_logic;
    m00_axis_tsrb_o    : out std_logic_vector(3 downto 0);
    m00_axis_tvalid_o    : out std_logic);  
end component;

   
----------------------------------------------------------------------------
-- AXI stream receiver

component axis_receiver_interface is
Generic (
    FIFO_DEPTH : integer := 1024;
    I2S_DATA_WIDTH : integer := 24;
    DATA_WIDTH : integer := 32);
Port (
    -- i2s LRCLK signal
    lrclk_i       : in std_logic;
   
    -- Ports of Axi Controller Bus Interface M00_AXIS
    s00_axis_aclk_i     : in std_logic;
    s00_axis_aresetn_i     : in std_logic;
    s00_axis_tdata_i    : in std_logic_vector(DATA_WIDTH-1 downto 0);
    s00_axis_tlast_i    : in std_logic;
    s00_axis_tsrb_i    : in std_logic_vector(3 downto 0);
    s00_axis_tvalid_i    : in std_logic;
   
    -- I2S transmitter signals
    left_audio_data_o : out std_logic_vector(I2S_DATA_WIDTH-1 downto 0);
    right_audio_data_o : out std_logic_vector(I2S_DATA_WIDTH-1 downto 0);
    left_audio_data_valid_o : out std_logic;
    right_audio_data_valid_o : out std_logic;
    s00_axis_tready_o : out std_logic);
end component;

----------------------------------------------------------------------------
-- Band Pass Filter

component fir_compiler_BPF IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END component;

----------------------------------------------------------------------------
-- Band Stop Filter

component fir_compiler_BSF IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END component;

----------------------------------------------------------------------------
-- Low Pass Filter

component fir_compiler_LPF IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END component;

----------------------------------------------------------------------------
-- High Pass Filter

component fir_compiler_HPF IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END component;


begin
----------------------------------------------------------------------------
-- Component instantiations
----------------------------------------------------------------------------    

-- AXI stream transmitter
axis_trans : axis_transmitter_interface PORT MAP(
    left_audio_data_i => left_audio_data_tran_sig,
    right_audio_data_i => right_audio_data_tran_sig,
    lrclk_i => lrclk_i,
    m00_axis_aclk_i => m00_axis_aclk,
    m00_axis_aresetn_i => aresetn_i,
    m00_axis_tready_i => m00_axis_tready,
    m00_axis_tdata_o => m00_axis_tdata_sig,
    m00_axis_tlast_o => m00_axis_tlast_sig,
    m00_axis_tsrb_o => m00_axis_tstrb_sig,
    m00_axis_tvalid_o => m00_axis_tvalid_sig);

----------------------------------------------------------------------------
-- AXI stream receiver
axis_receiver : axis_receiver_interface PORT MAP(
    lrclk_i => lrclk_i,
    s00_axis_aclk_i => s00_axis_aclk,
    s00_axis_aresetn_i => aresetn_i,
    s00_axis_tdata_i => s00_axis_tdata,
    s00_axis_tlast_i => s00_axis_tlast,
    s00_axis_tsrb_i => s00_axis_tstrb,
    s00_axis_tvalid_i => s00_axis_tvalid,
   
    left_audio_data_o => left_audio_data_filt_input,
    right_audio_data_o => right_audio_data_filt_input,
    left_audio_data_valid_o => left_audio_data_valid_sig,
    right_audio_data_valid_o => right_audio_data_valid_sig,
    s00_axis_tready_o => s00_axis_tready_sig);

----------------------------------------------------------------------------
-- Left Audio Band Stop Filter
left_bsf : fir_compiler_BSF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => lbsf_en, -- changing ts from left_audio_data_valid_sig
    s_axis_data_tready => open,
    s_axis_data_tdata => left_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_left_bsf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => left_audio_filt_output_bsf);
   
----------------------------------------------------------------------------
-- Left Audio Band Pass Filter
left_bpf : fir_compiler_BPF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => lbpf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => left_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_left_bpf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => left_audio_filt_output_bpf);
   
----------------------------------------------------------------------------
-- Left Audio Low Pass Filter
left_lpf : fir_compiler_LPF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => llpf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => left_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_left_lpf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => left_audio_filt_output_lpf);

----------------------------------------------------------------------------
-- Left Audio High Pass Filter
left_hpf : fir_compiler_HPF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => lhpf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => left_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_left_hpf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => left_audio_filt_output_hpf);

----------------------------------------------------------------------------
-- Right Audio Band Stop Filter
right_bsf : fir_compiler_BSF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => rbsf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => right_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_right_bsf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => right_audio_filt_output_bsf);
   
----------------------------------------------------------------------------
-- Right Audio Band Pass Filter
right_bpf : fir_compiler_BPF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => rbpf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => right_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_right_bpf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => right_audio_filt_output_bpf);

----------------------------------------------------------------------------
-- Right Audio Low Pass Filter
right_lpf : fir_compiler_LPF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => rlpf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => right_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_right_lpf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => right_audio_filt_output_lpf);

----------------------------------------------------------------------------
-- Right Audio High Pass Filter
right_hpf : fir_compiler_HPF PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => rhpf_en,
    s_axis_data_tready => open,
    s_axis_data_tdata => right_audio_data_filt_input,
    m_axis_data_tvalid => m00_axis_tvalid_right_hpf,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tdata => right_audio_filt_output_hpf);

----------------------------------------------------------------------------
-- Logic
----------------------------------------------------------------------------

-- Enable filter IPs selectively for the left and right filters. 
chooseleftfilter : process(ch_select_i, left_audio_data_valid_sig) begin
    lbpf_en <= '0';
    llpf_en <= '0';
    lbsf_en <= '0';
    lhpf_en <= '0';
    if (left_audio_data_valid_sig = '1') then
    
        case ch_select_i is 
            when "00" => llpf_en <= '1';
            when "01" => lhpf_en <= '1';
            when "10" => lbpf_en <= '1';
            when "11" => lbsf_en <= '1';
            when others => 
                lbpf_en <= '0';
                llpf_en <= '0';
                lbsf_en <= '0';
                lhpf_en <= '0';
         end case;
     end if;
end process;

chooserightfilter : process(ch_select_i, right_audio_data_valid_sig) begin
    rbpf_en <= '0';
    rlpf_en <= '0';
    rbsf_en <= '0';
    rhpf_en <= '0';
    if (right_audio_data_valid_sig = '1') then
    
        case ch_select_i is 
            when "00" => rlpf_en <= '1';
            when "01" => rhpf_en <= '1';
            when "10" => rbpf_en <= '1';
            when "11" => rbsf_en <= '1';
            when others => 
                rbpf_en <= '0';
                rlpf_en <= '0';
                rbsf_en <= '0';
                rhpf_en <= '0';
         end case;
     end if;
end process;
----------------------------------------------------------------------------- 
-- Update Left Audio Register
left_audio_update : process (m00_axis_aclk)
begin

    if rising_edge (m00_axis_aclk) then
        if enable_fir_i = '0' then 
            left_audio_data_tran_sig <= left_audio_data_filt_input; 
        else
            case ch_select_i is
                when "00" => 
                    if m00_axis_tvalid_left_lpf = '1' then  
                       left_audio_data_tran_sig <= left_audio_filt_output_lpf;
                    end if;
                when "01" => 
                    if m00_axis_tvalid_left_hpf = '1' then  
                        left_audio_data_tran_sig <= left_audio_filt_output_hpf;
                    end if;
                when "10" => 
                    if m00_axis_tvalid_left_bpf = '1' then  
                        left_audio_data_tran_sig <= left_audio_filt_output_bpf;
                    end if;
                when "11" => 
                    if m00_axis_tvalid_left_bsf = '1' then  
                        left_audio_data_tran_sig <= left_audio_filt_output_bsf;
                    end if;
                when others => left_audio_data_tran_sig <= left_audio_data_tran_sig;
            end case;
        end if;
    end if; 

end process left_audio_update;  


---------------------------------------------------------------------------- 
-- Update Right Audio Register
right_audio_update : process (m00_axis_aclk)
begin

    if rising_edge (m00_axis_aclk) then
        if enable_fir_i = '0' then
            right_audio_data_tran_sig <= right_audio_data_filt_input;  
        else
            case ch_select_i is
                when "00" => 
                    if m00_axis_tvalid_right_lpf = '1' then                       
                        right_audio_data_tran_sig <= right_audio_filt_output_lpf;
                    end if;
                when "01" => 
                    if m00_axis_tvalid_right_hpf = '1' then  
                        right_audio_data_tran_sig <= right_audio_filt_output_hpf;
                    end if;
                when "10" => 
                    if m00_axis_tvalid_right_bpf = '1' then  
                        right_audio_data_tran_sig <= right_audio_filt_output_bpf;
                    end if;
                when "11" => 
                    if m00_axis_tvalid_right_bsf = '1' then  
                        right_audio_data_tran_sig <= right_audio_filt_output_bsf;
                    end if;
                when others => right_audio_data_tran_sig <= right_audio_data_tran_sig;
           end case;
       end if;
    end if; 

end process right_audio_update;  

----------------------------------------------------------------------------
-- Update s00_axis_tready --> ask if we need to delay this! of will this be an insane combinational delay
s00_axis_tready <= s00_axis_tready_sig;

----------------------------------------------------------------------------
--wire signals to outputs
m00_axis_tdata <= m00_axis_tdata_sig;
m00_axis_tlast <= m00_axis_tlast_sig;
m00_axis_tstrb <= m00_axis_tstrb_sig;
m00_axis_tvalid <= m00_axis_tvalid_sig;



end Behavioral;