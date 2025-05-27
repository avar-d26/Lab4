-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:55:45 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode funcsim
--               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_i2s_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    lrclk_o : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \lad1_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface : entity is "axis_transmitter_interface";
end design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface is
  signal \FSM_onehot_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal lad1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal left_audio_data_sync : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal lrc : STD_LOGIC;
  signal lrclk_sync : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \m00_axis_tdata_o[30]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata_o[31]_i_1_n_0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 30 downto 7 );
  signal rad1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal right_audio_data_sync : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal sample_left : STD_LOGIC;
  signal sample_right : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "sampleleft:0010,idlestate2:0100,idlestate1:0001,sampleright:1000";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[25]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[26]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[28]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[29]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[30]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m00_axis_tdata_o[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m00_axis_tvalid_INST_0 : label is "soft_lutpair1";
begin
  m00_axis_tdata(24 downto 0) <= \^m00_axis_tdata\(24 downto 0);
\FSM_onehot_curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFEDCCC"
    )
        port map (
      I0 => sample_right,
      I1 => sample_left,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => lrclk_sync,
      I4 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \FSM_onehot_curr_state[0]_i_1_n_0\
    );
\FSM_onehot_curr_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0E0F0"
    )
        port map (
      I0 => sample_right,
      I1 => sample_left,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => lrclk_sync,
      I4 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \FSM_onehot_curr_state[1]_i_1_n_0\
    );
\FSM_onehot_curr_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => sample_right,
      I1 => sample_left,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => lrclk_sync,
      I4 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \FSM_onehot_curr_state[2]_i_1_n_0\
    );
\FSM_onehot_curr_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lrclk_sync,
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \FSM_onehot_curr_state[3]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_curr_state[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_curr_state[1]_i_1_n_0\,
      Q => sample_right,
      R => '0'
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_curr_state[2]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_curr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_onehot_curr_state[3]_i_1_n_0\,
      Q => sample_left,
      R => '0'
    );
\lad1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(0),
      Q => lad1(0),
      R => '0'
    );
\lad1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(10),
      Q => lad1(10),
      R => '0'
    );
\lad1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(11),
      Q => lad1(11),
      R => '0'
    );
\lad1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(12),
      Q => lad1(12),
      R => '0'
    );
\lad1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(13),
      Q => lad1(13),
      R => '0'
    );
\lad1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(14),
      Q => lad1(14),
      R => '0'
    );
\lad1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(15),
      Q => lad1(15),
      R => '0'
    );
\lad1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(16),
      Q => lad1(16),
      R => '0'
    );
\lad1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(17),
      Q => lad1(17),
      R => '0'
    );
\lad1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(18),
      Q => lad1(18),
      R => '0'
    );
\lad1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(19),
      Q => lad1(19),
      R => '0'
    );
\lad1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(1),
      Q => lad1(1),
      R => '0'
    );
\lad1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(20),
      Q => lad1(20),
      R => '0'
    );
\lad1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(21),
      Q => lad1(21),
      R => '0'
    );
\lad1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(22),
      Q => lad1(22),
      R => '0'
    );
\lad1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(23),
      Q => lad1(23),
      R => '0'
    );
\lad1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(2),
      Q => lad1(2),
      R => '0'
    );
\lad1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(3),
      Q => lad1(3),
      R => '0'
    );
\lad1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(4),
      Q => lad1(4),
      R => '0'
    );
\lad1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(5),
      Q => lad1(5),
      R => '0'
    );
\lad1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(6),
      Q => lad1(6),
      R => '0'
    );
\lad1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(7),
      Q => lad1(7),
      R => '0'
    );
\lad1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(8),
      Q => lad1(8),
      R => '0'
    );
\lad1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \lad1_reg[23]_0\(9),
      Q => lad1(9),
      R => '0'
    );
\left_audio_data_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(0),
      Q => left_audio_data_sync(0),
      R => '0'
    );
\left_audio_data_sync_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(10),
      Q => left_audio_data_sync(10),
      R => '0'
    );
\left_audio_data_sync_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(11),
      Q => left_audio_data_sync(11),
      R => '0'
    );
\left_audio_data_sync_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(12),
      Q => left_audio_data_sync(12),
      R => '0'
    );
\left_audio_data_sync_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(13),
      Q => left_audio_data_sync(13),
      R => '0'
    );
\left_audio_data_sync_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(14),
      Q => left_audio_data_sync(14),
      R => '0'
    );
\left_audio_data_sync_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(15),
      Q => left_audio_data_sync(15),
      R => '0'
    );
\left_audio_data_sync_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(16),
      Q => left_audio_data_sync(16),
      R => '0'
    );
\left_audio_data_sync_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(17),
      Q => left_audio_data_sync(17),
      R => '0'
    );
\left_audio_data_sync_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(18),
      Q => left_audio_data_sync(18),
      R => '0'
    );
\left_audio_data_sync_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(19),
      Q => left_audio_data_sync(19),
      R => '0'
    );
\left_audio_data_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(1),
      Q => left_audio_data_sync(1),
      R => '0'
    );
\left_audio_data_sync_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(20),
      Q => left_audio_data_sync(20),
      R => '0'
    );
\left_audio_data_sync_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(21),
      Q => left_audio_data_sync(21),
      R => '0'
    );
\left_audio_data_sync_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(22),
      Q => left_audio_data_sync(22),
      R => '0'
    );
\left_audio_data_sync_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(23),
      Q => left_audio_data_sync(23),
      R => '0'
    );
\left_audio_data_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(2),
      Q => left_audio_data_sync(2),
      R => '0'
    );
\left_audio_data_sync_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(3),
      Q => left_audio_data_sync(3),
      R => '0'
    );
\left_audio_data_sync_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(4),
      Q => left_audio_data_sync(4),
      R => '0'
    );
\left_audio_data_sync_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(5),
      Q => left_audio_data_sync(5),
      R => '0'
    );
\left_audio_data_sync_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(6),
      Q => left_audio_data_sync(6),
      R => '0'
    );
\left_audio_data_sync_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(7),
      Q => left_audio_data_sync(7),
      R => '0'
    );
\left_audio_data_sync_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(8),
      Q => left_audio_data_sync(8),
      R => '0'
    );
\left_audio_data_sync_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lad1(9),
      Q => left_audio_data_sync(9),
      R => '0'
    );
lrc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lrclk_o,
      Q => lrc,
      R => '0'
    );
lrclk_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lrc,
      Q => lrclk_sync,
      R => '0'
    );
