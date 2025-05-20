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

    m00_axis_aclk     :  in std_logic; -- dont care
    m00_axis_aresetn  :  in std_logic; -- dont care
    m00_axis_tvalid   : out std_logic; 
    m00_axis_tdata    : out std_logic_vector(OUTPUT_DATA_WIDTH-1 downto 0); -- our data
    m00_axis_tstrb    : out std_logic; -- dont carestd_logic; -- dont care
    m00_axis_tlast    : out std_logic;
    m00_axis_tready   :  in std_logic
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
signal re_32bit, im_32bit : unsigned(31 downto 0);  -- Converted to unsigned
begin

-- zero-pad the imaginary part
fft_data_in <= s00_axis_tdata(30 downto 7) & "000000000000000000000000";

-- detect proper frequencies
process(fft_data_out)
    variable re_mag : signed(23 downto 0);
    variable im_mag : signed(23 downto 0);
    constant THRESHOLD : signed(23 downto 0) := to_signed(2, 24); -- Example threshold
begin
    re_mag := abs(signed(fft_data_out(47 downto 24)));
    im_mag := abs(signed(fft_data_out(23 downto 0)));
    
    if (re_mag > THRESHOLD) or (im_mag > THRESHOLD) then
        m00_axis_tdata <= "10000000"; 
    else
        m00_axis_tdata <= "00000000";
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
    m_axis_data_tvalid => m00_axis_tvalid,
    m_axis_data_tready => m00_axis_tready,
    m_axis_data_tlast => open,

    event_frame_started => open,
    event_tlast_unexpected => open,
    event_tlast_missing => open,
    event_status_channel_halt => open,
    event_data_in_channel_halt => open,
    event_data_out_channel_halt => open);
    
    
    

end Behavioral;
