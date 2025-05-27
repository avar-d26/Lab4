-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:54:59 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode funcsim
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_create_88key_0_0/design_1_create_88key_0_0_sim_netlist.vhdl
-- Design      : design_1_create_88key_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_create_88key_0_0_create_88key is
  port (
    r_addr_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    paino_data_o : out STD_LOGIC_VECTOR ( 78 downto 0 );
    paino_done_o : out STD_LOGIC;
    clkb_i : in STD_LOGIC;
    en_i : in STD_LOGIC;
    data_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_create_88key_0_0_create_88key : entity is "create_88key";
end design_1_create_88key_0_0_create_88key;

architecture STRUCTURE of design_1_create_88key_0_0_create_88key is
  signal \FSM_sequential_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal address_counter0 : STD_LOGIC;
  signal \address_counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \address_counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \address_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \address_counter_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \address_counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \address_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal count_en : STD_LOGIC;
  signal counterdelay1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal create_paino_en : STD_LOGIC;
  signal cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal load_enable : STD_LOGIC;
  signal \load_enable_reg__0\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in100_in : STD_LOGIC;
  signal p_0_in102_in : STD_LOGIC;
  signal p_0_in104_in : STD_LOGIC;
  signal p_0_in106_in : STD_LOGIC;
  signal p_0_in108_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in112_in : STD_LOGIC;
  signal p_0_in114_in : STD_LOGIC;
  signal p_0_in116_in : STD_LOGIC;
  signal p_0_in118_in : STD_LOGIC;
  signal p_0_in120_in : STD_LOGIC;
  signal p_0_in122_in : STD_LOGIC;
  signal p_0_in124_in : STD_LOGIC;
  signal p_0_in126_in : STD_LOGIC;
  signal p_0_in128_in : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in130_in : STD_LOGIC;
  signal p_0_in132_in : STD_LOGIC;
  signal p_0_in134_in : STD_LOGIC;
  signal p_0_in136_in : STD_LOGIC;
  signal p_0_in138_in : STD_LOGIC;
  signal p_0_in140_in : STD_LOGIC;
  signal p_0_in142_in : STD_LOGIC;
  signal p_0_in144_in : STD_LOGIC;
  signal p_0_in146_in : STD_LOGIC;
  signal p_0_in148_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in150_in : STD_LOGIC;
  signal p_0_in152_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in18_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in22_in : STD_LOGIC;
  signal p_0_in24_in : STD_LOGIC;
  signal p_0_in26_in : STD_LOGIC;
  signal p_0_in28_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in30_in : STD_LOGIC;
  signal p_0_in32_in : STD_LOGIC;
  signal p_0_in34_in : STD_LOGIC;
  signal p_0_in36_in : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in42_in : STD_LOGIC;
  signal p_0_in44_in : STD_LOGIC;
  signal p_0_in46_in : STD_LOGIC;
  signal p_0_in48_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in50_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in54_in : STD_LOGIC;
  signal p_0_in56_in : STD_LOGIC;
  signal p_0_in58_in : STD_LOGIC;
  signal p_0_in60_in : STD_LOGIC;
  signal p_0_in62_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in66_in : STD_LOGIC;
  signal p_0_in68_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in70_in : STD_LOGIC;
  signal p_0_in72_in : STD_LOGIC;
  signal p_0_in74_in : STD_LOGIC;
  signal p_0_in76_in : STD_LOGIC;
  signal p_0_in78_in : STD_LOGIC;
  signal p_0_in80_in : STD_LOGIC;
  signal p_0_in82_in : STD_LOGIC;
  signal p_0_in84_in : STD_LOGIC;
  signal p_0_in86_in : STD_LOGIC;
  signal p_0_in88_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in90_in : STD_LOGIC;
  signal p_0_in92_in : STD_LOGIC;
  signal p_0_in94_in : STD_LOGIC;
  signal p_0_in96_in : STD_LOGIC;
  signal p_0_in98_in : STD_LOGIC;
  signal \paino[0]_i_1_n_0\ : STD_LOGIC;
  signal \paino[0]_i_2_n_0\ : STD_LOGIC;
  signal \paino[11]_i_1_n_0\ : STD_LOGIC;
  signal \paino[13]_i_1_n_0\ : STD_LOGIC;
  signal \paino[15]_i_1_n_0\ : STD_LOGIC;
  signal \paino[16]_i_1_n_0\ : STD_LOGIC;
  signal \paino[18]_i_1_n_0\ : STD_LOGIC;
  signal \paino[19]_i_1_n_0\ : STD_LOGIC;
  signal \paino[1]_i_1_n_0\ : STD_LOGIC;
  signal \paino[20]_i_1_n_0\ : STD_LOGIC;
  signal \paino[21]_i_1_n_0\ : STD_LOGIC;
  signal \paino[22]_i_1_n_0\ : STD_LOGIC;
  signal \paino[23]_i_1_n_0\ : STD_LOGIC;
  signal \paino[24]_i_1_n_0\ : STD_LOGIC;
  signal \paino[25]_i_1_n_0\ : STD_LOGIC;
  signal \paino[26]_i_1_n_0\ : STD_LOGIC;
  signal \paino[27]_i_1_n_0\ : STD_LOGIC;
  signal \paino[28]_i_1_n_0\ : STD_LOGIC;
  signal \paino[28]_i_2_n_0\ : STD_LOGIC;
  signal \paino[29]_i_1_n_0\ : STD_LOGIC;
  signal \paino[30]_i_1_n_0\ : STD_LOGIC;
  signal \paino[30]_i_2_n_0\ : STD_LOGIC;
  signal \paino[31]_i_1_n_0\ : STD_LOGIC;
  signal \paino[32]_i_1_n_0\ : STD_LOGIC;
  signal \paino[32]_i_2_n_0\ : STD_LOGIC;
  signal \paino[33]_i_1_n_0\ : STD_LOGIC;
  signal \paino[33]_i_2_n_0\ : STD_LOGIC;
  signal \paino[33]_i_3_n_0\ : STD_LOGIC;
  signal \paino[34]_i_1_n_0\ : STD_LOGIC;
  signal \paino[35]_i_1_n_0\ : STD_LOGIC;
  signal \paino[35]_i_2_n_0\ : STD_LOGIC;
  signal \paino[36]_i_1_n_0\ : STD_LOGIC;
  signal \paino[37]_i_1_n_0\ : STD_LOGIC;
  signal \paino[37]_i_2_n_0\ : STD_LOGIC;
  signal \paino[38]_i_1_n_0\ : STD_LOGIC;
  signal \paino[39]_i_1_n_0\ : STD_LOGIC;
  signal \paino[39]_i_2_n_0\ : STD_LOGIC;
  signal \paino[40]_i_1_n_0\ : STD_LOGIC;
  signal \paino[40]_i_2_n_0\ : STD_LOGIC;
  signal \paino[40]_i_3_n_0\ : STD_LOGIC;
  signal \paino[41]_i_1_n_0\ : STD_LOGIC;
  signal \paino[41]_i_2_n_0\ : STD_LOGIC;
  signal \paino[42]_i_1_n_0\ : STD_LOGIC;
  signal \paino[42]_i_2_n_0\ : STD_LOGIC;
  signal \paino[43]_i_1_n_0\ : STD_LOGIC;
  signal \paino[43]_i_2_n_0\ : STD_LOGIC;
  signal \paino[43]_i_3_n_0\ : STD_LOGIC;
  signal \paino[43]_i_4_n_0\ : STD_LOGIC;
  signal \paino[43]_i_5_n_0\ : STD_LOGIC;
  signal \paino[44]_i_1_n_0\ : STD_LOGIC;
  signal \paino[44]_i_2_n_0\ : STD_LOGIC;
  signal \paino[44]_i_3_n_0\ : STD_LOGIC;
  signal \paino[45]_i_1_n_0\ : STD_LOGIC;
  signal \paino[45]_i_2_n_0\ : STD_LOGIC;
  signal \paino[45]_i_3_n_0\ : STD_LOGIC;
  signal \paino[46]_i_1_n_0\ : STD_LOGIC;
  signal \paino[46]_i_2_n_0\ : STD_LOGIC;
  signal \paino[46]_i_3_n_0\ : STD_LOGIC;
  signal \paino[47]_i_1_n_0\ : STD_LOGIC;
  signal \paino[47]_i_2_n_0\ : STD_LOGIC;
  signal \paino[47]_i_3_n_0\ : STD_LOGIC;
  signal \paino[48]_i_1_n_0\ : STD_LOGIC;
  signal \paino[48]_i_2_n_0\ : STD_LOGIC;
  signal \paino[48]_i_3_n_0\ : STD_LOGIC;
  signal \paino[49]_i_1_n_0\ : STD_LOGIC;
  signal \paino[49]_i_2_n_0\ : STD_LOGIC;
  signal \paino[49]_i_3_n_0\ : STD_LOGIC;
  signal \paino[4]_i_1_n_0\ : STD_LOGIC;
  signal \paino[50]_i_1_n_0\ : STD_LOGIC;
  signal \paino[50]_i_2_n_0\ : STD_LOGIC;
  signal \paino[50]_i_3_n_0\ : STD_LOGIC;
  signal \paino[51]_i_1_n_0\ : STD_LOGIC;
  signal \paino[51]_i_2_n_0\ : STD_LOGIC;
  signal \paino[51]_i_3_n_0\ : STD_LOGIC;
  signal \paino[51]_i_4_n_0\ : STD_LOGIC;
  signal \paino[52]_i_1_n_0\ : STD_LOGIC;
  signal \paino[52]_i_2_n_0\ : STD_LOGIC;
  signal \paino[52]_i_3_n_0\ : STD_LOGIC;
  signal \paino[53]_i_1_n_0\ : STD_LOGIC;
  signal \paino[54]_i_1_n_0\ : STD_LOGIC;
  signal \paino[54]_i_2_n_0\ : STD_LOGIC;
  signal \paino[55]_i_1_n_0\ : STD_LOGIC;
  signal \paino[55]_i_2_n_0\ : STD_LOGIC;
  signal \paino[55]_i_3_n_0\ : STD_LOGIC;
  signal \paino[56]_i_1_n_0\ : STD_LOGIC;
  signal \paino[56]_i_2_n_0\ : STD_LOGIC;
  signal \paino[56]_i_3_n_0\ : STD_LOGIC;
  signal \paino[56]_i_4_n_0\ : STD_LOGIC;
  signal \paino[57]_i_1_n_0\ : STD_LOGIC;
  signal \paino[57]_i_2_n_0\ : STD_LOGIC;
  signal \paino[57]_i_3_n_0\ : STD_LOGIC;
  signal \paino[58]_i_1_n_0\ : STD_LOGIC;
  signal \paino[58]_i_2_n_0\ : STD_LOGIC;
  signal \paino[58]_i_3_n_0\ : STD_LOGIC;
  signal \paino[59]_i_1_n_0\ : STD_LOGIC;
  signal \paino[59]_i_2_n_0\ : STD_LOGIC;
  signal \paino[60]_i_1_n_0\ : STD_LOGIC;
  signal \paino[60]_i_2_n_0\ : STD_LOGIC;
  signal \paino[60]_i_3_n_0\ : STD_LOGIC;
  signal \paino[60]_i_4_n_0\ : STD_LOGIC;
  signal \paino[60]_i_5_n_0\ : STD_LOGIC;
  signal \paino[61]_i_1_n_0\ : STD_LOGIC;
  signal \paino[61]_i_2_n_0\ : STD_LOGIC;
  signal \paino[62]_i_1_n_0\ : STD_LOGIC;
  signal \paino[62]_i_2_n_0\ : STD_LOGIC;
  signal \paino[63]_i_1_n_0\ : STD_LOGIC;
  signal \paino[64]_i_1_n_0\ : STD_LOGIC;
  signal \paino[64]_i_2_n_0\ : STD_LOGIC;
  signal \paino[64]_i_3_n_0\ : STD_LOGIC;
  signal \paino[64]_i_4_n_0\ : STD_LOGIC;
  signal \paino[65]_i_1_n_0\ : STD_LOGIC;
  signal \paino[65]_i_2_n_0\ : STD_LOGIC;
  signal \paino[66]_i_1_n_0\ : STD_LOGIC;
  signal \paino[66]_i_2_n_0\ : STD_LOGIC;
  signal \paino[66]_i_3_n_0\ : STD_LOGIC;
  signal \paino[66]_i_4_n_0\ : STD_LOGIC;
  signal \paino[66]_i_5_n_0\ : STD_LOGIC;
  signal \paino[67]_i_1_n_0\ : STD_LOGIC;
  signal \paino[67]_i_2_n_0\ : STD_LOGIC;
  signal \paino[68]_i_1_n_0\ : STD_LOGIC;
  signal \paino[68]_i_2_n_0\ : STD_LOGIC;
  signal \paino[68]_i_3_n_0\ : STD_LOGIC;
  signal \paino[69]_i_1_n_0\ : STD_LOGIC;
  signal \paino[69]_i_2_n_0\ : STD_LOGIC;
  signal \paino[69]_i_3_n_0\ : STD_LOGIC;
  signal \paino[69]_i_4_n_0\ : STD_LOGIC;
  signal \paino[70]_i_1_n_0\ : STD_LOGIC;
  signal \paino[70]_i_2_n_0\ : STD_LOGIC;
  signal \paino[71]_i_1_n_0\ : STD_LOGIC;
  signal \paino[71]_i_2_n_0\ : STD_LOGIC;
  signal \paino[71]_i_3_n_0\ : STD_LOGIC;
  signal \paino[72]_i_1_n_0\ : STD_LOGIC;
  signal \paino[72]_i_2_n_0\ : STD_LOGIC;
  signal \paino[72]_i_3_n_0\ : STD_LOGIC;
  signal \paino[72]_i_4_n_0\ : STD_LOGIC;
  signal \paino[72]_i_5_n_0\ : STD_LOGIC;
  signal \paino[73]_i_1_n_0\ : STD_LOGIC;
  signal \paino[73]_i_2_n_0\ : STD_LOGIC;
  signal \paino[74]_i_1_n_0\ : STD_LOGIC;
  signal \paino[74]_i_2_n_0\ : STD_LOGIC;
  signal \paino[75]_i_1_n_0\ : STD_LOGIC;
  signal \paino[75]_i_2_n_0\ : STD_LOGIC;
  signal \paino[75]_i_3_n_0\ : STD_LOGIC;
  signal \paino[75]_i_4_n_0\ : STD_LOGIC;
  signal \paino[76]_i_1_n_0\ : STD_LOGIC;
  signal \paino[76]_i_2_n_0\ : STD_LOGIC;
  signal \paino[76]_i_3_n_0\ : STD_LOGIC;
  signal \paino[77]_i_1_n_0\ : STD_LOGIC;
  signal \paino[77]_i_2_n_0\ : STD_LOGIC;
  signal \paino[78]_i_1_n_0\ : STD_LOGIC;
  signal \paino[78]_i_2_n_0\ : STD_LOGIC;
  signal \paino[78]_i_3_n_0\ : STD_LOGIC;
  signal \paino[79]_i_1_n_0\ : STD_LOGIC;
  signal \paino[79]_i_2_n_0\ : STD_LOGIC;
  signal \paino[7]_i_1_n_0\ : STD_LOGIC;
  signal \paino[80]_i_1_n_0\ : STD_LOGIC;
  signal \paino[80]_i_2_n_0\ : STD_LOGIC;
  signal \paino[80]_i_3_n_0\ : STD_LOGIC;
  signal \paino[80]_i_4_n_0\ : STD_LOGIC;
  signal \paino[81]_i_1_n_0\ : STD_LOGIC;
  signal \paino[81]_i_2_n_0\ : STD_LOGIC;
  signal \paino[81]_i_3_n_0\ : STD_LOGIC;
  signal \paino[81]_i_4_n_0\ : STD_LOGIC;
  signal \paino[82]_i_1_n_0\ : STD_LOGIC;
  signal \paino[82]_i_2_n_0\ : STD_LOGIC;
  signal \paino[83]_i_1_n_0\ : STD_LOGIC;
  signal \paino[83]_i_2_n_0\ : STD_LOGIC;
  signal \paino[83]_i_3_n_0\ : STD_LOGIC;
  signal \paino[83]_i_4_n_0\ : STD_LOGIC;
  signal \paino[84]_i_1_n_0\ : STD_LOGIC;
  signal \paino[84]_i_2_n_0\ : STD_LOGIC;
  signal \paino[84]_i_3_n_0\ : STD_LOGIC;
  signal \paino[84]_i_4_n_0\ : STD_LOGIC;
  signal \paino[84]_i_5_n_0\ : STD_LOGIC;
  signal \paino[85]_i_1_n_0\ : STD_LOGIC;
  signal \paino[85]_i_2_n_0\ : STD_LOGIC;
  signal \paino[85]_i_3_n_0\ : STD_LOGIC;
  signal \paino[85]_i_4_n_0\ : STD_LOGIC;
  signal \paino[86]_i_1_n_0\ : STD_LOGIC;
  signal \paino[86]_i_2_n_0\ : STD_LOGIC;
  signal \paino[86]_i_3_n_0\ : STD_LOGIC;
  signal \paino[87]_i_2_n_0\ : STD_LOGIC;
  signal \paino[87]_i_3_n_0\ : STD_LOGIC;
  signal \paino[87]_i_4_n_0\ : STD_LOGIC;
  signal \paino[87]_i_5_n_0\ : STD_LOGIC;
  signal \paino[87]_i_6_n_0\ : STD_LOGIC;
  signal \paino[9]_i_1_n_0\ : STD_LOGIC;
  signal \paino_reg_n_0_[0]\ : STD_LOGIC;
  signal \paino_reg_n_0_[87]\ : STD_LOGIC;
  signal \^r_addr_o\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rst : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_address_counter_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_cs[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_cs[2]_i_1\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_cs_reg[0]\ : label is "count_address:001,count_wait_1:010,count_wait_2:011,create_paino:100,send_paino:101,init:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cs_reg[1]\ : label is "count_address:001,count_wait_1:010,count_wait_2:011,create_paino:100,send_paino:101,init:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cs_reg[2]\ : label is "count_address:001,count_wait_1:010,count_wait_2:011,create_paino:100,send_paino:101,init:000,iSTATE:110";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \address_counter_reg[11]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \address_counter_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_counter_reg[7]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \paino[33]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \paino[35]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \paino[39]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \paino[40]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \paino[40]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \paino[41]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \paino[43]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \paino[43]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \paino[44]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \paino[44]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \paino[45]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \paino[45]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \paino[46]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \paino[47]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \paino[47]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \paino[48]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \paino[48]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \paino[49]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \paino[49]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \paino[50]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \paino[50]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \paino[51]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \paino[52]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \paino[54]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \paino[55]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \paino[55]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \paino[56]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \paino[56]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \paino[56]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \paino[58]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \paino[58]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \paino[59]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \paino[60]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \paino[60]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \paino[60]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \paino[60]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \paino[62]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \paino[64]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \paino[64]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \paino[64]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \paino[65]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \paino[66]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \paino[66]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \paino[66]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \paino[66]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \paino[67]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \paino[68]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \paino[68]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \paino[69]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \paino[70]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \paino[71]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \paino[72]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \paino[72]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \paino[72]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \paino[72]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \paino[74]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \paino[75]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \paino[75]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \paino[75]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \paino[76]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \paino[77]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \paino[80]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \paino[80]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \paino[80]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \paino[81]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \paino[81]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \paino[83]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \paino[83]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \paino[84]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \paino[84]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \paino[84]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \paino[85]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \paino[85]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \paino[86]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \paino[87]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of paino_done_o_INST_0 : label is "soft_lutpair0";
begin
  r_addr_o(11 downto 0) <= \^r_addr_o\(11 downto 0);
\FSM_sequential_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030303F7FF343C"
    )
        port map (
      I0 => \address_counter[11]_i_4_n_0\,
      I1 => cs(0),
      I2 => cs(2),
      I3 => \address_counter[11]_i_5_n_0\,
      I4 => load_enable,
      I5 => cs(1),
      O => \FSM_sequential_cs[0]_i_1_n_0\
    );
\FSM_sequential_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03030800"
    )
        port map (
      I0 => \address_counter[11]_i_4_n_0\,
      I1 => cs(0),
      I2 => cs(2),
      I3 => \address_counter[11]_i_5_n_0\,
      I4 => cs(1),
      O => \FSM_sequential_cs[1]_i_1_n_0\
    );
