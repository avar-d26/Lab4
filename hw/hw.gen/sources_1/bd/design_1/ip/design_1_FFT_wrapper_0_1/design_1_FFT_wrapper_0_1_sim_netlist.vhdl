-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:58:12 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode funcsim
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_FFT_wrapper_0_1/design_1_FFT_wrapper_0_1_sim_netlist.vhdl
-- Design      : design_1_FFT_wrapper_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FFT_wrapper_0_1_FFT_wrapper is
  port (
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    tvalid_o : out STD_LOGIC;
    fft_data_o : out STD_LOGIC;
    fft_done_o : out STD_LOGIC;
    bin_addr_o : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute INPUT_DATA_WIDTH : integer;
  attribute INPUT_DATA_WIDTH of design_1_FFT_wrapper_0_1_FFT_wrapper : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FFT_wrapper_0_1_FFT_wrapper : entity is "FFT_wrapper";
  attribute OUTPUT_DATA_WIDTH : integer;
  attribute OUTPUT_DATA_WIDTH of design_1_FFT_wrapper_0_1_FFT_wrapper : entity is 8;
end design_1_FFT_wrapper_0_1_FFT_wrapper;

architecture STRUCTURE of design_1_FFT_wrapper_0_1_FFT_wrapper is
  component design_1_FFT_wrapper_0_1_xfft_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component design_1_FFT_wrapper_0_1_xfft_0;
  signal \FSM_onehot_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs_reg_n_0_[1]\ : STD_LOGIC;
  signal cnt_rst : STD_LOGIC;
  signal fft_data_o_i_102_n_0 : STD_LOGIC;
  signal fft_data_o_i_103_n_0 : STD_LOGIC;
  signal fft_data_o_i_104_n_0 : STD_LOGIC;
  signal fft_data_o_i_105_n_0 : STD_LOGIC;
  signal fft_data_o_i_106_n_0 : STD_LOGIC;
  signal fft_data_o_i_10_n_0 : STD_LOGIC;
  signal fft_data_o_i_12_n_0 : STD_LOGIC;
  signal fft_data_o_i_14_n_0 : STD_LOGIC;
  signal fft_data_o_i_15_n_0 : STD_LOGIC;
  signal fft_data_o_i_16_n_0 : STD_LOGIC;
  signal fft_data_o_i_17_n_0 : STD_LOGIC;
  signal fft_data_o_i_19_n_0 : STD_LOGIC;
  signal fft_data_o_i_20_n_0 : STD_LOGIC;
  signal fft_data_o_i_21_n_0 : STD_LOGIC;
  signal fft_data_o_i_22_n_0 : STD_LOGIC;
  signal fft_data_o_i_23_n_0 : STD_LOGIC;
  signal fft_data_o_i_24_n_0 : STD_LOGIC;
  signal fft_data_o_i_25_n_0 : STD_LOGIC;
  signal fft_data_o_i_26_n_0 : STD_LOGIC;
  signal fft_data_o_i_32_n_0 : STD_LOGIC;
  signal fft_data_o_i_33_n_0 : STD_LOGIC;
  signal fft_data_o_i_34_n_0 : STD_LOGIC;
  signal fft_data_o_i_35_n_0 : STD_LOGIC;
  signal fft_data_o_i_36_n_0 : STD_LOGIC;
  signal fft_data_o_i_37_n_0 : STD_LOGIC;
  signal fft_data_o_i_38_n_0 : STD_LOGIC;
  signal fft_data_o_i_42_n_0 : STD_LOGIC;
  signal fft_data_o_i_43_n_0 : STD_LOGIC;
  signal fft_data_o_i_44_n_0 : STD_LOGIC;
  signal fft_data_o_i_45_n_0 : STD_LOGIC;
  signal fft_data_o_i_46_n_0 : STD_LOGIC;
  signal fft_data_o_i_47_n_0 : STD_LOGIC;
  signal fft_data_o_i_48_n_0 : STD_LOGIC;
  signal fft_data_o_i_49_n_0 : STD_LOGIC;
  signal fft_data_o_i_52_n_0 : STD_LOGIC;
  signal fft_data_o_i_53_n_0 : STD_LOGIC;
  signal fft_data_o_i_54_n_0 : STD_LOGIC;
  signal fft_data_o_i_55_n_0 : STD_LOGIC;
  signal fft_data_o_i_56_n_0 : STD_LOGIC;
  signal fft_data_o_i_57_n_0 : STD_LOGIC;
  signal fft_data_o_i_58_n_0 : STD_LOGIC;
  signal fft_data_o_i_59_n_0 : STD_LOGIC;
  signal fft_data_o_i_5_n_0 : STD_LOGIC;
  signal fft_data_o_i_60_n_0 : STD_LOGIC;
  signal fft_data_o_i_61_n_0 : STD_LOGIC;
  signal fft_data_o_i_62_n_0 : STD_LOGIC;
  signal fft_data_o_i_64_n_0 : STD_LOGIC;
  signal fft_data_o_i_65_n_0 : STD_LOGIC;
  signal fft_data_o_i_66_n_0 : STD_LOGIC;
  signal fft_data_o_i_67_n_0 : STD_LOGIC;
  signal fft_data_o_i_68_n_0 : STD_LOGIC;
  signal fft_data_o_i_69_n_0 : STD_LOGIC;
  signal fft_data_o_i_6_n_0 : STD_LOGIC;
  signal fft_data_o_i_70_n_0 : STD_LOGIC;
  signal fft_data_o_i_7_n_0 : STD_LOGIC;
  signal fft_data_o_i_85_n_0 : STD_LOGIC;
  signal fft_data_o_i_86_n_0 : STD_LOGIC;
  signal fft_data_o_i_87_n_0 : STD_LOGIC;
  signal fft_data_o_i_88_n_0 : STD_LOGIC;
  signal fft_data_o_i_89_n_0 : STD_LOGIC;
  signal fft_data_o_i_8_n_0 : STD_LOGIC;
  signal fft_data_o_i_90_n_0 : STD_LOGIC;
  signal fft_data_o_i_91_n_0 : STD_LOGIC;
  signal fft_data_o_i_92_n_0 : STD_LOGIC;
  signal fft_data_o_i_9_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_11_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_11_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_11_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_11_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_18_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_18_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_18_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_18_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_27_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_27_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_27_n_5 : STD_LOGIC;
  signal fft_data_o_reg_i_27_n_6 : STD_LOGIC;
  signal fft_data_o_reg_i_27_n_7 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_4 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_5 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_6 : STD_LOGIC;
  signal fft_data_o_reg_i_28_n_7 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_4 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_5 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_6 : STD_LOGIC;
  signal fft_data_o_reg_i_29_n_7 : STD_LOGIC;
  signal fft_data_o_reg_i_2_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_2_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_2_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_2_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_30_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_30_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_30_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_30_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_39_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_39_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_3_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_3_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_3_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_3_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_40_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_40_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_40_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_40_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_41_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_41_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_41_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_41_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_4_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_4_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_4_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_4_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_4 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_5 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_6 : STD_LOGIC;
  signal fft_data_o_reg_i_50_n_7 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_4 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_5 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_6 : STD_LOGIC;
  signal fft_data_o_reg_i_51_n_7 : STD_LOGIC;
  signal fft_data_o_reg_i_71_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_71_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_71_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_71_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_72_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_72_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_72_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_72_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_3 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_4 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_5 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_6 : STD_LOGIC;
  signal fft_data_o_reg_i_84_n_7 : STD_LOGIC;
  signal fft_data_o_reg_i_93_n_0 : STD_LOGIC;
  signal fft_data_o_reg_i_93_n_1 : STD_LOGIC;
  signal fft_data_o_reg_i_93_n_2 : STD_LOGIC;
  signal fft_data_o_reg_i_93_n_3 : STD_LOGIC;
  signal fft_data_o_sig : STD_LOGIC;
  signal fft_data_o_sig2 : STD_LOGIC_VECTOR ( 21 downto 7 );
  signal fft_data_o_sig3 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \^fft_done_o\ : STD_LOGIC;
  signal m_axis_data_tdata : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal m_axis_data_tuser : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal m_axis_data_tvalid : STD_LOGIC;
  signal \output_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal output_counter_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \output_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \output_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \output_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \output_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \output_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \output_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \output_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tvalid_sig_i_1_n_0 : STD_LOGIC;
  signal NLW_fft_data_o_reg_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fft_data_o_reg_i_18_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fft_data_o_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fft_data_o_reg_i_27_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_fft_data_o_reg_i_27_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_fft_data_o_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fft_data_o_reg_i_30_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fft_data_o_reg_i_39_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_fft_data_o_reg_i_39_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_fft_data_o_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_output_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_output_counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_uut_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_m_axis_data_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_uut_m_axis_data_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 13 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[0]\ : label is "init:001,count_outputs:010,waiting:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[1]\ : label is "init:001,count_outputs:010,waiting:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[2]\ : label is "init:001,count_outputs:010,waiting:100,";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of fft_data_o_reg_i_11 : label is 11;
  attribute COMPARATOR_THRESHOLD of fft_data_o_reg_i_18 : label is 11;
  attribute COMPARATOR_THRESHOLD of fft_data_o_reg_i_2 : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_27 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_28 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_29 : label is 35;
  attribute COMPARATOR_THRESHOLD of fft_data_o_reg_i_3 : label is 11;
  attribute COMPARATOR_THRESHOLD of fft_data_o_reg_i_30 : label is 11;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_39 : label is 35;
  attribute COMPARATOR_THRESHOLD of fft_data_o_reg_i_4 : label is 11;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_40 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_41 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_50 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_51 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_71 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_72 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_84 : label is 35;
  attribute ADDER_THRESHOLD of fft_data_o_reg_i_93 : label is 35;
  attribute ADDER_THRESHOLD of \output_counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \output_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \output_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \output_counter_reg[8]_i_1\ : label is 11;
  attribute syn_black_box : string;
  attribute syn_black_box of uut : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of uut : label is "xfft_v9_1_9,Vivado 2023.1";
begin
  fft_done_o <= \^fft_done_o\;
\FSM_onehot_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => \FSM_onehot_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_cs[2]_i_3_n_0\,
      I2 => \FSM_onehot_cs[2]_i_4_n_0\,
      I3 => cnt_rst,
      I4 => \^fft_done_o\,
      O => \FSM_onehot_cs[0]_i_1_n_0\
    );
