-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 27 14:54:48 2025
-- Host        : brad69 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axis_fifo_3_0 -prefix
--               design_1_axis_fifo_3_0_ design_1_axis_fifo_3_0_sim_netlist.vhdl
-- Design      : design_1_axis_fifo_3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_fifo_3_0_fifo is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    empty_o : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    empty_reg : in STD_LOGIC
  );
end design_1_axis_fifo_3_0_fifo;

architecture STRUCTURE of design_1_axis_fifo_3_0_fifo is
  signal data_count : STD_LOGIC;
  signal \data_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_count[9]_i_3_n_0\ : STD_LOGIC;
  signal data_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \data_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \data_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \data_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \data_count_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal fifo_buf_reg_i_2_n_0 : STD_LOGIC;
  signal m00_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m00_axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal read_pointer : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal read_pointer3 : STD_LOGIC;
  signal \read_pointer[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reset : STD_LOGIC;
  signal s00_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal write_enable : STD_LOGIC;
  signal write_pointer : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \write_pointer[9]_i_3_n_0\ : STD_LOGIC;
  signal \write_pointer__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_data_count_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_count_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_buf_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_buf_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_buf_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_buf_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_buf_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_buf_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_buf_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_buf_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_buf_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_buf_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_buf_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \data_count_reg[4]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \data_count_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \data_count_reg[8]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \data_count_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \data_count_reg[9]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \data_count_reg[9]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_reg_i_1 : label is "soft_lutpair8";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_buf_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_buf_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS of fifo_buf_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_buf_reg : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_buf_reg : label is "U0/uut/fifo_buf_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_buf_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_buf_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_buf_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_buf_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_buf_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_buf_reg : label is 31;
  attribute SOFT_HLUTNM of m00_axis_tlast_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_pointer[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_pointer[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_pointer[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_pointer[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_pointer[9]_i_2\ : label is "soft_lutpair1";
begin
\data_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_count_reg(0),
      O => \data_count[0]_i_1_n_0\
    );
\data_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_count_reg(1),
      O => \data_count[4]_i_2_n_0\
    );
\data_count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(3),
      I1 => data_count_reg(4),
      O => \data_count[4]_i_3_n_0\
    );
\data_count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(2),
      I1 => data_count_reg(3),
      O => \data_count[4]_i_4_n_0\
    );
\data_count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(1),
      I1 => data_count_reg(2),
      O => \data_count[4]_i_5_n_0\
    );
\data_count[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => data_count_reg(1),
      I1 => s00_axis_tvalid,
      I2 => s00_axis_aresetn,
      I3 => read_pointer3,
      O => \data_count[4]_i_6_n_0\
    );
\data_count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(7),
      I1 => data_count_reg(8),
      O => \data_count[8]_i_2_n_0\
    );
\data_count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(6),
      I1 => data_count_reg(7),
      O => \data_count[8]_i_3_n_0\
    );
\data_count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(5),
      I1 => data_count_reg(6),
      O => \data_count[8]_i_4_n_0\
    );
\data_count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(4),
      I1 => data_count_reg(5),
      O => \data_count[8]_i_5_n_0\
    );
\data_count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78DC"
    )
        port map (
      I0 => read_pointer3,
      I1 => s00_axis_tvalid,
      I2 => m00_axis_tready,
      I3 => m00_axis_tlast_INST_0_i_1_n_0,
      O => data_count
    );
\data_count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_count_reg(9),
      I1 => data_count_reg(8),
      O => \data_count[9]_i_3_n_0\
    );
\data_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count[0]_i_1_n_0\,
      Q => data_count_reg(0),
      R => reset
    );
\data_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[4]_i_1_n_7\,
      Q => data_count_reg(1),
      R => reset
    );
\data_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[4]_i_1_n_6\,
      Q => data_count_reg(2),
      R => reset
    );
\data_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[4]_i_1_n_5\,
      Q => data_count_reg(3),
      R => reset
    );
