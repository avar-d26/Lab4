// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:54:58 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode funcsim -rename_top design_1_create_88key_0_0 -prefix
//               design_1_create_88key_0_0_ design_1_create_88key_0_0_sim_netlist.v
// Design      : design_1_create_88key_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_create_88key_0_0_create_88key
   (r_addr_o,
    paino_data_o,
    paino_done_o,
    clkb_i,
    en_i,
    data_i);
  output [11:0]r_addr_o;
  output [78:0]paino_data_o;
  output paino_done_o;
  input clkb_i;
  input en_i;
  input data_i;

  wire \FSM_sequential_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_cs[2]_i_1_n_0 ;
  wire address_counter0;
  wire \address_counter[11]_i_4_n_0 ;
  wire \address_counter[11]_i_5_n_0 ;
  wire \address_counter[3]_i_2_n_0 ;
  wire \address_counter_reg[11]_i_3_n_1 ;
  wire \address_counter_reg[11]_i_3_n_2 ;
  wire \address_counter_reg[11]_i_3_n_3 ;
  wire \address_counter_reg[11]_i_3_n_4 ;
  wire \address_counter_reg[11]_i_3_n_5 ;
  wire \address_counter_reg[11]_i_3_n_6 ;
  wire \address_counter_reg[11]_i_3_n_7 ;
  wire \address_counter_reg[3]_i_1_n_0 ;
  wire \address_counter_reg[3]_i_1_n_1 ;
  wire \address_counter_reg[3]_i_1_n_2 ;
  wire \address_counter_reg[3]_i_1_n_3 ;
  wire \address_counter_reg[3]_i_1_n_4 ;
  wire \address_counter_reg[3]_i_1_n_5 ;
  wire \address_counter_reg[3]_i_1_n_6 ;
  wire \address_counter_reg[3]_i_1_n_7 ;
  wire \address_counter_reg[7]_i_1_n_0 ;
  wire \address_counter_reg[7]_i_1_n_1 ;
  wire \address_counter_reg[7]_i_1_n_2 ;
  wire \address_counter_reg[7]_i_1_n_3 ;
  wire \address_counter_reg[7]_i_1_n_4 ;
  wire \address_counter_reg[7]_i_1_n_5 ;
  wire \address_counter_reg[7]_i_1_n_6 ;
  wire \address_counter_reg[7]_i_1_n_7 ;
  wire clkb_i;
  wire count_en;
  wire [11:0]counterdelay1;
  wire create_paino_en;
  wire [2:0]cs;
  wire data_i;
  wire en_i;
  wire load_enable;
  wire load_enable_reg__0;
  wire p_0_in0_in;
  wire p_0_in100_in;
  wire p_0_in102_in;
  wire p_0_in104_in;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire p_0_in10_in;
  wire p_0_in110_in;
  wire p_0_in112_in;
  wire p_0_in114_in;
  wire p_0_in116_in;
  wire p_0_in118_in;
  wire p_0_in120_in;
  wire p_0_in122_in;
  wire p_0_in124_in;
  wire p_0_in126_in;
  wire p_0_in128_in;
  wire p_0_in12_in;
  wire p_0_in130_in;
  wire p_0_in132_in;
  wire p_0_in134_in;
  wire p_0_in136_in;
  wire p_0_in138_in;
  wire p_0_in140_in;
  wire p_0_in142_in;
  wire p_0_in144_in;
  wire p_0_in146_in;
  wire p_0_in148_in;
  wire p_0_in14_in;
  wire p_0_in150_in;
  wire p_0_in152_in;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire p_0_in20_in;
  wire p_0_in22_in;
  wire p_0_in24_in;
  wire p_0_in26_in;
  wire p_0_in28_in;
  wire p_0_in2_in;
  wire p_0_in30_in;
  wire p_0_in32_in;
  wire p_0_in34_in;
  wire p_0_in36_in;
  wire p_0_in38_in;
  wire p_0_in40_in;
  wire p_0_in42_in;
  wire p_0_in44_in;
  wire p_0_in46_in;
  wire p_0_in48_in;
  wire p_0_in4_in;
  wire p_0_in50_in;
  wire p_0_in52_in;
  wire p_0_in54_in;
  wire p_0_in56_in;
  wire p_0_in58_in;
  wire p_0_in60_in;
  wire p_0_in62_in;
  wire p_0_in64_in;
  wire p_0_in66_in;
  wire p_0_in68_in;
  wire p_0_in6_in;
  wire p_0_in70_in;
  wire p_0_in72_in;
  wire p_0_in74_in;
  wire p_0_in76_in;
  wire p_0_in78_in;
  wire p_0_in80_in;
  wire p_0_in82_in;
  wire p_0_in84_in;
  wire p_0_in86_in;
  wire p_0_in88_in;
  wire p_0_in8_in;
  wire p_0_in90_in;
  wire p_0_in92_in;
  wire p_0_in94_in;
  wire p_0_in96_in;
  wire p_0_in98_in;
  wire \paino[0]_i_1_n_0 ;
  wire \paino[0]_i_2_n_0 ;
  wire \paino[11]_i_1_n_0 ;
  wire \paino[13]_i_1_n_0 ;
  wire \paino[15]_i_1_n_0 ;
  wire \paino[16]_i_1_n_0 ;
  wire \paino[18]_i_1_n_0 ;
  wire \paino[19]_i_1_n_0 ;
  wire \paino[1]_i_1_n_0 ;
  wire \paino[20]_i_1_n_0 ;
  wire \paino[21]_i_1_n_0 ;
  wire \paino[22]_i_1_n_0 ;
  wire \paino[23]_i_1_n_0 ;
  wire \paino[24]_i_1_n_0 ;
  wire \paino[25]_i_1_n_0 ;
  wire \paino[26]_i_1_n_0 ;
  wire \paino[27]_i_1_n_0 ;
  wire \paino[28]_i_1_n_0 ;
  wire \paino[28]_i_2_n_0 ;
  wire \paino[29]_i_1_n_0 ;
  wire \paino[30]_i_1_n_0 ;
  wire \paino[30]_i_2_n_0 ;
  wire \paino[31]_i_1_n_0 ;
  wire \paino[32]_i_1_n_0 ;
  wire \paino[32]_i_2_n_0 ;
  wire \paino[33]_i_1_n_0 ;
  wire \paino[33]_i_2_n_0 ;
  wire \paino[33]_i_3_n_0 ;
  wire \paino[34]_i_1_n_0 ;
  wire \paino[35]_i_1_n_0 ;
  wire \paino[35]_i_2_n_0 ;
  wire \paino[36]_i_1_n_0 ;
  wire \paino[37]_i_1_n_0 ;
  wire \paino[37]_i_2_n_0 ;
  wire \paino[38]_i_1_n_0 ;
  wire \paino[39]_i_1_n_0 ;
  wire \paino[39]_i_2_n_0 ;
  wire \paino[40]_i_1_n_0 ;
  wire \paino[40]_i_2_n_0 ;
  wire \paino[40]_i_3_n_0 ;
  wire \paino[41]_i_1_n_0 ;
  wire \paino[41]_i_2_n_0 ;
  wire \paino[42]_i_1_n_0 ;
  wire \paino[42]_i_2_n_0 ;
  wire \paino[43]_i_1_n_0 ;
  wire \paino[43]_i_2_n_0 ;
  wire \paino[43]_i_3_n_0 ;
  wire \paino[43]_i_4_n_0 ;
  wire \paino[43]_i_5_n_0 ;
  wire \paino[44]_i_1_n_0 ;
  wire \paino[44]_i_2_n_0 ;
  wire \paino[44]_i_3_n_0 ;
  wire \paino[45]_i_1_n_0 ;
  wire \paino[45]_i_2_n_0 ;
  wire \paino[45]_i_3_n_0 ;
  wire \paino[46]_i_1_n_0 ;
  wire \paino[46]_i_2_n_0 ;
  wire \paino[46]_i_3_n_0 ;
  wire \paino[47]_i_1_n_0 ;
  wire \paino[47]_i_2_n_0 ;
  wire \paino[47]_i_3_n_0 ;
  wire \paino[48]_i_1_n_0 ;
  wire \paino[48]_i_2_n_0 ;
  wire \paino[48]_i_3_n_0 ;
  wire \paino[49]_i_1_n_0 ;
  wire \paino[49]_i_2_n_0 ;
  wire \paino[49]_i_3_n_0 ;
  wire \paino[4]_i_1_n_0 ;
  wire \paino[50]_i_1_n_0 ;
  wire \paino[50]_i_2_n_0 ;
  wire \paino[50]_i_3_n_0 ;
  wire \paino[51]_i_1_n_0 ;
  wire \paino[51]_i_2_n_0 ;
  wire \paino[51]_i_3_n_0 ;
  wire \paino[51]_i_4_n_0 ;
  wire \paino[52]_i_1_n_0 ;
  wire \paino[52]_i_2_n_0 ;
  wire \paino[52]_i_3_n_0 ;
  wire \paino[53]_i_1_n_0 ;
  wire \paino[54]_i_1_n_0 ;
  wire \paino[54]_i_2_n_0 ;
  wire \paino[55]_i_1_n_0 ;
  wire \paino[55]_i_2_n_0 ;
  wire \paino[55]_i_3_n_0 ;
  wire \paino[56]_i_1_n_0 ;
  wire \paino[56]_i_2_n_0 ;
  wire \paino[56]_i_3_n_0 ;
  wire \paino[56]_i_4_n_0 ;
  wire \paino[57]_i_1_n_0 ;
  wire \paino[57]_i_2_n_0 ;
  wire \paino[57]_i_3_n_0 ;
  wire \paino[58]_i_1_n_0 ;
  wire \paino[58]_i_2_n_0 ;
  wire \paino[58]_i_3_n_0 ;
  wire \paino[59]_i_1_n_0 ;
  wire \paino[59]_i_2_n_0 ;
  wire \paino[60]_i_1_n_0 ;
  wire \paino[60]_i_2_n_0 ;
  wire \paino[60]_i_3_n_0 ;
  wire \paino[60]_i_4_n_0 ;
  wire \paino[60]_i_5_n_0 ;
  wire \paino[61]_i_1_n_0 ;
  wire \paino[61]_i_2_n_0 ;
  wire \paino[62]_i_1_n_0 ;
  wire \paino[62]_i_2_n_0 ;
  wire \paino[63]_i_1_n_0 ;
  wire \paino[64]_i_1_n_0 ;
  wire \paino[64]_i_2_n_0 ;
  wire \paino[64]_i_3_n_0 ;
  wire \paino[64]_i_4_n_0 ;
  wire \paino[65]_i_1_n_0 ;
  wire \paino[65]_i_2_n_0 ;
  wire \paino[66]_i_1_n_0 ;
  wire \paino[66]_i_2_n_0 ;
  wire \paino[66]_i_3_n_0 ;
  wire \paino[66]_i_4_n_0 ;
  wire \paino[66]_i_5_n_0 ;
  wire \paino[67]_i_1_n_0 ;
  wire \paino[67]_i_2_n_0 ;
  wire \paino[68]_i_1_n_0 ;
  wire \paino[68]_i_2_n_0 ;
  wire \paino[68]_i_3_n_0 ;
  wire \paino[69]_i_1_n_0 ;
  wire \paino[69]_i_2_n_0 ;
  wire \paino[69]_i_3_n_0 ;
  wire \paino[69]_i_4_n_0 ;
  wire \paino[70]_i_1_n_0 ;
  wire \paino[70]_i_2_n_0 ;
  wire \paino[71]_i_1_n_0 ;
  wire \paino[71]_i_2_n_0 ;
  wire \paino[71]_i_3_n_0 ;
  wire \paino[72]_i_1_n_0 ;
  wire \paino[72]_i_2_n_0 ;
  wire \paino[72]_i_3_n_0 ;
  wire \paino[72]_i_4_n_0 ;
  wire \paino[72]_i_5_n_0 ;
  wire \paino[73]_i_1_n_0 ;
  wire \paino[73]_i_2_n_0 ;
  wire \paino[74]_i_1_n_0 ;
  wire \paino[74]_i_2_n_0 ;
  wire \paino[75]_i_1_n_0 ;
  wire \paino[75]_i_2_n_0 ;
  wire \paino[75]_i_3_n_0 ;
  wire \paino[75]_i_4_n_0 ;
  wire \paino[76]_i_1_n_0 ;
  wire \paino[76]_i_2_n_0 ;
  wire \paino[76]_i_3_n_0 ;
  wire \paino[77]_i_1_n_0 ;
  wire \paino[77]_i_2_n_0 ;
  wire \paino[78]_i_1_n_0 ;
  wire \paino[78]_i_2_n_0 ;
  wire \paino[78]_i_3_n_0 ;
  wire \paino[79]_i_1_n_0 ;
  wire \paino[79]_i_2_n_0 ;
  wire \paino[7]_i_1_n_0 ;
  wire \paino[80]_i_1_n_0 ;
  wire \paino[80]_i_2_n_0 ;
  wire \paino[80]_i_3_n_0 ;
  wire \paino[80]_i_4_n_0 ;
  wire \paino[81]_i_1_n_0 ;
  wire \paino[81]_i_2_n_0 ;
  wire \paino[81]_i_3_n_0 ;
  wire \paino[81]_i_4_n_0 ;
  wire \paino[82]_i_1_n_0 ;
  wire \paino[82]_i_2_n_0 ;
  wire \paino[83]_i_1_n_0 ;
  wire \paino[83]_i_2_n_0 ;
  wire \paino[83]_i_3_n_0 ;
  wire \paino[83]_i_4_n_0 ;
  wire \paino[84]_i_1_n_0 ;
  wire \paino[84]_i_2_n_0 ;
  wire \paino[84]_i_3_n_0 ;
  wire \paino[84]_i_4_n_0 ;
  wire \paino[84]_i_5_n_0 ;
  wire \paino[85]_i_1_n_0 ;
  wire \paino[85]_i_2_n_0 ;
  wire \paino[85]_i_3_n_0 ;
  wire \paino[85]_i_4_n_0 ;
  wire \paino[86]_i_1_n_0 ;
  wire \paino[86]_i_2_n_0 ;
  wire \paino[86]_i_3_n_0 ;
  wire \paino[87]_i_2_n_0 ;
  wire \paino[87]_i_3_n_0 ;
  wire \paino[87]_i_4_n_0 ;
  wire \paino[87]_i_5_n_0 ;
  wire \paino[87]_i_6_n_0 ;
  wire \paino[9]_i_1_n_0 ;
  wire [78:0]paino_data_o;
  wire paino_done_o;
  wire \paino_reg_n_0_[0] ;
  wire \paino_reg_n_0_[87] ;
  wire [11:0]r_addr_o;
  wire rst;
  wire [11:0]sel0;
  wire [3:3]\NLW_address_counter_reg[11]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h03030303F7FF343C)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(\address_counter[11]_i_4_n_0 ),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(\address_counter[11]_i_5_n_0 ),
        .I4(load_enable),
        .I5(cs[1]),
        .O(\FSM_sequential_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03030800)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(\address_counter[11]_i_4_n_0 ),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(\address_counter[11]_i_5_n_0 ),
        .I4(cs[1]),
        .O(\FSM_sequential_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h22C4)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(load_enable),
        .I3(cs[1]),
        .O(\FSM_sequential_cs[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "count_address:001,count_wait_1:010,count_wait_2:011,create_paino:100,send_paino:101,init:000,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\FSM_sequential_cs[0]_i_1_n_0 ),
        .Q(cs[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "count_address:001,count_wait_1:010,count_wait_2:011,create_paino:100,send_paino:101,init:000,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\FSM_sequential_cs[1]_i_1_n_0 ),
        .Q(cs[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "count_address:001,count_wait_1:010,count_wait_2:011,create_paino:100,send_paino:101,init:000,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\FSM_sequential_cs[2]_i_1_n_0 ),
        .Q(cs[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF010101)) 
    \address_counter[11]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(\address_counter[11]_i_4_n_0 ),
        .I4(\address_counter[11]_i_5_n_0 ),
        .O(address_counter0));
  LUT3 #(
    .INIT(8'h10)) 
    \address_counter[11]_i_2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(count_en));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \address_counter[11]_i_4 
       (.I0(r_addr_o[8]),
        .I1(r_addr_o[9]),
        .I2(r_addr_o[6]),
        .I3(r_addr_o[7]),
        .I4(r_addr_o[11]),
        .I5(r_addr_o[10]),
        .O(\address_counter[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \address_counter[11]_i_5 
       (.I0(r_addr_o[2]),
        .I1(r_addr_o[3]),
        .I2(r_addr_o[0]),
        .I3(r_addr_o[1]),
        .I4(r_addr_o[5]),
        .I5(r_addr_o[4]),
        .O(\address_counter[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address_counter[3]_i_2 
       (.I0(r_addr_o[0]),
        .O(\address_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[0] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[10] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[10]),
        .Q(sel0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[11] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[11]),
        .Q(sel0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[1] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[2] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[3] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[4] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[4]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[5] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[5]),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[6] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[6]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[7] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[7]),
        .Q(sel0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[8] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[8]),
        .Q(sel0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_delayed_reg[9] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(counterdelay1[9]),
        .Q(sel0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[0] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[3]_i_1_n_7 ),
        .Q(r_addr_o[0]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[10] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[11]_i_3_n_5 ),
        .Q(r_addr_o[10]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[11] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[11]_i_3_n_4 ),
        .Q(r_addr_o[11]),
        .R(address_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_counter_reg[11]_i_3 
       (.CI(\address_counter_reg[7]_i_1_n_0 ),
        .CO({\NLW_address_counter_reg[11]_i_3_CO_UNCONNECTED [3],\address_counter_reg[11]_i_3_n_1 ,\address_counter_reg[11]_i_3_n_2 ,\address_counter_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_counter_reg[11]_i_3_n_4 ,\address_counter_reg[11]_i_3_n_5 ,\address_counter_reg[11]_i_3_n_6 ,\address_counter_reg[11]_i_3_n_7 }),
        .S(r_addr_o[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[1] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[3]_i_1_n_6 ),
        .Q(r_addr_o[1]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[2] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[3]_i_1_n_5 ),
        .Q(r_addr_o[2]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[3] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[3]_i_1_n_4 ),
        .Q(r_addr_o[3]),
        .R(address_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\address_counter_reg[3]_i_1_n_0 ,\address_counter_reg[3]_i_1_n_1 ,\address_counter_reg[3]_i_1_n_2 ,\address_counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_counter_reg[3]_i_1_n_4 ,\address_counter_reg[3]_i_1_n_5 ,\address_counter_reg[3]_i_1_n_6 ,\address_counter_reg[3]_i_1_n_7 }),
        .S({r_addr_o[3:1],\address_counter[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[4] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[7]_i_1_n_7 ),
        .Q(r_addr_o[4]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[5] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[7]_i_1_n_6 ),
        .Q(r_addr_o[5]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[6] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[7]_i_1_n_5 ),
        .Q(r_addr_o[6]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[7] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[7]_i_1_n_4 ),
        .Q(r_addr_o[7]),
        .R(address_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_counter_reg[7]_i_1 
       (.CI(\address_counter_reg[3]_i_1_n_0 ),
        .CO({\address_counter_reg[7]_i_1_n_0 ,\address_counter_reg[7]_i_1_n_1 ,\address_counter_reg[7]_i_1_n_2 ,\address_counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_counter_reg[7]_i_1_n_4 ,\address_counter_reg[7]_i_1_n_5 ,\address_counter_reg[7]_i_1_n_6 ,\address_counter_reg[7]_i_1_n_7 }),
        .S(r_addr_o[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[8] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[11]_i_3_n_7 ),
        .Q(r_addr_o[8]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \address_counter_reg[9] 
       (.C(clkb_i),
        .CE(count_en),
        .D(\address_counter_reg[11]_i_3_n_6 ),
        .Q(r_addr_o[9]),
        .R(address_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[0] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[0]),
        .Q(counterdelay1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[10] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[10]),
        .Q(counterdelay1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[11] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[11]),
        .Q(counterdelay1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[1] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[1]),
        .Q(counterdelay1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[2] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[2]),
        .Q(counterdelay1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[3] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[3]),
        .Q(counterdelay1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[4] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[4]),
        .Q(counterdelay1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[5] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[5]),
        .Q(counterdelay1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[6] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[6]),
        .Q(counterdelay1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[7] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[7]),
        .Q(counterdelay1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[8] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[8]),
        .Q(counterdelay1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterdelay1_reg[9] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(r_addr_o[9]),
        .Q(counterdelay1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    load_enable_reg
       (.C(clkb_i),
        .CE(1'b1),
        .D(load_enable_reg__0),
        .Q(load_enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    load_enable_reg_reg
       (.C(clkb_i),
        .CE(1'b1),
        .D(en_i),
        .Q(load_enable_reg__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[0]_i_1 
       (.I0(data_i),
        .I1(\paino[39]_i_2_n_0 ),
        .I2(\paino[0]_i_2_n_0 ),
        .I3(\paino[30]_i_2_n_0 ),
        .I4(\paino[35]_i_2_n_0 ),
        .I5(\paino_reg_n_0_[0] ),
        .O(\paino[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \paino[0]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\paino[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \paino[11]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(\paino[30]_i_2_n_0 ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(p_0_in144_in),
        .O(\paino[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \paino[13]_i_1 
       (.I0(data_i),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\paino[80]_i_2_n_0 ),
        .I4(\paino[30]_i_2_n_0 ),
        .I5(p_0_in142_in),
        .O(\paino[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \paino[15]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(\paino[30]_i_2_n_0 ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(p_0_in140_in),
        .O(\paino[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \paino[16]_i_1 
       (.I0(data_i),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\paino[80]_i_2_n_0 ),
        .I4(\paino[32]_i_2_n_0 ),
        .I5(p_0_in138_in),
        .O(\paino[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \paino[18]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[32]_i_2_n_0 ),
        .I5(p_0_in136_in),
        .O(\paino[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \paino[19]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(\paino[86]_i_3_n_0 ),
        .I3(sel0[0]),
        .I4(\paino[55]_i_3_n_0 ),
        .I5(p_0_in134_in),
        .O(\paino[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \paino[1]_i_1 
       (.I0(data_i),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\paino[81]_i_2_n_0 ),
        .I4(\paino[39]_i_2_n_0 ),
        .I5(p_0_in152_in),
        .O(\paino[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \paino[20]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(\paino[51]_i_3_n_0 ),
        .I5(p_0_in132_in),
        .O(\paino[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \paino[21]_i_1 
       (.I0(data_i),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(\paino[30]_i_2_n_0 ),
        .I4(\paino[41]_i_2_n_0 ),
        .I5(p_0_in130_in),
        .O(\paino[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \paino[22]_i_1 
       (.I0(data_i),
        .I1(\paino[66]_i_3_n_0 ),
        .I2(\paino[30]_i_2_n_0 ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(p_0_in128_in),
        .O(\paino[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \paino[23]_i_1 
       (.I0(data_i),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\paino[66]_i_3_n_0 ),
        .I4(\paino[30]_i_2_n_0 ),
        .I5(p_0_in126_in),
        .O(\paino[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \paino[24]_i_1 
       (.I0(data_i),
        .I1(\paino[66]_i_3_n_0 ),
        .I2(\paino[30]_i_2_n_0 ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(p_0_in124_in),
        .O(\paino[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \paino[25]_i_1 
       (.I0(data_i),
        .I1(\paino[41]_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(\paino[32]_i_2_n_0 ),
        .I5(p_0_in122_in),
        .O(\paino[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \paino[26]_i_1 
       (.I0(data_i),
        .I1(\paino[66]_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[32]_i_2_n_0 ),
        .I5(p_0_in120_in),
        .O(\paino[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \paino[27]_i_1 
       (.I0(data_i),
        .I1(\paino[66]_i_3_n_0 ),
        .I2(\paino[86]_i_3_n_0 ),
        .I3(sel0[0]),
        .I4(\paino[55]_i_3_n_0 ),
        .I5(p_0_in118_in),
        .O(\paino[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888A888)) 
    \paino[28]_i_1 
       (.I0(data_i),
        .I1(\paino[28]_i_2_n_0 ),
        .I2(\paino[30]_i_2_n_0 ),
        .I3(\paino[43]_i_4_n_0 ),
        .I4(\paino[41]_i_2_n_0 ),
        .I5(p_0_in116_in),
        .O(\paino[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \paino[28]_i_2 
       (.I0(\paino[86]_i_3_n_0 ),
        .I1(\paino[43]_i_4_n_0 ),
        .I2(\paino[43]_i_5_n_0 ),
        .I3(sel0[8]),
        .I4(\paino[69]_i_2_n_0 ),
        .I5(sel0[7]),
        .O(\paino[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \paino[29]_i_1 
       (.I0(data_i),
        .I1(sel0[1]),
        .I2(\paino[64]_i_3_n_0 ),
        .I3(sel0[0]),
        .I4(\paino[30]_i_2_n_0 ),
        .I5(p_0_in114_in),
        .O(\paino[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \paino[30]_i_1 
       (.I0(data_i),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(sel0[1]),
        .I4(\paino[30]_i_2_n_0 ),
        .I5(p_0_in112_in),
        .O(\paino[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \paino[30]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[8]),
        .I2(\paino[69]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \paino[31]_i_1 
       (.I0(data_i),
        .I1(\paino[64]_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[32]_i_2_n_0 ),
        .I5(p_0_in110_in),
        .O(\paino[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02200000)) 
    \paino[32]_i_1 
       (.I0(data_i),
        .I1(\paino[64]_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[32]_i_2_n_0 ),
        .I5(p_0_in108_in),
        .O(\paino[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \paino[32]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[8]),
        .I2(\paino[69]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[33]_i_1 
       (.I0(data_i),
        .I1(\paino[51]_i_3_n_0 ),
        .I2(\paino[33]_i_2_n_0 ),
        .I3(\paino[55]_i_2_n_0 ),
        .I4(\paino[33]_i_3_n_0 ),
        .I5(p_0_in106_in),
        .O(\paino[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \paino[33]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \paino[33]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[6]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\paino[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02200000)) 
    \paino[34]_i_1 
       (.I0(data_i),
        .I1(\paino[83]_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[43]_i_3_n_0 ),
        .I5(p_0_in104_in),
        .O(\paino[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[35]_i_1 
       (.I0(data_i),
        .I1(\paino[42]_i_2_n_0 ),
        .I2(\paino[45]_i_2_n_0 ),
        .I3(\paino[43]_i_3_n_0 ),
        .I4(\paino[35]_i_2_n_0 ),
        .I5(p_0_in102_in),
        .O(\paino[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \paino[35]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\paino[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02200000)) 
    \paino[36]_i_1 
       (.I0(data_i),
        .I1(\paino[83]_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[42]_i_2_n_0 ),
        .I5(p_0_in100_in),
        .O(\paino[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88808080)) 
    \paino[37]_i_1 
       (.I0(data_i),
        .I1(\paino[58]_i_2_n_0 ),
        .I2(\paino[37]_i_2_n_0 ),
        .I3(\paino[51]_i_3_n_0 ),
        .I4(\paino[44]_i_2_n_0 ),
        .I5(p_0_in98_in),
        .O(\paino[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \paino[37]_i_2 
       (.I0(\paino[44]_i_2_n_0 ),
        .I1(sel0[7]),
        .I2(\paino[69]_i_2_n_0 ),
        .I3(sel0[8]),
        .I4(sel0[2]),
        .I5(\paino[41]_i_2_n_0 ),
        .O(\paino[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200000)) 
    \paino[38]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\paino[43]_i_3_n_0 ),
        .I5(p_0_in96_in),
        .O(\paino[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \paino[39]_i_1 
       (.I0(data_i),
        .I1(sel0[1]),
        .I2(\paino[80]_i_2_n_0 ),
        .I3(\paino[44]_i_2_n_0 ),
        .I4(\paino[39]_i_2_n_0 ),
        .I5(p_0_in94_in),
        .O(\paino[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \paino[39]_i_2 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[2]),
        .O(\paino[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[40]_i_1 
       (.I0(data_i),
        .I1(\paino[43]_i_3_n_0 ),
        .I2(\paino[40]_i_2_n_0 ),
        .I3(\paino[55]_i_3_n_0 ),
        .I4(\paino[40]_i_3_n_0 ),
        .I5(p_0_in92_in),
        .O(\paino[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \paino[40]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\paino[40]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \paino[40]_i_3 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .O(\paino[40]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \paino[41]_i_1 
       (.I0(data_i),
        .I1(\paino[41]_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(\paino[43]_i_3_n_0 ),
        .I5(p_0_in90_in),
        .O(\paino[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \paino[41]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\paino[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A000000)) 
    \paino[42]_i_1 
       (.I0(data_i),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\paino[66]_i_3_n_0 ),
        .I4(\paino[42]_i_2_n_0 ),
        .I5(p_0_in88_in),
        .O(\paino[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \paino[42]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[8]),
        .I2(\paino[69]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888A888)) 
    \paino[43]_i_1 
       (.I0(data_i),
        .I1(\paino[43]_i_2_n_0 ),
        .I2(\paino[43]_i_3_n_0 ),
        .I3(\paino[43]_i_4_n_0 ),
        .I4(sel0[1]),
        .I5(p_0_in86_in),
        .O(\paino[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \paino[43]_i_2 
       (.I0(\paino[44]_i_2_n_0 ),
        .I1(\paino[43]_i_4_n_0 ),
        .I2(\paino[43]_i_5_n_0 ),
        .I3(sel0[8]),
        .I4(\paino[69]_i_2_n_0 ),
        .I5(sel0[7]),
        .O(\paino[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \paino[43]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[8]),
        .I2(\paino[69]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[43]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \paino[43]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .O(\paino[43]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \paino[43]_i_5 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\paino[43]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \paino[44]_i_1 
       (.I0(data_i),
        .I1(\paino[44]_i_2_n_0 ),
        .I2(\paino[44]_i_3_n_0 ),
        .I3(\paino[64]_i_3_n_0 ),
        .I4(\paino[56]_i_3_n_0 ),
        .I5(p_0_in84_in),
        .O(\paino[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \paino[44]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .O(\paino[44]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \paino[44]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\paino[44]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[45]_i_1 
       (.I0(data_i),
        .I1(\paino[51]_i_2_n_0 ),
        .I2(\paino[45]_i_2_n_0 ),
        .I3(\paino[55]_i_3_n_0 ),
        .I4(\paino[45]_i_3_n_0 ),
        .I5(p_0_in82_in),
        .O(\paino[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \paino[45]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\paino[45]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \paino[45]_i_3 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[45]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[46]_i_1 
       (.I0(data_i),
        .I1(\paino[56]_i_3_n_0 ),
        .I2(\paino[46]_i_2_n_0 ),
        .I3(\paino[51]_i_2_n_0 ),
        .I4(\paino[46]_i_3_n_0 ),
        .I5(p_0_in80_in),
        .O(\paino[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000220)) 
    \paino[46]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\paino[83]_i_3_n_0 ),
        .O(\paino[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \paino[46]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .O(\paino[46]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[47]_i_1 
       (.I0(data_i),
        .I1(\paino[51]_i_2_n_0 ),
        .I2(\paino[47]_i_2_n_0 ),
        .I3(\paino[52]_i_3_n_0 ),
        .I4(\paino[47]_i_3_n_0 ),
        .I5(p_0_in78_in),
        .O(\paino[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \paino[47]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .O(\paino[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \paino[47]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[47]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[48]_i_1 
       (.I0(data_i),
        .I1(\paino[52]_i_3_n_0 ),
        .I2(\paino[48]_i_2_n_0 ),
        .I3(\paino[51]_i_2_n_0 ),
        .I4(\paino[48]_i_3_n_0 ),
        .I5(p_0_in76_in),
        .O(\paino[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \paino[48]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .O(\paino[48]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \paino[48]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .O(\paino[48]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[49]_i_1 
       (.I0(data_i),
        .I1(\paino[55]_i_3_n_0 ),
        .I2(\paino[49]_i_2_n_0 ),
        .I3(\paino[51]_i_2_n_0 ),
        .I4(\paino[49]_i_3_n_0 ),
        .I5(p_0_in74_in),
        .O(\paino[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \paino[49]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(\paino[49]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \paino[49]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .O(\paino[49]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \paino[4]_i_1 
       (.I0(data_i),
        .I1(sel0[0]),
        .I2(\paino[81]_i_2_n_0 ),
        .I3(\paino[55]_i_3_n_0 ),
        .I4(p_0_in150_in),
        .O(\paino[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[50]_i_1 
       (.I0(data_i),
        .I1(\paino[52]_i_3_n_0 ),
        .I2(\paino[50]_i_2_n_0 ),
        .I3(\paino[51]_i_2_n_0 ),
        .I4(\paino[50]_i_3_n_0 ),
        .I5(p_0_in72_in),
        .O(\paino[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \paino[50]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\paino[50]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \paino[50]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .O(\paino[50]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA202020)) 
    \paino[51]_i_1 
       (.I0(data_i),
        .I1(\paino[64]_i_3_n_0 ),
        .I2(\paino[51]_i_2_n_0 ),
        .I3(\paino[51]_i_3_n_0 ),
        .I4(\paino[51]_i_4_n_0 ),
        .I5(p_0_in70_in),
        .O(\paino[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \paino[51]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[2]),
        .I3(sel0[8]),
        .I4(\paino[69]_i_2_n_0 ),
        .I5(sel0[7]),
        .O(\paino[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \paino[51]_i_3 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\paino[51]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \paino[51]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(\paino[51]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80AA8080)) 
    \paino[52]_i_1 
       (.I0(data_i),
        .I1(\paino[55]_i_2_n_0 ),
        .I2(\paino[52]_i_2_n_0 ),
        .I3(\paino[64]_i_3_n_0 ),
        .I4(\paino[52]_i_3_n_0 ),
        .I5(p_0_in68_in),
        .O(\paino[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \paino[52]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[1]),
        .O(\paino[52]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \paino[52]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[8]),
        .I2(\paino[69]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[5]),
        .I5(sel0[6]),
        .O(\paino[52]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0800000)) 
    \paino[53]_i_1 
       (.I0(data_i),
        .I1(sel0[1]),
        .I2(\paino[56]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\paino[84]_i_2_n_0 ),
        .I5(p_0_in66_in),
        .O(\paino[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \paino[54]_i_1 
       (.I0(data_i),
        .I1(\paino[76]_i_2_n_0 ),
        .I2(\paino[54]_i_2_n_0 ),
        .I3(\paino[80]_i_2_n_0 ),
        .I4(\paino[56]_i_3_n_0 ),
        .I5(p_0_in64_in),
        .O(\paino[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \paino[54]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .O(\paino[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800080)) 
    \paino[55]_i_1 
       (.I0(data_i),
        .I1(\paino[68]_i_2_n_0 ),
        .I2(\paino[55]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(\paino[55]_i_3_n_0 ),
        .I5(p_0_in62_in),
        .O(\paino[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \paino[55]_i_2 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[2]),
        .O(\paino[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \paino[55]_i_3 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .O(\paino[55]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \paino[56]_i_1 
       (.I0(data_i),
        .I1(\paino[56]_i_2_n_0 ),
        .I2(\paino[56]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\paino[56]_i_4_n_0 ),
        .I5(p_0_in60_in),
        .O(\paino[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h28000000)) 
    \paino[56]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .O(\paino[56]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \paino[56]_i_3 
       (.I0(sel0[8]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[7]),
        .O(\paino[56]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \paino[56]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\paino[56]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF28000000)) 
    \paino[57]_i_1 
       (.I0(data_i),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(\paino[57]_i_2_n_0 ),
        .I4(\paino[57]_i_3_n_0 ),
        .I5(p_0_in58_in),
        .O(\paino[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C08FF0C0C0800)) 
    \paino[57]_i_2 
       (.I0(sel0[0]),
        .I1(\paino[54]_i_2_n_0 ),
        .I2(\paino[64]_i_3_n_0 ),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\paino[81]_i_2_n_0 ),
        .O(\paino[57]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \paino[57]_i_3 
       (.I0(sel0[9]),
        .I1(cs[2]),
        .I2(\paino[85]_i_4_n_0 ),
        .I3(sel0[11]),
        .I4(sel0[10]),
        .I5(sel0[8]),
        .O(\paino[57]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA0080)) 
    \paino[58]_i_1 
       (.I0(data_i),
        .I1(\paino[60]_i_4_n_0 ),
        .I2(\paino[58]_i_2_n_0 ),
        .I3(sel0[1]),
        .I4(\paino[58]_i_3_n_0 ),
        .I5(p_0_in56_in),
        .O(\paino[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \paino[58]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .O(\paino[58]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \paino[58]_i_3 
       (.I0(sel0[1]),
        .I1(\paino[81]_i_2_n_0 ),
        .I2(sel0[7]),
        .I3(\paino[69]_i_2_n_0 ),
        .I4(sel0[8]),
        .O(\paino[58]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00088000)) 
    \paino[59]_i_1 
       (.I0(data_i),
        .I1(\paino[60]_i_4_n_0 ),
        .I2(\paino[59]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(p_0_in54_in),
        .O(\paino[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \paino[59]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\paino[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00A800)) 
    \paino[60]_i_1 
       (.I0(data_i),
        .I1(\paino[60]_i_2_n_0 ),
        .I2(\paino[60]_i_3_n_0 ),
        .I3(\paino[60]_i_4_n_0 ),
        .I4(\paino[60]_i_5_n_0 ),
        .I5(p_0_in52_in),
        .O(\paino[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \paino[60]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .O(\paino[60]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0E00)) 
    \paino[60]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .O(\paino[60]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \paino[60]_i_4 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .O(\paino[60]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \paino[60]_i_5 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[60]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \paino[61]_i_1 
       (.I0(data_i),
        .I1(\paino[61]_i_2_n_0 ),
        .I2(\paino[68]_i_3_n_0 ),
        .I3(p_0_in50_in),
        .O(\paino[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001100A00000)) 
    \paino[61]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(\paino[80]_i_3_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\paino[61]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF808080A0)) 
    \paino[62]_i_1 
       (.I0(data_i),
        .I1(\paino[62]_i_2_n_0 ),
        .I2(\paino[64]_i_4_n_0 ),
        .I3(\paino[80]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(p_0_in48_in),
        .O(\paino[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1300)) 
    \paino[62]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\paino[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00880800)) 
    \paino[63]_i_1 
       (.I0(data_i),
        .I1(\paino[64]_i_4_n_0 ),
        .I2(\paino[76]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(p_0_in46_in),
        .O(\paino[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80AA8080)) 
    \paino[64]_i_1 
       (.I0(data_i),
        .I1(\paino[66]_i_4_n_0 ),
        .I2(\paino[64]_i_2_n_0 ),
        .I3(\paino[64]_i_3_n_0 ),
        .I4(\paino[64]_i_4_n_0 ),
        .I5(p_0_in44_in),
        .O(\paino[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    \paino[64]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(\paino[64]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \paino[64]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(\paino[64]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \paino[64]_i_4 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .O(\paino[64]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080A080)) 
    \paino[65]_i_1 
       (.I0(data_i),
        .I1(\paino[65]_i_2_n_0 ),
        .I2(\paino[66]_i_4_n_0 ),
        .I3(\paino[72]_i_2_n_0 ),
        .I4(sel0[1]),
        .I5(p_0_in42_in),
        .O(\paino[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04444440)) 
    \paino[65]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[0]),
        .O(\paino[65]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00A800)) 
    \paino[66]_i_1 
       (.I0(data_i),
        .I1(\paino[66]_i_2_n_0 ),
        .I2(\paino[66]_i_3_n_0 ),
        .I3(\paino[66]_i_4_n_0 ),
        .I4(\paino[66]_i_5_n_0 ),
        .I5(p_0_in40_in),
        .O(\paino[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \paino[66]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .O(\paino[66]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \paino[66]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .O(\paino[66]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \paino[66]_i_4 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(\paino[69]_i_2_n_0 ),
        .I4(sel0[8]),
        .O(\paino[66]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \paino[66]_i_5 
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\paino[66]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8A000000)) 
    \paino[67]_i_1 
       (.I0(data_i),
        .I1(\paino[67]_i_2_n_0 ),
        .I2(\paino[83]_i_3_n_0 ),
        .I3(\paino[80]_i_4_n_0 ),
        .I4(\paino[68]_i_3_n_0 ),
        .I5(p_0_in38_in),
        .O(\paino[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    \paino[67]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(\paino[67]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8000000)) 
    \paino[68]_i_1 
       (.I0(data_i),
        .I1(\paino[76]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\paino[68]_i_2_n_0 ),
        .I4(\paino[68]_i_3_n_0 ),
        .I5(p_0_in36_in),
        .O(\paino[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \paino[68]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[68]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \paino[68]_i_3 
       (.I0(sel0[8]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[7]),
        .O(\paino[68]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF28000000)) 
    \paino[69]_i_1 
       (.I0(data_i),
        .I1(sel0[7]),
        .I2(sel0[8]),
        .I3(\paino[69]_i_2_n_0 ),
        .I4(\paino[69]_i_3_n_0 ),
        .I5(p_0_in34_in),
        .O(\paino[69]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \paino[69]_i_2 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .I5(sel0[9]),
        .O(\paino[69]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080000080800003)) 
    \paino[69]_i_3 
       (.I0(\paino[69]_i_4_n_0 ),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(\paino[83]_i_3_n_0 ),
        .I4(sel0[7]),
        .I5(sel0[2]),
        .O(\paino[69]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \paino[69]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[69]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0020A080)) 
    \paino[70]_i_1 
       (.I0(data_i),
        .I1(sel0[3]),
        .I2(\paino[70]_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(p_0_in32_in),
        .O(\paino[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \paino[70]_i_2 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .O(\paino[70]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF888888A8)) 
    \paino[71]_i_1 
       (.I0(data_i),
        .I1(\paino[71]_i_2_n_0 ),
        .I2(\paino[72]_i_4_n_0 ),
        .I3(\paino[83]_i_3_n_0 ),
        .I4(sel0[2]),
        .I5(p_0_in30_in),
        .O(\paino[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0B00000000000000)) 
    \paino[71]_i_2 
       (.I0(\paino[71]_i_3_n_0 ),
        .I1(\paino[64]_i_3_n_0 ),
        .I2(sel0[7]),
        .I3(\paino[69]_i_2_n_0 ),
        .I4(sel0[8]),
        .I5(\paino[86]_i_3_n_0 ),
        .O(\paino[71]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \paino[71]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[4]),
        .O(\paino[71]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00A800)) 
    \paino[72]_i_1 
       (.I0(data_i),
        .I1(\paino[72]_i_2_n_0 ),
        .I2(\paino[72]_i_3_n_0 ),
        .I3(\paino[72]_i_4_n_0 ),
        .I4(\paino[72]_i_5_n_0 ),
        .I5(p_0_in28_in),
        .O(\paino[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \paino[72]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .O(\paino[72]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \paino[72]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .O(\paino[72]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \paino[72]_i_4 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .O(\paino[72]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \paino[72]_i_5 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\paino[72]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \paino[73]_i_1 
       (.I0(data_i),
        .I1(\paino[73]_i_2_n_0 ),
        .I2(\paino[75]_i_3_n_0 ),
        .I3(p_0_in26_in),
        .O(\paino[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000C88811110000)) 
    \paino[73]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[73]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2080A080)) 
    \paino[74]_i_1 
       (.I0(data_i),
        .I1(sel0[4]),
        .I2(\paino[74]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(p_0_in24_in),
        .O(\paino[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \paino[74]_i_2 
       (.I0(sel0[7]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\paino[74]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0808080)) 
    \paino[75]_i_1 
       (.I0(data_i),
        .I1(\paino[75]_i_2_n_0 ),
        .I2(\paino[75]_i_3_n_0 ),
        .I3(\paino[83]_i_2_n_0 ),
        .I4(\paino[75]_i_4_n_0 ),
        .I5(p_0_in22_in),
        .O(\paino[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \paino[75]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .O(\paino[75]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \paino[75]_i_3 
       (.I0(sel0[8]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[7]),
        .O(\paino[75]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \paino[75]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .O(\paino[75]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8000)) 
    \paino[76]_i_1 
       (.I0(data_i),
        .I1(\paino[81]_i_3_n_0 ),
        .I2(\paino[81]_i_2_n_0 ),
        .I3(\paino[76]_i_2_n_0 ),
        .I4(\paino[76]_i_3_n_0 ),
        .I5(p_0_in20_in),
        .O(\paino[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \paino[76]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\paino[76]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \paino[76]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\paino[69]_i_2_n_0 ),
        .I5(sel0[8]),
        .O(\paino[76]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \paino[77]_i_1 
       (.I0(data_i),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(\paino[81]_i_3_n_0 ),
        .I4(\paino[77]_i_2_n_0 ),
        .I5(p_0_in18_in),
        .O(\paino[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h1FFFFFA0)) 
    \paino[77]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .O(\paino[77]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA080)) 
    \paino[78]_i_1 
       (.I0(data_i),
        .I1(\paino[78]_i_2_n_0 ),
        .I2(\paino[81]_i_3_n_0 ),
        .I3(\paino[78]_i_3_n_0 ),
        .I4(p_0_in16_in),
        .O(\paino[78]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000557F00000000)) 
    \paino[78]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[78]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    \paino[78]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(\paino[64]_i_3_n_0 ),
        .I5(sel0[2]),
        .O(\paino[78]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \paino[79]_i_1 
       (.I0(data_i),
        .I1(\paino[79]_i_2_n_0 ),
        .I2(\paino[81]_i_3_n_0 ),
        .I3(p_0_in14_in),
        .O(\paino[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A88855550000)) 
    \paino[79]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    \paino[7]_i_1 
       (.I0(data_i),
        .I1(\paino[51]_i_3_n_0 ),
        .I2(\paino[83]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .I5(p_0_in148_in),
        .O(\paino[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8A000000)) 
    \paino[80]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(\paino[80]_i_3_n_0 ),
        .I3(\paino[80]_i_4_n_0 ),
        .I4(\paino[81]_i_3_n_0 ),
        .I5(p_0_in12_in),
        .O(\paino[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \paino[80]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .O(\paino[80]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \paino[80]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\paino[80]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \paino[80]_i_4 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[6]),
        .O(\paino[80]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \paino[81]_i_1 
       (.I0(data_i),
        .I1(\paino[81]_i_2_n_0 ),
        .I2(\paino[84]_i_4_n_0 ),
        .I3(\paino[81]_i_3_n_0 ),
        .I4(\paino[81]_i_4_n_0 ),
        .I5(p_0_in10_in),
        .O(\paino[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \paino[81]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[81]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \paino[81]_i_3 
       (.I0(sel0[8]),
        .I1(\paino[69]_i_2_n_0 ),
        .I2(sel0[7]),
        .O(\paino[81]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAA00000000)) 
    \paino[81]_i_4 
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\paino[54]_i_2_n_0 ),
        .O(\paino[81]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0808080)) 
    \paino[82]_i_1 
       (.I0(data_i),
        .I1(\paino[82]_i_2_n_0 ),
        .I2(\paino[84]_i_4_n_0 ),
        .I3(\paino[86]_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(p_0_in8_in),
        .O(\paino[82]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005100550000)) 
    \paino[82]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(\paino[56]_i_4_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\paino[82]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA000800)) 
    \paino[83]_i_1 
       (.I0(data_i),
        .I1(\paino[83]_i_2_n_0 ),
        .I2(\paino[83]_i_3_n_0 ),
        .I3(\paino[84]_i_4_n_0 ),
        .I4(\paino[83]_i_4_n_0 ),
        .I5(p_0_in6_in),
        .O(\paino[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \paino[83]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .O(\paino[83]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \paino[83]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(\paino[83]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF8000000000)) 
    \paino[83]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\paino[83]_i_3_n_0 ),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\paino[83]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00A800)) 
    \paino[84]_i_1 
       (.I0(data_i),
        .I1(\paino[84]_i_2_n_0 ),
        .I2(\paino[84]_i_3_n_0 ),
        .I3(\paino[84]_i_4_n_0 ),
        .I4(\paino[84]_i_5_n_0 ),
        .I5(p_0_in4_in),
        .O(\paino[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \paino[84]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[84]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000404040)) 
    \paino[84]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\paino[84]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \paino[84]_i_4 
       (.I0(sel0[8]),
        .I1(\paino[87]_i_6_n_0 ),
        .I2(sel0[7]),
        .O(\paino[84]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \paino[84]_i_5 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(\paino[84]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF28000000)) 
    \paino[85]_i_1 
       (.I0(data_i),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(\paino[85]_i_2_n_0 ),
        .I4(\paino[85]_i_3_n_0 ),
        .I5(p_0_in2_in),
        .O(\paino[85]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \paino[85]_i_2 
       (.I0(sel0[9]),
        .I1(cs[2]),
        .I2(\paino[85]_i_4_n_0 ),
        .I3(sel0[11]),
        .I4(sel0[10]),
        .I5(sel0[8]),
        .O(\paino[85]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF800000F)) 
    \paino[85]_i_3 
       (.I0(sel0[3]),
        .I1(\paino[80]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\paino[85]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \paino[85]_i_4 
       (.I0(cs[0]),
        .I1(cs[1]),
        .O(\paino[85]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0808080)) 
    \paino[86]_i_1 
       (.I0(data_i),
        .I1(\paino[86]_i_2_n_0 ),
        .I2(\paino[87]_i_5_n_0 ),
        .I3(\paino[86]_i_3_n_0 ),
        .I4(sel0[4]),
        .I5(p_0_in0_in),
        .O(\paino[86]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55557FFF00000000)) 
    \paino[86]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(\paino[44]_i_2_n_0 ),
        .O(\paino[86]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \paino[86]_i_3 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .O(\paino[86]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \paino[87]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA88A888)) 
    \paino[87]_i_2 
       (.I0(data_i),
        .I1(\paino[87]_i_3_n_0 ),
        .I2(\paino[87]_i_4_n_0 ),
        .I3(\paino[87]_i_5_n_0 ),
        .I4(sel0[6]),
        .I5(\paino_reg_n_0_[87] ),
        .O(\paino[87]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \paino[87]_i_3 
       (.I0(\paino[81]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[8]),
        .I3(sel0[7]),
        .I4(\paino[41]_i_2_n_0 ),
        .I5(\paino[87]_i_6_n_0 ),
        .O(\paino[87]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC888888800000000)) 
    \paino[87]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\paino[87]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \paino[87]_i_5 
       (.I0(sel0[8]),
        .I1(\paino[87]_i_6_n_0 ),
        .I2(sel0[7]),
        .O(\paino[87]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000111000000000)) 
    \paino[87]_i_6 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .I5(sel0[9]),
        .O(\paino[87]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \paino[9]_i_1 
       (.I0(data_i),
        .I1(\paino[80]_i_2_n_0 ),
        .I2(\paino[30]_i_2_n_0 ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(p_0_in146_in),
        .O(\paino[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \paino_data_o[87]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(create_paino_en));
  FDRE \paino_data_o_reg[0] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(\paino_reg_n_0_[0] ),
        .Q(paino_data_o[0]),
        .R(1'b0));
  FDRE \paino_data_o_reg[11] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in144_in),
        .Q(paino_data_o[5]),
        .R(1'b0));
  FDRE \paino_data_o_reg[13] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in142_in),
        .Q(paino_data_o[6]),
        .R(1'b0));
  FDRE \paino_data_o_reg[15] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in140_in),
        .Q(paino_data_o[7]),
        .R(1'b0));
  FDRE \paino_data_o_reg[16] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in138_in),
        .Q(paino_data_o[8]),
        .R(1'b0));
  FDRE \paino_data_o_reg[18] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in136_in),
        .Q(paino_data_o[9]),
        .R(1'b0));
  FDRE \paino_data_o_reg[19] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in134_in),
        .Q(paino_data_o[10]),
        .R(1'b0));
  FDRE \paino_data_o_reg[1] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in152_in),
        .Q(paino_data_o[1]),
        .R(1'b0));
  FDRE \paino_data_o_reg[20] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in132_in),
        .Q(paino_data_o[11]),
        .R(1'b0));
  FDRE \paino_data_o_reg[21] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in130_in),
        .Q(paino_data_o[12]),
        .R(1'b0));
  FDRE \paino_data_o_reg[22] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in128_in),
        .Q(paino_data_o[13]),
        .R(1'b0));
  FDRE \paino_data_o_reg[23] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in126_in),
        .Q(paino_data_o[14]),
        .R(1'b0));
  FDRE \paino_data_o_reg[24] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in124_in),
        .Q(paino_data_o[15]),
        .R(1'b0));
  FDRE \paino_data_o_reg[25] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in122_in),
        .Q(paino_data_o[16]),
        .R(1'b0));
  FDRE \paino_data_o_reg[26] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in120_in),
        .Q(paino_data_o[17]),
        .R(1'b0));
  FDRE \paino_data_o_reg[27] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in118_in),
        .Q(paino_data_o[18]),
        .R(1'b0));
  FDRE \paino_data_o_reg[28] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in116_in),
        .Q(paino_data_o[19]),
        .R(1'b0));
  FDRE \paino_data_o_reg[29] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in114_in),
        .Q(paino_data_o[20]),
        .R(1'b0));
  FDRE \paino_data_o_reg[30] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in112_in),
        .Q(paino_data_o[21]),
        .R(1'b0));
  FDRE \paino_data_o_reg[31] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in110_in),
        .Q(paino_data_o[22]),
        .R(1'b0));
  FDRE \paino_data_o_reg[32] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in108_in),
        .Q(paino_data_o[23]),
        .R(1'b0));
  FDRE \paino_data_o_reg[33] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in106_in),
        .Q(paino_data_o[24]),
        .R(1'b0));
  FDRE \paino_data_o_reg[34] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in104_in),
        .Q(paino_data_o[25]),
        .R(1'b0));
  FDRE \paino_data_o_reg[35] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in102_in),
        .Q(paino_data_o[26]),
        .R(1'b0));
  FDRE \paino_data_o_reg[36] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in100_in),
        .Q(paino_data_o[27]),
        .R(1'b0));
  FDRE \paino_data_o_reg[37] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in98_in),
        .Q(paino_data_o[28]),
        .R(1'b0));
  FDRE \paino_data_o_reg[38] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in96_in),
        .Q(paino_data_o[29]),
        .R(1'b0));
  FDRE \paino_data_o_reg[39] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in94_in),
        .Q(paino_data_o[30]),
        .R(1'b0));
  FDRE \paino_data_o_reg[40] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in92_in),
        .Q(paino_data_o[31]),
        .R(1'b0));
  FDRE \paino_data_o_reg[41] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in90_in),
        .Q(paino_data_o[32]),
        .R(1'b0));
  FDRE \paino_data_o_reg[42] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in88_in),
        .Q(paino_data_o[33]),
        .R(1'b0));
  FDRE \paino_data_o_reg[43] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in86_in),
        .Q(paino_data_o[34]),
        .R(1'b0));
  FDRE \paino_data_o_reg[44] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in84_in),
        .Q(paino_data_o[35]),
        .R(1'b0));
  FDRE \paino_data_o_reg[45] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in82_in),
        .Q(paino_data_o[36]),
        .R(1'b0));
  FDRE \paino_data_o_reg[46] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in80_in),
        .Q(paino_data_o[37]),
        .R(1'b0));
  FDRE \paino_data_o_reg[47] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in78_in),
        .Q(paino_data_o[38]),
        .R(1'b0));
  FDRE \paino_data_o_reg[48] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in76_in),
        .Q(paino_data_o[39]),
        .R(1'b0));
  FDRE \paino_data_o_reg[49] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in74_in),
        .Q(paino_data_o[40]),
        .R(1'b0));
  FDRE \paino_data_o_reg[4] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in150_in),
        .Q(paino_data_o[2]),
        .R(1'b0));
  FDRE \paino_data_o_reg[50] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in72_in),
        .Q(paino_data_o[41]),
        .R(1'b0));
  FDRE \paino_data_o_reg[51] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in70_in),
        .Q(paino_data_o[42]),
        .R(1'b0));
  FDRE \paino_data_o_reg[52] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in68_in),
        .Q(paino_data_o[43]),
        .R(1'b0));
  FDRE \paino_data_o_reg[53] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in66_in),
        .Q(paino_data_o[44]),
        .R(1'b0));
  FDRE \paino_data_o_reg[54] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in64_in),
        .Q(paino_data_o[45]),
        .R(1'b0));
  FDRE \paino_data_o_reg[55] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in62_in),
        .Q(paino_data_o[46]),
        .R(1'b0));
  FDRE \paino_data_o_reg[56] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in60_in),
        .Q(paino_data_o[47]),
        .R(1'b0));
  FDRE \paino_data_o_reg[57] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in58_in),
        .Q(paino_data_o[48]),
        .R(1'b0));
  FDRE \paino_data_o_reg[58] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in56_in),
        .Q(paino_data_o[49]),
        .R(1'b0));
  FDRE \paino_data_o_reg[59] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in54_in),
        .Q(paino_data_o[50]),
        .R(1'b0));
  FDRE \paino_data_o_reg[60] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in52_in),
        .Q(paino_data_o[51]),
        .R(1'b0));
  FDRE \paino_data_o_reg[61] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in50_in),
        .Q(paino_data_o[52]),
        .R(1'b0));
  FDRE \paino_data_o_reg[62] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in48_in),
        .Q(paino_data_o[53]),
        .R(1'b0));
  FDRE \paino_data_o_reg[63] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in46_in),
        .Q(paino_data_o[54]),
        .R(1'b0));
  FDRE \paino_data_o_reg[64] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in44_in),
        .Q(paino_data_o[55]),
        .R(1'b0));
  FDRE \paino_data_o_reg[65] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in42_in),
        .Q(paino_data_o[56]),
        .R(1'b0));
  FDRE \paino_data_o_reg[66] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in40_in),
        .Q(paino_data_o[57]),
        .R(1'b0));
  FDRE \paino_data_o_reg[67] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in38_in),
        .Q(paino_data_o[58]),
        .R(1'b0));
  FDRE \paino_data_o_reg[68] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in36_in),
        .Q(paino_data_o[59]),
        .R(1'b0));
  FDRE \paino_data_o_reg[69] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in34_in),
        .Q(paino_data_o[60]),
        .R(1'b0));
  FDRE \paino_data_o_reg[70] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in32_in),
        .Q(paino_data_o[61]),
        .R(1'b0));
  FDRE \paino_data_o_reg[71] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in30_in),
        .Q(paino_data_o[62]),
        .R(1'b0));
  FDRE \paino_data_o_reg[72] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in28_in),
        .Q(paino_data_o[63]),
        .R(1'b0));
  FDRE \paino_data_o_reg[73] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in26_in),
        .Q(paino_data_o[64]),
        .R(1'b0));
  FDRE \paino_data_o_reg[74] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in24_in),
        .Q(paino_data_o[65]),
        .R(1'b0));
  FDRE \paino_data_o_reg[75] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in22_in),
        .Q(paino_data_o[66]),
        .R(1'b0));
  FDRE \paino_data_o_reg[76] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in20_in),
        .Q(paino_data_o[67]),
        .R(1'b0));
  FDRE \paino_data_o_reg[77] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in18_in),
        .Q(paino_data_o[68]),
        .R(1'b0));
  FDRE \paino_data_o_reg[78] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in16_in),
        .Q(paino_data_o[69]),
        .R(1'b0));
  FDRE \paino_data_o_reg[79] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in14_in),
        .Q(paino_data_o[70]),
        .R(1'b0));
  FDRE \paino_data_o_reg[7] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in148_in),
        .Q(paino_data_o[3]),
        .R(1'b0));
  FDRE \paino_data_o_reg[80] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in12_in),
        .Q(paino_data_o[71]),
        .R(1'b0));
  FDRE \paino_data_o_reg[81] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in10_in),
        .Q(paino_data_o[72]),
        .R(1'b0));
  FDRE \paino_data_o_reg[82] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in8_in),
        .Q(paino_data_o[73]),
        .R(1'b0));
  FDRE \paino_data_o_reg[83] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in6_in),
        .Q(paino_data_o[74]),
        .R(1'b0));
  FDRE \paino_data_o_reg[84] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in4_in),
        .Q(paino_data_o[75]),
        .R(1'b0));
  FDRE \paino_data_o_reg[85] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in2_in),
        .Q(paino_data_o[76]),
        .R(1'b0));
  FDRE \paino_data_o_reg[86] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in0_in),
        .Q(paino_data_o[77]),
        .R(1'b0));
  FDRE \paino_data_o_reg[87] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(\paino_reg_n_0_[87] ),
        .Q(paino_data_o[78]),
        .R(1'b0));
  FDRE \paino_data_o_reg[9] 
       (.C(clkb_i),
        .CE(create_paino_en),
        .D(p_0_in146_in),
        .Q(paino_data_o[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    paino_done_o_INST_0
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .O(paino_done_o));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[0] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[0]_i_1_n_0 ),
        .Q(\paino_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[11] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[11]_i_1_n_0 ),
        .Q(p_0_in144_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[13] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[13]_i_1_n_0 ),
        .Q(p_0_in142_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[15] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[15]_i_1_n_0 ),
        .Q(p_0_in140_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[16] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[16]_i_1_n_0 ),
        .Q(p_0_in138_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[18] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[18]_i_1_n_0 ),
        .Q(p_0_in136_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[19] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[19]_i_1_n_0 ),
        .Q(p_0_in134_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[1] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[1]_i_1_n_0 ),
        .Q(p_0_in152_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[20] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[20]_i_1_n_0 ),
        .Q(p_0_in132_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[21] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[21]_i_1_n_0 ),
        .Q(p_0_in130_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[22] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[22]_i_1_n_0 ),
        .Q(p_0_in128_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[23] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[23]_i_1_n_0 ),
        .Q(p_0_in126_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[24] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[24]_i_1_n_0 ),
        .Q(p_0_in124_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[25] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[25]_i_1_n_0 ),
        .Q(p_0_in122_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[26] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[26]_i_1_n_0 ),
        .Q(p_0_in120_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[27] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[27]_i_1_n_0 ),
        .Q(p_0_in118_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[28] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[28]_i_1_n_0 ),
        .Q(p_0_in116_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[29] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[29]_i_1_n_0 ),
        .Q(p_0_in114_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[30] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[30]_i_1_n_0 ),
        .Q(p_0_in112_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[31] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[31]_i_1_n_0 ),
        .Q(p_0_in110_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[32] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[32]_i_1_n_0 ),
        .Q(p_0_in108_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[33] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[33]_i_1_n_0 ),
        .Q(p_0_in106_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[34] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[34]_i_1_n_0 ),
        .Q(p_0_in104_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[35] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[35]_i_1_n_0 ),
        .Q(p_0_in102_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[36] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[36]_i_1_n_0 ),
        .Q(p_0_in100_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[37] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[37]_i_1_n_0 ),
        .Q(p_0_in98_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[38] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[38]_i_1_n_0 ),
        .Q(p_0_in96_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[39] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[39]_i_1_n_0 ),
        .Q(p_0_in94_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[40] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[40]_i_1_n_0 ),
        .Q(p_0_in92_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[41] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[41]_i_1_n_0 ),
        .Q(p_0_in90_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[42] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[42]_i_1_n_0 ),
        .Q(p_0_in88_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[43] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[43]_i_1_n_0 ),
        .Q(p_0_in86_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[44] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[44]_i_1_n_0 ),
        .Q(p_0_in84_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[45] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[45]_i_1_n_0 ),
        .Q(p_0_in82_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[46] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[46]_i_1_n_0 ),
        .Q(p_0_in80_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[47] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[47]_i_1_n_0 ),
        .Q(p_0_in78_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[48] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[48]_i_1_n_0 ),
        .Q(p_0_in76_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[49] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[49]_i_1_n_0 ),
        .Q(p_0_in74_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[4] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[4]_i_1_n_0 ),
        .Q(p_0_in150_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[50] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[50]_i_1_n_0 ),
        .Q(p_0_in72_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[51] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[51]_i_1_n_0 ),
        .Q(p_0_in70_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[52] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[52]_i_1_n_0 ),
        .Q(p_0_in68_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[53] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[53]_i_1_n_0 ),
        .Q(p_0_in66_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[54] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[54]_i_1_n_0 ),
        .Q(p_0_in64_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[55] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[55]_i_1_n_0 ),
        .Q(p_0_in62_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[56] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[56]_i_1_n_0 ),
        .Q(p_0_in60_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[57] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[57]_i_1_n_0 ),
        .Q(p_0_in58_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[58] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[58]_i_1_n_0 ),
        .Q(p_0_in56_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[59] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[59]_i_1_n_0 ),
        .Q(p_0_in54_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[60] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[60]_i_1_n_0 ),
        .Q(p_0_in52_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[61] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[61]_i_1_n_0 ),
        .Q(p_0_in50_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[62] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[62]_i_1_n_0 ),
        .Q(p_0_in48_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[63] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[63]_i_1_n_0 ),
        .Q(p_0_in46_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[64] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[64]_i_1_n_0 ),
        .Q(p_0_in44_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[65] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[65]_i_1_n_0 ),
        .Q(p_0_in42_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[66] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[66]_i_1_n_0 ),
        .Q(p_0_in40_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[67] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[67]_i_1_n_0 ),
        .Q(p_0_in38_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[68] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[68]_i_1_n_0 ),
        .Q(p_0_in36_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[69] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[69]_i_1_n_0 ),
        .Q(p_0_in34_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[70] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[70]_i_1_n_0 ),
        .Q(p_0_in32_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[71] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[71]_i_1_n_0 ),
        .Q(p_0_in30_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[72] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[72]_i_1_n_0 ),
        .Q(p_0_in28_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[73] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[73]_i_1_n_0 ),
        .Q(p_0_in26_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[74] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[74]_i_1_n_0 ),
        .Q(p_0_in24_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[75] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[75]_i_1_n_0 ),
        .Q(p_0_in22_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[76] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[76]_i_1_n_0 ),
        .Q(p_0_in20_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[77] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[77]_i_1_n_0 ),
        .Q(p_0_in18_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[78] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[78]_i_1_n_0 ),
        .Q(p_0_in16_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[79] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[79]_i_1_n_0 ),
        .Q(p_0_in14_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[7] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[7]_i_1_n_0 ),
        .Q(p_0_in148_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[80] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[80]_i_1_n_0 ),
        .Q(p_0_in12_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[81] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[81]_i_1_n_0 ),
        .Q(p_0_in10_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[82] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[82]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[83] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[83]_i_1_n_0 ),
        .Q(p_0_in6_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[84] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[84]_i_1_n_0 ),
        .Q(p_0_in4_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[85] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[85]_i_1_n_0 ),
        .Q(p_0_in2_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[86] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[86]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[87] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[87]_i_2_n_0 ),
        .Q(\paino_reg_n_0_[87] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \paino_reg[9] 
       (.C(clkb_i),
        .CE(1'b1),
        .D(\paino[9]_i_1_n_0 ),
        .Q(p_0_in146_in),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_create_88key_0_0,create_88key,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "create_88key,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_create_88key_0_0
   (clkb_i,
    data_i,
    en_i,
    r_addr_o,
    paino_data_o,
    paino_done_o);
  input clkb_i;
  input data_i;
  input en_i;
  output [11:0]r_addr_o;
  output [87:0]paino_data_o;
  output paino_done_o;

  wire \<const0> ;
  wire clkb_i;
  wire data_i;
  wire en_i;
  wire [87:0]\^paino_data_o ;
  wire paino_done_o;
  wire [11:0]r_addr_o;

  assign paino_data_o[87:18] = \^paino_data_o [87:18];
  assign paino_data_o[17] = \<const0> ;
  assign paino_data_o[16:15] = \^paino_data_o [16:15];
  assign paino_data_o[14] = \<const0> ;
  assign paino_data_o[13] = \^paino_data_o [13];
  assign paino_data_o[12] = \<const0> ;
  assign paino_data_o[11] = \^paino_data_o [11];
  assign paino_data_o[10] = \<const0> ;
  assign paino_data_o[9] = \^paino_data_o [9];
  assign paino_data_o[8] = \<const0> ;
  assign paino_data_o[7] = \^paino_data_o [7];
  assign paino_data_o[6] = \<const0> ;
  assign paino_data_o[5] = \<const0> ;
  assign paino_data_o[4] = \^paino_data_o [4];
  assign paino_data_o[3] = \<const0> ;
  assign paino_data_o[2] = \<const0> ;
  assign paino_data_o[1:0] = \^paino_data_o [1:0];
  GND GND
       (.G(\<const0> ));
  design_1_create_88key_0_0_create_88key U0
       (.clkb_i(clkb_i),
        .data_i(data_i),
        .en_i(en_i),
        .paino_data_o({\^paino_data_o [87:18],\^paino_data_o [16:15],\^paino_data_o [13],\^paino_data_o [11],\^paino_data_o [9],\^paino_data_o [7],\^paino_data_o [4],\^paino_data_o [1:0]}),
        .paino_done_o(paino_done_o),
        .r_addr_o(r_addr_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