\FSM_onehot_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFF00"
    )
        port map (
      I0 => \FSM_onehot_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_cs[2]_i_3_n_0\,
      I2 => \FSM_onehot_cs[2]_i_4_n_0\,
      I3 => cnt_rst,
      I4 => \FSM_onehot_cs_reg_n_0_[1]\,
      O => \FSM_onehot_cs[1]_i_1_n_0\
    );
\FSM_onehot_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007FFF800000"
    )
        port map (
      I0 => \FSM_onehot_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_cs[2]_i_3_n_0\,
      I2 => \FSM_onehot_cs[2]_i_4_n_0\,
      I3 => cnt_rst,
      I4 => \FSM_onehot_cs_reg_n_0_[1]\,
      I5 => \^fft_done_o\,
      O => \FSM_onehot_cs[2]_i_1_n_0\
    );
\FSM_onehot_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => output_counter_reg(8),
      I1 => output_counter_reg(9),
      I2 => output_counter_reg(6),
      I3 => output_counter_reg(7),
      I4 => output_counter_reg(11),
      I5 => output_counter_reg(10),
      O => \FSM_onehot_cs[2]_i_2_n_0\
    );
\FSM_onehot_cs[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => output_counter_reg(0),
      I1 => output_counter_reg(1),
      I2 => output_counter_reg(3),
      I3 => output_counter_reg(5),
      I4 => output_counter_reg(4),
      O => \FSM_onehot_cs[2]_i_3_n_0\
    );