\FSM_sequential_cs[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22C4"
    )
        port map (
      I0 => cs(0),
      I1 => cs(2),
      I2 => load_enable,
      I3 => cs(1),
      O => \FSM_sequential_cs[2]_i_1_n_0\
    );
\FSM_sequential_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \FSM_sequential_cs[0]_i_1_n_0\,
      Q => cs(0),
      R => '0'
    );
\FSM_sequential_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \FSM_sequential_cs[1]_i_1_n_0\,
      Q => cs(1),
      R => '0'
    );
\FSM_sequential_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \FSM_sequential_cs[2]_i_1_n_0\,
      Q => cs(2),
      R => '0'
    );
\address_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF010101"
    )
        port map (
      I0 => cs(2),
      I1 => cs(0),
      I2 => cs(1),
      I3 => \address_counter[11]_i_4_n_0\,
      I4 => \address_counter[11]_i_5_n_0\,
      O => address_counter0
    );
\address_counter[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => cs(2),
      I1 => cs(1),
      I2 => cs(0),
      O => count_en
    );
\address_counter[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^r_addr_o\(8),
      I1 => \^r_addr_o\(9),
      I2 => \^r_addr_o\(6),
      I3 => \^r_addr_o\(7),
      I4 => \^r_addr_o\(11),
      I5 => \^r_addr_o\(10),
      O => \address_counter[11]_i_4_n_0\
    );
