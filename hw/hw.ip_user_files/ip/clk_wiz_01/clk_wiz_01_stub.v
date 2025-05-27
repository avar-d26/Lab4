// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:54:35 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode synth_stub
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/ip/clk_wiz_01/clk_wiz_01_stub.v
// Design      : clk_wiz_01
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_01(mclk, sysclk)
/* synthesis syn_black_box black_box_pad_pin="sysclk" */
/* synthesis syn_force_seq_prim="mclk" */;
  output mclk /* synthesis syn_isclock = 1 */;
  input sysclk;
endmodule