\FSM_onehot_cs[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0000A0"
    )
        port map (
      I0 => \^fft_done_o\,
      I1 => \FSM_onehot_cs_reg_n_0_[1]\,
      I2 => output_counter_reg(13),
      I3 => output_counter_reg(2),
      I4 => output_counter_reg(12),
      O => \FSM_onehot_cs[2]_i_4_n_0\
    );
\FSM_onehot_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_cs[0]_i_1_n_0\,
      Q => cnt_rst,
      R => '0'
    );
\FSM_onehot_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_cs_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_cs[2]_i_1_n_0\,
      Q => \^fft_done_o\,
      R => '0'
    );
\bin_addr_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(0),
      Q => bin_addr_o(0),
      R => '0'
    );
\bin_addr_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(10),
      Q => bin_addr_o(10),
      R => '0'
    );
\bin_addr_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(11),
      Q => bin_addr_o(11),
      R => '0'
    );
\bin_addr_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(1),
      Q => bin_addr_o(1),
      R => '0'
    );
\bin_addr_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(2),
      Q => bin_addr_o(2),
      R => '0'
    );
\bin_addr_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(3),
      Q => bin_addr_o(3),
      R => '0'
    );
\bin_addr_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(4),
      Q => bin_addr_o(4),
      R => '0'
    );
\bin_addr_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(5),
      Q => bin_addr_o(5),
      R => '0'
    );
\bin_addr_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(6),
      Q => bin_addr_o(6),
      R => '0'
    );
\bin_addr_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(7),
      Q => bin_addr_o(7),
      R => '0'
    );
\bin_addr_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(8),
      Q => bin_addr_o(8),
      R => '0'
    );
\bin_addr_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => m_axis_data_tuser(9),
      Q => bin_addr_o(9),
      R => '0'
    );
fft_data_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fft_data_o_reg_i_2_n_0,
      I1 => fft_data_o_reg_i_3_n_0,
      O => fft_data_o_sig
    );
fft_data_o_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0CA000"
    )
        port map (
      I0 => fft_data_o_reg_i_29_n_4,
      I1 => m_axis_data_tdata(40),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_28_n_7,
      I4 => m_axis_data_tdata(41),
      O => fft_data_o_i_10_n_0
    );
fft_data_o_i_100: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(6),
      O => p_0_in(6)
    );
fft_data_o_i_101: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(5),
      O => p_0_in(5)
    );
fft_data_o_i_102: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(24),
      O => fft_data_o_i_102_n_0
    );
fft_data_o_i_103: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(28),
      O => fft_data_o_i_103_n_0
    );
fft_data_o_i_104: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(27),
      O => fft_data_o_i_104_n_0
    );
fft_data_o_i_105: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(26),
      O => fft_data_o_i_105_n_0
    );
fft_data_o_i_106: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(25),
      O => fft_data_o_i_106_n_0
    );
fft_data_o_i_107: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(0),
      O => p_0_in(0)
    );
fft_data_o_i_108: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(4),
      O => p_0_in(4)
    );
fft_data_o_i_109: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(3),
      O => p_0_in(3)
    );
fft_data_o_i_110: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(2),
      O => p_0_in(2)
    );
fft_data_o_i_111: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(1),
      O => p_0_in(1)
    );
fft_data_o_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACC"
    )
        port map (
      I0 => fft_data_o_sig3(22),
      I1 => m_axis_data_tdata(22),
      I2 => fft_data_o_sig3(23),
      I3 => m_axis_data_tdata(23),
      O => fft_data_o_i_12_n_0
    );
fft_data_o_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => m_axis_data_tdata(21),
      I1 => fft_data_o_sig3(21),
      I2 => m_axis_data_tdata(23),
      O => fft_data_o_sig2(21)
    );
fft_data_o_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0437"
    )
        port map (
      I0 => fft_data_o_sig3(23),
      I1 => m_axis_data_tdata(23),
      I2 => fft_data_o_sig3(22),
      I3 => m_axis_data_tdata(22),
      O => fft_data_o_i_14_n_0
    );
fft_data_o_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_sig3(20),
      I1 => m_axis_data_tdata(20),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(21),
      I4 => m_axis_data_tdata(21),
      O => fft_data_o_i_15_n_0
    );
fft_data_o_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0CA000"
    )
        port map (
      I0 => fft_data_o_sig3(18),
      I1 => m_axis_data_tdata(18),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(19),
      I4 => m_axis_data_tdata(19),
      O => fft_data_o_i_16_n_0
    );
fft_data_o_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0CA000"
    )
        port map (
      I0 => fft_data_o_sig3(16),
      I1 => m_axis_data_tdata(16),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(17),
      I4 => m_axis_data_tdata(17),
      O => fft_data_o_i_17_n_0
    );
fft_data_o_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => m_axis_data_tdata(39),
      I1 => fft_data_o_reg_i_29_n_5,
      I2 => m_axis_data_tdata(47),
      O => fft_data_o_i_19_n_0
    );
fft_data_o_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(36),
      I1 => fft_data_o_reg_i_50_n_4,
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_29_n_7,
      I4 => m_axis_data_tdata(37),
      O => fft_data_o_i_20_n_0
    );
fft_data_o_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(34),
      I1 => fft_data_o_reg_i_50_n_6,
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_50_n_5,
      I4 => m_axis_data_tdata(35),
      O => fft_data_o_i_21_n_0
    );
fft_data_o_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0CA000"
    )
        port map (
      I0 => fft_data_o_reg_i_51_n_4,
      I1 => m_axis_data_tdata(32),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_50_n_7,
      I4 => m_axis_data_tdata(33),
      O => fft_data_o_i_22_n_0
    );
fft_data_o_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_reg_i_29_n_6,
      I1 => m_axis_data_tdata(38),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_29_n_5,
      I4 => m_axis_data_tdata(39),
      O => fft_data_o_i_23_n_0
    );