\address_counter[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^r_addr_o\(2),
      I1 => \^r_addr_o\(3),
      I2 => \^r_addr_o\(0),
      I3 => \^r_addr_o\(1),
      I4 => \^r_addr_o\(5),
      I5 => \^r_addr_o\(4),
      O => \address_counter[11]_i_5_n_0\
    );
\address_counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_addr_o\(0),
      O => \address_counter[3]_i_2_n_0\
    );
\address_counter_delayed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(0),
      Q => sel0(0),
      R => '0'
    );
\address_counter_delayed_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(10),
      Q => sel0(10),
      R => '0'
    );
\address_counter_delayed_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(11),
      Q => sel0(11),
      R => '0'
    );
\address_counter_delayed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(1),
      Q => sel0(1),
      R => '0'
    );
\address_counter_delayed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(2),
      Q => sel0(2),
      R => '0'
    );
\address_counter_delayed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(3),
      Q => sel0(3),
      R => '0'
    );
\address_counter_delayed_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(4),
      Q => sel0(4),
      R => '0'
    );
\address_counter_delayed_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(5),
      Q => sel0(5),
      R => '0'
    );
\address_counter_delayed_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(6),
      Q => sel0(6),
      R => '0'
    );
\address_counter_delayed_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(7),
      Q => sel0(7),
      R => '0'
    );
\address_counter_delayed_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(8),
      Q => sel0(8),
      R => '0'
    );
\address_counter_delayed_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => counterdelay1(9),
      Q => sel0(9),
      R => '0'
    );
\address_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[3]_i_1_n_7\,
      Q => \^r_addr_o\(0),
      R => address_counter0
    );
\address_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[11]_i_3_n_5\,
      Q => \^r_addr_o\(10),
      R => address_counter0
    );
\address_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[11]_i_3_n_4\,
      Q => \^r_addr_o\(11),
      R => address_counter0
    );
\address_counter_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_counter_reg[7]_i_1_n_0\,
      CO(3) => \NLW_address_counter_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \address_counter_reg[11]_i_3_n_1\,
      CO(1) => \address_counter_reg[11]_i_3_n_2\,
      CO(0) => \address_counter_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_counter_reg[11]_i_3_n_4\,
      O(2) => \address_counter_reg[11]_i_3_n_5\,
      O(1) => \address_counter_reg[11]_i_3_n_6\,
      O(0) => \address_counter_reg[11]_i_3_n_7\,
      S(3 downto 0) => \^r_addr_o\(11 downto 8)
    );
\address_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[3]_i_1_n_6\,
      Q => \^r_addr_o\(1),
      R => address_counter0
    );
\address_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[3]_i_1_n_5\,
      Q => \^r_addr_o\(2),
      R => address_counter0
    );
\address_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[3]_i_1_n_4\,
      Q => \^r_addr_o\(3),
      R => address_counter0
    );
\address_counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_counter_reg[3]_i_1_n_0\,
      CO(2) => \address_counter_reg[3]_i_1_n_1\,
      CO(1) => \address_counter_reg[3]_i_1_n_2\,
      CO(0) => \address_counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \address_counter_reg[3]_i_1_n_4\,
      O(2) => \address_counter_reg[3]_i_1_n_5\,
      O(1) => \address_counter_reg[3]_i_1_n_6\,
      O(0) => \address_counter_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^r_addr_o\(3 downto 1),
      S(0) => \address_counter[3]_i_2_n_0\
    );
\address_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[7]_i_1_n_7\,
      Q => \^r_addr_o\(4),
      R => address_counter0
    );
\address_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[7]_i_1_n_6\,
      Q => \^r_addr_o\(5),
      R => address_counter0
    );
\address_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[7]_i_1_n_5\,
      Q => \^r_addr_o\(6),
      R => address_counter0
    );
\address_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[7]_i_1_n_4\,
      Q => \^r_addr_o\(7),
      R => address_counter0
    );
\address_counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_counter_reg[3]_i_1_n_0\,
      CO(3) => \address_counter_reg[7]_i_1_n_0\,
      CO(2) => \address_counter_reg[7]_i_1_n_1\,
      CO(1) => \address_counter_reg[7]_i_1_n_2\,
      CO(0) => \address_counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_counter_reg[7]_i_1_n_4\,
      O(2) => \address_counter_reg[7]_i_1_n_5\,
      O(1) => \address_counter_reg[7]_i_1_n_6\,
      O(0) => \address_counter_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^r_addr_o\(7 downto 4)
    );
\address_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[11]_i_3_n_7\,
      Q => \^r_addr_o\(8),
      R => address_counter0
    );
\address_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => count_en,
      D => \address_counter_reg[11]_i_3_n_6\,
      Q => \^r_addr_o\(9),
      R => address_counter0
    );
\counterdelay1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(0),
      Q => counterdelay1(0),
      R => '0'
    );
\counterdelay1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(10),
      Q => counterdelay1(10),
      R => '0'
    );
\counterdelay1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(11),
      Q => counterdelay1(11),
      R => '0'
    );
\counterdelay1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(1),
      Q => counterdelay1(1),
      R => '0'
    );
\counterdelay1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(2),
      Q => counterdelay1(2),
      R => '0'
    );
\counterdelay1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(3),
      Q => counterdelay1(3),
      R => '0'
    );
\counterdelay1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(4),
      Q => counterdelay1(4),
      R => '0'
    );
\counterdelay1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(5),
      Q => counterdelay1(5),
      R => '0'
    );
\counterdelay1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(6),
      Q => counterdelay1(6),
      R => '0'
    );
\counterdelay1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(7),
      Q => counterdelay1(7),
      R => '0'
    );
\counterdelay1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(8),
      Q => counterdelay1(8),
      R => '0'
    );
\counterdelay1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \^r_addr_o\(9),
      Q => counterdelay1(9),
      R => '0'
    );
load_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \load_enable_reg__0\,
      Q => load_enable,
      R => '0'
    );
load_enable_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => en_i,
      Q => \load_enable_reg__0\,
      R => '0'
    );
\paino[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[39]_i_2_n_0\,
      I2 => \paino[0]_i_2_n_0\,
      I3 => \paino[30]_i_2_n_0\,
      I4 => \paino[35]_i_2_n_0\,
      I5 => \paino_reg_n_0_[0]\,
      O => \paino[0]_i_1_n_0\
    );
\paino[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \paino[0]_i_2_n_0\
    );
\paino[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => \paino[30]_i_2_n_0\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => p_0_in144_in,
      O => \paino[11]_i_1_n_0\
    );
\paino[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \paino[80]_i_2_n_0\,
      I4 => \paino[30]_i_2_n_0\,
      I5 => p_0_in142_in,
      O => \paino[13]_i_1_n_0\
    );
\paino[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => \paino[30]_i_2_n_0\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => p_0_in140_in,
      O => \paino[15]_i_1_n_0\
    );
\paino[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \paino[80]_i_2_n_0\,
      I4 => \paino[32]_i_2_n_0\,
      I5 => p_0_in138_in,
      O => \paino[16]_i_1_n_0\
    );
\paino[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[32]_i_2_n_0\,
      I5 => p_0_in136_in,
      O => \paino[18]_i_1_n_0\
    );
\paino[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => \paino[86]_i_3_n_0\,
      I3 => sel0(0),
      I4 => \paino[55]_i_3_n_0\,
      I5 => p_0_in134_in,
      O => \paino[19]_i_1_n_0\
    );
\paino[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \paino[81]_i_2_n_0\,
      I4 => \paino[39]_i_2_n_0\,
      I5 => p_0_in152_in,
      O => \paino[1]_i_1_n_0\
    );
\paino[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => \paino[51]_i_3_n_0\,
      I5 => p_0_in132_in,
      O => \paino[20]_i_1_n_0\
    );
\paino[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000800"
    )
        port map (
      I0 => data_i,
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => \paino[30]_i_2_n_0\,
      I4 => \paino[41]_i_2_n_0\,
      I5 => p_0_in130_in,
      O => \paino[21]_i_1_n_0\
    );
\paino[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[66]_i_3_n_0\,
      I2 => \paino[30]_i_2_n_0\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => p_0_in128_in,
      O => \paino[22]_i_1_n_0\
    );
