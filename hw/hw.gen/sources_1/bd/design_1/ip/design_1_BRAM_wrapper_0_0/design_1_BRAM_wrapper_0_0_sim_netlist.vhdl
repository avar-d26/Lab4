-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:56:03 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode funcsim
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_BRAM_wrapper_0_0/design_1_BRAM_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_BRAM_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BRAM_wrapper_0_0_BRAM_wrapper is
  port (
    doutb : out STD_LOGIC;
    clka : in STD_LOGIC;
    wea : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_BRAM_wrapper_0_0_BRAM_wrapper : entity is "BRAM_wrapper";
end design_1_BRAM_wrapper_0_0_BRAM_wrapper;

architecture STRUCTURE of design_1_BRAM_wrapper_0_0_BRAM_wrapper is
  component design_1_BRAM_wrapper_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_BRAM_wrapper_0_0_blk_mem_gen_0;
  attribute syn_black_box : string;
  attribute syn_black_box of bram_inst : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of bram_inst : label is "blk_mem_gen_v8_4_6,Vivado 2023.1";
begin
bram_inst: component design_1_BRAM_wrapper_0_0_blk_mem_gen_0
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina,
      doutb(0) => doutb,
      wea(0) => wea
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BRAM_wrapper_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_BRAM_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_BRAM_wrapper_0_0 : entity is "design_1_BRAM_wrapper_0_0,BRAM_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_BRAM_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_BRAM_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_BRAM_wrapper_0_0 : entity is "BRAM_wrapper,Vivado 2023.1";
end design_1_BRAM_wrapper_0_0;

architecture STRUCTURE of design_1_BRAM_wrapper_0_0 is
begin
U0: entity work.design_1_BRAM_wrapper_0_0_BRAM_wrapper
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina => dina,
      doutb => doutb,
      wea => wea
    );
end STRUCTURE;
