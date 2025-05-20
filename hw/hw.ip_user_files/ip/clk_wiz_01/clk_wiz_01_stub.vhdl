-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 20 15:14:15 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/ip/clk_wiz_01/clk_wiz_01_stub.vhdl
-- Design      : clk_wiz_01
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_01 is
  Port ( 
    mclk : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );

end clk_wiz_01;

architecture stub of clk_wiz_01 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mclk,sysclk";
begin
end;
