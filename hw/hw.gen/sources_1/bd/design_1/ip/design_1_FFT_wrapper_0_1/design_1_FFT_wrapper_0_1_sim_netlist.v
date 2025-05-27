// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:58:12 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode funcsim
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_FFT_wrapper_0_1/design_1_FFT_wrapper_0_1_sim_netlist.v
// Design      : design_1_FFT_wrapper_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FFT_wrapper_0_1,FFT_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "FFT_wrapper,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_FFT_wrapper_0_1
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    tvalid_o,
    fft_data_o,
    fft_done_o,
    bin_addr_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) input s00_axis_tvalid;
  output tvalid_o;
  output fft_data_o;
  output fft_done_o;
  output [11:0]bin_addr_o;

  wire [11:0]bin_addr_o;
  wire fft_data_o;
  wire fft_done_o;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire tvalid_o;

  (* INPUT_DATA_WIDTH = "32" *) 
  (* OUTPUT_DATA_WIDTH = "8" *) 
  design_1_FFT_wrapper_0_1_FFT_wrapper U0
       (.bin_addr_o(bin_addr_o),
        .fft_data_o(fft_data_o),
        .fft_done_o(fft_done_o),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(1'b0),
        .s00_axis_tdata({1'b0,s00_axis_tdata[30:7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tvalid(s00_axis_tvalid),
        .tvalid_o(tvalid_o));
endmodule

(* INPUT_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "FFT_wrapper" *) (* OUTPUT_DATA_WIDTH = "8" *) 
module design_1_FFT_wrapper_0_1_FFT_wrapper
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    tvalid_o,
    fft_data_o,
    fft_done_o,
    bin_addr_o);
  input s00_axis_aclk;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output tvalid_o;
  output fft_data_o;
  output fft_done_o;
  output [11:0]bin_addr_o;

  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_cs[2]_i_4_n_0 ;
  wire \FSM_onehot_cs_reg_n_0_[1] ;
  wire [11:0]bin_addr_o;
  wire cnt_rst;
  wire fft_data_o;
  wire fft_data_o_i_102_n_0;
  wire fft_data_o_i_103_n_0;
  wire fft_data_o_i_104_n_0;
  wire fft_data_o_i_105_n_0;
  wire fft_data_o_i_106_n_0;
  wire fft_data_o_i_10_n_0;
  wire fft_data_o_i_12_n_0;
  wire fft_data_o_i_14_n_0;
  wire fft_data_o_i_15_n_0;
  wire fft_data_o_i_16_n_0;
  wire fft_data_o_i_17_n_0;
  wire fft_data_o_i_19_n_0;
  wire fft_data_o_i_20_n_0;
  wire fft_data_o_i_21_n_0;
  wire fft_data_o_i_22_n_0;
  wire fft_data_o_i_23_n_0;
  wire fft_data_o_i_24_n_0;
  wire fft_data_o_i_25_n_0;
  wire fft_data_o_i_26_n_0;
  wire fft_data_o_i_32_n_0;
  wire fft_data_o_i_33_n_0;
  wire fft_data_o_i_34_n_0;
  wire fft_data_o_i_35_n_0;
  wire fft_data_o_i_36_n_0;
  wire fft_data_o_i_37_n_0;
  wire fft_data_o_i_38_n_0;
  wire fft_data_o_i_42_n_0;
  wire fft_data_o_i_43_n_0;
  wire fft_data_o_i_44_n_0;
  wire fft_data_o_i_45_n_0;
  wire fft_data_o_i_46_n_0;
  wire fft_data_o_i_47_n_0;
  wire fft_data_o_i_48_n_0;
  wire fft_data_o_i_49_n_0;
  wire fft_data_o_i_52_n_0;
  wire fft_data_o_i_53_n_0;
  wire fft_data_o_i_54_n_0;
  wire fft_data_o_i_55_n_0;
  wire fft_data_o_i_56_n_0;
  wire fft_data_o_i_57_n_0;
  wire fft_data_o_i_58_n_0;
  wire fft_data_o_i_59_n_0;
  wire fft_data_o_i_5_n_0;
  wire fft_data_o_i_60_n_0;
  wire fft_data_o_i_61_n_0;
  wire fft_data_o_i_62_n_0;
  wire fft_data_o_i_64_n_0;
  wire fft_data_o_i_65_n_0;
  wire fft_data_o_i_66_n_0;
  wire fft_data_o_i_67_n_0;
  wire fft_data_o_i_68_n_0;
  wire fft_data_o_i_69_n_0;
  wire fft_data_o_i_6_n_0;
  wire fft_data_o_i_70_n_0;
  wire fft_data_o_i_7_n_0;
  wire fft_data_o_i_85_n_0;
  wire fft_data_o_i_86_n_0;
  wire fft_data_o_i_87_n_0;
  wire fft_data_o_i_88_n_0;
  wire fft_data_o_i_89_n_0;
  wire fft_data_o_i_8_n_0;
  wire fft_data_o_i_90_n_0;
  wire fft_data_o_i_91_n_0;
  wire fft_data_o_i_92_n_0;
  wire fft_data_o_i_9_n_0;
  wire fft_data_o_reg_i_11_n_0;
  wire fft_data_o_reg_i_11_n_1;
  wire fft_data_o_reg_i_11_n_2;
  wire fft_data_o_reg_i_11_n_3;
  wire fft_data_o_reg_i_18_n_0;
  wire fft_data_o_reg_i_18_n_1;
  wire fft_data_o_reg_i_18_n_2;
  wire fft_data_o_reg_i_18_n_3;
  wire fft_data_o_reg_i_27_n_2;
  wire fft_data_o_reg_i_27_n_3;
  wire fft_data_o_reg_i_27_n_5;
  wire fft_data_o_reg_i_27_n_6;
  wire fft_data_o_reg_i_27_n_7;
  wire fft_data_o_reg_i_28_n_0;
  wire fft_data_o_reg_i_28_n_1;
  wire fft_data_o_reg_i_28_n_2;
  wire fft_data_o_reg_i_28_n_3;
  wire fft_data_o_reg_i_28_n_4;
  wire fft_data_o_reg_i_28_n_5;
  wire fft_data_o_reg_i_28_n_6;
  wire fft_data_o_reg_i_28_n_7;
  wire fft_data_o_reg_i_29_n_0;
  wire fft_data_o_reg_i_29_n_1;
  wire fft_data_o_reg_i_29_n_2;
  wire fft_data_o_reg_i_29_n_3;
  wire fft_data_o_reg_i_29_n_4;
  wire fft_data_o_reg_i_29_n_5;
  wire fft_data_o_reg_i_29_n_6;
  wire fft_data_o_reg_i_29_n_7;
  wire fft_data_o_reg_i_2_n_0;
  wire fft_data_o_reg_i_2_n_1;
  wire fft_data_o_reg_i_2_n_2;
  wire fft_data_o_reg_i_2_n_3;
  wire fft_data_o_reg_i_30_n_0;
  wire fft_data_o_reg_i_30_n_1;
  wire fft_data_o_reg_i_30_n_2;
  wire fft_data_o_reg_i_30_n_3;
  wire fft_data_o_reg_i_39_n_2;
  wire fft_data_o_reg_i_39_n_3;
  wire fft_data_o_reg_i_3_n_0;
  wire fft_data_o_reg_i_3_n_1;
  wire fft_data_o_reg_i_3_n_2;
  wire fft_data_o_reg_i_3_n_3;
  wire fft_data_o_reg_i_40_n_0;
  wire fft_data_o_reg_i_40_n_1;
  wire fft_data_o_reg_i_40_n_2;
  wire fft_data_o_reg_i_40_n_3;
  wire fft_data_o_reg_i_41_n_0;
  wire fft_data_o_reg_i_41_n_1;
  wire fft_data_o_reg_i_41_n_2;
  wire fft_data_o_reg_i_41_n_3;
  wire fft_data_o_reg_i_4_n_0;
  wire fft_data_o_reg_i_4_n_1;
  wire fft_data_o_reg_i_4_n_2;
  wire fft_data_o_reg_i_4_n_3;
  wire fft_data_o_reg_i_50_n_0;
  wire fft_data_o_reg_i_50_n_1;
  wire fft_data_o_reg_i_50_n_2;
  wire fft_data_o_reg_i_50_n_3;
  wire fft_data_o_reg_i_50_n_4;
  wire fft_data_o_reg_i_50_n_5;
  wire fft_data_o_reg_i_50_n_6;
  wire fft_data_o_reg_i_50_n_7;
  wire fft_data_o_reg_i_51_n_0;
  wire fft_data_o_reg_i_51_n_1;
  wire fft_data_o_reg_i_51_n_2;
  wire fft_data_o_reg_i_51_n_3;
  wire fft_data_o_reg_i_51_n_4;
  wire fft_data_o_reg_i_51_n_5;
  wire fft_data_o_reg_i_51_n_6;
  wire fft_data_o_reg_i_51_n_7;
  wire fft_data_o_reg_i_71_n_0;
  wire fft_data_o_reg_i_71_n_1;
  wire fft_data_o_reg_i_71_n_2;
  wire fft_data_o_reg_i_71_n_3;
  wire fft_data_o_reg_i_72_n_0;
  wire fft_data_o_reg_i_72_n_1;
  wire fft_data_o_reg_i_72_n_2;
  wire fft_data_o_reg_i_72_n_3;
  wire fft_data_o_reg_i_84_n_0;
  wire fft_data_o_reg_i_84_n_1;
  wire fft_data_o_reg_i_84_n_2;
  wire fft_data_o_reg_i_84_n_3;
  wire fft_data_o_reg_i_84_n_4;
  wire fft_data_o_reg_i_84_n_5;
  wire fft_data_o_reg_i_84_n_6;
  wire fft_data_o_reg_i_84_n_7;
  wire fft_data_o_reg_i_93_n_0;
  wire fft_data_o_reg_i_93_n_1;
  wire fft_data_o_reg_i_93_n_2;
  wire fft_data_o_reg_i_93_n_3;
  wire fft_data_o_sig;
  wire [21:7]fft_data_o_sig2;
  wire [23:1]fft_data_o_sig3;
  wire fft_done_o;
  wire [47:0]m_axis_data_tdata;
  wire [12:0]m_axis_data_tuser;
  wire m_axis_data_tvalid;
  wire \output_counter[0]_i_2_n_0 ;
  wire [13:0]output_counter_reg;
  wire \output_counter_reg[0]_i_1_n_0 ;
  wire \output_counter_reg[0]_i_1_n_1 ;
  wire \output_counter_reg[0]_i_1_n_2 ;
  wire \output_counter_reg[0]_i_1_n_3 ;
  wire \output_counter_reg[0]_i_1_n_4 ;
  wire \output_counter_reg[0]_i_1_n_5 ;
  wire \output_counter_reg[0]_i_1_n_6 ;
  wire \output_counter_reg[0]_i_1_n_7 ;
  wire \output_counter_reg[12]_i_1_n_3 ;
  wire \output_counter_reg[12]_i_1_n_6 ;
  wire \output_counter_reg[12]_i_1_n_7 ;
  wire \output_counter_reg[4]_i_1_n_0 ;
  wire \output_counter_reg[4]_i_1_n_1 ;
  wire \output_counter_reg[4]_i_1_n_2 ;
  wire \output_counter_reg[4]_i_1_n_3 ;
  wire \output_counter_reg[4]_i_1_n_4 ;
  wire \output_counter_reg[4]_i_1_n_5 ;
  wire \output_counter_reg[4]_i_1_n_6 ;
  wire \output_counter_reg[4]_i_1_n_7 ;
  wire \output_counter_reg[8]_i_1_n_0 ;
  wire \output_counter_reg[8]_i_1_n_1 ;
  wire \output_counter_reg[8]_i_1_n_2 ;
  wire \output_counter_reg[8]_i_1_n_3 ;
  wire \output_counter_reg[8]_i_1_n_4 ;
  wire \output_counter_reg[8]_i_1_n_5 ;
  wire \output_counter_reg[8]_i_1_n_6 ;
  wire \output_counter_reg[8]_i_1_n_7 ;
  wire [23:0]p_0_in;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire tvalid_o;
  wire tvalid_sig_i_1_n_0;
  wire [3:0]NLW_fft_data_o_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_fft_data_o_reg_i_18_O_UNCONNECTED;
  wire [3:0]NLW_fft_data_o_reg_i_2_O_UNCONNECTED;
  wire [3:2]NLW_fft_data_o_reg_i_27_CO_UNCONNECTED;
  wire [3:3]NLW_fft_data_o_reg_i_27_O_UNCONNECTED;
  wire [3:0]NLW_fft_data_o_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_fft_data_o_reg_i_30_O_UNCONNECTED;
  wire [3:2]NLW_fft_data_o_reg_i_39_CO_UNCONNECTED;
  wire [3:3]NLW_fft_data_o_reg_i_39_O_UNCONNECTED;
  wire [3:0]NLW_fft_data_o_reg_i_4_O_UNCONNECTED;
  wire [3:1]\NLW_output_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_output_counter_reg[12]_i_1_O_UNCONNECTED ;
  wire NLW_uut_event_data_in_channel_halt_UNCONNECTED;
  wire NLW_uut_event_data_out_channel_halt_UNCONNECTED;
  wire NLW_uut_event_frame_started_UNCONNECTED;
  wire NLW_uut_event_status_channel_halt_UNCONNECTED;
  wire NLW_uut_event_tlast_missing_UNCONNECTED;
  wire NLW_uut_event_tlast_unexpected_UNCONNECTED;
  wire NLW_uut_m_axis_data_tlast_UNCONNECTED;
  wire NLW_uut_s_axis_config_tready_UNCONNECTED;
  wire [15:13]NLW_uut_m_axis_data_tuser_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFF800000)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs[2]_i_2_n_0 ),
        .I1(\FSM_onehot_cs[2]_i_3_n_0 ),
        .I2(\FSM_onehot_cs[2]_i_4_n_0 ),
        .I3(cnt_rst),
        .I4(fft_done_o),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs[2]_i_2_n_0 ),
        .I1(\FSM_onehot_cs[2]_i_3_n_0 ),
        .I2(\FSM_onehot_cs[2]_i_4_n_0 ),
        .I3(cnt_rst),
        .I4(\FSM_onehot_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF007FFF800000)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(\FSM_onehot_cs[2]_i_2_n_0 ),
        .I1(\FSM_onehot_cs[2]_i_3_n_0 ),
        .I2(\FSM_onehot_cs[2]_i_4_n_0 ),
        .I3(cnt_rst),
        .I4(\FSM_onehot_cs_reg_n_0_[1] ),
        .I5(fft_done_o),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_cs[2]_i_2 
       (.I0(output_counter_reg[8]),
        .I1(output_counter_reg[9]),
        .I2(output_counter_reg[6]),
        .I3(output_counter_reg[7]),
        .I4(output_counter_reg[11]),
        .I5(output_counter_reg[10]),
        .O(\FSM_onehot_cs[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_cs[2]_i_3 
       (.I0(output_counter_reg[0]),
        .I1(output_counter_reg[1]),
        .I2(output_counter_reg[3]),
        .I3(output_counter_reg[5]),
        .I4(output_counter_reg[4]),
        .O(\FSM_onehot_cs[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0C0000A0)) 
    \FSM_onehot_cs[2]_i_4 
       (.I0(fft_done_o),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(output_counter_reg[13]),
        .I3(output_counter_reg[2]),
        .I4(output_counter_reg[12]),
        .O(\FSM_onehot_cs[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "init:001,count_outputs:010,waiting:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(cnt_rst),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "init:001,count_outputs:010,waiting:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "init:001,count_outputs:010,waiting:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(fft_done_o),
        .R(1'b0));
  FDRE \bin_addr_o_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[0]),
        .Q(bin_addr_o[0]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[10]),
        .Q(bin_addr_o[10]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[11] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[11]),
        .Q(bin_addr_o[11]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[1]),
        .Q(bin_addr_o[1]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[2]),
        .Q(bin_addr_o[2]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[3]),
        .Q(bin_addr_o[3]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[4]),
        .Q(bin_addr_o[4]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[5]),
        .Q(bin_addr_o[5]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[6]),
        .Q(bin_addr_o[6]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[7]),
        .Q(bin_addr_o[7]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[8]),
        .Q(bin_addr_o[8]),
        .R(1'b0));
  FDRE \bin_addr_o_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(m_axis_data_tuser[9]),
        .Q(bin_addr_o[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    fft_data_o_i_1
       (.I0(fft_data_o_reg_i_2_n_0),
        .I1(fft_data_o_reg_i_3_n_0),
        .O(fft_data_o_sig));
  LUT5 #(
    .INIT(32'hAC0CA000)) 
    fft_data_o_i_10
       (.I0(fft_data_o_reg_i_29_n_4),
        .I1(m_axis_data_tdata[40]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_28_n_7),
        .I4(m_axis_data_tdata[41]),
        .O(fft_data_o_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_100
       (.I0(m_axis_data_tdata[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_101
       (.I0(m_axis_data_tdata[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_102
       (.I0(m_axis_data_tdata[24]),
        .O(fft_data_o_i_102_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_103
       (.I0(m_axis_data_tdata[28]),
        .O(fft_data_o_i_103_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_104
       (.I0(m_axis_data_tdata[27]),
        .O(fft_data_o_i_104_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_105
       (.I0(m_axis_data_tdata[26]),
        .O(fft_data_o_i_105_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_106
       (.I0(m_axis_data_tdata[25]),
        .O(fft_data_o_i_106_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_107
       (.I0(m_axis_data_tdata[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_108
       (.I0(m_axis_data_tdata[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_109
       (.I0(m_axis_data_tdata[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_110
       (.I0(m_axis_data_tdata[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_111
       (.I0(m_axis_data_tdata[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h0ACC)) 
    fft_data_o_i_12
       (.I0(fft_data_o_sig3[22]),
        .I1(m_axis_data_tdata[22]),
        .I2(fft_data_o_sig3[23]),
        .I3(m_axis_data_tdata[23]),
        .O(fft_data_o_i_12_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    fft_data_o_i_13
       (.I0(m_axis_data_tdata[21]),
        .I1(fft_data_o_sig3[21]),
        .I2(m_axis_data_tdata[23]),
        .O(fft_data_o_sig2[21]));
  LUT4 #(
    .INIT(16'h0437)) 
    fft_data_o_i_14
       (.I0(fft_data_o_sig3[23]),
        .I1(m_axis_data_tdata[23]),
        .I2(fft_data_o_sig3[22]),
        .I3(m_axis_data_tdata[22]),
        .O(fft_data_o_i_14_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_15
       (.I0(fft_data_o_sig3[20]),
        .I1(m_axis_data_tdata[20]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[21]),
        .I4(m_axis_data_tdata[21]),
        .O(fft_data_o_i_15_n_0));
  LUT5 #(
    .INIT(32'hAC0CA000)) 
    fft_data_o_i_16
       (.I0(fft_data_o_sig3[18]),
        .I1(m_axis_data_tdata[18]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[19]),
        .I4(m_axis_data_tdata[19]),
        .O(fft_data_o_i_16_n_0));
  LUT5 #(
    .INIT(32'hAC0CA000)) 
    fft_data_o_i_17
       (.I0(fft_data_o_sig3[16]),
        .I1(m_axis_data_tdata[16]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[17]),
        .I4(m_axis_data_tdata[17]),
        .O(fft_data_o_i_17_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    fft_data_o_i_19
       (.I0(m_axis_data_tdata[39]),
        .I1(fft_data_o_reg_i_29_n_5),
        .I2(m_axis_data_tdata[47]),
        .O(fft_data_o_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_20
       (.I0(m_axis_data_tdata[36]),
        .I1(fft_data_o_reg_i_50_n_4),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_29_n_7),
        .I4(m_axis_data_tdata[37]),
        .O(fft_data_o_i_20_n_0));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_21
       (.I0(m_axis_data_tdata[34]),
        .I1(fft_data_o_reg_i_50_n_6),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_50_n_5),
        .I4(m_axis_data_tdata[35]),
        .O(fft_data_o_i_21_n_0));
  LUT5 #(
    .INIT(32'hAC0CA000)) 
    fft_data_o_i_22
       (.I0(fft_data_o_reg_i_51_n_4),
        .I1(m_axis_data_tdata[32]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_50_n_7),
        .I4(m_axis_data_tdata[33]),
        .O(fft_data_o_i_22_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_23
       (.I0(fft_data_o_reg_i_29_n_6),
        .I1(m_axis_data_tdata[38]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_29_n_5),
        .I4(m_axis_data_tdata[39]),
        .O(fft_data_o_i_23_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_24
       (.I0(fft_data_o_reg_i_50_n_4),
        .I1(m_axis_data_tdata[36]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_29_n_7),
        .I4(m_axis_data_tdata[37]),
        .O(fft_data_o_i_24_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_25
       (.I0(fft_data_o_reg_i_50_n_6),
        .I1(m_axis_data_tdata[34]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_50_n_5),
        .I4(m_axis_data_tdata[35]),
        .O(fft_data_o_i_25_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_26
       (.I0(fft_data_o_reg_i_50_n_7),
        .I1(m_axis_data_tdata[33]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_51_n_4),
        .I4(m_axis_data_tdata[32]),
        .O(fft_data_o_i_26_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    fft_data_o_i_31
       (.I0(m_axis_data_tdata[15]),
        .I1(fft_data_o_sig3[15]),
        .I2(m_axis_data_tdata[23]),
        .O(fft_data_o_sig2[15]));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_32
       (.I0(m_axis_data_tdata[12]),
        .I1(fft_data_o_sig3[12]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[13]),
        .I4(m_axis_data_tdata[13]),
        .O(fft_data_o_i_32_n_0));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_33
       (.I0(m_axis_data_tdata[10]),
        .I1(fft_data_o_sig3[10]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[11]),
        .I4(m_axis_data_tdata[11]),
        .O(fft_data_o_i_33_n_0));
  LUT5 #(
    .INIT(32'hAC0CA000)) 
    fft_data_o_i_34
       (.I0(fft_data_o_sig3[8]),
        .I1(m_axis_data_tdata[8]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[9]),
        .I4(m_axis_data_tdata[9]),
        .O(fft_data_o_i_34_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_35
       (.I0(fft_data_o_sig3[14]),
        .I1(m_axis_data_tdata[14]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[15]),
        .I4(m_axis_data_tdata[15]),
        .O(fft_data_o_i_35_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_36
       (.I0(fft_data_o_sig3[12]),
        .I1(m_axis_data_tdata[12]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[13]),
        .I4(m_axis_data_tdata[13]),
        .O(fft_data_o_i_36_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_37
       (.I0(fft_data_o_sig3[10]),
        .I1(m_axis_data_tdata[10]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[11]),
        .I4(m_axis_data_tdata[11]),
        .O(fft_data_o_i_37_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_38
       (.I0(fft_data_o_sig3[9]),
        .I1(m_axis_data_tdata[9]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[8]),
        .I4(m_axis_data_tdata[8]),
        .O(fft_data_o_i_38_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    fft_data_o_i_42
       (.I0(m_axis_data_tdata[31]),
        .I1(fft_data_o_reg_i_51_n_5),
        .I2(m_axis_data_tdata[47]),
        .O(fft_data_o_i_42_n_0));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_43
       (.I0(m_axis_data_tdata[28]),
        .I1(fft_data_o_reg_i_84_n_4),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_51_n_7),
        .I4(m_axis_data_tdata[29]),
        .O(fft_data_o_i_43_n_0));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_44
       (.I0(m_axis_data_tdata[26]),
        .I1(fft_data_o_reg_i_84_n_6),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_84_n_5),
        .I4(m_axis_data_tdata[27]),
        .O(fft_data_o_i_44_n_0));
  LUT4 #(
    .INIT(16'hFBEA)) 
    fft_data_o_i_45
       (.I0(m_axis_data_tdata[24]),
        .I1(m_axis_data_tdata[47]),
        .I2(fft_data_o_reg_i_84_n_7),
        .I3(m_axis_data_tdata[25]),
        .O(fft_data_o_i_45_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_46
       (.I0(fft_data_o_reg_i_51_n_6),
        .I1(m_axis_data_tdata[30]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_51_n_5),
        .I4(m_axis_data_tdata[31]),
        .O(fft_data_o_i_46_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_47
       (.I0(fft_data_o_reg_i_84_n_4),
        .I1(m_axis_data_tdata[28]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_51_n_7),
        .I4(m_axis_data_tdata[29]),
        .O(fft_data_o_i_47_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_48
       (.I0(fft_data_o_reg_i_84_n_6),
        .I1(m_axis_data_tdata[26]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_84_n_5),
        .I4(m_axis_data_tdata[27]),
        .O(fft_data_o_i_48_n_0));
  LUT4 #(
    .INIT(16'h0415)) 
    fft_data_o_i_49
       (.I0(m_axis_data_tdata[24]),
        .I1(m_axis_data_tdata[47]),
        .I2(fft_data_o_reg_i_84_n_7),
        .I3(m_axis_data_tdata[25]),
        .O(fft_data_o_i_49_n_0));
  LUT4 #(
    .INIT(16'h0ACC)) 
    fft_data_o_i_5
       (.I0(fft_data_o_reg_i_27_n_6),
        .I1(m_axis_data_tdata[46]),
        .I2(fft_data_o_reg_i_27_n_5),
        .I3(m_axis_data_tdata[47]),
        .O(fft_data_o_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_52
       (.I0(m_axis_data_tdata[47]),
        .O(fft_data_o_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_53
       (.I0(m_axis_data_tdata[46]),
        .O(fft_data_o_i_53_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_54
       (.I0(m_axis_data_tdata[45]),
        .O(fft_data_o_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_55
       (.I0(m_axis_data_tdata[44]),
        .O(fft_data_o_i_55_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_56
       (.I0(m_axis_data_tdata[43]),
        .O(fft_data_o_i_56_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_57
       (.I0(m_axis_data_tdata[42]),
        .O(fft_data_o_i_57_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_58
       (.I0(m_axis_data_tdata[41]),
        .O(fft_data_o_i_58_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_59
       (.I0(m_axis_data_tdata[40]),
        .O(fft_data_o_i_59_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    fft_data_o_i_6
       (.I0(m_axis_data_tdata[45]),
        .I1(fft_data_o_reg_i_27_n_7),
        .I2(m_axis_data_tdata[47]),
        .O(fft_data_o_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_60
       (.I0(m_axis_data_tdata[39]),
        .O(fft_data_o_i_60_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_61
       (.I0(m_axis_data_tdata[38]),
        .O(fft_data_o_i_61_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_62
       (.I0(m_axis_data_tdata[37]),
        .O(fft_data_o_i_62_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    fft_data_o_i_63
       (.I0(m_axis_data_tdata[7]),
        .I1(fft_data_o_sig3[7]),
        .I2(m_axis_data_tdata[23]),
        .O(fft_data_o_sig2[7]));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_64
       (.I0(m_axis_data_tdata[4]),
        .I1(fft_data_o_sig3[4]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[5]),
        .I4(m_axis_data_tdata[5]),
        .O(fft_data_o_i_64_n_0));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    fft_data_o_i_65
       (.I0(m_axis_data_tdata[2]),
        .I1(fft_data_o_sig3[2]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[3]),
        .I4(m_axis_data_tdata[3]),
        .O(fft_data_o_i_65_n_0));
  LUT4 #(
    .INIT(16'hFBEA)) 
    fft_data_o_i_66
       (.I0(m_axis_data_tdata[0]),
        .I1(m_axis_data_tdata[23]),
        .I2(fft_data_o_sig3[1]),
        .I3(m_axis_data_tdata[1]),
        .O(fft_data_o_i_66_n_0));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_67
       (.I0(fft_data_o_sig3[6]),
        .I1(m_axis_data_tdata[6]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[7]),
        .I4(m_axis_data_tdata[7]),
        .O(fft_data_o_i_67_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_68
       (.I0(fft_data_o_sig3[4]),
        .I1(m_axis_data_tdata[4]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[5]),
        .I4(m_axis_data_tdata[5]),
        .O(fft_data_o_i_68_n_0));
  LUT5 #(
    .INIT(32'h00500353)) 
    fft_data_o_i_69
       (.I0(fft_data_o_sig3[2]),
        .I1(m_axis_data_tdata[2]),
        .I2(m_axis_data_tdata[23]),
        .I3(fft_data_o_sig3[3]),
        .I4(m_axis_data_tdata[3]),
        .O(fft_data_o_i_69_n_0));
  LUT4 #(
    .INIT(16'h0437)) 
    fft_data_o_i_7
       (.I0(fft_data_o_reg_i_27_n_5),
        .I1(m_axis_data_tdata[47]),
        .I2(fft_data_o_reg_i_27_n_6),
        .I3(m_axis_data_tdata[46]),
        .O(fft_data_o_i_7_n_0));
  LUT4 #(
    .INIT(16'h0415)) 
    fft_data_o_i_70
       (.I0(m_axis_data_tdata[0]),
        .I1(m_axis_data_tdata[23]),
        .I2(fft_data_o_sig3[1]),
        .I3(m_axis_data_tdata[1]),
        .O(fft_data_o_i_70_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_73
       (.I0(m_axis_data_tdata[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_74
       (.I0(m_axis_data_tdata[22]),
        .O(p_0_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_75
       (.I0(m_axis_data_tdata[21]),
        .O(p_0_in[21]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_76
       (.I0(m_axis_data_tdata[20]),
        .O(p_0_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_77
       (.I0(m_axis_data_tdata[19]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_78
       (.I0(m_axis_data_tdata[18]),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_79
       (.I0(m_axis_data_tdata[17]),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    fft_data_o_i_8
       (.I0(fft_data_o_reg_i_28_n_4),
        .I1(m_axis_data_tdata[44]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_27_n_7),
        .I4(m_axis_data_tdata[45]),
        .O(fft_data_o_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_80
       (.I0(m_axis_data_tdata[16]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_81
       (.I0(m_axis_data_tdata[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_82
       (.I0(m_axis_data_tdata[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_83
       (.I0(m_axis_data_tdata[13]),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_85
       (.I0(m_axis_data_tdata[36]),
        .O(fft_data_o_i_85_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_86
       (.I0(m_axis_data_tdata[35]),
        .O(fft_data_o_i_86_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_87
       (.I0(m_axis_data_tdata[34]),
        .O(fft_data_o_i_87_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_88
       (.I0(m_axis_data_tdata[33]),
        .O(fft_data_o_i_88_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_89
       (.I0(m_axis_data_tdata[32]),
        .O(fft_data_o_i_89_n_0));
  LUT5 #(
    .INIT(32'hAC0CA000)) 
    fft_data_o_i_9
       (.I0(fft_data_o_reg_i_28_n_6),
        .I1(m_axis_data_tdata[42]),
        .I2(m_axis_data_tdata[47]),
        .I3(fft_data_o_reg_i_28_n_5),
        .I4(m_axis_data_tdata[43]),
        .O(fft_data_o_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_90
       (.I0(m_axis_data_tdata[31]),
        .O(fft_data_o_i_90_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_91
       (.I0(m_axis_data_tdata[30]),
        .O(fft_data_o_i_91_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_92
       (.I0(m_axis_data_tdata[29]),
        .O(fft_data_o_i_92_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_94
       (.I0(m_axis_data_tdata[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_95
       (.I0(m_axis_data_tdata[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_96
       (.I0(m_axis_data_tdata[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_97
       (.I0(m_axis_data_tdata[9]),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_98
       (.I0(m_axis_data_tdata[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    fft_data_o_i_99
       (.I0(m_axis_data_tdata[7]),
        .O(p_0_in[7]));
  FDRE fft_data_o_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(fft_data_o_sig),
        .Q(fft_data_o),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fft_data_o_reg_i_11
       (.CI(fft_data_o_reg_i_30_n_0),
        .CO({fft_data_o_reg_i_11_n_0,fft_data_o_reg_i_11_n_1,fft_data_o_reg_i_11_n_2,fft_data_o_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({fft_data_o_sig2[15],fft_data_o_i_32_n_0,fft_data_o_i_33_n_0,fft_data_o_i_34_n_0}),
        .O(NLW_fft_data_o_reg_i_11_O_UNCONNECTED[3:0]),
        .S({fft_data_o_i_35_n_0,fft_data_o_i_36_n_0,fft_data_o_i_37_n_0,fft_data_o_i_38_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fft_data_o_reg_i_18
       (.CI(1'b0),
        .CO({fft_data_o_reg_i_18_n_0,fft_data_o_reg_i_18_n_1,fft_data_o_reg_i_18_n_2,fft_data_o_reg_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({fft_data_o_i_42_n_0,fft_data_o_i_43_n_0,fft_data_o_i_44_n_0,fft_data_o_i_45_n_0}),
        .O(NLW_fft_data_o_reg_i_18_O_UNCONNECTED[3:0]),
        .S({fft_data_o_i_46_n_0,fft_data_o_i_47_n_0,fft_data_o_i_48_n_0,fft_data_o_i_49_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fft_data_o_reg_i_2
       (.CI(fft_data_o_reg_i_4_n_0),
        .CO({fft_data_o_reg_i_2_n_0,fft_data_o_reg_i_2_n_1,fft_data_o_reg_i_2_n_2,fft_data_o_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({fft_data_o_i_5_n_0,fft_data_o_i_6_n_0,1'b0,1'b0}),
        .O(NLW_fft_data_o_reg_i_2_O_UNCONNECTED[3:0]),
        .S({fft_data_o_i_7_n_0,fft_data_o_i_8_n_0,fft_data_o_i_9_n_0,fft_data_o_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_27
       (.CI(fft_data_o_reg_i_28_n_0),
        .CO({NLW_fft_data_o_reg_i_27_CO_UNCONNECTED[3:2],fft_data_o_reg_i_27_n_2,fft_data_o_reg_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fft_data_o_reg_i_27_O_UNCONNECTED[3],fft_data_o_reg_i_27_n_5,fft_data_o_reg_i_27_n_6,fft_data_o_reg_i_27_n_7}),
        .S({1'b0,fft_data_o_i_52_n_0,fft_data_o_i_53_n_0,fft_data_o_i_54_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_28
       (.CI(fft_data_o_reg_i_29_n_0),
        .CO({fft_data_o_reg_i_28_n_0,fft_data_o_reg_i_28_n_1,fft_data_o_reg_i_28_n_2,fft_data_o_reg_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fft_data_o_reg_i_28_n_4,fft_data_o_reg_i_28_n_5,fft_data_o_reg_i_28_n_6,fft_data_o_reg_i_28_n_7}),
        .S({fft_data_o_i_55_n_0,fft_data_o_i_56_n_0,fft_data_o_i_57_n_0,fft_data_o_i_58_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_29
       (.CI(fft_data_o_reg_i_50_n_0),
        .CO({fft_data_o_reg_i_29_n_0,fft_data_o_reg_i_29_n_1,fft_data_o_reg_i_29_n_2,fft_data_o_reg_i_29_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fft_data_o_reg_i_29_n_4,fft_data_o_reg_i_29_n_5,fft_data_o_reg_i_29_n_6,fft_data_o_reg_i_29_n_7}),
        .S({fft_data_o_i_59_n_0,fft_data_o_i_60_n_0,fft_data_o_i_61_n_0,fft_data_o_i_62_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fft_data_o_reg_i_3
       (.CI(fft_data_o_reg_i_11_n_0),
        .CO({fft_data_o_reg_i_3_n_0,fft_data_o_reg_i_3_n_1,fft_data_o_reg_i_3_n_2,fft_data_o_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({fft_data_o_i_12_n_0,fft_data_o_sig2[21],1'b0,1'b0}),
        .O(NLW_fft_data_o_reg_i_3_O_UNCONNECTED[3:0]),
        .S({fft_data_o_i_14_n_0,fft_data_o_i_15_n_0,fft_data_o_i_16_n_0,fft_data_o_i_17_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fft_data_o_reg_i_30
       (.CI(1'b0),
        .CO({fft_data_o_reg_i_30_n_0,fft_data_o_reg_i_30_n_1,fft_data_o_reg_i_30_n_2,fft_data_o_reg_i_30_n_3}),
        .CYINIT(1'b0),
        .DI({fft_data_o_sig2[7],fft_data_o_i_64_n_0,fft_data_o_i_65_n_0,fft_data_o_i_66_n_0}),
        .O(NLW_fft_data_o_reg_i_30_O_UNCONNECTED[3:0]),
        .S({fft_data_o_i_67_n_0,fft_data_o_i_68_n_0,fft_data_o_i_69_n_0,fft_data_o_i_70_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_39
       (.CI(fft_data_o_reg_i_40_n_0),
        .CO({NLW_fft_data_o_reg_i_39_CO_UNCONNECTED[3:2],fft_data_o_reg_i_39_n_2,fft_data_o_reg_i_39_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fft_data_o_reg_i_39_O_UNCONNECTED[3],fft_data_o_sig3[23:21]}),
        .S({1'b0,p_0_in[23:21]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fft_data_o_reg_i_4
       (.CI(fft_data_o_reg_i_18_n_0),
        .CO({fft_data_o_reg_i_4_n_0,fft_data_o_reg_i_4_n_1,fft_data_o_reg_i_4_n_2,fft_data_o_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({fft_data_o_i_19_n_0,fft_data_o_i_20_n_0,fft_data_o_i_21_n_0,fft_data_o_i_22_n_0}),
        .O(NLW_fft_data_o_reg_i_4_O_UNCONNECTED[3:0]),
        .S({fft_data_o_i_23_n_0,fft_data_o_i_24_n_0,fft_data_o_i_25_n_0,fft_data_o_i_26_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_40
       (.CI(fft_data_o_reg_i_41_n_0),
        .CO({fft_data_o_reg_i_40_n_0,fft_data_o_reg_i_40_n_1,fft_data_o_reg_i_40_n_2,fft_data_o_reg_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(fft_data_o_sig3[20:17]),
        .S(p_0_in[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_41
       (.CI(fft_data_o_reg_i_71_n_0),
        .CO({fft_data_o_reg_i_41_n_0,fft_data_o_reg_i_41_n_1,fft_data_o_reg_i_41_n_2,fft_data_o_reg_i_41_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(fft_data_o_sig3[16:13]),
        .S(p_0_in[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_50
       (.CI(fft_data_o_reg_i_51_n_0),
        .CO({fft_data_o_reg_i_50_n_0,fft_data_o_reg_i_50_n_1,fft_data_o_reg_i_50_n_2,fft_data_o_reg_i_50_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fft_data_o_reg_i_50_n_4,fft_data_o_reg_i_50_n_5,fft_data_o_reg_i_50_n_6,fft_data_o_reg_i_50_n_7}),
        .S({fft_data_o_i_85_n_0,fft_data_o_i_86_n_0,fft_data_o_i_87_n_0,fft_data_o_i_88_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_51
       (.CI(fft_data_o_reg_i_84_n_0),
        .CO({fft_data_o_reg_i_51_n_0,fft_data_o_reg_i_51_n_1,fft_data_o_reg_i_51_n_2,fft_data_o_reg_i_51_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fft_data_o_reg_i_51_n_4,fft_data_o_reg_i_51_n_5,fft_data_o_reg_i_51_n_6,fft_data_o_reg_i_51_n_7}),
        .S({fft_data_o_i_89_n_0,fft_data_o_i_90_n_0,fft_data_o_i_91_n_0,fft_data_o_i_92_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_71
       (.CI(fft_data_o_reg_i_72_n_0),
        .CO({fft_data_o_reg_i_71_n_0,fft_data_o_reg_i_71_n_1,fft_data_o_reg_i_71_n_2,fft_data_o_reg_i_71_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(fft_data_o_sig3[12:9]),
        .S(p_0_in[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_72
       (.CI(fft_data_o_reg_i_93_n_0),
        .CO({fft_data_o_reg_i_72_n_0,fft_data_o_reg_i_72_n_1,fft_data_o_reg_i_72_n_2,fft_data_o_reg_i_72_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(fft_data_o_sig3[8:5]),
        .S(p_0_in[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_84
       (.CI(1'b0),
        .CO({fft_data_o_reg_i_84_n_0,fft_data_o_reg_i_84_n_1,fft_data_o_reg_i_84_n_2,fft_data_o_reg_i_84_n_3}),
        .CYINIT(fft_data_o_i_102_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fft_data_o_reg_i_84_n_4,fft_data_o_reg_i_84_n_5,fft_data_o_reg_i_84_n_6,fft_data_o_reg_i_84_n_7}),
        .S({fft_data_o_i_103_n_0,fft_data_o_i_104_n_0,fft_data_o_i_105_n_0,fft_data_o_i_106_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fft_data_o_reg_i_93
       (.CI(1'b0),
        .CO({fft_data_o_reg_i_93_n_0,fft_data_o_reg_i_93_n_1,fft_data_o_reg_i_93_n_2,fft_data_o_reg_i_93_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(fft_data_o_sig3[4:1]),
        .S(p_0_in[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    \output_counter[0]_i_2 
       (.I0(output_counter_reg[0]),
        .O(\output_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[0]_i_1_n_7 ),
        .Q(output_counter_reg[0]),
        .R(cnt_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\output_counter_reg[0]_i_1_n_0 ,\output_counter_reg[0]_i_1_n_1 ,\output_counter_reg[0]_i_1_n_2 ,\output_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\output_counter_reg[0]_i_1_n_4 ,\output_counter_reg[0]_i_1_n_5 ,\output_counter_reg[0]_i_1_n_6 ,\output_counter_reg[0]_i_1_n_7 }),
        .S({output_counter_reg[3:1],\output_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[8]_i_1_n_5 ),
        .Q(output_counter_reg[10]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[8]_i_1_n_4 ),
        .Q(output_counter_reg[11]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[12]_i_1_n_7 ),
        .Q(output_counter_reg[12]),
        .R(cnt_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_counter_reg[12]_i_1 
       (.CI(\output_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_output_counter_reg[12]_i_1_CO_UNCONNECTED [3:1],\output_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_output_counter_reg[12]_i_1_O_UNCONNECTED [3:2],\output_counter_reg[12]_i_1_n_6 ,\output_counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,output_counter_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[13] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[12]_i_1_n_6 ),
        .Q(output_counter_reg[13]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[0]_i_1_n_6 ),
        .Q(output_counter_reg[1]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[0]_i_1_n_5 ),
        .Q(output_counter_reg[2]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[0]_i_1_n_4 ),
        .Q(output_counter_reg[3]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[4]_i_1_n_7 ),
        .Q(output_counter_reg[4]),
        .R(cnt_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_counter_reg[4]_i_1 
       (.CI(\output_counter_reg[0]_i_1_n_0 ),
        .CO({\output_counter_reg[4]_i_1_n_0 ,\output_counter_reg[4]_i_1_n_1 ,\output_counter_reg[4]_i_1_n_2 ,\output_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_counter_reg[4]_i_1_n_4 ,\output_counter_reg[4]_i_1_n_5 ,\output_counter_reg[4]_i_1_n_6 ,\output_counter_reg[4]_i_1_n_7 }),
        .S(output_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[4]_i_1_n_6 ),
        .Q(output_counter_reg[5]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[4]_i_1_n_5 ),
        .Q(output_counter_reg[6]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[4]_i_1_n_4 ),
        .Q(output_counter_reg[7]),
        .R(cnt_rst));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[8]_i_1_n_7 ),
        .Q(output_counter_reg[8]),
        .R(cnt_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \output_counter_reg[8]_i_1 
       (.CI(\output_counter_reg[4]_i_1_n_0 ),
        .CO({\output_counter_reg[8]_i_1_n_0 ,\output_counter_reg[8]_i_1_n_1 ,\output_counter_reg[8]_i_1_n_2 ,\output_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\output_counter_reg[8]_i_1_n_4 ,\output_counter_reg[8]_i_1_n_5 ,\output_counter_reg[8]_i_1_n_6 ,\output_counter_reg[8]_i_1_n_7 }),
        .S(output_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \output_counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(m_axis_data_tvalid),
        .D(\output_counter_reg[8]_i_1_n_6 ),
        .Q(output_counter_reg[9]),
        .R(cnt_rst));
  LUT2 #(
    .INIT(4'h2)) 
    tvalid_sig_i_1
       (.I0(m_axis_data_tvalid),
        .I1(m_axis_data_tuser[12]),
        .O(tvalid_sig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tvalid_sig_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(tvalid_sig_i_1_n_0),
        .Q(tvalid_o),
        .R(1'b0));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "xfft_v9_1_9,Vivado 2023.1" *) 
  design_1_FFT_wrapper_0_1_xfft_0 uut
       (.aclk(s00_axis_aclk),
        .event_data_in_channel_halt(NLW_uut_event_data_in_channel_halt_UNCONNECTED),
        .event_data_out_channel_halt(NLW_uut_event_data_out_channel_halt_UNCONNECTED),
        .event_frame_started(NLW_uut_event_frame_started_UNCONNECTED),
        .event_status_channel_halt(NLW_uut_event_status_channel_halt_UNCONNECTED),
        .event_tlast_missing(NLW_uut_event_tlast_missing_UNCONNECTED),
        .event_tlast_unexpected(NLW_uut_event_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_uut_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b1),
        .m_axis_data_tuser({NLW_uut_m_axis_data_tuser_UNCONNECTED[15:13],m_axis_data_tuser}),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_config_tready(NLW_uut_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b1),
        .s_axis_data_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_axis_tdata[30:7]}),
        .s_axis_data_tlast(s00_axis_tlast),
        .s_axis_data_tready(s00_axis_tready),
        .s_axis_data_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "xfft_0" *) 
module design_1_FFT_wrapper_0_1_xfft_0
   (aclk,
    s_axis_config_tdata,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tlast,
    m_axis_data_tdata,
    m_axis_data_tuser,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tlast,
    event_frame_started,
    event_tlast_unexpected,
    event_tlast_missing,
    event_status_channel_halt,
    event_data_in_channel_halt,
    event_data_out_channel_halt);
  input aclk;
  input [15:0]s_axis_config_tdata;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [47:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input s_axis_data_tlast;
  output [47:0]m_axis_data_tdata;
  output [15:0]m_axis_data_tuser;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output m_axis_data_tlast;
  output event_frame_started;
  output event_tlast_unexpected;
  output event_tlast_missing;
  output event_status_channel_halt;
  output event_data_in_channel_halt;
  output event_data_out_channel_halt;


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