\m00_axis_tdata_o[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(3),
      I1 => sample_left,
      I2 => right_audio_data_sync(3),
      O => p_2_in(10)
    );
\m00_axis_tdata_o[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(4),
      I1 => sample_left,
      I2 => right_audio_data_sync(4),
      O => p_2_in(11)
    );
\m00_axis_tdata_o[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(5),
      I1 => sample_left,
      I2 => right_audio_data_sync(5),
      O => p_2_in(12)
    );
\m00_axis_tdata_o[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(6),
      I1 => sample_left,
      I2 => right_audio_data_sync(6),
      O => p_2_in(13)
    );
\m00_axis_tdata_o[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(7),
      I1 => sample_left,
      I2 => right_audio_data_sync(7),
      O => p_2_in(14)
    );
\m00_axis_tdata_o[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(8),
      I1 => sample_left,
      I2 => right_audio_data_sync(8),
      O => p_2_in(15)
    );
\m00_axis_tdata_o[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(9),
      I1 => sample_left,
      I2 => right_audio_data_sync(9),
      O => p_2_in(16)
    );
\m00_axis_tdata_o[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(10),
      I1 => sample_left,
      I2 => right_audio_data_sync(10),
      O => p_2_in(17)
    );
\m00_axis_tdata_o[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(11),
      I1 => sample_left,
      I2 => right_audio_data_sync(11),
      O => p_2_in(18)
    );
\m00_axis_tdata_o[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(12),
      I1 => sample_left,
      I2 => right_audio_data_sync(12),
      O => p_2_in(19)
    );
\m00_axis_tdata_o[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(13),
      I1 => sample_left,
      I2 => right_audio_data_sync(13),
      O => p_2_in(20)
    );
\m00_axis_tdata_o[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(14),
      I1 => sample_left,
      I2 => right_audio_data_sync(14),
      O => p_2_in(21)
    );
\m00_axis_tdata_o[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(15),
      I1 => sample_left,
      I2 => right_audio_data_sync(15),
      O => p_2_in(22)
    );
\m00_axis_tdata_o[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(16),
      I1 => sample_left,
      I2 => right_audio_data_sync(16),
      O => p_2_in(23)
    );
\m00_axis_tdata_o[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(17),
      I1 => sample_left,
      I2 => right_audio_data_sync(17),
      O => p_2_in(24)
    );
\m00_axis_tdata_o[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(18),
      I1 => sample_left,
      I2 => right_audio_data_sync(18),
      O => p_2_in(25)
    );
\m00_axis_tdata_o[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(19),
      I1 => sample_left,
      I2 => right_audio_data_sync(19),
      O => p_2_in(26)
    );
\m00_axis_tdata_o[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(20),
      I1 => sample_left,
      I2 => right_audio_data_sync(20),
      O => p_2_in(27)
    );
\m00_axis_tdata_o[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(21),
      I1 => sample_left,
      I2 => right_audio_data_sync(21),
      O => p_2_in(28)
    );
\m00_axis_tdata_o[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(22),
      I1 => sample_left,
      I2 => right_audio_data_sync(22),
      O => p_2_in(29)
    );
\m00_axis_tdata_o[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sample_left,
      I1 => sample_right,
      O => \m00_axis_tdata_o[30]_i_1_n_0\
    );
\m00_axis_tdata_o[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(23),
      I1 => sample_left,
      I2 => right_audio_data_sync(23),
      O => p_2_in(30)
    );
\m00_axis_tdata_o[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sample_right,
      I1 => \^m00_axis_tdata\(24),
      I2 => sample_left,
      O => \m00_axis_tdata_o[31]_i_1_n_0\
    );
\m00_axis_tdata_o[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(0),
      I1 => sample_left,
      I2 => right_audio_data_sync(0),
      O => p_2_in(7)
    );
\m00_axis_tdata_o[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(1),
      I1 => sample_left,
      I2 => right_audio_data_sync(1),
      O => p_2_in(8)
    );
\m00_axis_tdata_o[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => left_audio_data_sync(2),
      I1 => sample_left,
      I2 => right_audio_data_sync(2),
      O => p_2_in(9)
    );
\m00_axis_tdata_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(10),
      Q => \^m00_axis_tdata\(3),
      R => '0'
    );
\m00_axis_tdata_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(11),
      Q => \^m00_axis_tdata\(4),
      R => '0'
    );
\m00_axis_tdata_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(12),
      Q => \^m00_axis_tdata\(5),
      R => '0'
    );
\m00_axis_tdata_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(13),
      Q => \^m00_axis_tdata\(6),
      R => '0'
    );
\m00_axis_tdata_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(14),
      Q => \^m00_axis_tdata\(7),
      R => '0'
    );
\m00_axis_tdata_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(15),
      Q => \^m00_axis_tdata\(8),
      R => '0'
    );
\m00_axis_tdata_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(16),
      Q => \^m00_axis_tdata\(9),
      R => '0'
    );
\m00_axis_tdata_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(17),
      Q => \^m00_axis_tdata\(10),
      R => '0'
    );
\m00_axis_tdata_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(18),
      Q => \^m00_axis_tdata\(11),
      R => '0'
    );
\m00_axis_tdata_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(19),
      Q => \^m00_axis_tdata\(12),
      R => '0'
    );
\m00_axis_tdata_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(20),
      Q => \^m00_axis_tdata\(13),
      R => '0'
    );
\m00_axis_tdata_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(21),
      Q => \^m00_axis_tdata\(14),
      R => '0'
    );
\m00_axis_tdata_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(22),
      Q => \^m00_axis_tdata\(15),
      R => '0'
    );
\m00_axis_tdata_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(23),
      Q => \^m00_axis_tdata\(16),
      R => '0'
    );
\m00_axis_tdata_o_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(24),
      Q => \^m00_axis_tdata\(17),
      R => '0'
    );
\m00_axis_tdata_o_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(25),
      Q => \^m00_axis_tdata\(18),
      R => '0'
    );
\m00_axis_tdata_o_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(26),
      Q => \^m00_axis_tdata\(19),
      R => '0'
    );
\m00_axis_tdata_o_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(27),
      Q => \^m00_axis_tdata\(20),
      R => '0'
    );
\m00_axis_tdata_o_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(28),
      Q => \^m00_axis_tdata\(21),
      R => '0'
    );
\m00_axis_tdata_o_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(29),
      Q => \^m00_axis_tdata\(22),
      R => '0'
    );
\m00_axis_tdata_o_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(30),
      Q => \^m00_axis_tdata\(23),
      R => '0'
    );
