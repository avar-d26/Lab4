-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:54:59 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_create_88key_0_0/design_1_create_88key_0_0_stub.vhdl
-- Design      : design_1_create_88key_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_create_88key_0_0 is
  Port ( 
    clkb_i : in STD_LOGIC;
    data_i : in STD_LOGIC;
    en_i : in STD_LOGIC;
    r_addr_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    paino_data_o : out STD_LOGIC_VECTOR ( 87 downto 0 );
    paino_done_o : out STD_LOGIC
  );

end design_1_create_88key_0_0;

architecture stub of design_1_create_88key_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkb_i,data_i,en_i,r_addr_o[11:0],paino_data_o[87:0],paino_done_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "create_88key,Vivado 2023.1";
begin
end;