fft_data_o_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_reg_i_50_n_4,
      I1 => m_axis_data_tdata(36),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_29_n_7,
      I4 => m_axis_data_tdata(37),
      O => fft_data_o_i_24_n_0
    );
fft_data_o_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_reg_i_50_n_6,
      I1 => m_axis_data_tdata(34),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_50_n_5,
      I4 => m_axis_data_tdata(35),
      O => fft_data_o_i_25_n_0
    );
fft_data_o_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_reg_i_50_n_7,
      I1 => m_axis_data_tdata(33),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_51_n_4,
      I4 => m_axis_data_tdata(32),
      O => fft_data_o_i_26_n_0
    );
fft_data_o_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => m_axis_data_tdata(15),
      I1 => fft_data_o_sig3(15),
      I2 => m_axis_data_tdata(23),
      O => fft_data_o_sig2(15)
    );
fft_data_o_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(12),
      I1 => fft_data_o_sig3(12),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(13),
      I4 => m_axis_data_tdata(13),
      O => fft_data_o_i_32_n_0
    );
fft_data_o_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(10),
      I1 => fft_data_o_sig3(10),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(11),
      I4 => m_axis_data_tdata(11),
      O => fft_data_o_i_33_n_0
    );
fft_data_o_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0CA000"
    )
        port map (
      I0 => fft_data_o_sig3(8),
      I1 => m_axis_data_tdata(8),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(9),
      I4 => m_axis_data_tdata(9),
      O => fft_data_o_i_34_n_0
    );
fft_data_o_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_sig3(14),
      I1 => m_axis_data_tdata(14),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(15),
      I4 => m_axis_data_tdata(15),
      O => fft_data_o_i_35_n_0
    );
fft_data_o_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_sig3(12),
      I1 => m_axis_data_tdata(12),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(13),
      I4 => m_axis_data_tdata(13),
      O => fft_data_o_i_36_n_0
    );
fft_data_o_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_sig3(10),
      I1 => m_axis_data_tdata(10),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(11),
      I4 => m_axis_data_tdata(11),
      O => fft_data_o_i_37_n_0
    );
fft_data_o_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_sig3(9),
      I1 => m_axis_data_tdata(9),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(8),
      I4 => m_axis_data_tdata(8),
      O => fft_data_o_i_38_n_0
    );
fft_data_o_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => m_axis_data_tdata(31),
      I1 => fft_data_o_reg_i_51_n_5,
      I2 => m_axis_data_tdata(47),
      O => fft_data_o_i_42_n_0
    );
fft_data_o_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(28),
      I1 => fft_data_o_reg_i_84_n_4,
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_51_n_7,
      I4 => m_axis_data_tdata(29),
      O => fft_data_o_i_43_n_0
    );
fft_data_o_i_44: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(26),
      I1 => fft_data_o_reg_i_84_n_6,
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_84_n_5,
      I4 => m_axis_data_tdata(27),
      O => fft_data_o_i_44_n_0
    );
fft_data_o_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEA"
    )
        port map (
      I0 => m_axis_data_tdata(24),
      I1 => m_axis_data_tdata(47),
      I2 => fft_data_o_reg_i_84_n_7,
      I3 => m_axis_data_tdata(25),
      O => fft_data_o_i_45_n_0
    );
fft_data_o_i_46: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_reg_i_51_n_6,
      I1 => m_axis_data_tdata(30),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_51_n_5,
      I4 => m_axis_data_tdata(31),
      O => fft_data_o_i_46_n_0
    );
fft_data_o_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_reg_i_84_n_4,
      I1 => m_axis_data_tdata(28),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_51_n_7,
      I4 => m_axis_data_tdata(29),
      O => fft_data_o_i_47_n_0
    );
fft_data_o_i_48: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_reg_i_84_n_6,
      I1 => m_axis_data_tdata(26),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_84_n_5,
      I4 => m_axis_data_tdata(27),
      O => fft_data_o_i_48_n_0
    );
fft_data_o_i_49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0415"
    )
        port map (
      I0 => m_axis_data_tdata(24),
      I1 => m_axis_data_tdata(47),
      I2 => fft_data_o_reg_i_84_n_7,
      I3 => m_axis_data_tdata(25),
      O => fft_data_o_i_49_n_0
    );
fft_data_o_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACC"
    )
        port map (
      I0 => fft_data_o_reg_i_27_n_6,
      I1 => m_axis_data_tdata(46),
      I2 => fft_data_o_reg_i_27_n_5,
      I3 => m_axis_data_tdata(47),
      O => fft_data_o_i_5_n_0
    );
fft_data_o_i_52: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(47),
      O => fft_data_o_i_52_n_0
    );
fft_data_o_i_53: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(46),
      O => fft_data_o_i_53_n_0
    );
fft_data_o_i_54: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(45),
      O => fft_data_o_i_54_n_0
    );
fft_data_o_i_55: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(44),
      O => fft_data_o_i_55_n_0
    );
fft_data_o_i_56: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(43),
      O => fft_data_o_i_56_n_0
    );
fft_data_o_i_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(42),
      O => fft_data_o_i_57_n_0
    );
fft_data_o_i_58: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(41),
      O => fft_data_o_i_58_n_0
    );
fft_data_o_i_59: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(40),
      O => fft_data_o_i_59_n_0
    );
fft_data_o_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => m_axis_data_tdata(45),
      I1 => fft_data_o_reg_i_27_n_7,
      I2 => m_axis_data_tdata(47),
      O => fft_data_o_i_6_n_0
    );
fft_data_o_i_60: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(39),
      O => fft_data_o_i_60_n_0
    );
fft_data_o_i_61: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(38),
      O => fft_data_o_i_61_n_0
    );
fft_data_o_i_62: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(37),
      O => fft_data_o_i_62_n_0
    );
fft_data_o_i_63: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => m_axis_data_tdata(7),
      I1 => fft_data_o_sig3(7),
      I2 => m_axis_data_tdata(23),
      O => fft_data_o_sig2(7)
    );