\m00_axis_tdata_o_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \m00_axis_tdata_o[31]_i_1_n_0\,
      Q => \^m00_axis_tdata\(24),
      R => '0'
    );
\m00_axis_tdata_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^m00_axis_tdata\(0),
      R => '0'
    );
\m00_axis_tdata_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(8),
      Q => \^m00_axis_tdata\(1),
      R => '0'
    );
\m00_axis_tdata_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \m00_axis_tdata_o[30]_i_1_n_0\,
      D => p_2_in(9),
      Q => \^m00_axis_tdata\(2),
      R => '0'
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sample_right,
      I1 => sample_left,
      O => m00_axis_tvalid
    );
\rad1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(0),
      Q => rad1(0),
      R => '0'
    );
\rad1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(10),
      Q => rad1(10),
      R => '0'
    );
\rad1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(11),
      Q => rad1(11),
      R => '0'
    );
\rad1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(12),
      Q => rad1(12),
      R => '0'
    );
\rad1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(13),
      Q => rad1(13),
      R => '0'
    );
\rad1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(14),
      Q => rad1(14),
      R => '0'
    );
\rad1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(15),
      Q => rad1(15),
      R => '0'
    );
\rad1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(16),
      Q => rad1(16),
      R => '0'
    );
\rad1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(17),
      Q => rad1(17),
      R => '0'
    );
\rad1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(18),
      Q => rad1(18),
      R => '0'
    );
\rad1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(19),
      Q => rad1(19),
      R => '0'
    );
\rad1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(1),
      Q => rad1(1),
      R => '0'
    );
\rad1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(20),
      Q => rad1(20),
      R => '0'
    );
\rad1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(21),
      Q => rad1(21),
      R => '0'
    );
\rad1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(22),
      Q => rad1(22),
      R => '0'
    );
\rad1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(23),
      Q => rad1(23),
      R => '0'
    );
\rad1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(2),
      Q => rad1(2),
      R => '0'
    );
\rad1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(3),
      Q => rad1(3),
      R => '0'
    );
\rad1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(4),
      Q => rad1(4),
      R => '0'
    );
\rad1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(5),
      Q => rad1(5),
      R => '0'
    );
\rad1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(6),
      Q => rad1(6),
      R => '0'
    );
\rad1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(7),
      Q => rad1(7),
      R => '0'
    );
\rad1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(8),
      Q => rad1(8),
      R => '0'
    );
\rad1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(9),
      Q => rad1(9),
      R => '0'
    );
\right_audio_data_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(0),
      Q => right_audio_data_sync(0),
      R => '0'
    );
\right_audio_data_sync_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(10),
      Q => right_audio_data_sync(10),
      R => '0'
    );
\right_audio_data_sync_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(11),
      Q => right_audio_data_sync(11),
      R => '0'
    );
\right_audio_data_sync_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(12),
      Q => right_audio_data_sync(12),
      R => '0'
    );
\right_audio_data_sync_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(13),
      Q => right_audio_data_sync(13),
      R => '0'
    );
\right_audio_data_sync_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(14),
      Q => right_audio_data_sync(14),
      R => '0'
    );
\right_audio_data_sync_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(15),
      Q => right_audio_data_sync(15),
      R => '0'
    );
\right_audio_data_sync_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(16),
      Q => right_audio_data_sync(16),
      R => '0'
    );
\right_audio_data_sync_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(17),
      Q => right_audio_data_sync(17),
      R => '0'
    );
\right_audio_data_sync_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(18),
      Q => right_audio_data_sync(18),
      R => '0'
    );
\right_audio_data_sync_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(19),
      Q => right_audio_data_sync(19),
      R => '0'
    );
\right_audio_data_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(1),
      Q => right_audio_data_sync(1),
      R => '0'
    );
\right_audio_data_sync_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(20),
      Q => right_audio_data_sync(20),
      R => '0'
    );
\right_audio_data_sync_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(21),
      Q => right_audio_data_sync(21),
      R => '0'
    );
\right_audio_data_sync_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(22),
      Q => right_audio_data_sync(22),
      R => '0'
    );
\right_audio_data_sync_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(23),
      Q => right_audio_data_sync(23),
      R => '0'
    );
\right_audio_data_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(2),
      Q => right_audio_data_sync(2),
      R => '0'
    );
\right_audio_data_sync_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(3),
      Q => right_audio_data_sync(3),
      R => '0'
    );
\right_audio_data_sync_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(4),
      Q => right_audio_data_sync(4),
      R => '0'
    );
\right_audio_data_sync_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(5),
      Q => right_audio_data_sync(5),
      R => '0'
    );
\right_audio_data_sync_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(6),
      Q => right_audio_data_sync(6),
      R => '0'
    );
\right_audio_data_sync_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(7),
      Q => right_audio_data_sync(7),
      R => '0'
    );
\right_audio_data_sync_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(8),
      Q => right_audio_data_sync(8),
      R => '0'
    );
\right_audio_data_sync_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rad1(9),
      Q => right_audio_data_sync(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_bclk_divider is
  port (
    slow_clock_bufg_0 : out STD_LOGIC;
    mclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_bclk_divider : entity is "bclk_divider";
end design_1_axis_i2s_wrapper_0_0_bclk_divider;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_bclk_divider is
  signal clock_counter : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \unbuffered_clk_i_1__0_n_0\ : STD_LOGIC;
  signal unbuffered_clk_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_counter[0]_i_1\ : label is "soft_lutpair14";
  attribute box_type : string;
  attribute box_type of slow_clock_bufg : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \unbuffered_clk_i_1__0\ : label is "soft_lutpair14";
begin
\clock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clock_counter,
      O => p_0_in
    );
\clock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => p_0_in,
      Q => clock_counter,
      R => '0'
    );
slow_clock_bufg: unisim.vcomponents.BUFG
     port map (
      I => unbuffered_clk_reg_n_0,
      O => slow_clock_bufg_0
    );
\unbuffered_clk_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clock_counter,
      I1 => unbuffered_clk_reg_n_0,
      O => \unbuffered_clk_i_1__0_n_0\
    );
