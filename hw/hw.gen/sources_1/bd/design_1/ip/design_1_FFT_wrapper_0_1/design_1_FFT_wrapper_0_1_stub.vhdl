-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:58:12 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_FFT_wrapper_0_1/design_1_FFT_wrapper_0_1_stub.vhdl
-- Design      : design_1_FFT_wrapper_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_FFT_wrapper_0_1 is
  Port ( 
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    tvalid_o : out STD_LOGIC;
    fft_data_o : out STD_LOGIC;
    fft_done_o : out STD_LOGIC;
    bin_addr_o : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end design_1_FFT_wrapper_0_1;

architecture stub of design_1_FFT_wrapper_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s00_axis_aclk,s00_axis_aresetn,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,tvalid_o,fft_data_o,fft_done_o,bin_addr_o[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FFT_wrapper,Vivado 2023.1";
begin
end;