\data_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[4]_i_1_n_4\,
      Q => data_count_reg(4),
      R => reset
    );
\data_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_count_reg[4]_i_1_n_0\,
      CO(2) => \data_count_reg[4]_i_1_n_1\,
      CO(1) => \data_count_reg[4]_i_1_n_2\,
      CO(0) => \data_count_reg[4]_i_1_n_3\,
      CYINIT => data_count_reg(0),
      DI(3 downto 1) => data_count_reg(3 downto 1),
      DI(0) => \data_count[4]_i_2_n_0\,
      O(3) => \data_count_reg[4]_i_1_n_4\,
      O(2) => \data_count_reg[4]_i_1_n_5\,
      O(1) => \data_count_reg[4]_i_1_n_6\,
      O(0) => \data_count_reg[4]_i_1_n_7\,
      S(3) => \data_count[4]_i_3_n_0\,
      S(2) => \data_count[4]_i_4_n_0\,
      S(1) => \data_count[4]_i_5_n_0\,
      S(0) => \data_count[4]_i_6_n_0\
    );
\data_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[8]_i_1_n_7\,
      Q => data_count_reg(5),
      R => reset
    );
\data_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[8]_i_1_n_6\,
      Q => data_count_reg(6),
      R => reset
    );
\data_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[8]_i_1_n_5\,
      Q => data_count_reg(7),
      R => reset
    );
\data_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[8]_i_1_n_4\,
      Q => data_count_reg(8),
      R => reset
    );
\data_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_count_reg[4]_i_1_n_0\,
      CO(3) => \data_count_reg[8]_i_1_n_0\,
      CO(2) => \data_count_reg[8]_i_1_n_1\,
      CO(1) => \data_count_reg[8]_i_1_n_2\,
      CO(0) => \data_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_count_reg(7 downto 4),
      O(3) => \data_count_reg[8]_i_1_n_4\,
      O(2) => \data_count_reg[8]_i_1_n_5\,
      O(1) => \data_count_reg[8]_i_1_n_6\,
      O(0) => \data_count_reg[8]_i_1_n_7\,
      S(3) => \data_count[8]_i_2_n_0\,
      S(2) => \data_count[8]_i_3_n_0\,
      S(1) => \data_count[8]_i_4_n_0\,
      S(0) => \data_count[8]_i_5_n_0\
    );
\data_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => data_count,
      D => \data_count_reg[9]_i_2_n_7\,
      Q => data_count_reg(9),
      R => reset
    );
\data_count_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_count_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_data_count_reg[9]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_data_count_reg[9]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \data_count_reg[9]_i_2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \data_count[9]_i_3_n_0\
    );
empty_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_tlast_INST_0_i_1_n_0,
      O => empty_o
    );
fifo_buf_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => write_pointer(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => read_pointer(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_buf_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_buf_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axis_aclk,
      CLKBWRCLK => s00_axis_aclk,
      DBITERR => NLW_fifo_buf_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => s00_axis_tdata(31 downto 0),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_fifo_buf_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => m00_axis_tdata(31 downto 0),
      DOPADOP(3 downto 0) => NLW_fifo_buf_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_fifo_buf_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_fifo_buf_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => write_enable,
      ENBWREN => fifo_buf_reg_i_2_n_0,
      INJECTDBITERR => NLW_fifo_buf_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_buf_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_buf_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_buf_reg_SBITERR_UNCONNECTED,
      WEA(3) => read_pointer3,
      WEA(2) => read_pointer3,
      WEA(1) => read_pointer3,
      WEA(0) => read_pointer3,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_buf_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_pointer3,
      I1 => s00_axis_aresetn,
      I2 => s00_axis_tvalid,
      O => write_enable
    );
fifo_buf_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m00_axis_tlast_INST_0_i_1_n_0,
      I1 => s00_axis_aresetn,
      I2 => m00_axis_tready,
      O => fifo_buf_reg_i_2_n_0
    );
m00_axis_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_tlast_INST_0_i_1_n_0,
      I1 => empty_reg,
      O => m00_axis_tlast
    );
