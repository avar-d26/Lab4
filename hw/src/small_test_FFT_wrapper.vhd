----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2025 03:56:53 PM
-- Design Name: 
-- Module Name: FFT_wrapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


entity small_test_FFT_wrapper is 
	generic (
		INPUT_DATA_WIDTH	: integer	:= 32;
		OUTPUT_DATA_WIDTH   : integer   := 8;
		FFT_WIDTH           : integer := 64;
		ADDR_LENGTH         : integer := 32
	);
    PORT (
    s00_axis_aclk     :  in std_logic; --
    s00_axis_aresetn  :  in std_logic; --
    s00_axis_tready   : out std_logic; --
    s00_axis_tdata	  :  in std_logic_vector(INPUT_DATA_WIDTH-1 downto 0); -- our data
    s00_axis_tstrb    :  in std_logic_vector((INPUT_DATA_WIDTH/8)-1 downto 0); -- dont care
    s00_axis_tlast    :  in std_logic;
    s00_axis_tvalid   :  in std_logic;
    
    -- debugs
    mag_sum_dbg_o        : out std_logic_vector(9 downto 0);
    threshold_dbg_o      : out std_logic_vector(9 downto 0);
    fft_data_o_dbg_o     : out std_logic;

    tvalid_o          : out std_logic; 
    fft_data_o        : out std_logic; -- our data\
    fft_done_o        : out std_logic;
    bin_addr_o        : out std_logic_vector(4 downto 0)
    );
end small_test_FFT_wrapper;

architecture Behavioral of small_test_FFT_wrapper is

COMPONENT xfft_1 IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    m_axis_data_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
  );
END COMPONENT;

signal fft_data_in, fft_data_out : std_logic_vector(47 downto 0) := (others => '0');
signal m00_axis_tdata_sig : std_logic_vector(OUTPUT_DATA_WIDTH - 1 downto 0) := (others => '0');
signal tvalid_sig, tvalid_sig_1, fft_data_o_sig : std_logic := '0';
signal bin_addr_o_sig : std_logic_vector(7 downto 0) := (others => '0');
signal output_counter : unsigned(13 downto 0) := (others => '0');

signal re_mag_dbg, im_mag_dbg : signed(23 downto 0); -- debug signals
signal mag_sq_dbg : unsigned(47 downto 0);

type statetype is (init, countOutputs, waiting);
signal current_state, next_state : statetype := init;
signal cnt_rst : std_logic := '0';
begin

-- zero-pad the imaginary part
fft_data_in <= "000000000000000000000000" & s00_axis_tdata(30 downto 7) ;

process(s00_axis_aclk)
    variable re_top     : signed(4 downto 0);      -- 5-bit signed
    variable im_top     : signed(4 downto 0);      -- 5-bit signed
    variable re_sq      : unsigned(9 downto 0);    -- 5×5 = 10 bits 
    variable im_sq      : unsigned(9 downto 0);
    variable mag_sum    : unsigned(9 downto 0);    -- max possible sum = 512, so needs 10 bits
    constant THRESHOLD_HIGH : unsigned(9 downto 0) := to_unsigned(445, 10); -- 
    constant THRESHOLD_LOW  : unsigned(9 downto 0) := to_unsigned(350, 10); --
begin
    -- Extract signed MSBs
    re_top := signed(fft_data_out(47 downto 43));  -- bits [47:43] = 5 bits
    im_top := signed(fft_data_out(23 downto 19));  -- bits [23:19] = 5 bits

    -- Square and cast to unsigned
    re_sq := unsigned(re_top * re_top);
    im_sq := unsigned(im_top * im_top);
    mag_sum := resize(re_sq, 10) + resize(im_sq, 10);
    
    if rising_edge(s00_axis_aclk) then
    
        mag_sum_dbg_o <= std_logic_vector(mag_sum);
        threshold_dbg_o <= std_logic_vector(THRESHOLD_HIGH);
    
        -- Compare
        if mag_sum > THRESHOLD_HIGH then
            fft_data_o <= '1';
        elsif mag_sum < THRESHOLD_LOW then
            fft_data_o <= '0';
        end if;
    end if;
end process;



-- FFT INSTANTIATION

uut : xfft_1 PORT MAP(
    aclk => s00_axis_aclk,
    s_axis_config_tdata => (others => '0'),
    s_axis_config_tvalid => '1',
    s_axis_config_tready => open,
    
    s_axis_data_tdata => fft_data_in,
    s_axis_data_tvalid => s00_axis_tvalid,
    s_axis_data_tready => s00_axis_tready,
    s_axis_data_tlast => s00_axis_tlast,
    
    m_axis_data_tdata => fft_data_out,
    m_axis_data_tvalid => tvalid_sig_1,
    m_axis_data_tready => '1',
    m_axis_data_tlast => open,
    m_axis_data_tuser => bin_addr_o_sig,

    event_frame_started => open,
    event_tlast_unexpected => open,
    event_tlast_missing => open,
    event_status_channel_halt => open,
    event_data_in_channel_halt => open,
    event_data_out_channel_halt => open);
    
    
-- Apply registers to the output for more robust timing
reg: process(s00_axis_aclk) begin
if rising_edge(s00_axis_aclk) then 
    tvalid_sig <= tvalid_sig_1 and (not bin_addr_o_sig(5)); -- from 0 to 4095 addrs are good, but once it hits 4096 then tvalid no longer goes high;;
    bin_addr_o <= bin_addr_o_sig(4 downto 0); -- 12 bits for 0 to 4095
end if;
end process;

tvalid_o <= tvalid_sig;

-------------------------------------------------------------------------------
-- LOGIC TO DETERMINE WHEN THE FFT IS DONE AND READY TO BE PROCESSED
-- FINITE STATE MACHINE
stateupdate: process(s00_axis_aclk) begin
if rising_edge(s00_axis_aclk) then 
    current_state <= next_state;
end if;
end process;


next_state_logic : process(current_state, output_counter) begin
next_state <= current_state;

case current_state is 
    when init => 
        next_state <= countOutputs;
    when countOutputs =>
        if (output_counter = to_unsigned(ADDR_LENGTH + 4, 14)) then -- give it a few clock cycles
            next_state <= waiting;
        end if;
    when waiting => 
        if (output_counter = to_unsigned(FFT_WIDTH, 14)) then
            next_state <= init;
        end if;
    when others => next_state <= init;
end case;
end process;

output_logic : process(current_state) begin
cnt_rst <= '0';
fft_done_o <= '0';
case current_state is 
    when init => 
        cnt_rst <= '1';
    when countOutputs =>

    when waiting => 
        fft_done_o <= '1'; -- high for the other half to have a very long done signal, to CDC into create88key.vhd

    when others => null;
end case;
end process;


counter : process(s00_axis_aclk) begin
if rising_edge(s00_axis_aclk) then
    if (cnt_rst = '1') then
        output_counter <= (others => '0');
        -- Potential ISSUE with tvalid_sig  = 1 only going up to 4095, changed to tvalid_sig_1
    elsif (tvalid_sig_1 = '1') then
        output_counter <= output_counter + 1;
    end if;
end if;
end process;
        
            


end Behavioral;