unbuffered_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \unbuffered_clk_i_1__0_n_0\,
      Q => unbuffered_clk_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_clock_divider is
  port (
    lrclk_o : out STD_LOGIC;
    unbuffered_clk_reg_0 : out STD_LOGIC;
    unbuffered_clk_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_clock_divider : entity is "clock_divider";
end design_1_axis_i2s_wrapper_0_0_clock_divider;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_clock_divider is
  signal \clock_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \clock_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal unbuffered_clk_i_1_n_0 : STD_LOGIC;
  signal \^unbuffered_clk_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_counter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clock_counter[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clock_counter[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \clock_counter[4]_i_2\ : label is "soft_lutpair15";
  attribute box_type : string;
  attribute box_type of slow_clock_bufg : label is "PRIMITIVE";
begin
  unbuffered_clk_reg_0 <= \^unbuffered_clk_reg_0\;
\clock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      O => plusOp(0)
    );
\clock_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      O => plusOp(1)
    );
\clock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[1]\,
      I1 => \clock_counter_reg_n_0_[0]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      O => \clock_counter[2]_i_1_n_0\
    );
\clock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      I3 => \clock_counter_reg_n_0_[3]\,
      O => plusOp(3)
    );
\clock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      I3 => \clock_counter_reg_n_0_[3]\,
      I4 => \clock_counter_reg_n_0_[4]\,
      O => \clock_counter[4]_i_1_n_0\
    );
\clock_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[2]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      I2 => \clock_counter_reg_n_0_[0]\,
      I3 => \clock_counter_reg_n_0_[3]\,
      I4 => \clock_counter_reg_n_0_[4]\,
      O => plusOp(4)
    );
\clock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => unbuffered_clk_reg_1,
      CE => '1',
      D => plusOp(0),
      Q => \clock_counter_reg_n_0_[0]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => unbuffered_clk_reg_1,
      CE => '1',
      D => plusOp(1),
      Q => \clock_counter_reg_n_0_[1]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => unbuffered_clk_reg_1,
      CE => '1',
      D => \clock_counter[2]_i_1_n_0\,
      Q => \clock_counter_reg_n_0_[2]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => unbuffered_clk_reg_1,
      CE => '1',
      D => plusOp(3),
      Q => \clock_counter_reg_n_0_[3]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => unbuffered_clk_reg_1,
      CE => '1',
      D => plusOp(4),
      Q => \clock_counter_reg_n_0_[4]\,
      R => \clock_counter[4]_i_1_n_0\
    );
slow_clock_bufg: unisim.vcomponents.BUFG
     port map (
      I => \^unbuffered_clk_reg_0\,
      O => lrclk_o
    );
unbuffered_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[4]\,
      I1 => \clock_counter_reg_n_0_[3]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      I3 => \clock_counter_reg_n_0_[1]\,
      I4 => \clock_counter_reg_n_0_[0]\,
      I5 => \^unbuffered_clk_reg_0\,
      O => unbuffered_clk_i_1_n_0
    );
unbuffered_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => unbuffered_clk_reg_1,
      CE => '1',
      D => unbuffered_clk_i_1_n_0,
      Q => \^unbuffered_clk_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_counter is
  port (
    \FSM_sequential_curr_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[1]_0\ : out STD_LOGIC;
    shift_en : in STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_curr_state_reg[0]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_counter : entity is "counter";
end design_1_axis_i2s_wrapper_0_0_counter;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_counter is
  signal count_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_2_n_0\ : STD_LOGIC;
  signal counter_reset : STD_LOGIC;
  signal tc_o : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_int[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_int[1]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_int[2]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_int[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_int[4]_i_2\ : label is "soft_lutpair17";
begin
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C53"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(0),
      I2 => shift_en,
      I3 => \FSM_sequential_curr_state_reg[0]\,
      O => \FSM_sequential_curr_state_reg[1]\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(0),
      I2 => shift_en,
      O => \FSM_sequential_curr_state_reg[1]_0\
    );
\FSM_sequential_curr_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => count_int(2),
      I1 => count_int(1),
      I2 => count_int(0),
      I3 => count_int(4),
      I4 => count_int(3),
      O => tc_o
    );
\count_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(2),
      I2 => count_int(1),
      I3 => count_int(3),
      I4 => count_int(0),
      O => \count_int[0]_i_1_n_0\
    );
\count_int[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      O => \count_int[1]_i_1__0_n_0\
    );
\count_int[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_int(2),
      I1 => count_int(0),
      I2 => count_int(1),
      O => \count_int[2]_i_1__0_n_0\
    );
\count_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFDC000"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(2),
      I2 => count_int(0),
      I3 => count_int(1),
      I4 => count_int(3),
      O => \count_int[3]_i_1_n_0\
    );
\count_int[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_en,
      O => counter_reset
    );
\count_int[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA8AAAA"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(2),
      I2 => count_int(0),
      I3 => count_int(1),
      I4 => count_int(3),
      O => \count_int[4]_i_2_n_0\
    );
\count_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[0]_i_1_n_0\,
      Q => count_int(0),
      R => counter_reset
    );
\count_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[1]_i_1__0_n_0\,
      Q => count_int(1),
      R => counter_reset
    );
\count_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[2]_i_1__0_n_0\,
      Q => count_int(2),
      R => counter_reset
    );
\count_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[3]_i_1_n_0\,
      Q => count_int(3),
      R => counter_reset
    );
\count_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[4]_i_2_n_0\,
      Q => count_int(4),
      R => counter_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axis_i2s_wrapper_0_0_counter__parameterized1\ is
  port (
    \FSM_sequential_curr_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[2]_0\ : out STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_curr_state_reg[0]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_i2s_wrapper_0_0_counter__parameterized1\ : entity is "counter";
end \design_1_axis_i2s_wrapper_0_0_counter__parameterized1\;

architecture STRUCTURE of \design_1_axis_i2s_wrapper_0_0_counter__parameterized1\ is
  signal count_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_2__0_n_0\ : STD_LOGIC;
  signal counter_reset : STD_LOGIC;
  signal tc_o : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[2]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_int[0]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_int[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_int[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_int[3]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_int[4]_i_2__0\ : label is "soft_lutpair21";
begin
\FSM_sequential_curr_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC2244FC"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(2),
      I2 => \FSM_sequential_curr_state_reg[0]\,
      I3 => curr_state(0),
      I4 => curr_state(1),
      O => \FSM_sequential_curr_state_reg[2]_0\
    );
\FSM_sequential_curr_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC44CC"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(2),
      I2 => \FSM_sequential_curr_state_reg[0]\,
      I3 => curr_state(0),
      I4 => curr_state(1),
      O => \FSM_sequential_curr_state_reg[2]\
    );
\FSM_sequential_curr_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => count_int(3),
      I1 => count_int(4),
      I2 => count_int(2),
      I3 => count_int(0),
      I4 => count_int(1),
      O => tc_o
    );