m00_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => m00_axis_tlast_INST_0_i_2_n_0,
      I1 => data_count_reg(4),
      I2 => data_count_reg(5),
      I3 => data_count_reg(2),
      I4 => data_count_reg(3),
      O => m00_axis_tlast_INST_0_i_1_n_0
    );
m00_axis_tlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data_count_reg(8),
      I1 => data_count_reg(9),
      I2 => data_count_reg(6),
      I3 => data_count_reg(7),
      I4 => data_count_reg(1),
      I5 => data_count_reg(0),
      O => m00_axis_tlast_INST_0_i_2_n_0
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer(0),
      O => \read_pointer__0\(0)
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer(0),
      I1 => read_pointer(1),
      O => \read_pointer__0\(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(0),
      I2 => read_pointer(2),
      O => \read_pointer__0\(2)
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_pointer(2),
      I1 => read_pointer(0),
      I2 => read_pointer(1),
      I3 => read_pointer(3),
      O => \read_pointer__0\(3)
    );
\read_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_pointer(3),
      I1 => read_pointer(1),
      I2 => read_pointer(0),
      I3 => read_pointer(2),
      I4 => read_pointer(4),
      O => \read_pointer__0\(4)
    );
\read_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_pointer(4),
      I1 => read_pointer(2),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => read_pointer(3),
      I5 => read_pointer(5),
      O => \read_pointer__0\(5)
    );
\read_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \read_pointer[8]_i_2_n_0\,
      I1 => read_pointer(6),
      O => \read_pointer__0\(6)
    );
\read_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => read_pointer(6),
      I1 => \read_pointer[8]_i_2_n_0\,
      I2 => read_pointer(7),
      O => \read_pointer__0\(7)
    );
\read_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => read_pointer(7),
      I1 => \read_pointer[8]_i_2_n_0\,
      I2 => read_pointer(6),
      I3 => read_pointer(8),
      O => \read_pointer__0\(8)
    );
\read_pointer[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => read_pointer(4),
      I1 => read_pointer(2),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => read_pointer(3),
      I5 => read_pointer(5),
      O => \read_pointer[8]_i_2_n_0\
    );
\read_pointer[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => read_pointer(8),
      I1 => read_pointer(6),
      I2 => \read_pointer[8]_i_2_n_0\,
      I3 => read_pointer(7),
      I4 => read_pointer(9),
      O => \read_pointer__0\(9)
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(0),
      Q => read_pointer(0),
      R => reset
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(1),
      Q => read_pointer(1),
      R => reset
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(2),
      Q => read_pointer(2),
      R => reset
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(3),
      Q => read_pointer(3),
      R => reset
    );
\read_pointer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(4),
      Q => read_pointer(4),
      R => reset
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(5),
      Q => read_pointer(5),
      R => reset
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(6),
      Q => read_pointer(6),
      R => reset
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(7),
      Q => read_pointer(7),
      R => reset
    );
\read_pointer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(8),
      Q => read_pointer(8),
      R => reset
    );
\read_pointer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => fifo_buf_reg_i_2_n_0,
      D => \read_pointer__0\(9),
      Q => read_pointer(9),
      R => reset
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_pointer3,
      I1 => s00_axis_aresetn,
      O => s00_axis_tready
    );
s00_axis_tready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => s00_axis_tready_INST_0_i_2_n_0,
      I1 => data_count_reg(4),
      I2 => data_count_reg(5),
      I3 => data_count_reg(2),
      I4 => data_count_reg(3),
      O => read_pointer3
    );