fft_data_o_i_64: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(4),
      I1 => fft_data_o_sig3(4),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(5),
      I4 => m_axis_data_tdata(5),
      O => fft_data_o_i_64_n_0
    );
fft_data_o_i_65: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => m_axis_data_tdata(2),
      I1 => fft_data_o_sig3(2),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(3),
      I4 => m_axis_data_tdata(3),
      O => fft_data_o_i_65_n_0
    );
fft_data_o_i_66: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEA"
    )
        port map (
      I0 => m_axis_data_tdata(0),
      I1 => m_axis_data_tdata(23),
      I2 => fft_data_o_sig3(1),
      I3 => m_axis_data_tdata(1),
      O => fft_data_o_i_66_n_0
    );
fft_data_o_i_67: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_sig3(6),
      I1 => m_axis_data_tdata(6),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(7),
      I4 => m_axis_data_tdata(7),
      O => fft_data_o_i_67_n_0
    );
fft_data_o_i_68: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_sig3(4),
      I1 => m_axis_data_tdata(4),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(5),
      I4 => m_axis_data_tdata(5),
      O => fft_data_o_i_68_n_0
    );
fft_data_o_i_69: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
        port map (
      I0 => fft_data_o_sig3(2),
      I1 => m_axis_data_tdata(2),
      I2 => m_axis_data_tdata(23),
      I3 => fft_data_o_sig3(3),
      I4 => m_axis_data_tdata(3),
      O => fft_data_o_i_69_n_0
    );
fft_data_o_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0437"
    )
        port map (
      I0 => fft_data_o_reg_i_27_n_5,
      I1 => m_axis_data_tdata(47),
      I2 => fft_data_o_reg_i_27_n_6,
      I3 => m_axis_data_tdata(46),
      O => fft_data_o_i_7_n_0
    );
fft_data_o_i_70: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0415"
    )
        port map (
      I0 => m_axis_data_tdata(0),
      I1 => m_axis_data_tdata(23),
      I2 => fft_data_o_sig3(1),
      I3 => m_axis_data_tdata(1),
      O => fft_data_o_i_70_n_0
    );
fft_data_o_i_73: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(23),
      O => p_0_in(23)
    );
fft_data_o_i_74: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(22),
      O => p_0_in(22)
    );
fft_data_o_i_75: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(21),
      O => p_0_in(21)
    );
fft_data_o_i_76: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(20),
      O => p_0_in(20)
    );
fft_data_o_i_77: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(19),
      O => p_0_in(19)
    );
fft_data_o_i_78: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(18),
      O => p_0_in(18)
    );
fft_data_o_i_79: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(17),
      O => p_0_in(17)
    );
fft_data_o_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CAC"
    )
        port map (
      I0 => fft_data_o_reg_i_28_n_4,
      I1 => m_axis_data_tdata(44),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_27_n_7,
      I4 => m_axis_data_tdata(45),
      O => fft_data_o_i_8_n_0
    );
fft_data_o_i_80: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(16),
      O => p_0_in(16)
    );
fft_data_o_i_81: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(15),
      O => p_0_in(15)
    );
fft_data_o_i_82: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(14),
      O => p_0_in(14)
    );
fft_data_o_i_83: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(13),
      O => p_0_in(13)
    );
fft_data_o_i_85: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(36),
      O => fft_data_o_i_85_n_0
    );
fft_data_o_i_86: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(35),
      O => fft_data_o_i_86_n_0
    );
fft_data_o_i_87: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(34),
      O => fft_data_o_i_87_n_0
    );
fft_data_o_i_88: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(33),
      O => fft_data_o_i_88_n_0
    );
fft_data_o_i_89: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(32),
      O => fft_data_o_i_89_n_0
    );
fft_data_o_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0CA000"
    )
        port map (
      I0 => fft_data_o_reg_i_28_n_6,
      I1 => m_axis_data_tdata(42),
      I2 => m_axis_data_tdata(47),
      I3 => fft_data_o_reg_i_28_n_5,
      I4 => m_axis_data_tdata(43),
      O => fft_data_o_i_9_n_0
    );
fft_data_o_i_90: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(31),
      O => fft_data_o_i_90_n_0
    );
fft_data_o_i_91: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(30),
      O => fft_data_o_i_91_n_0
    );
fft_data_o_i_92: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(29),
      O => fft_data_o_i_92_n_0
    );
fft_data_o_i_94: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(12),
      O => p_0_in(12)
    );
fft_data_o_i_95: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(11),
      O => p_0_in(11)
    );
fft_data_o_i_96: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(10),
      O => p_0_in(10)
    );
fft_data_o_i_97: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(9),
      O => p_0_in(9)
    );
fft_data_o_i_98: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(8),
      O => p_0_in(8)
    );
fft_data_o_i_99: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_data_tdata(7),
      O => p_0_in(7)
    );
fft_data_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => fft_data_o_sig,
      Q => fft_data_o,
      R => '0'
    );
fft_data_o_reg_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_30_n_0,
      CO(3) => fft_data_o_reg_i_11_n_0,
      CO(2) => fft_data_o_reg_i_11_n_1,
      CO(1) => fft_data_o_reg_i_11_n_2,
      CO(0) => fft_data_o_reg_i_11_n_3,
      CYINIT => '0',
      DI(3) => fft_data_o_sig2(15),
      DI(2) => fft_data_o_i_32_n_0,
      DI(1) => fft_data_o_i_33_n_0,
      DI(0) => fft_data_o_i_34_n_0,
      O(3 downto 0) => NLW_fft_data_o_reg_i_11_O_UNCONNECTED(3 downto 0),
      S(3) => fft_data_o_i_35_n_0,
      S(2) => fft_data_o_i_36_n_0,
      S(1) => fft_data_o_i_37_n_0,
      S(0) => fft_data_o_i_38_n_0
    );