\paino[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \paino[66]_i_3_n_0\,
      I4 => \paino[30]_i_2_n_0\,
      I5 => p_0_in126_in,
      O => \paino[23]_i_1_n_0\
    );
\paino[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[66]_i_3_n_0\,
      I2 => \paino[30]_i_2_n_0\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => p_0_in124_in,
      O => \paino[24]_i_1_n_0\
    );
\paino[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[41]_i_2_n_0\,
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => \paino[32]_i_2_n_0\,
      I5 => p_0_in122_in,
      O => \paino[25]_i_1_n_0\
    );
\paino[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[66]_i_3_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[32]_i_2_n_0\,
      I5 => p_0_in120_in,
      O => \paino[26]_i_1_n_0\
    );
\paino[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[66]_i_3_n_0\,
      I2 => \paino[86]_i_3_n_0\,
      I3 => sel0(0),
      I4 => \paino[55]_i_3_n_0\,
      I5 => p_0_in118_in,
      O => \paino[27]_i_1_n_0\
    );
\paino[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888A888"
    )
        port map (
      I0 => data_i,
      I1 => \paino[28]_i_2_n_0\,
      I2 => \paino[30]_i_2_n_0\,
      I3 => \paino[43]_i_4_n_0\,
      I4 => \paino[41]_i_2_n_0\,
      I5 => p_0_in116_in,
      O => \paino[28]_i_1_n_0\
    );
\paino[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \paino[86]_i_3_n_0\,
      I1 => \paino[43]_i_4_n_0\,
      I2 => \paino[43]_i_5_n_0\,
      I3 => sel0(8),
      I4 => \paino[69]_i_2_n_0\,
      I5 => sel0(7),
      O => \paino[28]_i_2_n_0\
    );
\paino[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(1),
      I2 => \paino[64]_i_3_n_0\,
      I3 => sel0(0),
      I4 => \paino[30]_i_2_n_0\,
      I5 => p_0_in114_in,
      O => \paino[29]_i_1_n_0\
    );
\paino[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => sel0(1),
      I4 => \paino[30]_i_2_n_0\,
      I5 => p_0_in112_in,
      O => \paino[30]_i_1_n_0\
    );
\paino[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(8),
      I2 => \paino[69]_i_2_n_0\,
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[30]_i_2_n_0\
    );
\paino[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[64]_i_3_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[32]_i_2_n_0\,
      I5 => p_0_in110_in,
      O => \paino[31]_i_1_n_0\
    );
\paino[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[64]_i_3_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[32]_i_2_n_0\,
      I5 => p_0_in108_in,
      O => \paino[32]_i_1_n_0\
    );
\paino[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(8),
      I2 => \paino[69]_i_2_n_0\,
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[32]_i_2_n_0\
    );
\paino[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[51]_i_3_n_0\,
      I2 => \paino[33]_i_2_n_0\,
      I3 => \paino[55]_i_2_n_0\,
      I4 => \paino[33]_i_3_n_0\,
      I5 => p_0_in106_in,
      O => \paino[33]_i_1_n_0\
    );
\paino[33]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[33]_i_2_n_0\
    );
\paino[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => sel0(6),
      I4 => sel0(4),
      I5 => sel0(5),
      O => \paino[33]_i_3_n_0\
    );
\paino[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[83]_i_3_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[43]_i_3_n_0\,
      I5 => p_0_in104_in,
      O => \paino[34]_i_1_n_0\
    );
\paino[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[42]_i_2_n_0\,
      I2 => \paino[45]_i_2_n_0\,
      I3 => \paino[43]_i_3_n_0\,
      I4 => \paino[35]_i_2_n_0\,
      I5 => p_0_in102_in,
      O => \paino[35]_i_1_n_0\
    );
\paino[35]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(1),
      I3 => sel0(0),
      O => \paino[35]_i_2_n_0\
    );
\paino[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[83]_i_3_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[42]_i_2_n_0\,
      I5 => p_0_in100_in,
      O => \paino[36]_i_1_n_0\
    );
\paino[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[58]_i_2_n_0\,
      I2 => \paino[37]_i_2_n_0\,
      I3 => \paino[51]_i_3_n_0\,
      I4 => \paino[44]_i_2_n_0\,
      I5 => p_0_in98_in,
      O => \paino[37]_i_1_n_0\
    );
\paino[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \paino[44]_i_2_n_0\,
      I1 => sel0(7),
      I2 => \paino[69]_i_2_n_0\,
      I3 => sel0(8),
      I4 => sel0(2),
      I5 => \paino[41]_i_2_n_0\,
      O => \paino[37]_i_2_n_0\
    );
\paino[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22200000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \paino[43]_i_3_n_0\,
      I5 => p_0_in96_in,
      O => \paino[38]_i_1_n_0\
    );
\paino[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(1),
      I2 => \paino[80]_i_2_n_0\,
      I3 => \paino[44]_i_2_n_0\,
      I4 => \paino[39]_i_2_n_0\,
      I5 => p_0_in94_in,
      O => \paino[39]_i_1_n_0\
    );
\paino[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(2),
      O => \paino[39]_i_2_n_0\
    );
\paino[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[43]_i_3_n_0\,
      I2 => \paino[40]_i_2_n_0\,
      I3 => \paino[55]_i_3_n_0\,
      I4 => \paino[40]_i_3_n_0\,
      I5 => p_0_in92_in,
      O => \paino[40]_i_1_n_0\
    );
\paino[40]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(1),
      I3 => sel0(0),
      O => \paino[40]_i_2_n_0\
    );
\paino[40]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(3),
      I3 => sel0(4),
      O => \paino[40]_i_3_n_0\
    );
\paino[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[41]_i_2_n_0\,
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => \paino[43]_i_3_n_0\,
      I5 => p_0_in90_in,
      O => \paino[41]_i_1_n_0\
    );
\paino[41]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \paino[41]_i_2_n_0\
    );
\paino[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2A000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \paino[66]_i_3_n_0\,
      I4 => \paino[42]_i_2_n_0\,
      I5 => p_0_in88_in,
      O => \paino[42]_i_1_n_0\
    );
\paino[42]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(8),
      I2 => \paino[69]_i_2_n_0\,
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[42]_i_2_n_0\
    );
\paino[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888A888"
    )
        port map (
      I0 => data_i,
      I1 => \paino[43]_i_2_n_0\,
      I2 => \paino[43]_i_3_n_0\,
      I3 => \paino[43]_i_4_n_0\,
      I4 => sel0(1),
      I5 => p_0_in86_in,
      O => \paino[43]_i_1_n_0\
    );
\paino[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \paino[44]_i_2_n_0\,
      I1 => \paino[43]_i_4_n_0\,
      I2 => \paino[43]_i_5_n_0\,
      I3 => sel0(8),
      I4 => \paino[69]_i_2_n_0\,
      I5 => sel0(7),
      O => \paino[43]_i_2_n_0\
    );
\paino[43]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(8),
      I2 => \paino[69]_i_2_n_0\,
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[43]_i_3_n_0\
    );
\paino[43]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(4),
      O => \paino[43]_i_4_n_0\
    );
\paino[43]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \paino[43]_i_5_n_0\
    );
\paino[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[44]_i_2_n_0\,
      I2 => \paino[44]_i_3_n_0\,
      I3 => \paino[64]_i_3_n_0\,
      I4 => \paino[56]_i_3_n_0\,
      I5 => p_0_in84_in,
      O => \paino[44]_i_1_n_0\
    );
\paino[44]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      O => \paino[44]_i_2_n_0\
    );
\paino[44]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \paino[44]_i_3_n_0\
    );
\paino[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[51]_i_2_n_0\,
      I2 => \paino[45]_i_2_n_0\,
      I3 => \paino[55]_i_3_n_0\,
      I4 => \paino[45]_i_3_n_0\,
      I5 => p_0_in82_in,
      O => \paino[45]_i_1_n_0\
    );
\paino[45]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(1),
      I3 => sel0(0),
      O => \paino[45]_i_2_n_0\
    );
\paino[45]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[45]_i_3_n_0\
    );
\paino[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[56]_i_3_n_0\,
      I2 => \paino[46]_i_2_n_0\,
      I3 => \paino[51]_i_2_n_0\,
      I4 => \paino[46]_i_3_n_0\,
      I5 => p_0_in80_in,
      O => \paino[46]_i_1_n_0\
    );
\paino[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000220"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \paino[83]_i_3_n_0\,
      O => \paino[46]_i_2_n_0\
    );
\paino[46]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(4),
      I2 => sel0(3),
      O => \paino[46]_i_3_n_0\
    );
\paino[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[51]_i_2_n_0\,
      I2 => \paino[47]_i_2_n_0\,
      I3 => \paino[52]_i_3_n_0\,
      I4 => \paino[47]_i_3_n_0\,
      I5 => p_0_in78_in,
      O => \paino[47]_i_1_n_0\
    );
\paino[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(4),
      O => \paino[47]_i_2_n_0\
    );
\paino[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[47]_i_3_n_0\
    );
\paino[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[52]_i_3_n_0\,
      I2 => \paino[48]_i_2_n_0\,
      I3 => \paino[51]_i_2_n_0\,
      I4 => \paino[48]_i_3_n_0\,
      I5 => p_0_in76_in,
      O => \paino[48]_i_1_n_0\
    );
\paino[48]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(1),
      O => \paino[48]_i_2_n_0\
    );
\paino[48]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(4),
      O => \paino[48]_i_3_n_0\
    );
\paino[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[55]_i_3_n_0\,
      I2 => \paino[49]_i_2_n_0\,
      I3 => \paino[51]_i_2_n_0\,
      I4 => \paino[49]_i_3_n_0\,
      I5 => p_0_in74_in,
      O => \paino[49]_i_1_n_0\
    );
\paino[49]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      O => \paino[49]_i_2_n_0\
    );
\paino[49]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(4),
      I2 => sel0(3),
      O => \paino[49]_i_3_n_0\
    );
\paino[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(0),
      I2 => \paino[81]_i_2_n_0\,
      I3 => \paino[55]_i_3_n_0\,
      I4 => p_0_in150_in,
      O => \paino[4]_i_1_n_0\
    );
