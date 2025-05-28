// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:54:58 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_create_88key_0_0 -prefix
//               design_1_create_88key_0_0_ design_1_create_88key_0_0_stub.v
// Design      : design_1_create_88key_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "create_88key,Vivado 2023.1" *)
module design_1_create_88key_0_0(clkb_i, data_i, en_i, r_addr_o, paino_data_o, 
  paino_done_o)
/* synthesis syn_black_box black_box_pad_pin="data_i,en_i,r_addr_o[11:0],paino_data_o[87:0],paino_done_o" */
/* synthesis syn_force_seq_prim="clkb_i" */;
  input clkb_i /* synthesis syn_isclock = 1 */;
  input data_i;
  input en_i;
  output [11:0]r_addr_o;
  output [87:0]paino_data_o;
  output paino_done_o;
endmodule