fft_data_o_reg_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fft_data_o_reg_i_18_n_0,
      CO(2) => fft_data_o_reg_i_18_n_1,
      CO(1) => fft_data_o_reg_i_18_n_2,
      CO(0) => fft_data_o_reg_i_18_n_3,
      CYINIT => '0',
      DI(3) => fft_data_o_i_42_n_0,
      DI(2) => fft_data_o_i_43_n_0,
      DI(1) => fft_data_o_i_44_n_0,
      DI(0) => fft_data_o_i_45_n_0,
      O(3 downto 0) => NLW_fft_data_o_reg_i_18_O_UNCONNECTED(3 downto 0),
      S(3) => fft_data_o_i_46_n_0,
      S(2) => fft_data_o_i_47_n_0,
      S(1) => fft_data_o_i_48_n_0,
      S(0) => fft_data_o_i_49_n_0
    );
fft_data_o_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_4_n_0,
      CO(3) => fft_data_o_reg_i_2_n_0,
      CO(2) => fft_data_o_reg_i_2_n_1,
      CO(1) => fft_data_o_reg_i_2_n_2,
      CO(0) => fft_data_o_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => fft_data_o_i_5_n_0,
      DI(2) => fft_data_o_i_6_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_fft_data_o_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => fft_data_o_i_7_n_0,
      S(2) => fft_data_o_i_8_n_0,
      S(1) => fft_data_o_i_9_n_0,
      S(0) => fft_data_o_i_10_n_0
    );
fft_data_o_reg_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_28_n_0,
      CO(3 downto 2) => NLW_fft_data_o_reg_i_27_CO_UNCONNECTED(3 downto 2),
      CO(1) => fft_data_o_reg_i_27_n_2,
      CO(0) => fft_data_o_reg_i_27_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_fft_data_o_reg_i_27_O_UNCONNECTED(3),
      O(2) => fft_data_o_reg_i_27_n_5,
      O(1) => fft_data_o_reg_i_27_n_6,
      O(0) => fft_data_o_reg_i_27_n_7,
      S(3) => '0',
      S(2) => fft_data_o_i_52_n_0,
      S(1) => fft_data_o_i_53_n_0,
      S(0) => fft_data_o_i_54_n_0
    );
fft_data_o_reg_i_28: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_29_n_0,
      CO(3) => fft_data_o_reg_i_28_n_0,
      CO(2) => fft_data_o_reg_i_28_n_1,
      CO(1) => fft_data_o_reg_i_28_n_2,
      CO(0) => fft_data_o_reg_i_28_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => fft_data_o_reg_i_28_n_4,
      O(2) => fft_data_o_reg_i_28_n_5,
      O(1) => fft_data_o_reg_i_28_n_6,
      O(0) => fft_data_o_reg_i_28_n_7,
      S(3) => fft_data_o_i_55_n_0,
      S(2) => fft_data_o_i_56_n_0,
      S(1) => fft_data_o_i_57_n_0,
      S(0) => fft_data_o_i_58_n_0
    );
fft_data_o_reg_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_50_n_0,
      CO(3) => fft_data_o_reg_i_29_n_0,
      CO(2) => fft_data_o_reg_i_29_n_1,
      CO(1) => fft_data_o_reg_i_29_n_2,
      CO(0) => fft_data_o_reg_i_29_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => fft_data_o_reg_i_29_n_4,
      O(2) => fft_data_o_reg_i_29_n_5,
      O(1) => fft_data_o_reg_i_29_n_6,
      O(0) => fft_data_o_reg_i_29_n_7,
      S(3) => fft_data_o_i_59_n_0,
      S(2) => fft_data_o_i_60_n_0,
      S(1) => fft_data_o_i_61_n_0,
      S(0) => fft_data_o_i_62_n_0
    );
fft_data_o_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_11_n_0,
      CO(3) => fft_data_o_reg_i_3_n_0,
      CO(2) => fft_data_o_reg_i_3_n_1,
      CO(1) => fft_data_o_reg_i_3_n_2,
      CO(0) => fft_data_o_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => fft_data_o_i_12_n_0,
      DI(2) => fft_data_o_sig2(21),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_fft_data_o_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => fft_data_o_i_14_n_0,
      S(2) => fft_data_o_i_15_n_0,
      S(1) => fft_data_o_i_16_n_0,
      S(0) => fft_data_o_i_17_n_0
    );
fft_data_o_reg_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fft_data_o_reg_i_30_n_0,
      CO(2) => fft_data_o_reg_i_30_n_1,
      CO(1) => fft_data_o_reg_i_30_n_2,
      CO(0) => fft_data_o_reg_i_30_n_3,
      CYINIT => '0',
      DI(3) => fft_data_o_sig2(7),
      DI(2) => fft_data_o_i_64_n_0,
      DI(1) => fft_data_o_i_65_n_0,
      DI(0) => fft_data_o_i_66_n_0,
      O(3 downto 0) => NLW_fft_data_o_reg_i_30_O_UNCONNECTED(3 downto 0),
      S(3) => fft_data_o_i_67_n_0,
      S(2) => fft_data_o_i_68_n_0,
      S(1) => fft_data_o_i_69_n_0,
      S(0) => fft_data_o_i_70_n_0
    );
fft_data_o_reg_i_39: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_40_n_0,
      CO(3 downto 2) => NLW_fft_data_o_reg_i_39_CO_UNCONNECTED(3 downto 2),
      CO(1) => fft_data_o_reg_i_39_n_2,
      CO(0) => fft_data_o_reg_i_39_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_fft_data_o_reg_i_39_O_UNCONNECTED(3),
      O(2 downto 0) => fft_data_o_sig3(23 downto 21),
      S(3) => '0',
      S(2 downto 0) => p_0_in(23 downto 21)
    );
