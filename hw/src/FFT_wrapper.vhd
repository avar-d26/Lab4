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


entity FFT_wrapper is 
	generic (
		INPUT_DATA_WIDTH	: integer	:= 32;
		OUTPUT_DATA_WIDTH   : integer   := 8
	);
    PORT (
    s00_axis_aclk     :  in std_logic; --
    s00_axis_aresetn  :  in std_logic; --
    s00_axis_tready   : out std_logic; --
    s00_axis_tdata	  :  in std_logic_vector(INPUT_DATA_WIDTH-1 downto 0); -- our data
    s00_axis_tstrb    :  in std_logic_vector((INPUT_DATA_WIDTH/8)-1 downto 0); -- dont care
    s00_axis_tlast    :  in std_logic;
    s00_axis_tvalid   :  in std_logic;


    tvalid_o          : out std_logic; 
    fft_data_o        : out std_logic; -- our data\
    fft_done_o        : out std_logic;
    bin_addr_o        : out std_logic_vector(11 downto 0)
    );
end FFT_wrapper;

architecture Behavioral of FFT_wrapper is

COMPONENT xfft_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
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
    m_axis_data_tuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    
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
signal bin_addr_o_sig : std_logic_vector(15 downto 0) := (others => '0');
signal output_counter : unsigned(13 downto 0) := (others => '0');
signal re_mag_dbg, im_mag_dbg : signed(23 downto 0); -- debug signals

type statetype is (init, count_outputs, waiting, done);
signal cs, ns : statetype := init;
signal cnt_rst : std_logic := '0';
begin

-- zero-pad the imaginary part
fft_data_in <= "000000000000000000000000" & s00_axis_tdata(30 downto 7) ;

-- detect proper frequencies
process(fft_data_out)
    variable re_mag : signed(23 downto 0);
    variable im_mag : signed(23 downto 0);
    constant THRESHOLD : signed(23 downto 0) := to_signed(2048576, 24); -- Example threshold
begin
    re_mag := abs(signed(fft_data_out(47 downto 24)));
    im_mag := abs(signed(fft_data_out(23 downto 0)));
    re_mag_dbg <= re_mag;
    im_mag_dbg <= im_mag;
    
    if (re_mag > THRESHOLD) or (im_mag > THRESHOLD) then
        fft_data_o_sig <= '1'; 
    else
        fft_data_o_sig <= '0';
    end if;
end process;



uut : xfft_0 PORT MAP(
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
    fft_data_o <= fft_data_o_sig;    
    tvalid_sig <= tvalid_sig_1 and (not bin_addr_o_sig(12)); -- from 0 to 4095 addrs are good, but once it hits 4096 then tvalid no longer goes high;;
    bin_addr_o <= bin_addr_o_sig(11 downto 0); -- 12 bits for 0 to 4095
end if;
end process;

tvalid_o <= tvalid_sig;

-------------------------------------------------------------------------------
-- LOGIC TO DETERMINE WHEN THE FFT IS DONE AND READY TO BE PROCESSED
-- FINITE STATE MACHINE
stateupdate: process(s00_axis_aclk) begin
if rising_edge(s00_axis_aclk) then 
    cs <= ns;
end if;
end process;


next_state_logic : process(cs, output_counter) begin
ns <= cs;
cnt_rst <= '0';
fft_done_o <= '0';
case cs is 
    when init => 
        ns <= count_outputs;
        cnt_rst <= '1';
    when count_outputs =>
        if (output_counter = to_unsigned(4100, 14)) then -- give it a few clock cycles
            ns <= waiting;
        end if;
    when waiting => 
        fft_done_o <= '1'; -- high for the other half to have a very long done signal, to CDC into create88key.vhd
        if (output_counter = to_unsigned(8192, 14)) then
            ns <= init;
        end if;
    when others => ns <= init;
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