\paino[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[52]_i_3_n_0\,
      I2 => \paino[50]_i_2_n_0\,
      I3 => \paino[51]_i_2_n_0\,
      I4 => \paino[50]_i_3_n_0\,
      I5 => p_0_in72_in,
      O => \paino[50]_i_1_n_0\
    );
\paino[50]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(1),
      I3 => sel0(0),
      O => \paino[50]_i_2_n_0\
    );
\paino[50]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(1),
      O => \paino[50]_i_3_n_0\
    );
\paino[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA202020"
    )
        port map (
      I0 => data_i,
      I1 => \paino[64]_i_3_n_0\,
      I2 => \paino[51]_i_2_n_0\,
      I3 => \paino[51]_i_3_n_0\,
      I4 => \paino[51]_i_4_n_0\,
      I5 => p_0_in70_in,
      O => \paino[51]_i_1_n_0\
    );
\paino[51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(2),
      I3 => sel0(8),
      I4 => \paino[69]_i_2_n_0\,
      I5 => sel0(7),
      O => \paino[51]_i_2_n_0\
    );
\paino[51]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => sel0(1),
      O => \paino[51]_i_3_n_0\
    );
\paino[51]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      O => \paino[51]_i_4_n_0\
    );
\paino[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80AA8080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[55]_i_2_n_0\,
      I2 => \paino[52]_i_2_n_0\,
      I3 => \paino[64]_i_3_n_0\,
      I4 => \paino[52]_i_3_n_0\,
      I5 => p_0_in68_in,
      O => \paino[52]_i_1_n_0\
    );
\paino[52]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => sel0(1),
      O => \paino[52]_i_2_n_0\
    );
\paino[52]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(8),
      I2 => \paino[69]_i_2_n_0\,
      I3 => sel0(7),
      I4 => sel0(5),
      I5 => sel0(6),
      O => \paino[52]_i_3_n_0\
    );
\paino[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0800000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(1),
      I2 => \paino[56]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \paino[84]_i_2_n_0\,
      I5 => p_0_in66_in,
      O => \paino[53]_i_1_n_0\
    );
\paino[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[76]_i_2_n_0\,
      I2 => \paino[54]_i_2_n_0\,
      I3 => \paino[80]_i_2_n_0\,
      I4 => \paino[56]_i_3_n_0\,
      I5 => p_0_in64_in,
      O => \paino[54]_i_1_n_0\
    );
\paino[54]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      O => \paino[54]_i_2_n_0\
    );
\paino[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88800080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[68]_i_2_n_0\,
      I2 => \paino[55]_i_2_n_0\,
      I3 => sel0(3),
      I4 => \paino[55]_i_3_n_0\,
      I5 => p_0_in62_in,
      O => \paino[55]_i_1_n_0\
    );
\paino[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(2),
      O => \paino[55]_i_2_n_0\
    );
\paino[55]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(2),
      I4 => sel0(1),
      O => \paino[55]_i_3_n_0\
    );
\paino[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[56]_i_2_n_0\,
      I2 => \paino[56]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \paino[56]_i_4_n_0\,
      I5 => p_0_in60_in,
      O => \paino[56]_i_1_n_0\
    );
\paino[56]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28000000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => sel0(6),
      I4 => sel0(5),
      O => \paino[56]_i_2_n_0\
    );
\paino[56]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sel0(8),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(7),
      O => \paino[56]_i_3_n_0\
    );
\paino[56]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \paino[56]_i_4_n_0\
    );
\paino[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF28000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => \paino[57]_i_2_n_0\,
      I4 => \paino[57]_i_3_n_0\,
      I5 => p_0_in58_in,
      O => \paino[57]_i_1_n_0\
    );
\paino[57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C08FF0C0C0800"
    )
        port map (
      I0 => sel0(0),
      I1 => \paino[54]_i_2_n_0\,
      I2 => \paino[64]_i_3_n_0\,
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \paino[81]_i_2_n_0\,
      O => \paino[57]_i_2_n_0\
    );
\paino[57]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => sel0(9),
      I1 => cs(2),
      I2 => \paino[85]_i_4_n_0\,
      I3 => sel0(11),
      I4 => sel0(10),
      I5 => sel0(8),
      O => \paino[57]_i_3_n_0\
    );
\paino[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA0080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[60]_i_4_n_0\,
      I2 => \paino[58]_i_2_n_0\,
      I3 => sel0(1),
      I4 => \paino[58]_i_3_n_0\,
      I5 => p_0_in56_in,
      O => \paino[58]_i_1_n_0\
    );
\paino[58]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(4),
      O => \paino[58]_i_2_n_0\
    );
\paino[58]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => sel0(1),
      I1 => \paino[81]_i_2_n_0\,
      I2 => sel0(7),
      I3 => \paino[69]_i_2_n_0\,
      I4 => sel0(8),
      O => \paino[58]_i_3_n_0\
    );
\paino[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00088000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[60]_i_4_n_0\,
      I2 => \paino[59]_i_2_n_0\,
      I3 => sel0(3),
      I4 => sel0(4),
      I5 => p_0_in54_in,
      O => \paino[59]_i_1_n_0\
    );
\paino[59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \paino[59]_i_2_n_0\
    );
\paino[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00A800"
    )
        port map (
      I0 => data_i,
      I1 => \paino[60]_i_2_n_0\,
      I2 => \paino[60]_i_3_n_0\,
      I3 => \paino[60]_i_4_n_0\,
      I4 => \paino[60]_i_5_n_0\,
      I5 => p_0_in52_in,
      O => \paino[60]_i_1_n_0\
    );
\paino[60]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(4),
      O => \paino[60]_i_2_n_0\
    );
\paino[60]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => sel0(4),
      O => \paino[60]_i_3_n_0\
    );
\paino[60]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(6),
      I4 => sel0(5),
      O => \paino[60]_i_4_n_0\
    );
\paino[60]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[60]_i_5_n_0\
    );
\paino[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => data_i,
      I1 => \paino[61]_i_2_n_0\,
      I2 => \paino[68]_i_3_n_0\,
      I3 => p_0_in50_in,
      O => \paino[61]_i_1_n_0\
    );
\paino[61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001100A00000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => \paino[80]_i_3_n_0\,
      I3 => sel0(6),
      I4 => sel0(4),
      I5 => sel0(5),
      O => \paino[61]_i_2_n_0\
    );
\paino[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF808080A0"
    )
        port map (
      I0 => data_i,
      I1 => \paino[62]_i_2_n_0\,
      I2 => \paino[64]_i_4_n_0\,
      I3 => \paino[80]_i_2_n_0\,
      I4 => sel0(2),
      I5 => p_0_in48_in,
      O => \paino[62]_i_1_n_0\
    );
\paino[62]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1300"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \paino[62]_i_2_n_0\
    );
\paino[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00880800"
    )
        port map (
      I0 => data_i,
      I1 => \paino[64]_i_4_n_0\,
      I2 => \paino[76]_i_2_n_0\,
      I3 => sel0(3),
      I4 => sel0(4),
      I5 => p_0_in46_in,
      O => \paino[63]_i_1_n_0\
    );
\paino[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80AA8080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[66]_i_4_n_0\,
      I2 => \paino[64]_i_2_n_0\,
      I3 => \paino[64]_i_3_n_0\,
      I4 => \paino[64]_i_4_n_0\,
      I5 => p_0_in44_in,
      O => \paino[64]_i_1_n_0\
    );
\paino[64]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(4),
      I4 => sel0(3),
      O => \paino[64]_i_2_n_0\
    );
\paino[64]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      O => \paino[64]_i_3_n_0\
    );
\paino[64]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(6),
      I4 => sel0(5),
      O => \paino[64]_i_4_n_0\
    );
\paino[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8080A080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[65]_i_2_n_0\,
      I2 => \paino[66]_i_4_n_0\,
      I3 => \paino[72]_i_2_n_0\,
      I4 => sel0(1),
      I5 => p_0_in42_in,
      O => \paino[65]_i_1_n_0\
    );
\paino[65]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => sel0(0),
      O => \paino[65]_i_2_n_0\
    );
\paino[66]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00A800"
    )
        port map (
      I0 => data_i,
      I1 => \paino[66]_i_2_n_0\,
      I2 => \paino[66]_i_3_n_0\,
      I3 => \paino[66]_i_4_n_0\,
      I4 => \paino[66]_i_5_n_0\,
      I5 => p_0_in40_in,
      O => \paino[66]_i_1_n_0\
    );
\paino[66]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \paino[66]_i_2_n_0\
    );
\paino[66]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      O => \paino[66]_i_3_n_0\
    );
\paino[66]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => \paino[69]_i_2_n_0\,
      I4 => sel0(8),
      O => \paino[66]_i_4_n_0\
    );
\paino[66]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \paino[66]_i_5_n_0\
    );
\paino[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8A000000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[67]_i_2_n_0\,
      I2 => \paino[83]_i_3_n_0\,
      I3 => \paino[80]_i_4_n_0\,
      I4 => \paino[68]_i_3_n_0\,
      I5 => p_0_in38_in,
      O => \paino[67]_i_1_n_0\
    );
\paino[67]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(4),
      I4 => sel0(3),
      O => \paino[67]_i_2_n_0\
    );
\paino[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8000000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[76]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \paino[68]_i_2_n_0\,
      I4 => \paino[68]_i_3_n_0\,
      I5 => p_0_in36_in,
      O => \paino[68]_i_1_n_0\
    );
\paino[68]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[68]_i_2_n_0\
    );
\paino[68]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sel0(8),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(7),
      O => \paino[68]_i_3_n_0\
    );
\paino[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF28000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(7),
      I2 => sel0(8),
      I3 => \paino[69]_i_2_n_0\,
      I4 => \paino[69]_i_3_n_0\,
      I5 => p_0_in34_in,
      O => \paino[69]_i_1_n_0\
    );
\paino[69]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001110"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      I2 => cs(1),
      I3 => cs(0),
      I4 => cs(2),
      I5 => sel0(9),
      O => \paino[69]_i_2_n_0\
    );
