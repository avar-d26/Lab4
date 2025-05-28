// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed May 28 14:13:55 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode synth_stub
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_BRAM_wrapper_0_0/design_1_BRAM_wrapper_0_0_stub.v
// Design      : design_1_BRAM_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "BRAM_wrapper,Vivado 2023.1" *)
module design_1_BRAM_wrapper_0_0(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea,addra[11:0],dina,clkb,addrb[11:0],doutb" */;
  input clka;
  input wea;
  input [11:0]addra;
  input dina;
  input clkb;
  input [11:0]addrb;
  output doutb;
endmodule