s00_axis_tready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => data_count_reg(8),
      I1 => data_count_reg(9),
      I2 => data_count_reg(6),
      I3 => data_count_reg(7),
      I4 => data_count_reg(1),
      I5 => data_count_reg(0),
      O => s00_axis_tready_INST_0_i_2_n_0
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer(0),
      O => \write_pointer__0\(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer(0),
      I1 => write_pointer(1),
      O => \write_pointer__0\(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer(1),
      I1 => write_pointer(0),
      I2 => write_pointer(2),
      O => \write_pointer__0\(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_pointer(2),
      I1 => write_pointer(0),
      I2 => write_pointer(1),
      I3 => write_pointer(3),
      O => \write_pointer__0\(3)
    );
\write_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_pointer(3),
      I1 => write_pointer(1),
      I2 => write_pointer(0),
      I3 => write_pointer(2),
      I4 => write_pointer(4),
      O => \write_pointer__0\(4)
    );
\write_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_pointer(4),
      I1 => write_pointer(2),
      I2 => write_pointer(0),
      I3 => write_pointer(1),
      I4 => write_pointer(3),
      I5 => write_pointer(5),
      O => \write_pointer__0\(5)
    );
\write_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \write_pointer[9]_i_3_n_0\,
      I1 => write_pointer(6),
      O => \write_pointer__0\(6)
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => write_pointer(6),
      I1 => \write_pointer[9]_i_3_n_0\,
      I2 => write_pointer(7),
      O => \write_pointer__0\(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => write_pointer(7),
      I1 => \write_pointer[9]_i_3_n_0\,
      I2 => write_pointer(6),
      I3 => write_pointer(8),
      O => \write_pointer__0\(8)
    );
\write_pointer[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => reset
    );
\write_pointer[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => write_pointer(8),
      I1 => write_pointer(6),
      I2 => \write_pointer[9]_i_3_n_0\,
      I3 => write_pointer(7),
      I4 => write_pointer(9),
      O => \write_pointer__0\(9)
    );
\write_pointer[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_pointer(4),
      I1 => write_pointer(2),
      I2 => write_pointer(0),
      I3 => write_pointer(1),
      I4 => write_pointer(3),
      I5 => write_pointer(5),
      O => \write_pointer[9]_i_3_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(0),
      Q => write_pointer(0),
      R => reset
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(1),
      Q => write_pointer(1),
      R => reset
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(2),
      Q => write_pointer(2),
      R => reset
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(3),
      Q => write_pointer(3),
      R => reset
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(4),
      Q => write_pointer(4),
      R => reset
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(5),
      Q => write_pointer(5),
      R => reset
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(6),
      Q => write_pointer(6),
      R => reset
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(7),
      Q => write_pointer(7),
      R => reset
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(8),
      Q => write_pointer(8),
      R => reset
    );
\write_pointer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => write_enable,
      D => \write_pointer__0\(9),
      Q => write_pointer(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_fifo_3_0_axis_fifo is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tready : in STD_LOGIC
  );
end design_1_axis_fifo_3_0_axis_fifo;

architecture STRUCTURE of design_1_axis_fifo_3_0_axis_fifo is
  signal empty_o : STD_LOGIC;
  signal empty_reg : STD_LOGIC;
begin
empty_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => empty_o,
      Q => empty_reg,
      R => '0'
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => empty_reg,
      O => m00_axis_tvalid
    );
uut: entity work.design_1_axis_fifo_3_0_fifo
     port map (
      empty_o => empty_o,
      empty_reg => empty_reg,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_fifo_3_0 is
  port (
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
  attribute NotValidForBitStream of design_1_axis_fifo_3_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_fifo_3_0 : entity is "design_1_axis_fifo_3_0,axis_fifo,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axis_fifo_3_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_axis_fifo_3_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axis_fifo_3_0 : entity is "axis_fifo,Vivado 2023.1";
end design_1_axis_fifo_3_0;

architecture STRUCTURE of design_1_axis_fifo_3_0 is
  signal \^s00_axis_tstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  \^s00_axis_tstrb\(3 downto 0) <= s00_axis_tstrb(3 downto 0);
  m00_axis_tstrb(3 downto 0) <= \^s00_axis_tstrb\(3 downto 0);
U0: entity work.design_1_axis_fifo_3_0_axis_fifo
     port map (
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