\paino[69]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000080800003"
    )
        port map (
      I0 => \paino[69]_i_4_n_0\,
      I1 => sel0(6),
      I2 => sel0(5),
      I3 => \paino[83]_i_3_n_0\,
      I4 => sel0(7),
      I5 => sel0(2),
      O => \paino[69]_i_3_n_0\
    );
\paino[69]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[69]_i_4_n_0\
    );
\paino[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0020A080"
    )
        port map (
      I0 => data_i,
      I1 => sel0(3),
      I2 => \paino[70]_i_2_n_0\,
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => p_0_in32_in,
      O => \paino[70]_i_1_n_0\
    );
\paino[70]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(6),
      I4 => sel0(5),
      O => \paino[70]_i_2_n_0\
    );
\paino[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF888888A8"
    )
        port map (
      I0 => data_i,
      I1 => \paino[71]_i_2_n_0\,
      I2 => \paino[72]_i_4_n_0\,
      I3 => \paino[83]_i_3_n_0\,
      I4 => sel0(2),
      I5 => p_0_in30_in,
      O => \paino[71]_i_1_n_0\
    );
\paino[71]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00000000000000"
    )
        port map (
      I0 => \paino[71]_i_3_n_0\,
      I1 => \paino[64]_i_3_n_0\,
      I2 => sel0(7),
      I3 => \paino[69]_i_2_n_0\,
      I4 => sel0(8),
      I5 => \paino[86]_i_3_n_0\,
      O => \paino[71]_i_2_n_0\
    );
\paino[71]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(4),
      O => \paino[71]_i_3_n_0\
    );
\paino[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00A800"
    )
        port map (
      I0 => data_i,
      I1 => \paino[72]_i_2_n_0\,
      I2 => \paino[72]_i_3_n_0\,
      I3 => \paino[72]_i_4_n_0\,
      I4 => \paino[72]_i_5_n_0\,
      I5 => p_0_in28_in,
      O => \paino[72]_i_1_n_0\
    );
\paino[72]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(4),
      O => \paino[72]_i_2_n_0\
    );
\paino[72]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(2),
      O => \paino[72]_i_3_n_0\
    );
\paino[72]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(6),
      I4 => sel0(5),
      O => \paino[72]_i_4_n_0\
    );
\paino[72]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      O => \paino[72]_i_5_n_0\
    );
\paino[73]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => data_i,
      I1 => \paino[73]_i_2_n_0\,
      I2 => \paino[75]_i_3_n_0\,
      I3 => p_0_in26_in,
      O => \paino[73]_i_1_n_0\
    );
\paino[73]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C88811110000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[73]_i_2_n_0\
    );
\paino[74]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2080A080"
    )
        port map (
      I0 => data_i,
      I1 => sel0(4),
      I2 => \paino[74]_i_2_n_0\,
      I3 => sel0(3),
      I4 => sel0(2),
      I5 => p_0_in24_in,
      O => \paino[74]_i_1_n_0\
    );
\paino[74]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => sel0(7),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(5),
      I4 => sel0(6),
      O => \paino[74]_i_2_n_0\
    );
\paino[75]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[75]_i_2_n_0\,
      I2 => \paino[75]_i_3_n_0\,
      I3 => \paino[83]_i_2_n_0\,
      I4 => \paino[75]_i_4_n_0\,
      I5 => p_0_in22_in,
      O => \paino[75]_i_1_n_0\
    );
\paino[75]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      O => \paino[75]_i_2_n_0\
    );
\paino[75]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sel0(8),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(7),
      O => \paino[75]_i_3_n_0\
    );
\paino[75]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(4),
      I2 => sel0(3),
      O => \paino[75]_i_4_n_0\
    );
\paino[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[81]_i_3_n_0\,
      I2 => \paino[81]_i_2_n_0\,
      I3 => \paino[76]_i_2_n_0\,
      I4 => \paino[76]_i_3_n_0\,
      I5 => p_0_in20_in,
      O => \paino[76]_i_1_n_0\
    );
\paino[76]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \paino[76]_i_2_n_0\
    );
\paino[76]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(7),
      I4 => \paino[69]_i_2_n_0\,
      I5 => sel0(8),
      O => \paino[76]_i_3_n_0\
    );
\paino[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => \paino[81]_i_3_n_0\,
      I4 => \paino[77]_i_2_n_0\,
      I5 => p_0_in18_in,
      O => \paino[77]_i_1_n_0\
    );
\paino[77]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFFFFA0"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \paino[77]_i_2_n_0\
    );
\paino[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[78]_i_2_n_0\,
      I2 => \paino[81]_i_3_n_0\,
      I3 => \paino[78]_i_3_n_0\,
      I4 => p_0_in16_in,
      O => \paino[78]_i_1_n_0\
    );
\paino[78]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000557F00000000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(3),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[78]_i_2_n_0\
    );
\paino[78]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => \paino[64]_i_3_n_0\,
      I5 => sel0(2),
      O => \paino[78]_i_3_n_0\
    );
\paino[79]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => data_i,
      I1 => \paino[79]_i_2_n_0\,
      I2 => \paino[81]_i_3_n_0\,
      I3 => p_0_in14_in,
      O => \paino[79]_i_1_n_0\
    );
\paino[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A88855550000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[79]_i_2_n_0\
    );
\paino[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
        port map (
      I0 => data_i,
      I1 => \paino[51]_i_3_n_0\,
      I2 => \paino[83]_i_3_n_0\,
      I3 => sel0(5),
      I4 => sel0(6),
      I5 => p_0_in148_in,
      O => \paino[7]_i_1_n_0\
    );
\paino[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8A000000"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => \paino[80]_i_3_n_0\,
      I3 => \paino[80]_i_4_n_0\,
      I4 => \paino[81]_i_3_n_0\,
      I5 => p_0_in12_in,
      O => \paino[80]_i_1_n_0\
    );
\paino[80]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      O => \paino[80]_i_2_n_0\
    );
\paino[80]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \paino[80]_i_3_n_0\
    );
\paino[80]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(6),
      O => \paino[80]_i_4_n_0\
    );
\paino[81]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[81]_i_2_n_0\,
      I2 => \paino[84]_i_4_n_0\,
      I3 => \paino[81]_i_3_n_0\,
      I4 => \paino[81]_i_4_n_0\,
      I5 => p_0_in10_in,
      O => \paino[81]_i_1_n_0\
    );
\paino[81]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[81]_i_2_n_0\
    );
\paino[81]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sel0(8),
      I1 => \paino[69]_i_2_n_0\,
      I2 => sel0(7),
      O => \paino[81]_i_3_n_0\
    );
\paino[81]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAA00000000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \paino[54]_i_2_n_0\,
      O => \paino[81]_i_4_n_0\
    );
\paino[82]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[82]_i_2_n_0\,
      I2 => \paino[84]_i_4_n_0\,
      I3 => \paino[86]_i_3_n_0\,
      I4 => sel0(3),
      I5 => p_0_in8_in,
      O => \paino[82]_i_1_n_0\
    );
\paino[82]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005100550000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => \paino[56]_i_4_n_0\,
      I3 => sel0(6),
      I4 => sel0(4),
      I5 => sel0(5),
      O => \paino[82]_i_2_n_0\
    );
\paino[83]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA000800"
    )
        port map (
      I0 => data_i,
      I1 => \paino[83]_i_2_n_0\,
      I2 => \paino[83]_i_3_n_0\,
      I3 => \paino[84]_i_4_n_0\,
      I4 => \paino[83]_i_4_n_0\,
      I5 => p_0_in6_in,
      O => \paino[83]_i_1_n_0\
    );
\paino[83]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      O => \paino[83]_i_2_n_0\
    );
\paino[83]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      O => \paino[83]_i_3_n_0\
    );
\paino[83]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF8000000000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \paino[83]_i_3_n_0\,
      I4 => sel0(6),
      I5 => sel0(5),
      O => \paino[83]_i_4_n_0\
    );
\paino[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00A800"
    )
        port map (
      I0 => data_i,
      I1 => \paino[84]_i_2_n_0\,
      I2 => \paino[84]_i_3_n_0\,
      I3 => \paino[84]_i_4_n_0\,
      I4 => \paino[84]_i_5_n_0\,
      I5 => p_0_in4_in,
      O => \paino[84]_i_1_n_0\
    );
\paino[84]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[84]_i_2_n_0\
    );
\paino[84]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000404040"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \paino[84]_i_3_n_0\
    );
\paino[84]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sel0(8),
      I1 => \paino[87]_i_6_n_0\,
      I2 => sel0(7),
      O => \paino[84]_i_4_n_0\
    );
\paino[84]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(4),
      I3 => sel0(3),
      O => \paino[84]_i_5_n_0\
    );
\paino[85]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF28000000"
    )
        port map (
      I0 => data_i,
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => \paino[85]_i_2_n_0\,
      I4 => \paino[85]_i_3_n_0\,
      I5 => p_0_in2_in,
      O => \paino[85]_i_1_n_0\
    );
\paino[85]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => sel0(9),
      I1 => cs(2),
      I2 => \paino[85]_i_4_n_0\,
      I3 => sel0(11),
      I4 => sel0(10),
      I5 => sel0(8),
      O => \paino[85]_i_2_n_0\
    );
\paino[85]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F800000F"
    )
        port map (
      I0 => sel0(3),
      I1 => \paino[80]_i_3_n_0\,
      I2 => sel0(4),
      I3 => sel0(5),
      I4 => sel0(6),
      O => \paino[85]_i_3_n_0\
    );
\paino[85]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cs(0),
      I1 => cs(1),
      O => \paino[85]_i_4_n_0\
    );
\paino[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0808080"
    )
        port map (
      I0 => data_i,
      I1 => \paino[86]_i_2_n_0\,
      I2 => \paino[87]_i_5_n_0\,
      I3 => \paino[86]_i_3_n_0\,
      I4 => sel0(4),
      I5 => p_0_in0_in,
      O => \paino[86]_i_1_n_0\
    );