fft_data_o_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_18_n_0,
      CO(3) => fft_data_o_reg_i_4_n_0,
      CO(2) => fft_data_o_reg_i_4_n_1,
      CO(1) => fft_data_o_reg_i_4_n_2,
      CO(0) => fft_data_o_reg_i_4_n_3,
      CYINIT => '0',
      DI(3) => fft_data_o_i_19_n_0,
      DI(2) => fft_data_o_i_20_n_0,
      DI(1) => fft_data_o_i_21_n_0,
      DI(0) => fft_data_o_i_22_n_0,
      O(3 downto 0) => NLW_fft_data_o_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => fft_data_o_i_23_n_0,
      S(2) => fft_data_o_i_24_n_0,
      S(1) => fft_data_o_i_25_n_0,
      S(0) => fft_data_o_i_26_n_0
    );
fft_data_o_reg_i_40: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_41_n_0,
      CO(3) => fft_data_o_reg_i_40_n_0,
      CO(2) => fft_data_o_reg_i_40_n_1,
      CO(1) => fft_data_o_reg_i_40_n_2,
      CO(0) => fft_data_o_reg_i_40_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fft_data_o_sig3(20 downto 17),
      S(3 downto 0) => p_0_in(20 downto 17)
    );
fft_data_o_reg_i_41: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_71_n_0,
      CO(3) => fft_data_o_reg_i_41_n_0,
      CO(2) => fft_data_o_reg_i_41_n_1,
      CO(1) => fft_data_o_reg_i_41_n_2,
      CO(0) => fft_data_o_reg_i_41_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fft_data_o_sig3(16 downto 13),
      S(3 downto 0) => p_0_in(16 downto 13)
    );
fft_data_o_reg_i_50: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_51_n_0,
      CO(3) => fft_data_o_reg_i_50_n_0,
      CO(2) => fft_data_o_reg_i_50_n_1,
      CO(1) => fft_data_o_reg_i_50_n_2,
      CO(0) => fft_data_o_reg_i_50_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => fft_data_o_reg_i_50_n_4,
      O(2) => fft_data_o_reg_i_50_n_5,
      O(1) => fft_data_o_reg_i_50_n_6,
      O(0) => fft_data_o_reg_i_50_n_7,
      S(3) => fft_data_o_i_85_n_0,
      S(2) => fft_data_o_i_86_n_0,
      S(1) => fft_data_o_i_87_n_0,
      S(0) => fft_data_o_i_88_n_0
    );
fft_data_o_reg_i_51: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_84_n_0,
      CO(3) => fft_data_o_reg_i_51_n_0,
      CO(2) => fft_data_o_reg_i_51_n_1,
      CO(1) => fft_data_o_reg_i_51_n_2,
      CO(0) => fft_data_o_reg_i_51_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => fft_data_o_reg_i_51_n_4,
      O(2) => fft_data_o_reg_i_51_n_5,
      O(1) => fft_data_o_reg_i_51_n_6,
      O(0) => fft_data_o_reg_i_51_n_7,
      S(3) => fft_data_o_i_89_n_0,
      S(2) => fft_data_o_i_90_n_0,
      S(1) => fft_data_o_i_91_n_0,
      S(0) => fft_data_o_i_92_n_0
    );
fft_data_o_reg_i_71: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_72_n_0,
      CO(3) => fft_data_o_reg_i_71_n_0,
      CO(2) => fft_data_o_reg_i_71_n_1,
      CO(1) => fft_data_o_reg_i_71_n_2,
      CO(0) => fft_data_o_reg_i_71_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fft_data_o_sig3(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
fft_data_o_reg_i_72: unisim.vcomponents.CARRY4
     port map (
      CI => fft_data_o_reg_i_93_n_0,
      CO(3) => fft_data_o_reg_i_72_n_0,
      CO(2) => fft_data_o_reg_i_72_n_1,
      CO(1) => fft_data_o_reg_i_72_n_2,
      CO(0) => fft_data_o_reg_i_72_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fft_data_o_sig3(8 downto 5),
      S(3 downto 0) => p_0_in(8 downto 5)
    );
fft_data_o_reg_i_84: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fft_data_o_reg_i_84_n_0,
      CO(2) => fft_data_o_reg_i_84_n_1,
      CO(1) => fft_data_o_reg_i_84_n_2,
      CO(0) => fft_data_o_reg_i_84_n_3,
      CYINIT => fft_data_o_i_102_n_0,
      DI(3 downto 0) => B"0000",
      O(3) => fft_data_o_reg_i_84_n_4,
      O(2) => fft_data_o_reg_i_84_n_5,
      O(1) => fft_data_o_reg_i_84_n_6,
      O(0) => fft_data_o_reg_i_84_n_7,
      S(3) => fft_data_o_i_103_n_0,
      S(2) => fft_data_o_i_104_n_0,
      S(1) => fft_data_o_i_105_n_0,
      S(0) => fft_data_o_i_106_n_0
    );
fft_data_o_reg_i_93: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fft_data_o_reg_i_93_n_0,
      CO(2) => fft_data_o_reg_i_93_n_1,
      CO(1) => fft_data_o_reg_i_93_n_2,
      CO(0) => fft_data_o_reg_i_93_n_3,
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fft_data_o_sig3(4 downto 1),
      S(3 downto 0) => p_0_in(4 downto 1)
    );
\output_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => output_counter_reg(0),
      O => \output_counter[0]_i_2_n_0\
    );
\output_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[0]_i_1_n_7\,
      Q => output_counter_reg(0),
      R => cnt_rst
    );
\output_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \output_counter_reg[0]_i_1_n_0\,
      CO(2) => \output_counter_reg[0]_i_1_n_1\,
      CO(1) => \output_counter_reg[0]_i_1_n_2\,
      CO(0) => \output_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \output_counter_reg[0]_i_1_n_4\,
      O(2) => \output_counter_reg[0]_i_1_n_5\,
      O(1) => \output_counter_reg[0]_i_1_n_6\,
      O(0) => \output_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => output_counter_reg(3 downto 1),
      S(0) => \output_counter[0]_i_2_n_0\
    );
\output_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[8]_i_1_n_5\,
      Q => output_counter_reg(10),
      R => cnt_rst
    );
