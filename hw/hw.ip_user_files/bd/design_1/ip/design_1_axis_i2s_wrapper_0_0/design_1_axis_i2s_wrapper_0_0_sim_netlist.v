// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:55:45 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode funcsim
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_sim_netlist.v
// Design      : design_1_axis_i2s_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_i2s_wrapper_0_0,axis_i2s_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axis_i2s_wrapper,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_axis_i2s_wrapper_0_0
   (sysclk_i,
    ac_bclk_o,
    ac_mclk_o,
    ac_mute_n_o,
    ac_dac_data_o,
    ac_dac_lrclk_o,
    ac_adc_data_i,
    ac_adc_lrclk_o,
    lrclk_unbuff_o,
    s00_axis_aclk,
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
  input sysclk_i;
  output ac_bclk_o;
  output ac_mclk_o;
  output ac_mute_n_o;
  output ac_dac_data_o;
  output ac_dac_lrclk_o;
  input ac_adc_data_i;
  output ac_adc_lrclk_o;
  output lrclk_unbuff_o;
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

  wire \<const0> ;
  wire \<const1> ;
  wire ac_adc_data_i;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_data_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire lrclk_unbuff_o;
  wire m00_axis_aclk;
  wire [31:7]\^m00_axis_tdata ;
  wire m00_axis_tvalid;
  wire sysclk_i;
  wire NLW_U0_ac_mute_n_o_UNCONNECTED;
  wire NLW_U0_m00_axis_tlast_UNCONNECTED;
  wire NLW_U0_s00_axis_tready_UNCONNECTED;
  wire [6:0]NLW_U0_m00_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_m00_axis_tstrb_UNCONNECTED;

  assign ac_mute_n_o = \<const1> ;
  assign m00_axis_tdata[31:7] = \^m00_axis_tdata [31:7];
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const0> ;
  assign m00_axis_tstrb[2] = \<const0> ;
  assign m00_axis_tstrb[1] = \<const0> ;
  assign m00_axis_tstrb[0] = \<const0> ;
  assign s00_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* AC_DATA_WIDTH = "24" *) 
  (* C_AXI_STREAM_DATA_WIDTH = "32" *) 
  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DDS_DATA_WIDTH = "24" *) 
  (* DDS_PHASE_DATA_WIDTH = "12" *) 
  design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper U0
       (.ac_adc_data_i(ac_adc_data_i),
        .ac_adc_lrclk_o(ac_adc_lrclk_o),
        .ac_bclk_o(ac_bclk_o),
        .ac_dac_data_o(ac_dac_data_o),
        .ac_dac_lrclk_o(ac_dac_lrclk_o),
        .ac_mclk_o(ac_mclk_o),
        .ac_mute_n_o(NLW_U0_ac_mute_n_o_UNCONNECTED),
        .lrclk_unbuff_o(lrclk_unbuff_o),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(1'b0),
        .m00_axis_tdata({\^m00_axis_tdata ,NLW_U0_m00_axis_tdata_UNCONNECTED[6:0]}),
        .m00_axis_tlast(NLW_U0_m00_axis_tlast_UNCONNECTED),
        .m00_axis_tready(1'b0),
        .m00_axis_tstrb(NLW_U0_m00_axis_tstrb_UNCONNECTED[3:0]),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_aclk(1'b0),
        .s00_axis_aresetn(1'b0),
        .s00_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tlast(1'b0),
        .s00_axis_tready(NLW_U0_s00_axis_tready_UNCONNECTED),
        .s00_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tvalid(1'b0),
        .sysclk_i(sysclk_i));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* AC_DATA_WIDTH = "24" *) (* C_AXI_STREAM_DATA_WIDTH = "32" *) (* C_S00_AXI_ADDR_WIDTH = "4" *) 
(* C_S00_AXI_DATA_WIDTH = "32" *) (* DDS_DATA_WIDTH = "24" *) (* DDS_PHASE_DATA_WIDTH = "12" *) 
(* ORIG_REF_NAME = "axis_i2s_wrapper" *) 
module design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper
   (sysclk_i,
    ac_bclk_o,
    ac_mclk_o,
    ac_mute_n_o,
    ac_dac_data_o,
    ac_dac_lrclk_o,
    ac_adc_data_i,
    ac_adc_lrclk_o,
    lrclk_unbuff_o,
    s00_axis_aclk,
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
  input m00_axis_aclk;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;

  wire \<const0> ;
  wire ac_adc_data_i;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_data_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire bclk_o;
  wire [23:0]left_audio_reg;
  wire lrclk_o;
  wire lrclk_unbuff_o;
  wire m00_axis_aclk;
  wire [31:7]\^m00_axis_tdata ;
  wire m00_axis_tvalid;
  wire [23:0]right_audio_reg;
  wire sysclk_i;

  assign ac_mute_n_o = \<const0> ;
  assign m00_axis_tdata[31:7] = \^m00_axis_tdata [31:7];
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const0> ;
  assign m00_axis_tstrb[2] = \<const0> ;
  assign m00_axis_tstrb[1] = \<const0> ;
  assign m00_axis_tstrb[0] = \<const0> ;
  assign s00_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface axis_trans
       (.Q(right_audio_reg),
        .\lad1_reg[23]_0 (left_audio_reg),
        .lrclk_o(lrclk_o),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tvalid(m00_axis_tvalid));
  design_1_axis_i2s_wrapper_0_0_i2s_clk_gen the_clock_generator
       (.CLK(bclk_o),
        .ac_adc_lrclk_o(ac_adc_lrclk_o),
        .ac_bclk_o(ac_bclk_o),
        .ac_dac_lrclk_o(ac_dac_lrclk_o),
        .ac_mclk_o(ac_mclk_o),
        .lrclk_o(lrclk_o),
        .sysclk_i(sysclk_i),
        .unbuffered_clk_reg(lrclk_unbuff_o));
  design_1_axis_i2s_wrapper_0_0_i2s_receiver the_i2s_receiver
       (.CLK(bclk_o),
        .\FSM_sequential_curr_state_reg[0]_0 (lrclk_unbuff_o),
        .Q(right_audio_reg),
        .ac_adc_data_i(ac_adc_data_i),
        .\left_audio_reg_reg[23]_0 (left_audio_reg));
  design_1_axis_i2s_wrapper_0_0_i2s_transmitter the_i2s_transmitter
       (.CLK(bclk_o),
        .\FSM_sequential_curr_state_reg[0]_0 (lrclk_unbuff_o),
        .Q(right_audio_reg),
        .ac_dac_data_o(ac_dac_data_o),
        .\shift_registerr_reg[23] (left_audio_reg));
endmodule

(* ORIG_REF_NAME = "axis_transmitter_interface" *) 
module design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface
   (m00_axis_tdata,
    m00_axis_tvalid,
    lrclk_o,
    m00_axis_aclk,
    Q,
    \lad1_reg[23]_0 );
  output [24:0]m00_axis_tdata;
  output m00_axis_tvalid;
  input lrclk_o;
  input m00_axis_aclk;
  input [23:0]Q;
  input [23:0]\lad1_reg[23]_0 ;

  wire \FSM_onehot_curr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[2]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[3]_i_1_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire [23:0]Q;
  wire [23:0]lad1;
  wire [23:0]\lad1_reg[23]_0 ;
  wire [23:0]left_audio_data_sync;
  wire lrc;
  wire lrclk_o;
  wire lrclk_sync;
  wire m00_axis_aclk;
  wire [24:0]m00_axis_tdata;
  wire \m00_axis_tdata_o[30]_i_1_n_0 ;
  wire \m00_axis_tdata_o[31]_i_1_n_0 ;
  wire m00_axis_tvalid;
  wire [30:7]p_2_in;
  wire [23:0]rad1;
  wire [23:0]right_audio_data_sync;
  wire sample_left;
  wire sample_right;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCFEDCCC)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(sample_right),
        .I1(sample_left),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(lrclk_sync),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0F0E0F0)) 
    \FSM_onehot_curr_state[1]_i_1 
       (.I0(sample_right),
        .I1(sample_left),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(lrclk_sync),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \FSM_onehot_curr_state[2]_i_1 
       (.I0(sample_right),
        .I1(sample_left),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(lrclk_sync),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr_state[3]_i_1 
       (.I0(lrclk_sync),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(sample_right),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[3]_i_1_n_0 ),
        .Q(sample_left),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [0]),
        .Q(lad1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [10]),
        .Q(lad1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [11]),
        .Q(lad1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [12]),
        .Q(lad1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [13]),
        .Q(lad1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [14]),
        .Q(lad1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [15]),
        .Q(lad1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [16]),
        .Q(lad1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [17]),
        .Q(lad1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [18]),
        .Q(lad1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [19]),
        .Q(lad1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [1]),
        .Q(lad1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [20]),
        .Q(lad1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [21]),
        .Q(lad1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [22]),
        .Q(lad1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [23]),
        .Q(lad1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [2]),
        .Q(lad1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [3]),
        .Q(lad1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [4]),
        .Q(lad1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [5]),
        .Q(lad1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [6]),
        .Q(lad1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [7]),
        .Q(lad1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [8]),
        .Q(lad1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lad1_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\lad1_reg[23]_0 [9]),
        .Q(lad1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[0]),
        .Q(left_audio_data_sync[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[10]),
        .Q(left_audio_data_sync[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[11]),
        .Q(left_audio_data_sync[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[12]),
        .Q(left_audio_data_sync[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[13]),
        .Q(left_audio_data_sync[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[14]),
        .Q(left_audio_data_sync[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[15]),
        .Q(left_audio_data_sync[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[16]),
        .Q(left_audio_data_sync[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[17]),
        .Q(left_audio_data_sync[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[18]),
        .Q(left_audio_data_sync[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[19]),
        .Q(left_audio_data_sync[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[1]),
        .Q(left_audio_data_sync[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[20]),
        .Q(left_audio_data_sync[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[21]),
        .Q(left_audio_data_sync[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[22]),
        .Q(left_audio_data_sync[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[23]),
        .Q(left_audio_data_sync[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[2]),
        .Q(left_audio_data_sync[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[3]),
        .Q(left_audio_data_sync[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[4]),
        .Q(left_audio_data_sync[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[5]),
        .Q(left_audio_data_sync[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[6]),
        .Q(left_audio_data_sync[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[7]),
        .Q(left_audio_data_sync[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[8]),
        .Q(left_audio_data_sync[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_data_sync_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lad1[9]),
        .Q(left_audio_data_sync[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lrc_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lrclk_o),
        .Q(lrc),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lrclk_sync_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lrc),
        .Q(lrclk_sync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[10]_i_1 
       (.I0(left_audio_data_sync[3]),
        .I1(sample_left),
        .I2(right_audio_data_sync[3]),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[11]_i_1 
       (.I0(left_audio_data_sync[4]),
        .I1(sample_left),
        .I2(right_audio_data_sync[4]),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[12]_i_1 
       (.I0(left_audio_data_sync[5]),
        .I1(sample_left),
        .I2(right_audio_data_sync[5]),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[13]_i_1 
       (.I0(left_audio_data_sync[6]),
        .I1(sample_left),
        .I2(right_audio_data_sync[6]),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[14]_i_1 
       (.I0(left_audio_data_sync[7]),
        .I1(sample_left),
        .I2(right_audio_data_sync[7]),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[15]_i_1 
       (.I0(left_audio_data_sync[8]),
        .I1(sample_left),
        .I2(right_audio_data_sync[8]),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[16]_i_1 
       (.I0(left_audio_data_sync[9]),
        .I1(sample_left),
        .I2(right_audio_data_sync[9]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[17]_i_1 
       (.I0(left_audio_data_sync[10]),
        .I1(sample_left),
        .I2(right_audio_data_sync[10]),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[18]_i_1 
       (.I0(left_audio_data_sync[11]),
        .I1(sample_left),
        .I2(right_audio_data_sync[11]),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[19]_i_1 
       (.I0(left_audio_data_sync[12]),
        .I1(sample_left),
        .I2(right_audio_data_sync[12]),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[20]_i_1 
       (.I0(left_audio_data_sync[13]),
        .I1(sample_left),
        .I2(right_audio_data_sync[13]),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[21]_i_1 
       (.I0(left_audio_data_sync[14]),
        .I1(sample_left),
        .I2(right_audio_data_sync[14]),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[22]_i_1 
       (.I0(left_audio_data_sync[15]),
        .I1(sample_left),
        .I2(right_audio_data_sync[15]),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[23]_i_1 
       (.I0(left_audio_data_sync[16]),
        .I1(sample_left),
        .I2(right_audio_data_sync[16]),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[24]_i_1 
       (.I0(left_audio_data_sync[17]),
        .I1(sample_left),
        .I2(right_audio_data_sync[17]),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[25]_i_1 
       (.I0(left_audio_data_sync[18]),
        .I1(sample_left),
        .I2(right_audio_data_sync[18]),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[26]_i_1 
       (.I0(left_audio_data_sync[19]),
        .I1(sample_left),
        .I2(right_audio_data_sync[19]),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[27]_i_1 
       (.I0(left_audio_data_sync[20]),
        .I1(sample_left),
        .I2(right_audio_data_sync[20]),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[28]_i_1 
       (.I0(left_audio_data_sync[21]),
        .I1(sample_left),
        .I2(right_audio_data_sync[21]),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[29]_i_1 
       (.I0(left_audio_data_sync[22]),
        .I1(sample_left),
        .I2(right_audio_data_sync[22]),
        .O(p_2_in[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata_o[30]_i_1 
       (.I0(sample_left),
        .I1(sample_right),
        .O(\m00_axis_tdata_o[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[30]_i_2 
       (.I0(left_audio_data_sync[23]),
        .I1(sample_left),
        .I2(right_audio_data_sync[23]),
        .O(p_2_in[30]));
  LUT3 #(
    .INIT(8'hF4)) 
    \m00_axis_tdata_o[31]_i_1 
       (.I0(sample_right),
        .I1(m00_axis_tdata[24]),
        .I2(sample_left),
        .O(\m00_axis_tdata_o[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[7]_i_1 
       (.I0(left_audio_data_sync[0]),
        .I1(sample_left),
        .I2(right_audio_data_sync[0]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[8]_i_1 
       (.I0(left_audio_data_sync[1]),
        .I1(sample_left),
        .I2(right_audio_data_sync[1]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata_o[9]_i_1 
       (.I0(left_audio_data_sync[2]),
        .I1(sample_left),
        .I2(right_audio_data_sync[2]),
        .O(p_2_in[9]));
  FDRE \m00_axis_tdata_o_reg[10] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[11] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[12] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[13] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[14] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[15] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(m00_axis_tdata[8]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[16] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(m00_axis_tdata[9]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[17] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(m00_axis_tdata[10]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[18] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(m00_axis_tdata[11]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[19] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(m00_axis_tdata[12]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[20] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(m00_axis_tdata[13]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[21] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(m00_axis_tdata[14]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[22] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(m00_axis_tdata[15]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[23] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(m00_axis_tdata[16]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[24] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(m00_axis_tdata[17]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[25] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(m00_axis_tdata[18]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[26] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(m00_axis_tdata[19]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[27] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(m00_axis_tdata[20]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[28] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(m00_axis_tdata[21]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[29] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(m00_axis_tdata[22]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[30] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(m00_axis_tdata[23]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\m00_axis_tdata_o[31]_i_1_n_0 ),
        .Q(m00_axis_tdata[24]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  FDRE \m00_axis_tdata_o_reg[9] 
       (.C(m00_axis_aclk),
        .CE(\m00_axis_tdata_o[30]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m00_axis_tvalid_INST_0
       (.I0(sample_right),
        .I1(sample_left),
        .O(m00_axis_tvalid));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(rad1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(rad1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(rad1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(rad1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(rad1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(rad1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(rad1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(rad1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(rad1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(rad1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(rad1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(rad1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(rad1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(rad1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(rad1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(rad1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(rad1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(rad1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(rad1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(rad1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(rad1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(rad1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(rad1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rad1_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(rad1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[0]),
        .Q(right_audio_data_sync[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[10]),
        .Q(right_audio_data_sync[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[11]),
        .Q(right_audio_data_sync[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[12]),
        .Q(right_audio_data_sync[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[13]),
        .Q(right_audio_data_sync[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[14]),
        .Q(right_audio_data_sync[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[15]),
        .Q(right_audio_data_sync[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[16]),
        .Q(right_audio_data_sync[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[17]),
        .Q(right_audio_data_sync[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[18]),
        .Q(right_audio_data_sync[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[19]),
        .Q(right_audio_data_sync[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[1]),
        .Q(right_audio_data_sync[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[20]),
        .Q(right_audio_data_sync[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[21]),
        .Q(right_audio_data_sync[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[22]),
        .Q(right_audio_data_sync[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[23]),
        .Q(right_audio_data_sync[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[2]),
        .Q(right_audio_data_sync[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[3]),
        .Q(right_audio_data_sync[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[4]),
        .Q(right_audio_data_sync[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[5]),
        .Q(right_audio_data_sync[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[6]),
        .Q(right_audio_data_sync[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[7]),
        .Q(right_audio_data_sync[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[8]),
        .Q(right_audio_data_sync[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_data_sync_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rad1[9]),
        .Q(right_audio_data_sync[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "bclk_divider" *) 
module design_1_axis_i2s_wrapper_0_0_bclk_divider
   (slow_clock_bufg_0,
    mclk);
  output slow_clock_bufg_0;
  input mclk;

  wire clock_counter;
  wire mclk;
  wire p_0_in;
  wire slow_clock_bufg_0;
  wire unbuffered_clk_i_1__0_n_0;
  wire unbuffered_clk_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(clock_counter),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clock_counter),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  BUFG slow_clock_bufg
       (.I(unbuffered_clk_reg_n_0),
        .O(slow_clock_bufg_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    unbuffered_clk_i_1__0
       (.I0(clock_counter),
        .I1(unbuffered_clk_reg_n_0),
        .O(unbuffered_clk_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    unbuffered_clk_reg
       (.C(mclk),
        .CE(1'b1),
        .D(unbuffered_clk_i_1__0_n_0),
        .Q(unbuffered_clk_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_wiz_01" *) 
module design_1_axis_i2s_wrapper_0_0_clk_wiz_01
   (mclk,
    sysclk);
  output mclk;
  input sysclk;


endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module design_1_axis_i2s_wrapper_0_0_clock_divider
   (lrclk_o,
    unbuffered_clk_reg_0,
    unbuffered_clk_reg_1);
  output lrclk_o;
  output unbuffered_clk_reg_0;
  input unbuffered_clk_reg_1;

  wire \clock_counter[2]_i_1_n_0 ;
  wire \clock_counter[4]_i_1_n_0 ;
  wire \clock_counter_reg_n_0_[0] ;
  wire \clock_counter_reg_n_0_[1] ;
  wire \clock_counter_reg_n_0_[2] ;
  wire \clock_counter_reg_n_0_[3] ;
  wire \clock_counter_reg_n_0_[4] ;
  wire lrclk_o;
  wire [4:0]plusOp;
  wire unbuffered_clk_i_1_n_0;
  wire unbuffered_clk_reg_0;
  wire unbuffered_clk_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clock_counter[2]_i_1 
       (.I0(\clock_counter_reg_n_0_[1] ),
        .I1(\clock_counter_reg_n_0_[0] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .O(\clock_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clock_counter[3]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .I3(\clock_counter_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \clock_counter[4]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .I3(\clock_counter_reg_n_0_[3] ),
        .I4(\clock_counter_reg_n_0_[4] ),
        .O(\clock_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clock_counter[4]_i_2 
       (.I0(\clock_counter_reg_n_0_[2] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .I2(\clock_counter_reg_n_0_[0] ),
        .I3(\clock_counter_reg_n_0_[3] ),
        .I4(\clock_counter_reg_n_0_[4] ),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[0] 
       (.C(unbuffered_clk_reg_1),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\clock_counter_reg_n_0_[0] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[1] 
       (.C(unbuffered_clk_reg_1),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\clock_counter_reg_n_0_[1] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[2] 
       (.C(unbuffered_clk_reg_1),
        .CE(1'b1),
        .D(\clock_counter[2]_i_1_n_0 ),
        .Q(\clock_counter_reg_n_0_[2] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[3] 
       (.C(unbuffered_clk_reg_1),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\clock_counter_reg_n_0_[3] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[4] 
       (.C(unbuffered_clk_reg_1),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\clock_counter_reg_n_0_[4] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  BUFG slow_clock_bufg
       (.I(unbuffered_clk_reg_0),
        .O(lrclk_o));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    unbuffered_clk_i_1
       (.I0(\clock_counter_reg_n_0_[4] ),
        .I1(\clock_counter_reg_n_0_[3] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .I3(\clock_counter_reg_n_0_[1] ),
        .I4(\clock_counter_reg_n_0_[0] ),
        .I5(unbuffered_clk_reg_0),
        .O(unbuffered_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    unbuffered_clk_reg
       (.C(unbuffered_clk_reg_1),
        .CE(1'b1),
        .D(unbuffered_clk_i_1_n_0),
        .Q(unbuffered_clk_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_axis_i2s_wrapper_0_0_counter
   (\FSM_sequential_curr_state_reg[1] ,
    \FSM_sequential_curr_state_reg[1]_0 ,
    shift_en,
    curr_state,
    \FSM_sequential_curr_state_reg[0] ,
    CLK);
  output \FSM_sequential_curr_state_reg[1] ;
  output \FSM_sequential_curr_state_reg[1]_0 ;
  input shift_en;
  input [0:0]curr_state;
  input \FSM_sequential_curr_state_reg[0] ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state_reg[0] ;
  wire \FSM_sequential_curr_state_reg[1] ;
  wire \FSM_sequential_curr_state_reg[1]_0 ;
  wire [4:0]count_int;
  wire \count_int[0]_i_1_n_0 ;
  wire \count_int[1]_i_1__0_n_0 ;
  wire \count_int[2]_i_1__0_n_0 ;
  wire \count_int[3]_i_1_n_0 ;
  wire \count_int[4]_i_2_n_0 ;
  wire counter_reset;
  wire [0:0]curr_state;
  wire shift_en;
  wire tc_o;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5C53)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(tc_o),
        .I1(curr_state),
        .I2(shift_en),
        .I3(\FSM_sequential_curr_state_reg[0] ),
        .O(\FSM_sequential_curr_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(tc_o),
        .I1(curr_state),
        .I2(shift_en),
        .O(\FSM_sequential_curr_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \FSM_sequential_curr_state[1]_i_2 
       (.I0(count_int[2]),
        .I1(count_int[1]),
        .I2(count_int[0]),
        .I3(count_int[4]),
        .I4(count_int[3]),
        .O(tc_o));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_int[0]_i_1 
       (.I0(count_int[4]),
        .I1(count_int[2]),
        .I2(count_int[1]),
        .I3(count_int[3]),
        .I4(count_int[0]),
        .O(\count_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_int[1]_i_1__0 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .O(\count_int[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_int[2]_i_1__0 
       (.I0(count_int[2]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .O(\count_int[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h3FFDC000)) 
    \count_int[3]_i_1 
       (.I0(count_int[4]),
        .I1(count_int[2]),
        .I2(count_int[0]),
        .I3(count_int[1]),
        .I4(count_int[3]),
        .O(\count_int[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_int[4]_i_1 
       (.I0(shift_en),
        .O(counter_reset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AA8AAAA)) 
    \count_int[4]_i_2 
       (.I0(count_int[4]),
        .I1(count_int[2]),
        .I2(count_int[0]),
        .I3(count_int[1]),
        .I4(count_int[3]),
        .O(\count_int[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[0]_i_1_n_0 ),
        .Q(count_int[0]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[1]_i_1__0_n_0 ),
        .Q(count_int[1]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[2]_i_1__0_n_0 ),
        .Q(count_int[2]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[3]_i_1_n_0 ),
        .Q(count_int[3]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[4]_i_2_n_0 ),
        .Q(count_int[4]),
        .R(counter_reset));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_axis_i2s_wrapper_0_0_counter__parameterized1
   (\FSM_sequential_curr_state_reg[2] ,
    \FSM_sequential_curr_state_reg[2]_0 ,
    curr_state,
    \FSM_sequential_curr_state_reg[0] ,
    CLK);
  output \FSM_sequential_curr_state_reg[2] ;
  output \FSM_sequential_curr_state_reg[2]_0 ;
  input [2:0]curr_state;
  input \FSM_sequential_curr_state_reg[0] ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state_reg[0] ;
  wire \FSM_sequential_curr_state_reg[2] ;
  wire \FSM_sequential_curr_state_reg[2]_0 ;
  wire [4:0]count_int;
  wire \count_int[0]_i_1__0_n_0 ;
  wire \count_int[1]_i_1_n_0 ;
  wire \count_int[2]_i_1_n_0 ;
  wire \count_int[3]_i_1__0_n_0 ;
  wire \count_int[4]_i_2__0_n_0 ;
  wire counter_reset;
  wire [2:0]curr_state;
  wire tc_o;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFC2244FC)) 
    \FSM_sequential_curr_state[0]_i_1__0 
       (.I0(tc_o),
        .I1(curr_state[2]),
        .I2(\FSM_sequential_curr_state_reg[0] ),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .O(\FSM_sequential_curr_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hCFCC44CC)) 
    \FSM_sequential_curr_state[2]_i_1 
       (.I0(tc_o),
        .I1(curr_state[2]),
        .I2(\FSM_sequential_curr_state_reg[0] ),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .O(\FSM_sequential_curr_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_curr_state[2]_i_2 
       (.I0(count_int[3]),
        .I1(count_int[4]),
        .I2(count_int[2]),
        .I3(count_int[0]),
        .I4(count_int[1]),
        .O(tc_o));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_int[0]_i_1__0 
       (.I0(count_int[0]),
        .O(\count_int[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_int[1]_i_1 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .O(\count_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_int[2]_i_1 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .I2(count_int[2]),
        .O(\count_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \count_int[3]_i_1__0 
       (.I0(count_int[4]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .I3(count_int[2]),
        .I4(count_int[3]),
        .O(\count_int[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \count_int[4]_i_1__0 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .O(counter_reset));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \count_int[4]_i_2__0 
       (.I0(count_int[4]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .I3(count_int[2]),
        .I4(count_int[3]),
        .O(\count_int[4]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[0]_i_1__0_n_0 ),
        .Q(count_int[0]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[1]_i_1_n_0 ),
        .Q(count_int[1]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[2]_i_1_n_0 ),
        .Q(count_int[2]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[3]_i_1__0_n_0 ),
        .Q(count_int[3]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_int[4]_i_2__0_n_0 ),
        .Q(count_int[4]),
        .R(counter_reset));
endmodule

(* ORIG_REF_NAME = "i2s_clk_gen" *) 
module design_1_axis_i2s_wrapper_0_0_i2s_clk_gen
   (CLK,
    lrclk_o,
    unbuffered_clk_reg,
    ac_mclk_o,
    ac_bclk_o,
    ac_adc_lrclk_o,
    ac_dac_lrclk_o,
    sysclk_i);
  output CLK;
  output lrclk_o;
  output unbuffered_clk_reg;
  output ac_mclk_o;
  output ac_bclk_o;
  output ac_adc_lrclk_o;
  output ac_dac_lrclk_o;
  input sysclk_i;

  wire CLK;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire lrclk_o;
  wire mclk_o;
  wire sysclk_i;
  wire unbuffered_clk_reg;
  wire NLW_bclk_forward_oddr_R_UNCONNECTED;
  wire NLW_bclk_forward_oddr_S_UNCONNECTED;
  wire NLW_lrclk_adc_forward_oddr_R_UNCONNECTED;
  wire NLW_lrclk_adc_forward_oddr_S_UNCONNECTED;
  wire NLW_lrclk_dac_forward_oddr_R_UNCONNECTED;
  wire NLW_lrclk_dac_forward_oddr_S_UNCONNECTED;
  wire NLW_mclk_forward_oddr_R_UNCONNECTED;
  wire NLW_mclk_forward_oddr_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    bclk_forward_oddr
       (.C(CLK),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_bclk_o),
        .R(NLW_bclk_forward_oddr_R_UNCONNECTED),
        .S(NLW_bclk_forward_oddr_S_UNCONNECTED));
  design_1_axis_i2s_wrapper_0_0_bclk_divider bclock_divider
       (.mclk(mclk_o),
        .slow_clock_bufg_0(CLK));
  (* syn_black_box = "TRUE" *) 
  design_1_axis_i2s_wrapper_0_0_clk_wiz_01 clock_wiz
       (.mclk(mclk_o),
        .sysclk(sysclk_i));
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    lrclk_adc_forward_oddr
       (.C(lrclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_adc_lrclk_o),
        .R(NLW_lrclk_adc_forward_oddr_R_UNCONNECTED),
        .S(NLW_lrclk_adc_forward_oddr_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    lrclk_dac_forward_oddr
       (.C(lrclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_dac_lrclk_o),
        .R(NLW_lrclk_dac_forward_oddr_R_UNCONNECTED),
        .S(NLW_lrclk_dac_forward_oddr_S_UNCONNECTED));
  design_1_axis_i2s_wrapper_0_0_clock_divider lrclock_divider
       (.lrclk_o(lrclk_o),
        .unbuffered_clk_reg_0(unbuffered_clk_reg),
        .unbuffered_clk_reg_1(CLK));
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    mclk_forward_oddr
       (.C(mclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_mclk_o),
        .R(NLW_mclk_forward_oddr_R_UNCONNECTED),
        .S(NLW_mclk_forward_oddr_S_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "i2s_receiver" *) 
module design_1_axis_i2s_wrapper_0_0_i2s_receiver
   (Q,
    \left_audio_reg_reg[23]_0 ,
    \FSM_sequential_curr_state_reg[0]_0 ,
    CLK,
    ac_adc_data_i);
  output [23:0]Q;
  output [23:0]\left_audio_reg_reg[23]_0 ;
  input \FSM_sequential_curr_state_reg[0]_0 ;
  input CLK;
  input ac_adc_data_i;

  wire CLK;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
  wire [23:0]Q;
  wire ac_adc_data_i;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire [1:1]curr_state;
  wire \left_audio_reg[23]_i_1_n_0 ;
  wire [23:0]\left_audio_reg_reg[23]_0 ;
  wire right_save_en;
  wire shift_en;
  wire [23:0]shift_reg;

  (* FSM_ENCODED_STATES = "readleft:01,idlestate2:10,idlestate1:00,readright:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_0),
        .Q(shift_en),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "readleft:01,idlestate2:10,idlestate1:00,readright:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_1),
        .Q(curr_state),
        .R(1'b0));
  design_1_axis_i2s_wrapper_0_0_counter bit_counter
       (.CLK(CLK),
        .\FSM_sequential_curr_state_reg[0] (\FSM_sequential_curr_state_reg[0]_0 ),
        .\FSM_sequential_curr_state_reg[1] (bit_counter_n_0),
        .\FSM_sequential_curr_state_reg[1]_0 (bit_counter_n_1),
        .curr_state(curr_state),
        .shift_en(shift_en));
  LUT2 #(
    .INIT(4'h2)) 
    \left_audio_reg[23]_i_1 
       (.I0(curr_state),
        .I1(shift_en),
        .O(\left_audio_reg[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[0] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[0]),
        .Q(\left_audio_reg_reg[23]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[10] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[10]),
        .Q(\left_audio_reg_reg[23]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[11] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[11]),
        .Q(\left_audio_reg_reg[23]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[12] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[12]),
        .Q(\left_audio_reg_reg[23]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[13] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[13]),
        .Q(\left_audio_reg_reg[23]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[14] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[14]),
        .Q(\left_audio_reg_reg[23]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[15] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[15]),
        .Q(\left_audio_reg_reg[23]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[16] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[16]),
        .Q(\left_audio_reg_reg[23]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[17] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[17]),
        .Q(\left_audio_reg_reg[23]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[18] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[18]),
        .Q(\left_audio_reg_reg[23]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[19] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[19]),
        .Q(\left_audio_reg_reg[23]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[1] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[1]),
        .Q(\left_audio_reg_reg[23]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[20] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[20]),
        .Q(\left_audio_reg_reg[23]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[21] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[21]),
        .Q(\left_audio_reg_reg[23]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[22] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[22]),
        .Q(\left_audio_reg_reg[23]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[23] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[23]),
        .Q(\left_audio_reg_reg[23]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[2] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[2]),
        .Q(\left_audio_reg_reg[23]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[3] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[3]),
        .Q(\left_audio_reg_reg[23]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[4] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[4]),
        .Q(\left_audio_reg_reg[23]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[5] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[5]),
        .Q(\left_audio_reg_reg[23]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[6] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[6]),
        .Q(\left_audio_reg_reg[23]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[7] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[7]),
        .Q(\left_audio_reg_reg[23]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[8] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[8]),
        .Q(\left_audio_reg_reg[23]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_audio_reg_reg[9] 
       (.C(CLK),
        .CE(\left_audio_reg[23]_i_1_n_0 ),
        .D(shift_reg[9]),
        .Q(\left_audio_reg_reg[23]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \right_audio_reg[23]_i_1 
       (.I0(shift_en),
        .I1(curr_state),
        .O(right_save_en));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[0] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[10] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[11] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[12] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[13] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[14] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[15] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[16] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[17] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[18] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[19] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[1] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[20] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[21] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[22] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[23] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[2] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[3] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[4] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[5] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[6] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[7] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[8] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_audio_reg_reg[9] 
       (.C(CLK),
        .CE(right_save_en),
        .D(shift_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(shift_en),
        .D(ac_adc_data_i),
        .Q(shift_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[10] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[9]),
        .Q(shift_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[11] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[10]),
        .Q(shift_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[12] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[11]),
        .Q(shift_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[13] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[12]),
        .Q(shift_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[14] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[13]),
        .Q(shift_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[15] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[14]),
        .Q(shift_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[16] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[15]),
        .Q(shift_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[17] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[16]),
        .Q(shift_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[18] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[17]),
        .Q(shift_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[19] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[18]),
        .Q(shift_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[0]),
        .Q(shift_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[20] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[19]),
        .Q(shift_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[21] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[20]),
        .Q(shift_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[22] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[21]),
        .Q(shift_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[23] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[22]),
        .Q(shift_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[1]),
        .Q(shift_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[2]),
        .Q(shift_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[3]),
        .Q(shift_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[4]),
        .Q(shift_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[5]),
        .Q(shift_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[6]),
        .Q(shift_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[7]),
        .Q(shift_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(CLK),
        .CE(shift_en),
        .D(shift_reg[8]),
        .Q(shift_reg[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter" *) 
module design_1_axis_i2s_wrapper_0_0_i2s_transmitter
   (ac_dac_data_o,
    \shift_registerr_reg[23] ,
    Q,
    \FSM_sequential_curr_state_reg[0]_0 ,
    CLK);
  output ac_dac_data_o;
  input [23:0]\shift_registerr_reg[23] ;
  input [23:0]Q;
  input \FSM_sequential_curr_state_reg[0]_0 ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
  wire [23:0]Q;
  wire ac_dac_data_o;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire [2:0]curr_state;
  wire [23:0]\shift_registerr_reg[23] ;

  LUT4 #(
    .INIT(16'hEF50)) 
    \FSM_sequential_curr_state[1]_i_1__0 
       (.I0(curr_state[2]),
        .I1(\FSM_sequential_curr_state_reg[0]_0 ),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .O(\FSM_sequential_curr_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "idlestate1:000,loadrightregister:001,shiftrightdata:010,idlestate2:011,loadleftregister:100,shiftleftdata:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_1),
        .Q(curr_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idlestate1:000,loadrightregister:001,shiftrightdata:010,idlestate2:011,loadleftregister:100,shiftleftdata:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1__0_n_0 ),
        .Q(curr_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idlestate1:000,loadrightregister:001,shiftrightdata:010,idlestate2:011,loadleftregister:100,shiftleftdata:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_0),
        .Q(curr_state[2]),
        .R(1'b0));
  design_1_axis_i2s_wrapper_0_0_counter__parameterized1 bit_counter
       (.CLK(CLK),
        .\FSM_sequential_curr_state_reg[0] (\FSM_sequential_curr_state_reg[0]_0 ),
        .\FSM_sequential_curr_state_reg[2] (bit_counter_n_0),
        .\FSM_sequential_curr_state_reg[2]_0 (bit_counter_n_1),
        .curr_state(curr_state));
  design_1_axis_i2s_wrapper_0_0_shift_register shift_reg
       (.CLK(CLK),
        .Q(Q),
        .ac_dac_data_o(ac_dac_data_o),
        .curr_state(curr_state),
        .\shift_registerr_reg[23]_0 (\shift_registerr_reg[23] ));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module design_1_axis_i2s_wrapper_0_0_shift_register
   (ac_dac_data_o,
    curr_state,
    \shift_registerr_reg[23]_0 ,
    Q,
    CLK);
  output ac_dac_data_o;
  input [2:0]curr_state;
  input [23:0]\shift_registerr_reg[23]_0 ;
  input [23:0]Q;
  input CLK;

  wire CLK;
  wire [23:0]Q;
  wire ac_dac_data_o;
  wire [2:0]curr_state;
  wire [23:0]p_1_in;
  wire [22:0]shift_registerr;
  wire \shift_registerr[23]_i_1_n_0 ;
  wire [23:0]\shift_registerr_reg[23]_0 ;

  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[0]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [0]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[0]),
        .I5(ac_dac_data_o),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[10]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [10]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[10]),
        .I5(shift_registerr[9]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[11]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [11]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[11]),
        .I5(shift_registerr[10]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[12]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [12]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[12]),
        .I5(shift_registerr[11]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[13]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [13]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[13]),
        .I5(shift_registerr[12]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[14]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [14]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[14]),
        .I5(shift_registerr[13]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[15]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [15]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[15]),
        .I5(shift_registerr[14]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[16]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [16]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[16]),
        .I5(shift_registerr[15]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[17]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [17]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[17]),
        .I5(shift_registerr[16]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[18]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [18]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[18]),
        .I5(shift_registerr[17]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[19]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [19]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[19]),
        .I5(shift_registerr[18]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[1]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [1]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[1]),
        .I5(shift_registerr[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[20]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [20]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[20]),
        .I5(shift_registerr[19]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[21]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [21]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[21]),
        .I5(shift_registerr[20]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[22]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [22]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[22]),
        .I5(shift_registerr[21]),
        .O(p_1_in[22]));
  LUT3 #(
    .INIT(8'h36)) 
    \shift_registerr[23]_i_1 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(curr_state[2]),
        .O(\shift_registerr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[23]_i_2 
       (.I0(\shift_registerr_reg[23]_0 [23]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[23]),
        .I5(shift_registerr[22]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[2]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [2]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[2]),
        .I5(shift_registerr[1]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[3]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [3]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[3]),
        .I5(shift_registerr[2]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[4]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [4]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[4]),
        .I5(shift_registerr[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[5]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [5]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[5]),
        .I5(shift_registerr[4]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[6]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [6]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[6]),
        .I5(shift_registerr[5]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[7]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [7]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[7]),
        .I5(shift_registerr[6]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[8]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [8]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[8]),
        .I5(shift_registerr[7]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFBFFCB00380008)) 
    \shift_registerr[9]_i_1 
       (.I0(\shift_registerr_reg[23]_0 [9]),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .I4(Q[9]),
        .I5(shift_registerr[8]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[0] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(shift_registerr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[10] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(shift_registerr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[11] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(shift_registerr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[12] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(shift_registerr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[13] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(shift_registerr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[14] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(shift_registerr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[15] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(shift_registerr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[16] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(shift_registerr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[17] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(shift_registerr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[18] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(shift_registerr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[19] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(shift_registerr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[1] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(shift_registerr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[20] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(shift_registerr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[21] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(shift_registerr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[22] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(shift_registerr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[23] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(ac_dac_data_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[2] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(shift_registerr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[3] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(shift_registerr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[4] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(shift_registerr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[5] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(shift_registerr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[6] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(shift_registerr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[7] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(shift_registerr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[8] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(shift_registerr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_registerr_reg[9] 
       (.C(CLK),
        .CE(\shift_registerr[23]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(shift_registerr[9]),
        .R(1'b0));
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