\paino[86]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557FFF00000000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(3),
      I5 => \paino[44]_i_2_n_0\,
      O => \paino[86]_i_2_n_0\
    );
\paino[86]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      O => \paino[86]_i_3_n_0\
    );
\paino[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cs(1),
      I1 => cs(0),
      I2 => cs(2),
      O => rst
    );
\paino[87]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA88A888"
    )
        port map (
      I0 => data_i,
      I1 => \paino[87]_i_3_n_0\,
      I2 => \paino[87]_i_4_n_0\,
      I3 => \paino[87]_i_5_n_0\,
      I4 => sel0(6),
      I5 => \paino_reg_n_0_[87]\,
      O => \paino[87]_i_2_n_0\
    );
\paino[87]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \paino[81]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(8),
      I3 => sel0(7),
      I4 => \paino[41]_i_2_n_0\,
      I5 => \paino[87]_i_6_n_0\,
      O => \paino[87]_i_3_n_0\
    );
\paino[87]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C888888800000000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(5),
      O => \paino[87]_i_4_n_0\
    );
\paino[87]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sel0(8),
      I1 => \paino[87]_i_6_n_0\,
      I2 => sel0(7),
      O => \paino[87]_i_5_n_0\
    );
\paino[87]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000111000000000"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      I2 => cs(1),
      I3 => cs(0),
      I4 => cs(2),
      I5 => sel0(9),
      O => \paino[87]_i_6_n_0\
    );
\paino[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => data_i,
      I1 => \paino[80]_i_2_n_0\,
      I2 => \paino[30]_i_2_n_0\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => p_0_in146_in,
      O => \paino[9]_i_1_n_0\
    );
\paino_data_o[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cs(2),
      I1 => cs(1),
      I2 => cs(0),
      O => create_paino_en
    );
\paino_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => \paino_reg_n_0_[0]\,
      Q => paino_data_o(0),
      R => '0'
    );
\paino_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in144_in,
      Q => paino_data_o(5),
      R => '0'
    );
\paino_data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in142_in,
      Q => paino_data_o(6),
      R => '0'
    );
\paino_data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in140_in,
      Q => paino_data_o(7),
      R => '0'
    );
\paino_data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in138_in,
      Q => paino_data_o(8),
      R => '0'
    );
\paino_data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in136_in,
      Q => paino_data_o(9),
      R => '0'
    );
\paino_data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in134_in,
      Q => paino_data_o(10),
      R => '0'
    );
\paino_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in152_in,
      Q => paino_data_o(1),
      R => '0'
    );
\paino_data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in132_in,
      Q => paino_data_o(11),
      R => '0'
    );
\paino_data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in130_in,
      Q => paino_data_o(12),
      R => '0'
    );
\paino_data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in128_in,
      Q => paino_data_o(13),
      R => '0'
    );
\paino_data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in126_in,
      Q => paino_data_o(14),
      R => '0'
    );
\paino_data_o_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in124_in,
      Q => paino_data_o(15),
      R => '0'
    );
\paino_data_o_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in122_in,
      Q => paino_data_o(16),
      R => '0'
    );
\paino_data_o_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in120_in,
      Q => paino_data_o(17),
      R => '0'
    );
\paino_data_o_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in118_in,
      Q => paino_data_o(18),
      R => '0'
    );
\paino_data_o_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in116_in,
      Q => paino_data_o(19),
      R => '0'
    );
\paino_data_o_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in114_in,
      Q => paino_data_o(20),
      R => '0'
    );
\paino_data_o_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in112_in,
      Q => paino_data_o(21),
      R => '0'
    );
\paino_data_o_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in110_in,
      Q => paino_data_o(22),
      R => '0'
    );
\paino_data_o_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in108_in,
      Q => paino_data_o(23),
      R => '0'
    );
\paino_data_o_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in106_in,
      Q => paino_data_o(24),
      R => '0'
    );
\paino_data_o_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in104_in,
      Q => paino_data_o(25),
      R => '0'
    );
\paino_data_o_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in102_in,
      Q => paino_data_o(26),
      R => '0'
    );
\paino_data_o_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in100_in,
      Q => paino_data_o(27),
      R => '0'
    );
\paino_data_o_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in98_in,
      Q => paino_data_o(28),
      R => '0'
    );
\paino_data_o_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in96_in,
      Q => paino_data_o(29),
      R => '0'
    );
\paino_data_o_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in94_in,
      Q => paino_data_o(30),
      R => '0'
    );
\paino_data_o_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in92_in,
      Q => paino_data_o(31),
      R => '0'
    );
\paino_data_o_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in90_in,
      Q => paino_data_o(32),
      R => '0'
    );
\paino_data_o_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in88_in,
      Q => paino_data_o(33),
      R => '0'
    );
\paino_data_o_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in86_in,
      Q => paino_data_o(34),
      R => '0'
    );
\paino_data_o_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in84_in,
      Q => paino_data_o(35),
      R => '0'
    );
\paino_data_o_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in82_in,
      Q => paino_data_o(36),
      R => '0'
    );
\paino_data_o_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in80_in,
      Q => paino_data_o(37),
      R => '0'
    );
\paino_data_o_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in78_in,
      Q => paino_data_o(38),
      R => '0'
    );
\paino_data_o_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in76_in,
      Q => paino_data_o(39),
      R => '0'
    );
\paino_data_o_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in74_in,
      Q => paino_data_o(40),
      R => '0'
    );
\paino_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in150_in,
      Q => paino_data_o(2),
      R => '0'
    );
\paino_data_o_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in72_in,
      Q => paino_data_o(41),
      R => '0'
    );
\paino_data_o_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in70_in,
      Q => paino_data_o(42),
      R => '0'
    );
\paino_data_o_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in68_in,
      Q => paino_data_o(43),
      R => '0'
    );
\paino_data_o_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in66_in,
      Q => paino_data_o(44),
      R => '0'
    );
\paino_data_o_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in64_in,
      Q => paino_data_o(45),
      R => '0'
    );
\paino_data_o_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in62_in,
      Q => paino_data_o(46),
      R => '0'
    );
\paino_data_o_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in60_in,
      Q => paino_data_o(47),
      R => '0'
    );
\paino_data_o_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in58_in,
      Q => paino_data_o(48),
      R => '0'
    );
\paino_data_o_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in56_in,
      Q => paino_data_o(49),
      R => '0'
    );
\paino_data_o_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in54_in,
      Q => paino_data_o(50),
      R => '0'
    );
\paino_data_o_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in52_in,
      Q => paino_data_o(51),
      R => '0'
    );
\paino_data_o_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in50_in,
      Q => paino_data_o(52),
      R => '0'
    );
\paino_data_o_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in48_in,
      Q => paino_data_o(53),
      R => '0'
    );
\paino_data_o_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in46_in,
      Q => paino_data_o(54),
      R => '0'
    );
\paino_data_o_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in44_in,
      Q => paino_data_o(55),
      R => '0'
    );
\paino_data_o_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in42_in,
      Q => paino_data_o(56),
      R => '0'
    );
\paino_data_o_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in40_in,
      Q => paino_data_o(57),
      R => '0'
    );
\paino_data_o_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in38_in,
      Q => paino_data_o(58),
      R => '0'
    );
\paino_data_o_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in36_in,
      Q => paino_data_o(59),
      R => '0'
    );
\paino_data_o_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in34_in,
      Q => paino_data_o(60),
      R => '0'
    );
\paino_data_o_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in32_in,
      Q => paino_data_o(61),
      R => '0'
    );
\paino_data_o_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in30_in,
      Q => paino_data_o(62),
      R => '0'
    );
\paino_data_o_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in28_in,
      Q => paino_data_o(63),
      R => '0'
    );
\paino_data_o_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in26_in,
      Q => paino_data_o(64),
      R => '0'
    );
\paino_data_o_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in24_in,
      Q => paino_data_o(65),
      R => '0'
    );
\paino_data_o_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in22_in,
      Q => paino_data_o(66),
      R => '0'
    );
\paino_data_o_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in20_in,
      Q => paino_data_o(67),
      R => '0'
    );
\paino_data_o_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in18_in,
      Q => paino_data_o(68),
      R => '0'
    );
\paino_data_o_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in16_in,
      Q => paino_data_o(69),
      R => '0'
    );
\paino_data_o_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in14_in,
      Q => paino_data_o(70),
      R => '0'
    );
\paino_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in148_in,
      Q => paino_data_o(3),
      R => '0'
    );
\paino_data_o_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in12_in,
      Q => paino_data_o(71),
      R => '0'
    );
\paino_data_o_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in10_in,
      Q => paino_data_o(72),
      R => '0'
    );
\paino_data_o_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in8_in,
      Q => paino_data_o(73),
      R => '0'
    );
\paino_data_o_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in6_in,
      Q => paino_data_o(74),
      R => '0'
    );
\paino_data_o_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in4_in,
      Q => paino_data_o(75),
      R => '0'
    );
\paino_data_o_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in2_in,
      Q => paino_data_o(76),
      R => '0'
    );
\paino_data_o_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in0_in,
      Q => paino_data_o(77),
      R => '0'
    );
\paino_data_o_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => \paino_reg_n_0_[87]\,
      Q => paino_data_o(78),
      R => '0'
    );
\paino_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clkb_i,
      CE => create_paino_en,
      D => p_0_in146_in,
      Q => paino_data_o(4),
      R => '0'
    );
paino_done_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => cs(1),
      I1 => cs(2),
      I2 => cs(0),
      O => paino_done_o
    );
\paino_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[0]_i_1_n_0\,
      Q => \paino_reg_n_0_[0]\,
      R => rst
    );
\paino_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[11]_i_1_n_0\,
      Q => p_0_in144_in,
      R => rst
    );
\paino_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[13]_i_1_n_0\,
      Q => p_0_in142_in,
      R => rst
    );
\paino_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[15]_i_1_n_0\,
      Q => p_0_in140_in,
      R => rst
    );
\paino_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[16]_i_1_n_0\,
      Q => p_0_in138_in,
      R => rst
    );
\paino_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[18]_i_1_n_0\,
      Q => p_0_in136_in,
      R => rst
    );
