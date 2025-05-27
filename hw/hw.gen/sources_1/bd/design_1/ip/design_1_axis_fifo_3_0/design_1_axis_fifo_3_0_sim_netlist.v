// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:54:49 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode funcsim
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_axis_fifo_3_0/design_1_axis_fifo_3_0_sim_netlist.v
// Design      : design_1_axis_fifo_3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_fifo_3_0,axis_fifo,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axis_fifo,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_axis_fifo_3_0
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) input m00_axis_tready;

  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire [3:0]s00_axis_tstrb;
  wire s00_axis_tvalid;

  assign m00_axis_tstrb[3:0] = s00_axis_tstrb;
  design_1_axis_fifo_3_0_axis_fifo U0
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_fifo" *) 
module design_1_axis_fifo_3_0_axis_fifo
   (m00_axis_tvalid,
    m00_axis_tdata,
    s00_axis_tready,
    m00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_aclk,
    s00_axis_tdata,
    m00_axis_tready);
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output s00_axis_tready;
  output m00_axis_tlast;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input m00_axis_tready;

  wire empty_o;
  wire empty_reg;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    empty_reg_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(empty_o),
        .Q(empty_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    m00_axis_tvalid_INST_0
       (.I0(s00_axis_aresetn),
        .I1(empty_reg),
        .O(m00_axis_tvalid));
  design_1_axis_fifo_3_0_fifo uut
       (.empty_o(empty_o),
        .empty_reg(empty_reg),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_axis_fifo_3_0_fifo
   (m00_axis_tdata,
    s00_axis_tready,
    empty_o,
    m00_axis_tlast,
    s00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tvalid,
    s00_axis_aresetn,
    m00_axis_tready,
    empty_reg);
  output [31:0]m00_axis_tdata;
  output s00_axis_tready;
  output empty_o;
  output m00_axis_tlast;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input m00_axis_tready;
  input empty_reg;

  wire data_count;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[4]_i_2_n_0 ;
  wire \data_count[4]_i_3_n_0 ;
  wire \data_count[4]_i_4_n_0 ;
  wire \data_count[4]_i_5_n_0 ;
  wire \data_count[4]_i_6_n_0 ;
  wire \data_count[8]_i_2_n_0 ;
  wire \data_count[8]_i_3_n_0 ;
  wire \data_count[8]_i_4_n_0 ;
  wire \data_count[8]_i_5_n_0 ;
  wire \data_count[9]_i_3_n_0 ;
  wire [9:0]data_count_reg;
  wire \data_count_reg[4]_i_1_n_0 ;
  wire \data_count_reg[4]_i_1_n_1 ;
  wire \data_count_reg[4]_i_1_n_2 ;
  wire \data_count_reg[4]_i_1_n_3 ;
  wire \data_count_reg[4]_i_1_n_4 ;
  wire \data_count_reg[4]_i_1_n_5 ;
  wire \data_count_reg[4]_i_1_n_6 ;
  wire \data_count_reg[4]_i_1_n_7 ;
  wire \data_count_reg[8]_i_1_n_0 ;
  wire \data_count_reg[8]_i_1_n_1 ;
  wire \data_count_reg[8]_i_1_n_2 ;
  wire \data_count_reg[8]_i_1_n_3 ;
  wire \data_count_reg[8]_i_1_n_4 ;
  wire \data_count_reg[8]_i_1_n_5 ;
  wire \data_count_reg[8]_i_1_n_6 ;
  wire \data_count_reg[8]_i_1_n_7 ;
  wire \data_count_reg[9]_i_2_n_7 ;
  wire empty_o;
  wire empty_reg;
  wire fifo_buf_reg_i_2_n_0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tlast_INST_0_i_1_n_0;
  wire m00_axis_tlast_INST_0_i_2_n_0;
  wire m00_axis_tready;
  wire [9:0]read_pointer;
  wire read_pointer3;
  wire \read_pointer[8]_i_2_n_0 ;
  wire [9:0]read_pointer__0;
  wire reset;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tready_INST_0_i_2_n_0;
  wire s00_axis_tvalid;
  wire write_enable;
  wire [9:0]write_pointer;
  wire \write_pointer[9]_i_3_n_0 ;
  wire [9:0]write_pointer__0;
  wire [3:0]\NLW_data_count_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_data_count_reg[9]_i_2_O_UNCONNECTED ;
  wire NLW_fifo_buf_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_buf_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_buf_reg_DBITERR_UNCONNECTED;
  wire NLW_fifo_buf_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_buf_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_buf_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_buf_reg_DOADO_UNCONNECTED;
  wire [3:0]NLW_fifo_buf_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_fifo_buf_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_buf_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_buf_reg_RDADDRECC_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \data_count[0]_i_1 
       (.I0(data_count_reg[0]),
        .O(\data_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_count[4]_i_2 
       (.I0(data_count_reg[1]),
        .O(\data_count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[4]_i_3 
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[4]),
        .O(\data_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[4]_i_4 
       (.I0(data_count_reg[2]),
        .I1(data_count_reg[3]),
        .O(\data_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[4]_i_5 
       (.I0(data_count_reg[1]),
        .I1(data_count_reg[2]),
        .O(\data_count[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9555)) 
    \data_count[4]_i_6 
       (.I0(data_count_reg[1]),
        .I1(s00_axis_tvalid),
        .I2(s00_axis_aresetn),
        .I3(read_pointer3),
        .O(\data_count[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[8]_i_2 
       (.I0(data_count_reg[7]),
        .I1(data_count_reg[8]),
        .O(\data_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[8]_i_3 
       (.I0(data_count_reg[6]),
        .I1(data_count_reg[7]),
        .O(\data_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[8]_i_4 
       (.I0(data_count_reg[5]),
        .I1(data_count_reg[6]),
        .O(\data_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[8]_i_5 
       (.I0(data_count_reg[4]),
        .I1(data_count_reg[5]),
        .O(\data_count[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h78DC)) 
    \data_count[9]_i_1 
       (.I0(read_pointer3),
        .I1(s00_axis_tvalid),
        .I2(m00_axis_tready),
        .I3(m00_axis_tlast_INST_0_i_1_n_0),
        .O(data_count));
  LUT2 #(
    .INIT(4'h9)) 
    \data_count[9]_i_3 
       (.I0(data_count_reg[9]),
        .I1(data_count_reg[8]),
        .O(\data_count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[0] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count[0]_i_1_n_0 ),
        .Q(data_count_reg[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[1] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[4]_i_1_n_7 ),
        .Q(data_count_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[2] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[4]_i_1_n_6 ),
        .Q(data_count_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[3] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[4]_i_1_n_5 ),
        .Q(data_count_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[4] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[4]_i_1_n_4 ),
        .Q(data_count_reg[4]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\data_count_reg[4]_i_1_n_0 ,\data_count_reg[4]_i_1_n_1 ,\data_count_reg[4]_i_1_n_2 ,\data_count_reg[4]_i_1_n_3 }),
        .CYINIT(data_count_reg[0]),
        .DI({data_count_reg[3:1],\data_count[4]_i_2_n_0 }),
        .O({\data_count_reg[4]_i_1_n_4 ,\data_count_reg[4]_i_1_n_5 ,\data_count_reg[4]_i_1_n_6 ,\data_count_reg[4]_i_1_n_7 }),
        .S({\data_count[4]_i_3_n_0 ,\data_count[4]_i_4_n_0 ,\data_count[4]_i_5_n_0 ,\data_count[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[5] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[8]_i_1_n_7 ),
        .Q(data_count_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[6] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[8]_i_1_n_6 ),
        .Q(data_count_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[7] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[8]_i_1_n_5 ),
        .Q(data_count_reg[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[8] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[8]_i_1_n_4 ),
        .Q(data_count_reg[8]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_count_reg[8]_i_1 
       (.CI(\data_count_reg[4]_i_1_n_0 ),
        .CO({\data_count_reg[8]_i_1_n_0 ,\data_count_reg[8]_i_1_n_1 ,\data_count_reg[8]_i_1_n_2 ,\data_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_count_reg[7:4]),
        .O({\data_count_reg[8]_i_1_n_4 ,\data_count_reg[8]_i_1_n_5 ,\data_count_reg[8]_i_1_n_6 ,\data_count_reg[8]_i_1_n_7 }),
        .S({\data_count[8]_i_2_n_0 ,\data_count[8]_i_3_n_0 ,\data_count[8]_i_4_n_0 ,\data_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[9] 
       (.C(s00_axis_aclk),
        .CE(data_count),
        .D(\data_count_reg[9]_i_2_n_7 ),
        .Q(data_count_reg[9]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_count_reg[9]_i_2 
       (.CI(\data_count_reg[8]_i_1_n_0 ),
        .CO(\NLW_data_count_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_count_reg[9]_i_2_O_UNCONNECTED [3:1],\data_count_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\data_count[9]_i_3_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    empty_reg_i_1
       (.I0(m00_axis_tlast_INST_0_i_1_n_0),
        .O(empty_o));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "U0/uut/fifo_buf_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    fifo_buf_reg
       (.ADDRARDADDR({1'b1,write_pointer,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,read_pointer,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_buf_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_buf_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axis_aclk),
        .CLKBWRCLK(s00_axis_aclk),
        .DBITERR(NLW_fifo_buf_reg_DBITERR_UNCONNECTED),
        .DIADI(s00_axis_tdata),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_fifo_buf_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO(m00_axis_tdata),
        .DOPADOP(NLW_fifo_buf_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_fifo_buf_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_fifo_buf_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(write_enable),
        .ENBWREN(fifo_buf_reg_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_buf_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_buf_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_buf_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_buf_reg_SBITERR_UNCONNECTED),
        .WEA({read_pointer3,read_pointer3,read_pointer3,read_pointer3}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_buf_reg_i_1
       (.I0(read_pointer3),
        .I1(s00_axis_aresetn),
        .I2(s00_axis_tvalid),
        .O(write_enable));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_buf_reg_i_2
       (.I0(m00_axis_tlast_INST_0_i_1_n_0),
        .I1(s00_axis_aresetn),
        .I2(m00_axis_tready),
        .O(fifo_buf_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    m00_axis_tlast_INST_0
       (.I0(m00_axis_tlast_INST_0_i_1_n_0),
        .I1(empty_reg),
        .O(m00_axis_tlast));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m00_axis_tlast_INST_0_i_1
       (.I0(m00_axis_tlast_INST_0_i_2_n_0),
        .I1(data_count_reg[4]),
        .I2(data_count_reg[5]),
        .I3(data_count_reg[2]),
        .I4(data_count_reg[3]),
        .O(m00_axis_tlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m00_axis_tlast_INST_0_i_2
       (.I0(data_count_reg[8]),
        .I1(data_count_reg[9]),
        .I2(data_count_reg[6]),
        .I3(data_count_reg[7]),
        .I4(data_count_reg[1]),
        .I5(data_count_reg[0]),
        .O(m00_axis_tlast_INST_0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer[0]),
        .O(read_pointer__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer[0]),
        .I1(read_pointer[1]),
        .O(read_pointer__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[2]_i_1 
       (.I0(read_pointer[1]),
        .I1(read_pointer[0]),
        .I2(read_pointer[2]),
        .O(read_pointer__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[3]_i_1 
       (.I0(read_pointer[2]),
        .I1(read_pointer[0]),
        .I2(read_pointer[1]),
        .I3(read_pointer[3]),
        .O(read_pointer__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_pointer[4]_i_1 
       (.I0(read_pointer[3]),
        .I1(read_pointer[1]),
        .I2(read_pointer[0]),
        .I3(read_pointer[2]),
        .I4(read_pointer[4]),
        .O(read_pointer__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_pointer[5]_i_1 
       (.I0(read_pointer[4]),
        .I1(read_pointer[2]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(read_pointer[3]),
        .I5(read_pointer[5]),
        .O(read_pointer__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \read_pointer[6]_i_1 
       (.I0(\read_pointer[8]_i_2_n_0 ),
        .I1(read_pointer[6]),
        .O(read_pointer__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \read_pointer[7]_i_1 
       (.I0(read_pointer[6]),
        .I1(\read_pointer[8]_i_2_n_0 ),
        .I2(read_pointer[7]),
        .O(read_pointer__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \read_pointer[8]_i_1 
       (.I0(read_pointer[7]),
        .I1(\read_pointer[8]_i_2_n_0 ),
        .I2(read_pointer[6]),
        .I3(read_pointer[8]),
        .O(read_pointer__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_pointer[8]_i_2 
       (.I0(read_pointer[4]),
        .I1(read_pointer[2]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(read_pointer[3]),
        .I5(read_pointer[5]),
        .O(\read_pointer[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \read_pointer[9]_i_1 
       (.I0(read_pointer[8]),
        .I1(read_pointer[6]),
        .I2(\read_pointer[8]_i_2_n_0 ),
        .I3(read_pointer[7]),
        .I4(read_pointer[9]),
        .O(read_pointer__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[0]),
        .Q(read_pointer[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[1]),
        .Q(read_pointer[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[2]),
        .Q(read_pointer[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[3]),
        .Q(read_pointer[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[4]),
        .Q(read_pointer[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[5]),
        .Q(read_pointer[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[6]),
        .Q(read_pointer[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[7]),
        .Q(read_pointer[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[8]),
        .Q(read_pointer[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[9] 
       (.C(s00_axis_aclk),
        .CE(fifo_buf_reg_i_2_n_0),
        .D(read_pointer__0[9]),
        .Q(read_pointer[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h8)) 
    s00_axis_tready_INST_0
       (.I0(read_pointer3),
        .I1(s00_axis_aresetn),
        .O(s00_axis_tready));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    s00_axis_tready_INST_0_i_1
       (.I0(s00_axis_tready_INST_0_i_2_n_0),
        .I1(data_count_reg[4]),
        .I2(data_count_reg[5]),
        .I3(data_count_reg[2]),
        .I4(data_count_reg[3]),
        .O(read_pointer3));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    s00_axis_tready_INST_0_i_2
       (.I0(data_count_reg[8]),
        .I1(data_count_reg[9]),
        .I2(data_count_reg[6]),
        .I3(data_count_reg[7]),
        .I4(data_count_reg[1]),
        .I5(data_count_reg[0]),
        .O(s00_axis_tready_INST_0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer[0]),
        .O(write_pointer__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer[0]),
        .I1(write_pointer[1]),
        .O(write_pointer__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer[1]),
        .I1(write_pointer[0]),
        .I2(write_pointer[2]),
        .O(write_pointer__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(write_pointer[2]),
        .I1(write_pointer[0]),
        .I2(write_pointer[1]),
        .I3(write_pointer[3]),
        .O(write_pointer__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[4]_i_1 
       (.I0(write_pointer[3]),
        .I1(write_pointer[1]),
        .I2(write_pointer[0]),
        .I3(write_pointer[2]),
        .I4(write_pointer[4]),
        .O(write_pointer__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[5]_i_1 
       (.I0(write_pointer[4]),
        .I1(write_pointer[2]),
        .I2(write_pointer[0]),
        .I3(write_pointer[1]),
        .I4(write_pointer[3]),
        .I5(write_pointer[5]),
        .O(write_pointer__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \write_pointer[6]_i_1 
       (.I0(\write_pointer[9]_i_3_n_0 ),
        .I1(write_pointer[6]),
        .O(write_pointer__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \write_pointer[7]_i_1 
       (.I0(write_pointer[6]),
        .I1(\write_pointer[9]_i_3_n_0 ),
        .I2(write_pointer[7]),
        .O(write_pointer__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \write_pointer[8]_i_1 
       (.I0(write_pointer[7]),
        .I1(\write_pointer[9]_i_3_n_0 ),
        .I2(write_pointer[6]),
        .I3(write_pointer[8]),
        .O(write_pointer__0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[9]_i_1 
       (.I0(s00_axis_aresetn),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \write_pointer[9]_i_2 
       (.I0(write_pointer[8]),
        .I1(write_pointer[6]),
        .I2(\write_pointer[9]_i_3_n_0 ),
        .I3(write_pointer[7]),
        .I4(write_pointer[9]),
        .O(write_pointer__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_pointer[9]_i_3 
       (.I0(write_pointer[4]),
        .I1(write_pointer[2]),
        .I2(write_pointer[0]),
        .I3(write_pointer[1]),
        .I4(write_pointer[3]),
        .I5(write_pointer[5]),
        .O(\write_pointer[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[0]),
        .Q(write_pointer[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[1]),
        .Q(write_pointer[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[2]),
        .Q(write_pointer[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[3]),
        .Q(write_pointer[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[4]),
        .Q(write_pointer[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[5]),
        .Q(write_pointer[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[6]),
        .Q(write_pointer[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[7]),
        .Q(write_pointer[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[8]),
        .Q(write_pointer[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[9] 
       (.C(s00_axis_aclk),
        .CE(write_enable),
        .D(write_pointer__0[9]),
        .Q(write_pointer[9]),
        .R(reset));
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