\count_int[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_int(0),
      O => \count_int[0]_i_1__0_n_0\
    );
\count_int[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      O => \count_int[1]_i_1_n_0\
    );
\count_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      I2 => count_int(2),
      O => \count_int[2]_i_1_n_0\
    );
\count_int[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(0),
      I2 => count_int(1),
      I3 => count_int(2),
      I4 => count_int(3),
      O => \count_int[3]_i_1__0_n_0\
    );
\count_int[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => counter_reset
    );
\count_int[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA2AAA"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(0),
      I2 => count_int(1),
      I3 => count_int(2),
      I4 => count_int(3),
      O => \count_int[4]_i_2__0_n_0\
    );
\count_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[0]_i_1__0_n_0\,
      Q => count_int(0),
      R => counter_reset
    );
\count_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[1]_i_1_n_0\,
      Q => count_int(1),
      R => counter_reset
    );
\count_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[2]_i_1_n_0\,
      Q => count_int(2),
      R => counter_reset
    );
\count_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[3]_i_1__0_n_0\,
      Q => count_int(3),
      R => counter_reset
    );
\count_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_int[4]_i_2__0_n_0\,
      Q => count_int(4),
      R => counter_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_shift_register is
  port (
    ac_dac_data_o : out STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \shift_registerr_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_shift_register : entity is "shift_register";
end design_1_axis_i2s_wrapper_0_0_shift_register;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_shift_register is
  signal \^ac_dac_data_o\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal shift_registerr : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \shift_registerr[23]_i_1_n_0\ : STD_LOGIC;
begin
  ac_dac_data_o <= \^ac_dac_data_o\;
\shift_registerr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(0),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(0),
      I5 => \^ac_dac_data_o\,
      O => p_1_in(0)
    );
\shift_registerr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(10),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(10),
      I5 => shift_registerr(9),
      O => p_1_in(10)
    );
\shift_registerr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(11),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(11),
      I5 => shift_registerr(10),
      O => p_1_in(11)
    );
\shift_registerr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(12),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(12),
      I5 => shift_registerr(11),
      O => p_1_in(12)
    );
\shift_registerr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(13),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(13),
      I5 => shift_registerr(12),
      O => p_1_in(13)
    );
\shift_registerr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(14),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(14),
      I5 => shift_registerr(13),
      O => p_1_in(14)
    );
\shift_registerr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(15),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(15),
      I5 => shift_registerr(14),
      O => p_1_in(15)
    );
\shift_registerr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(16),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(16),
      I5 => shift_registerr(15),
      O => p_1_in(16)
    );
\shift_registerr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(17),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(17),
      I5 => shift_registerr(16),
      O => p_1_in(17)
    );
\shift_registerr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(18),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(18),
      I5 => shift_registerr(17),
      O => p_1_in(18)
    );
\shift_registerr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(19),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(19),
      I5 => shift_registerr(18),
      O => p_1_in(19)
    );
\shift_registerr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(1),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(1),
      I5 => shift_registerr(0),
      O => p_1_in(1)
    );
\shift_registerr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(20),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(20),
      I5 => shift_registerr(19),
      O => p_1_in(20)
    );
\shift_registerr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(21),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(21),
      I5 => shift_registerr(20),
      O => p_1_in(21)
    );
\shift_registerr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(22),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(22),
      I5 => shift_registerr(21),
      O => p_1_in(22)
    );
\shift_registerr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => curr_state(2),
      O => \shift_registerr[23]_i_1_n_0\
    );
\shift_registerr[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(23),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(23),
      I5 => shift_registerr(22),
      O => p_1_in(23)
    );
\shift_registerr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(2),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(2),
      I5 => shift_registerr(1),
      O => p_1_in(2)
    );
\shift_registerr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(3),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(3),
      I5 => shift_registerr(2),
      O => p_1_in(3)
    );
\shift_registerr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(4),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(4),
      I5 => shift_registerr(3),
      O => p_1_in(4)
    );
\shift_registerr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(5),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(5),
      I5 => shift_registerr(4),
      O => p_1_in(5)
    );
\shift_registerr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(6),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(6),
      I5 => shift_registerr(5),
      O => p_1_in(6)
    );
\shift_registerr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(7),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(7),
      I5 => shift_registerr(6),
      O => p_1_in(7)
    );
\shift_registerr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(8),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(8),
      I5 => shift_registerr(7),
      O => p_1_in(8)
    );
\shift_registerr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFCB00380008"
    )
        port map (
      I0 => \shift_registerr_reg[23]_0\(9),
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => Q(9),
      I5 => shift_registerr(8),
      O => p_1_in(9)
    );
\shift_registerr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(0),
      Q => shift_registerr(0),
      R => '0'
    );
\shift_registerr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(10),
      Q => shift_registerr(10),
      R => '0'
    );
\shift_registerr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(11),
      Q => shift_registerr(11),
      R => '0'
    );
\shift_registerr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(12),
      Q => shift_registerr(12),
      R => '0'
    );
\shift_registerr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(13),
      Q => shift_registerr(13),
      R => '0'
    );
\shift_registerr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(14),
      Q => shift_registerr(14),
      R => '0'
    );
\shift_registerr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(15),
      Q => shift_registerr(15),
      R => '0'
    );
\shift_registerr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(16),
      Q => shift_registerr(16),
      R => '0'
    );
\shift_registerr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(17),
      Q => shift_registerr(17),
      R => '0'
    );
\shift_registerr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(18),
      Q => shift_registerr(18),
      R => '0'
    );
\shift_registerr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(19),
      Q => shift_registerr(19),
      R => '0'
    );
\shift_registerr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(1),
      Q => shift_registerr(1),
      R => '0'
    );
\shift_registerr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(20),
      Q => shift_registerr(20),
      R => '0'
    );
\shift_registerr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(21),
      Q => shift_registerr(21),
      R => '0'
    );
\shift_registerr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(22),
      Q => shift_registerr(22),
      R => '0'
    );
\shift_registerr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(23),
      Q => \^ac_dac_data_o\,
      R => '0'
    );
\shift_registerr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(2),
      Q => shift_registerr(2),
      R => '0'
    );
\shift_registerr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(3),
      Q => shift_registerr(3),
      R => '0'
    );
\shift_registerr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(4),
      Q => shift_registerr(4),
      R => '0'
    );
\shift_registerr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(5),
      Q => shift_registerr(5),
      R => '0'
    );
