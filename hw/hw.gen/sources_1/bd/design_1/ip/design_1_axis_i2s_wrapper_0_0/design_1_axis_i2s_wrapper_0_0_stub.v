// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:55:44 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode synth_stub
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_stub.v
// Design      : design_1_axis_i2s_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_i2s_wrapper,Vivado 2023.1" *)
module design_1_axis_i2s_wrapper_0_0(sysclk_i, ac_bclk_o, ac_mclk_o, ac_mute_n_o, 
  ac_dac_data_o, ac_dac_lrclk_o, ac_adc_data_i, ac_adc_lrclk_o, lrclk_unbuff_o, 
  s00_axis_aclk, s00_axis_aresetn, s00_axis_tready, s00_axis_tdata, s00_axis_tstrb, 
  s00_axis_tlast, s00_axis_tvalid, m00_axis_aclk, m00_axis_aresetn, m00_axis_tvalid, 
  m00_axis_tdata, m00_axis_tstrb, m00_axis_tlast, m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="sysclk_i,ac_bclk_o,ac_mclk_o,ac_mute_n_o,ac_dac_data_o,ac_dac_lrclk_o,ac_adc_data_i,ac_adc_lrclk_o,lrclk_unbuff_o,s00_axis_aclk,s00_axis_aresetn,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready" */
/* synthesis syn_force_seq_prim="m00_axis_aclk" */;
  input sysclk_i;
  output ac_bclk_o;
  output ac_mclk_o;
  output ac_mute_n_o;
  output ac_dac_data_o;
  output ac_dac_lrclk_o;
  input ac_adc_data_i;
  output ac_adc_lrclk_o;
  output lrclk_unbuff_o;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input m00_axis_aclk /* synthesis syn_isclock = 1 */;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
endmodule