\output_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[8]_i_1_n_4\,
      Q => output_counter_reg(11),
      R => cnt_rst
    );
\output_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[12]_i_1_n_7\,
      Q => output_counter_reg(12),
      R => cnt_rst
    );
\output_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_counter_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_output_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \output_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_output_counter_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \output_counter_reg[12]_i_1_n_6\,
      O(0) => \output_counter_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => output_counter_reg(13 downto 12)
    );
\output_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[12]_i_1_n_6\,
      Q => output_counter_reg(13),
      R => cnt_rst
    );
\output_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[0]_i_1_n_6\,
      Q => output_counter_reg(1),
      R => cnt_rst
    );
\output_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[0]_i_1_n_5\,
      Q => output_counter_reg(2),
      R => cnt_rst
    );
\output_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[0]_i_1_n_4\,
      Q => output_counter_reg(3),
      R => cnt_rst
    );
\output_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[4]_i_1_n_7\,
      Q => output_counter_reg(4),
      R => cnt_rst
    );
\output_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_counter_reg[0]_i_1_n_0\,
      CO(3) => \output_counter_reg[4]_i_1_n_0\,
      CO(2) => \output_counter_reg[4]_i_1_n_1\,
      CO(1) => \output_counter_reg[4]_i_1_n_2\,
      CO(0) => \output_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \output_counter_reg[4]_i_1_n_4\,
      O(2) => \output_counter_reg[4]_i_1_n_5\,
      O(1) => \output_counter_reg[4]_i_1_n_6\,
      O(0) => \output_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => output_counter_reg(7 downto 4)
    );
\output_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[4]_i_1_n_6\,
      Q => output_counter_reg(5),
      R => cnt_rst
    );
\output_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[4]_i_1_n_5\,
      Q => output_counter_reg(6),
      R => cnt_rst
    );
\output_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[4]_i_1_n_4\,
      Q => output_counter_reg(7),
      R => cnt_rst
    );
\output_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[8]_i_1_n_7\,
      Q => output_counter_reg(8),
      R => cnt_rst
    );
\output_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_counter_reg[4]_i_1_n_0\,
      CO(3) => \output_counter_reg[8]_i_1_n_0\,
      CO(2) => \output_counter_reg[8]_i_1_n_1\,
      CO(1) => \output_counter_reg[8]_i_1_n_2\,
      CO(0) => \output_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \output_counter_reg[8]_i_1_n_4\,
      O(2) => \output_counter_reg[8]_i_1_n_5\,
      O(1) => \output_counter_reg[8]_i_1_n_6\,
      O(0) => \output_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => output_counter_reg(11 downto 8)
    );
\output_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => m_axis_data_tvalid,
      D => \output_counter_reg[8]_i_1_n_6\,
      Q => output_counter_reg(9),
      R => cnt_rst
    );
tvalid_sig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_data_tvalid,
      I1 => m_axis_data_tuser(12),
      O => tvalid_sig_i_1_n_0
    );
tvalid_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => tvalid_sig_i_1_n_0,
      Q => tvalid_o,
      R => '0'
    );
uut: component design_1_FFT_wrapper_0_1_xfft_0
     port map (
      aclk => s00_axis_aclk,
      event_data_in_channel_halt => NLW_uut_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_uut_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_uut_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_uut_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_uut_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_uut_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(47 downto 0) => m_axis_data_tdata(47 downto 0),
      m_axis_data_tlast => NLW_uut_m_axis_data_tlast_UNCONNECTED,
      m_axis_data_tready => '1',
      m_axis_data_tuser(15 downto 13) => NLW_uut_m_axis_data_tuser_UNCONNECTED(15 downto 13),
      m_axis_data_tuser(12 downto 0) => m_axis_data_tuser(12 downto 0),
      m_axis_data_tvalid => m_axis_data_tvalid,
      s_axis_config_tdata(15 downto 0) => B"0000000000000000",
      s_axis_config_tready => NLW_uut_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '1',
      s_axis_data_tdata(47 downto 24) => B"000000000000000000000000",
      s_axis_data_tdata(23 downto 0) => s00_axis_tdata(30 downto 7),
      s_axis_data_tlast => s00_axis_tlast,
      s_axis_data_tready => s00_axis_tready,
      s_axis_data_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FFT_wrapper_0_1 is
  port (
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    tvalid_o : out STD_LOGIC;
    fft_data_o : out STD_LOGIC;
    fft_done_o : out STD_LOGIC;
    bin_addr_o : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FFT_wrapper_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FFT_wrapper_0_1 : entity is "design_1_FFT_wrapper_0_1,FFT_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FFT_wrapper_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_FFT_wrapper_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FFT_wrapper_0_1 : entity is "FFT_wrapper,Vivado 2023.1";
end design_1_FFT_wrapper_0_1;

architecture STRUCTURE of design_1_FFT_wrapper_0_1 is
  attribute INPUT_DATA_WIDTH : integer;
  attribute INPUT_DATA_WIDTH of U0 : label is 32;
  attribute OUTPUT_DATA_WIDTH : integer;
  attribute OUTPUT_DATA_WIDTH of U0 : label is 8;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s00_axis TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 s00_axis TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s00_axis TVALID";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s00_axis TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s00_axis TSTRB";
begin
U0: entity work.design_1_FFT_wrapper_0_1_FFT_wrapper
     port map (
      bin_addr_o(11 downto 0) => bin_addr_o(11 downto 0),
      fft_data_o => fft_data_o,
      fft_done_o => fft_done_o,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => '0',
      s00_axis_tdata(31) => '0',
      s00_axis_tdata(30 downto 7) => s00_axis_tdata(30 downto 7),
      s00_axis_tdata(6 downto 0) => B"0000000",
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tstrb(3 downto 0) => B"0000",
      s00_axis_tvalid => s00_axis_tvalid,
      tvalid_o => tvalid_o
    );
end STRUCTURE;