\shift_registerr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(6),
      Q => shift_registerr(6),
      R => '0'
    );
\shift_registerr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(7),
      Q => shift_registerr(7),
      R => '0'
    );
\shift_registerr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(8),
      Q => shift_registerr(8),
      R => '0'
    );
\shift_registerr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_registerr[23]_i_1_n_0\,
      D => p_1_in(9),
      Q => shift_registerr(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_i2s_clk_gen is
  port (
    CLK : out STD_LOGIC;
    lrclk_o : out STD_LOGIC;
    unbuffered_clk_reg : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_i2s_clk_gen : entity is "i2s_clk_gen";
end design_1_axis_i2s_wrapper_0_0_i2s_clk_gen;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_i2s_clk_gen is
  component design_1_axis_i2s_wrapper_0_0_clk_wiz_01 is
  port (
    mclk : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  end component design_1_axis_i2s_wrapper_0_0_clk_wiz_01;
  signal \^clk\ : STD_LOGIC;
  signal \^lrclk_o\ : STD_LOGIC;
  signal mclk_o : STD_LOGIC;
  signal NLW_bclk_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_bclk_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  signal NLW_lrclk_adc_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_lrclk_adc_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  signal NLW_lrclk_dac_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_lrclk_dac_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  signal NLW_mclk_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_mclk_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of bclk_forward_oddr : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of bclk_forward_oddr : label is "TRUE";
  attribute box_type : string;
  attribute box_type of bclk_forward_oddr : label is "PRIMITIVE";
  attribute syn_black_box : string;
  attribute syn_black_box of clock_wiz : label is "TRUE";
  attribute OPT_MODIFIED of lrclk_adc_forward_oddr : label is "MLO";
  attribute \__SRVAL\ of lrclk_adc_forward_oddr : label is "TRUE";
  attribute box_type of lrclk_adc_forward_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED of lrclk_dac_forward_oddr : label is "MLO";
  attribute \__SRVAL\ of lrclk_dac_forward_oddr : label is "TRUE";
  attribute box_type of lrclk_dac_forward_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED of mclk_forward_oddr : label is "MLO";
  attribute \__SRVAL\ of mclk_forward_oddr : label is "TRUE";
  attribute box_type of mclk_forward_oddr : label is "PRIMITIVE";
begin
  CLK <= \^clk\;
  lrclk_o <= \^lrclk_o\;
bclk_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^clk\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_bclk_o,
      R => NLW_bclk_forward_oddr_R_UNCONNECTED,
      S => NLW_bclk_forward_oddr_S_UNCONNECTED
    );
bclock_divider: entity work.design_1_axis_i2s_wrapper_0_0_bclk_divider
     port map (
      mclk => mclk_o,
      slow_clock_bufg_0 => \^clk\
    );
clock_wiz: component design_1_axis_i2s_wrapper_0_0_clk_wiz_01
     port map (
      mclk => mclk_o,
      sysclk => sysclk_i
    );
lrclk_adc_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^lrclk_o\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_adc_lrclk_o,
      R => NLW_lrclk_adc_forward_oddr_R_UNCONNECTED,
      S => NLW_lrclk_adc_forward_oddr_S_UNCONNECTED
    );
lrclk_dac_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^lrclk_o\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_dac_lrclk_o,
      R => NLW_lrclk_dac_forward_oddr_R_UNCONNECTED,
      S => NLW_lrclk_dac_forward_oddr_S_UNCONNECTED
    );
lrclock_divider: entity work.design_1_axis_i2s_wrapper_0_0_clock_divider
     port map (
      lrclk_o => \^lrclk_o\,
      unbuffered_clk_reg_0 => unbuffered_clk_reg,
      unbuffered_clk_reg_1 => \^clk\
    );
mclk_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => mclk_o,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_mclk_o,
      R => NLW_mclk_forward_oddr_R_UNCONNECTED,
      S => NLW_mclk_forward_oddr_S_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_i2s_receiver is
  port (
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \left_audio_reg_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \FSM_sequential_curr_state_reg[0]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_i2s_receiver : entity is "i2s_receiver";
end design_1_axis_i2s_wrapper_0_0_i2s_receiver;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_i2s_receiver is
  signal bit_counter_n_0 : STD_LOGIC;
  signal bit_counter_n_1 : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \left_audio_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal right_save_en : STD_LOGIC;
  signal shift_en : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "readleft:01,idlestate2:10,idlestate1:00,readright:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "readleft:01,idlestate2:10,idlestate1:00,readright:11";
begin
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_0,
      Q => shift_en,
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_1,
      Q => curr_state(1),
      R => '0'
    );
bit_counter: entity work.design_1_axis_i2s_wrapper_0_0_counter
     port map (
      CLK => CLK,
      \FSM_sequential_curr_state_reg[0]\ => \FSM_sequential_curr_state_reg[0]_0\,
      \FSM_sequential_curr_state_reg[1]\ => bit_counter_n_0,
      \FSM_sequential_curr_state_reg[1]_0\ => bit_counter_n_1,
      curr_state(0) => curr_state(1),
      shift_en => shift_en
    );
\left_audio_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_state(1),
      I1 => shift_en,
      O => \left_audio_reg[23]_i_1_n_0\
    );
\left_audio_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(0),
      Q => \left_audio_reg_reg[23]_0\(0),
      R => '0'
    );
\left_audio_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(10),
      Q => \left_audio_reg_reg[23]_0\(10),
      R => '0'
    );
\left_audio_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(11),
      Q => \left_audio_reg_reg[23]_0\(11),
      R => '0'
    );
\left_audio_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(12),
      Q => \left_audio_reg_reg[23]_0\(12),
      R => '0'
    );
\left_audio_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(13),
      Q => \left_audio_reg_reg[23]_0\(13),
      R => '0'
    );
\left_audio_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(14),
      Q => \left_audio_reg_reg[23]_0\(14),
      R => '0'
    );
\left_audio_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(15),
      Q => \left_audio_reg_reg[23]_0\(15),
      R => '0'
    );
\left_audio_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(16),
      Q => \left_audio_reg_reg[23]_0\(16),
      R => '0'
    );
\left_audio_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(17),
      Q => \left_audio_reg_reg[23]_0\(17),
      R => '0'
    );
\left_audio_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(18),
      Q => \left_audio_reg_reg[23]_0\(18),
      R => '0'
    );
\left_audio_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(19),
      Q => \left_audio_reg_reg[23]_0\(19),
      R => '0'
    );
\left_audio_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(1),
      Q => \left_audio_reg_reg[23]_0\(1),
      R => '0'
    );