\paino_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[19]_i_1_n_0\,
      Q => p_0_in134_in,
      R => rst
    );
\paino_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[1]_i_1_n_0\,
      Q => p_0_in152_in,
      R => rst
    );
\paino_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[20]_i_1_n_0\,
      Q => p_0_in132_in,
      R => rst
    );
\paino_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[21]_i_1_n_0\,
      Q => p_0_in130_in,
      R => rst
    );
\paino_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[22]_i_1_n_0\,
      Q => p_0_in128_in,
      R => rst
    );
\paino_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[23]_i_1_n_0\,
      Q => p_0_in126_in,
      R => rst
    );
\paino_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[24]_i_1_n_0\,
      Q => p_0_in124_in,
      R => rst
    );
\paino_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[25]_i_1_n_0\,
      Q => p_0_in122_in,
      R => rst
    );
\paino_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[26]_i_1_n_0\,
      Q => p_0_in120_in,
      R => rst
    );
\paino_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[27]_i_1_n_0\,
      Q => p_0_in118_in,
      R => rst
    );
\paino_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[28]_i_1_n_0\,
      Q => p_0_in116_in,
      R => rst
    );
\paino_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[29]_i_1_n_0\,
      Q => p_0_in114_in,
      R => rst
    );
\paino_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[30]_i_1_n_0\,
      Q => p_0_in112_in,
      R => rst
    );
\paino_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[31]_i_1_n_0\,
      Q => p_0_in110_in,
      R => rst
    );
\paino_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[32]_i_1_n_0\,
      Q => p_0_in108_in,
      R => rst
    );
\paino_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[33]_i_1_n_0\,
      Q => p_0_in106_in,
      R => rst
    );
\paino_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[34]_i_1_n_0\,
      Q => p_0_in104_in,
      R => rst
    );
\paino_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[35]_i_1_n_0\,
      Q => p_0_in102_in,
      R => rst
    );
\paino_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[36]_i_1_n_0\,
      Q => p_0_in100_in,
      R => rst
    );
\paino_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[37]_i_1_n_0\,
      Q => p_0_in98_in,
      R => rst
    );
\paino_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[38]_i_1_n_0\,
      Q => p_0_in96_in,
      R => rst
    );
\paino_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[39]_i_1_n_0\,
      Q => p_0_in94_in,
      R => rst
    );
\paino_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[40]_i_1_n_0\,
      Q => p_0_in92_in,
      R => rst
    );
\paino_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[41]_i_1_n_0\,
      Q => p_0_in90_in,
      R => rst
    );
\paino_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[42]_i_1_n_0\,
      Q => p_0_in88_in,
      R => rst
    );
\paino_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[43]_i_1_n_0\,
      Q => p_0_in86_in,
      R => rst
    );
\paino_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[44]_i_1_n_0\,
      Q => p_0_in84_in,
      R => rst
    );
\paino_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[45]_i_1_n_0\,
      Q => p_0_in82_in,
      R => rst
    );
\paino_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[46]_i_1_n_0\,
      Q => p_0_in80_in,
      R => rst
    );
\paino_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[47]_i_1_n_0\,
      Q => p_0_in78_in,
      R => rst
    );
\paino_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[48]_i_1_n_0\,
      Q => p_0_in76_in,
      R => rst
    );
\paino_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[49]_i_1_n_0\,
      Q => p_0_in74_in,
      R => rst
    );
\paino_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[4]_i_1_n_0\,
      Q => p_0_in150_in,
      R => rst
    );
\paino_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[50]_i_1_n_0\,
      Q => p_0_in72_in,
      R => rst
    );
\paino_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[51]_i_1_n_0\,
      Q => p_0_in70_in,
      R => rst
    );
\paino_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[52]_i_1_n_0\,
      Q => p_0_in68_in,
      R => rst
    );
\paino_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[53]_i_1_n_0\,
      Q => p_0_in66_in,
      R => rst
    );
\paino_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[54]_i_1_n_0\,
      Q => p_0_in64_in,
      R => rst
    );
\paino_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[55]_i_1_n_0\,
      Q => p_0_in62_in,
      R => rst
    );
\paino_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[56]_i_1_n_0\,
      Q => p_0_in60_in,
      R => rst
    );
\paino_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[57]_i_1_n_0\,
      Q => p_0_in58_in,
      R => rst
    );
\paino_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[58]_i_1_n_0\,
      Q => p_0_in56_in,
      R => rst
    );
\paino_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[59]_i_1_n_0\,
      Q => p_0_in54_in,
      R => rst
    );
\paino_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[60]_i_1_n_0\,
      Q => p_0_in52_in,
      R => rst
    );
\paino_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[61]_i_1_n_0\,
      Q => p_0_in50_in,
      R => rst
    );
\paino_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[62]_i_1_n_0\,
      Q => p_0_in48_in,
      R => rst
    );
\paino_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[63]_i_1_n_0\,
      Q => p_0_in46_in,
      R => rst
    );
\paino_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[64]_i_1_n_0\,
      Q => p_0_in44_in,
      R => rst
    );
\paino_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[65]_i_1_n_0\,
      Q => p_0_in42_in,
      R => rst
    );
\paino_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[66]_i_1_n_0\,
      Q => p_0_in40_in,
      R => rst
    );
\paino_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[67]_i_1_n_0\,
      Q => p_0_in38_in,
      R => rst
    );
\paino_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[68]_i_1_n_0\,
      Q => p_0_in36_in,
      R => rst
    );
\paino_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[69]_i_1_n_0\,
      Q => p_0_in34_in,
      R => rst
    );
\paino_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[70]_i_1_n_0\,
      Q => p_0_in32_in,
      R => rst
    );
\paino_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[71]_i_1_n_0\,
      Q => p_0_in30_in,
      R => rst
    );
\paino_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[72]_i_1_n_0\,
      Q => p_0_in28_in,
      R => rst
    );
\paino_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[73]_i_1_n_0\,
      Q => p_0_in26_in,
      R => rst
    );
\paino_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[74]_i_1_n_0\,
      Q => p_0_in24_in,
      R => rst
    );
\paino_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[75]_i_1_n_0\,
      Q => p_0_in22_in,
      R => rst
    );
\paino_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[76]_i_1_n_0\,
      Q => p_0_in20_in,
      R => rst
    );
\paino_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[77]_i_1_n_0\,
      Q => p_0_in18_in,
      R => rst
    );
\paino_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[78]_i_1_n_0\,
      Q => p_0_in16_in,
      R => rst
    );
\paino_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[79]_i_1_n_0\,
      Q => p_0_in14_in,
      R => rst
    );
\paino_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[7]_i_1_n_0\,
      Q => p_0_in148_in,
      R => rst
    );
\paino_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[80]_i_1_n_0\,
      Q => p_0_in12_in,
      R => rst
    );
\paino_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[81]_i_1_n_0\,
      Q => p_0_in10_in,
      R => rst
    );
\paino_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[82]_i_1_n_0\,
      Q => p_0_in8_in,
      R => rst
    );
\paino_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[83]_i_1_n_0\,
      Q => p_0_in6_in,
      R => rst
    );
\paino_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[84]_i_1_n_0\,
      Q => p_0_in4_in,
      R => rst
    );
\paino_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[85]_i_1_n_0\,
      Q => p_0_in2_in,
      R => rst
    );
\paino_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[86]_i_1_n_0\,
      Q => p_0_in0_in,
      R => rst
    );
\paino_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[87]_i_2_n_0\,
      Q => \paino_reg_n_0_[87]\,
      R => rst
    );
\paino_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb_i,
      CE => '1',
      D => \paino[9]_i_1_n_0\,
      Q => p_0_in146_in,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_create_88key_0_0 is
  port (
    clkb_i : in STD_LOGIC;
    data_i : in STD_LOGIC;
    en_i : in STD_LOGIC;
    r_addr_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    paino_data_o : out STD_LOGIC_VECTOR ( 87 downto 0 );
    paino_done_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_create_88key_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_create_88key_0_0 : entity is "design_1_create_88key_0_0,create_88key,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_create_88key_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_create_88key_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_create_88key_0_0 : entity is "create_88key,Vivado 2023.1";
end design_1_create_88key_0_0;

architecture STRUCTURE of design_1_create_88key_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^paino_data_o\ : STD_LOGIC_VECTOR ( 87 downto 0 );
begin
  paino_data_o(87 downto 18) <= \^paino_data_o\(87 downto 18);
  paino_data_o(17) <= \<const0>\;
  paino_data_o(16 downto 15) <= \^paino_data_o\(16 downto 15);
  paino_data_o(14) <= \<const0>\;
  paino_data_o(13) <= \^paino_data_o\(13);
  paino_data_o(12) <= \<const0>\;
  paino_data_o(11) <= \^paino_data_o\(11);
  paino_data_o(10) <= \<const0>\;
  paino_data_o(9) <= \^paino_data_o\(9);
  paino_data_o(8) <= \<const0>\;
  paino_data_o(7) <= \^paino_data_o\(7);
  paino_data_o(6) <= \<const0>\;
  paino_data_o(5) <= \<const0>\;
  paino_data_o(4) <= \^paino_data_o\(4);
  paino_data_o(3) <= \<const0>\;
  paino_data_o(2) <= \<const0>\;
  paino_data_o(1 downto 0) <= \^paino_data_o\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_create_88key_0_0_create_88key
     port map (
      clkb_i => clkb_i,
      data_i => data_i,
      en_i => en_i,
      paino_data_o(78 downto 9) => \^paino_data_o\(87 downto 18),
      paino_data_o(8 downto 7) => \^paino_data_o\(16 downto 15),
      paino_data_o(6) => \^paino_data_o\(13),
      paino_data_o(5) => \^paino_data_o\(11),
      paino_data_o(4) => \^paino_data_o\(9),
      paino_data_o(3) => \^paino_data_o\(7),
      paino_data_o(2) => \^paino_data_o\(4),
      paino_data_o(1 downto 0) => \^paino_data_o\(1 downto 0),
      paino_done_o => paino_done_o,
      r_addr_o(11 downto 0) => r_addr_o(11 downto 0)
    );
end STRUCTURE;