\left_audio_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(20),
      Q => \left_audio_reg_reg[23]_0\(20),
      R => '0'
    );
\left_audio_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(21),
      Q => \left_audio_reg_reg[23]_0\(21),
      R => '0'
    );
\left_audio_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(22),
      Q => \left_audio_reg_reg[23]_0\(22),
      R => '0'
    );
\left_audio_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(23),
      Q => \left_audio_reg_reg[23]_0\(23),
      R => '0'
    );
\left_audio_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(2),
      Q => \left_audio_reg_reg[23]_0\(2),
      R => '0'
    );
\left_audio_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(3),
      Q => \left_audio_reg_reg[23]_0\(3),
      R => '0'
    );
\left_audio_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(4),
      Q => \left_audio_reg_reg[23]_0\(4),
      R => '0'
    );
\left_audio_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(5),
      Q => \left_audio_reg_reg[23]_0\(5),
      R => '0'
    );
\left_audio_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(6),
      Q => \left_audio_reg_reg[23]_0\(6),
      R => '0'
    );
\left_audio_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(7),
      Q => \left_audio_reg_reg[23]_0\(7),
      R => '0'
    );
\left_audio_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(8),
      Q => \left_audio_reg_reg[23]_0\(8),
      R => '0'
    );
\left_audio_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \left_audio_reg[23]_i_1_n_0\,
      D => shift_reg(9),
      Q => \left_audio_reg_reg[23]_0\(9),
      R => '0'
    );
\right_audio_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_en,
      I1 => curr_state(1),
      O => right_save_en
    );
\right_audio_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(0),
      Q => Q(0),
      R => '0'
    );
\right_audio_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(10),
      Q => Q(10),
      R => '0'
    );
\right_audio_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(11),
      Q => Q(11),
      R => '0'
    );
\right_audio_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(12),
      Q => Q(12),
      R => '0'
    );
\right_audio_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(13),
      Q => Q(13),
      R => '0'
    );
\right_audio_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(14),
      Q => Q(14),
      R => '0'
    );
\right_audio_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(15),
      Q => Q(15),
      R => '0'
    );
\right_audio_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(16),
      Q => Q(16),
      R => '0'
    );
\right_audio_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(17),
      Q => Q(17),
      R => '0'
    );
\right_audio_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(18),
      Q => Q(18),
      R => '0'
    );
\right_audio_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(19),
      Q => Q(19),
      R => '0'
    );
\right_audio_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(1),
      Q => Q(1),
      R => '0'
    );
\right_audio_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(20),
      Q => Q(20),
      R => '0'
    );
\right_audio_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(21),
      Q => Q(21),
      R => '0'
    );
\right_audio_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(22),
      Q => Q(22),
      R => '0'
    );
\right_audio_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(23),
      Q => Q(23),
      R => '0'
    );
\right_audio_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(2),
      Q => Q(2),
      R => '0'
    );
\right_audio_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(3),
      Q => Q(3),
      R => '0'
    );
\right_audio_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(4),
      Q => Q(4),
      R => '0'
    );
\right_audio_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(5),
      Q => Q(5),
      R => '0'
    );
\right_audio_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(6),
      Q => Q(6),
      R => '0'
    );
\right_audio_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(7),
      Q => Q(7),
      R => '0'
    );
\right_audio_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(8),
      Q => Q(8),
      R => '0'
    );
\right_audio_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => right_save_en,
      D => shift_reg(9),
      Q => Q(9),
      R => '0'
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => ac_adc_data_i,
      Q => shift_reg(0),
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(9),
      Q => shift_reg(10),
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(10),
      Q => shift_reg(11),
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(11),
      Q => shift_reg(12),
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(12),
      Q => shift_reg(13),
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(13),
      Q => shift_reg(14),
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(14),
      Q => shift_reg(15),
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(15),
      Q => shift_reg(16),
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(16),
      Q => shift_reg(17),
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(17),
      Q => shift_reg(18),
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(18),
      Q => shift_reg(19),
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(0),
      Q => shift_reg(1),
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(19),
      Q => shift_reg(20),
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(20),
      Q => shift_reg(21),
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(21),
      Q => shift_reg(22),
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(22),
      Q => shift_reg(23),
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(1),
      Q => shift_reg(2),
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(2),
      Q => shift_reg(3),
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(3),
      Q => shift_reg(4),
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(4),
      Q => shift_reg(5),
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(5),
      Q => shift_reg(6),
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(6),
      Q => shift_reg(7),
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(7),
      Q => shift_reg(8),
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => shift_reg(8),
      Q => shift_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_i2s_transmitter is
  port (
    ac_dac_data_o : out STD_LOGIC;
    \shift_registerr_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \FSM_sequential_curr_state_reg[0]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_i2s_transmitter : entity is "i2s_transmitter";
end design_1_axis_i2s_wrapper_0_0_i2s_transmitter;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_i2s_transmitter is
  signal \FSM_sequential_curr_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal bit_counter_n_0 : STD_LOGIC;
  signal bit_counter_n_1 : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "idlestate1:000,loadrightregister:001,shiftrightdata:010,idlestate2:011,loadleftregister:100,shiftleftdata:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "idlestate1:000,loadrightregister:001,shiftrightdata:010,idlestate2:011,loadleftregister:100,shiftleftdata:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "idlestate1:000,loadrightregister:001,shiftrightdata:010,idlestate2:011,loadleftregister:100,shiftleftdata:101,";
begin
\FSM_sequential_curr_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF50"
    )
        port map (
      I0 => curr_state(2),
      I1 => \FSM_sequential_curr_state_reg[0]_0\,
      I2 => curr_state(0),
      I3 => curr_state(1),
      O => \FSM_sequential_curr_state[1]_i_1__0_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_1,
      Q => curr_state(0),
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_curr_state[1]_i_1__0_n_0\,
      Q => curr_state(1),
      R => '0'
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_0,
      Q => curr_state(2),
      R => '0'
    );
bit_counter: entity work.\design_1_axis_i2s_wrapper_0_0_counter__parameterized1\
     port map (
      CLK => CLK,
      \FSM_sequential_curr_state_reg[0]\ => \FSM_sequential_curr_state_reg[0]_0\,
      \FSM_sequential_curr_state_reg[2]\ => bit_counter_n_0,
      \FSM_sequential_curr_state_reg[2]_0\ => bit_counter_n_1,
      curr_state(2 downto 0) => curr_state(2 downto 0)
    );
shift_reg: entity work.design_1_axis_i2s_wrapper_0_0_shift_register
     port map (
      CLK => CLK,
      Q(23 downto 0) => Q(23 downto 0),
      ac_dac_data_o => ac_dac_data_o,
      curr_state(2 downto 0) => curr_state(2 downto 0),
      \shift_registerr_reg[23]_0\(23 downto 0) => \shift_registerr_reg[23]\(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper is
  port (
    sysclk_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    lrclk_unbuff_o : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute AC_DATA_WIDTH : integer;
  attribute AC_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 24;
  attribute C_AXI_STREAM_DATA_WIDTH : integer;
  attribute C_AXI_STREAM_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 32;
  attribute DDS_DATA_WIDTH : integer;
  attribute DDS_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 24;
  attribute DDS_PHASE_DATA_WIDTH : integer;
  attribute DDS_PHASE_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 12;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is "axis_i2s_wrapper";
end design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal bclk_o : STD_LOGIC;
  signal left_audio_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal lrclk_o : STD_LOGIC;
  signal \^lrclk_unbuff_o\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal right_audio_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  ac_mute_n_o <= \<const0>\;
  lrclk_unbuff_o <= \^lrclk_unbuff_o\;
  m00_axis_tdata(31 downto 7) <= \^m00_axis_tdata\(31 downto 7);
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const0>\;
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const0>\;
  m00_axis_tstrb(2) <= \<const0>\;
  m00_axis_tstrb(1) <= \<const0>\;
  m00_axis_tstrb(0) <= \<const0>\;
  s00_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axis_trans: entity work.design_1_axis_i2s_wrapper_0_0_axis_transmitter_interface
     port map (
      Q(23 downto 0) => right_audio_reg(23 downto 0),
      \lad1_reg[23]_0\(23 downto 0) => left_audio_reg(23 downto 0),
      lrclk_o => lrclk_o,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_tdata(24 downto 0) => \^m00_axis_tdata\(31 downto 7),
      m00_axis_tvalid => m00_axis_tvalid
    );
the_clock_generator: entity work.design_1_axis_i2s_wrapper_0_0_i2s_clk_gen
     port map (
      CLK => bclk_o,
      ac_adc_lrclk_o => ac_adc_lrclk_o,
      ac_bclk_o => ac_bclk_o,
      ac_dac_lrclk_o => ac_dac_lrclk_o,
      ac_mclk_o => ac_mclk_o,
      lrclk_o => lrclk_o,
      sysclk_i => sysclk_i,
      unbuffered_clk_reg => \^lrclk_unbuff_o\
    );
the_i2s_receiver: entity work.design_1_axis_i2s_wrapper_0_0_i2s_receiver
     port map (
      CLK => bclk_o,
      \FSM_sequential_curr_state_reg[0]_0\ => \^lrclk_unbuff_o\,
      Q(23 downto 0) => right_audio_reg(23 downto 0),
      ac_adc_data_i => ac_adc_data_i,
      \left_audio_reg_reg[23]_0\(23 downto 0) => left_audio_reg(23 downto 0)
    );
the_i2s_transmitter: entity work.design_1_axis_i2s_wrapper_0_0_i2s_transmitter
     port map (
      CLK => bclk_o,
      \FSM_sequential_curr_state_reg[0]_0\ => \^lrclk_unbuff_o\,
      Q(23 downto 0) => right_audio_reg(23 downto 0),
      ac_dac_data_o => ac_dac_data_o,
      \shift_registerr_reg[23]\(23 downto 0) => left_audio_reg(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0 is
  port (
    sysclk_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    lrclk_unbuff_o : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_i2s_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_i2s_wrapper_0_0 : entity is "design_1_axis_i2s_wrapper_0_0,axis_i2s_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axis_i2s_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_axis_i2s_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axis_i2s_wrapper_0_0 : entity is "axis_i2s_wrapper,Vivado 2023.1";
end design_1_axis_i2s_wrapper_0_0;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_U0_ac_mute_n_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m00_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s00_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m00_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_m00_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute AC_DATA_WIDTH : integer;
  attribute AC_DATA_WIDTH of U0 : label is 24;
  attribute C_AXI_STREAM_DATA_WIDTH : integer;
  attribute C_AXI_STREAM_DATA_WIDTH of U0 : label is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DDS_DATA_WIDTH : integer;
  attribute DDS_DATA_WIDTH of U0 : label is 24;
  attribute DDS_PHASE_DATA_WIDTH : integer;
  attribute DDS_PHASE_DATA_WIDTH of U0 : label is 12;
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m00_axis TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 m00_axis TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m00_axis TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s00_axis TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 s00_axis TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s00_axis TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m00_axis TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m00_axis TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s00_axis TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s00_axis TSTRB";
begin
  ac_mute_n_o <= \<const1>\;
  m00_axis_tdata(31 downto 7) <= \^m00_axis_tdata\(31 downto 7);
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const0>\;
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const0>\;
  m00_axis_tstrb(2) <= \<const0>\;
  m00_axis_tstrb(1) <= \<const0>\;
  m00_axis_tstrb(0) <= \<const0>\;
  s00_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper
     port map (
      ac_adc_data_i => ac_adc_data_i,
      ac_adc_lrclk_o => ac_adc_lrclk_o,
      ac_bclk_o => ac_bclk_o,
      ac_dac_data_o => ac_dac_data_o,
      ac_dac_lrclk_o => ac_dac_lrclk_o,
      ac_mclk_o => ac_mclk_o,
      ac_mute_n_o => NLW_U0_ac_mute_n_o_UNCONNECTED,
      lrclk_unbuff_o => lrclk_unbuff_o,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => '0',
      m00_axis_tdata(31 downto 7) => \^m00_axis_tdata\(31 downto 7),
      m00_axis_tdata(6 downto 0) => NLW_U0_m00_axis_tdata_UNCONNECTED(6 downto 0),
      m00_axis_tlast => NLW_U0_m00_axis_tlast_UNCONNECTED,
      m00_axis_tready => '0',
      m00_axis_tstrb(3 downto 0) => NLW_U0_m00_axis_tstrb_UNCONNECTED(3 downto 0),
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_aclk => '0',
      s00_axis_aresetn => '0',
      s00_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s00_axis_tlast => '0',
      s00_axis_tready => NLW_U0_s00_axis_tready_UNCONNECTED,
      s00_axis_tstrb(3 downto 0) => B"0000",
      s00_axis_tvalid => '0',
      sysclk_i => sysclk_i
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
