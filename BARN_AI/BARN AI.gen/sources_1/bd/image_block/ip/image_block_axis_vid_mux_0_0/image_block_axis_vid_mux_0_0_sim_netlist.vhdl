-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jul 25 13:36:59 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axis_vid_mux_0_0/image_block_axis_vid_mux_0_0_sim_netlist.vhdl}
-- Design      : image_block_axis_vid_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_vid_mux_0_0_axis_vid_mux is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    s1_axis_tready : out STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sel : in STD_LOGIC;
    s0_axis_tuser : in STD_LOGIC;
    s1_axis_tuser : in STD_LOGIC;
    s0_axis_tvalid : in STD_LOGIC;
    s1_axis_tvalid : in STD_LOGIC;
    s1_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s1_axis_tlast : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axis_vid_mux_0_0_axis_vid_mux : entity is "axis_vid_mux";
end image_block_axis_vid_mux_0_0_axis_vid_mux;

architecture STRUCTURE of image_block_axis_vid_mux_0_0_axis_vid_mux is
  signal in_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_tlast : STD_LOGIC;
  signal in_tuser : STD_LOGIC;
  signal \m_axis_tdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_5_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal pass_i_1_n_0 : STD_LOGIC;
  signal pass_reg_n_0 : STD_LOGIC;
  signal s0_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal sel_act : STD_LOGIC;
  signal sel_act_i_1_n_0 : STD_LOGIC;
  signal take : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of m_axis_tlast_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of m_axis_tuser_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s0_axis_tready_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sel_act_i_1 : label is "soft_lutpair1";
begin
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(0),
      I1 => sel_act,
      I2 => s0_axis_tdata(0),
      O => in_tdata(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(10),
      I1 => sel_act,
      I2 => s0_axis_tdata(10),
      O => in_tdata(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(11),
      I1 => sel_act,
      I2 => s0_axis_tdata(11),
      O => in_tdata(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(12),
      I1 => sel_act,
      I2 => s0_axis_tdata(12),
      O => in_tdata(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(13),
      I1 => sel_act,
      I2 => s0_axis_tdata(13),
      O => in_tdata(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(14),
      I1 => sel_act,
      I2 => s0_axis_tdata(14),
      O => in_tdata(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(15),
      I1 => sel_act,
      I2 => s0_axis_tdata(15),
      O => in_tdata(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(16),
      I1 => sel_act,
      I2 => s0_axis_tdata(16),
      O => in_tdata(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(17),
      I1 => sel_act,
      I2 => s0_axis_tdata(17),
      O => in_tdata(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(18),
      I1 => sel_act,
      I2 => s0_axis_tdata(18),
      O => in_tdata(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(19),
      I1 => sel_act,
      I2 => s0_axis_tdata(19),
      O => in_tdata(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(1),
      I1 => sel_act,
      I2 => s0_axis_tdata(1),
      O => in_tdata(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(20),
      I1 => sel_act,
      I2 => s0_axis_tdata(20),
      O => in_tdata(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(21),
      I1 => sel_act,
      I2 => s0_axis_tdata(21),
      O => in_tdata(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(22),
      I1 => sel_act,
      I2 => s0_axis_tdata(22),
      O => in_tdata(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0DDD0000000000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => \m_axis_tdata[23]_i_4_n_0\,
      I3 => pass_reg_n_0,
      I4 => in_tuser,
      I5 => \m_axis_tdata[23]_i_5_n_0\,
      O => take
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(23),
      I1 => sel_act,
      I2 => s0_axis_tdata(23),
      O => in_tdata(23)
    );
\m_axis_tdata[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel_act,
      I1 => sel,
      O => \m_axis_tdata[23]_i_4_n_0\
    );
\m_axis_tdata[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tvalid,
      I1 => sel_act,
      I2 => s0_axis_tvalid,
      O => \m_axis_tdata[23]_i_5_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(2),
      I1 => sel_act,
      I2 => s0_axis_tdata(2),
      O => in_tdata(2)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(3),
      I1 => sel_act,
      I2 => s0_axis_tdata(3),
      O => in_tdata(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(4),
      I1 => sel_act,
      I2 => s0_axis_tdata(4),
      O => in_tdata(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(5),
      I1 => sel_act,
      I2 => s0_axis_tdata(5),
      O => in_tdata(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(6),
      I1 => sel_act,
      I2 => s0_axis_tdata(6),
      O => in_tdata(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(7),
      I1 => sel_act,
      I2 => s0_axis_tdata(7),
      O => in_tdata(7)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(8),
      I1 => sel_act,
      I2 => s0_axis_tdata(8),
      O => in_tdata(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tdata(9),
      I1 => sel_act,
      I2 => s0_axis_tdata(9),
      O => in_tdata(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(0),
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(10),
      Q => m_axis_tdata(10),
      R => p_0_in
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(11),
      Q => m_axis_tdata(11),
      R => p_0_in
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(12),
      Q => m_axis_tdata(12),
      R => p_0_in
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(13),
      Q => m_axis_tdata(13),
      R => p_0_in
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(14),
      Q => m_axis_tdata(14),
      R => p_0_in
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(15),
      Q => m_axis_tdata(15),
      R => p_0_in
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(16),
      Q => m_axis_tdata(16),
      R => p_0_in
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(17),
      Q => m_axis_tdata(17),
      R => p_0_in
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(18),
      Q => m_axis_tdata(18),
      R => p_0_in
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(19),
      Q => m_axis_tdata(19),
      R => p_0_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(1),
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(20),
      Q => m_axis_tdata(20),
      R => p_0_in
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(21),
      Q => m_axis_tdata(21),
      R => p_0_in
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(22),
      Q => m_axis_tdata(22),
      R => p_0_in
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(23),
      Q => m_axis_tdata(23),
      R => p_0_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(2),
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(3),
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(4),
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(5),
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(6),
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(7),
      Q => m_axis_tdata(7),
      R => p_0_in
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(8),
      Q => m_axis_tdata(8),
      R => p_0_in
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tdata(9),
      Q => m_axis_tdata(9),
      R => p_0_in
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tlast,
      I1 => sel_act,
      I2 => s0_axis_tlast,
      O => in_tlast
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tlast,
      Q => m_axis_tlast,
      R => p_0_in
    );
m_axis_tuser_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s1_axis_tuser,
      I1 => sel_act,
      I2 => s0_axis_tuser,
      O => in_tuser
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => in_tuser,
      Q => m_axis_tuser,
      R => p_0_in
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA00"
    )
        port map (
      I0 => take,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => aresetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid_reg_0\,
      R => '0'
    );
pass_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF000B00000000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => s0_axis_tready_INST_0_i_1_n_0,
      I3 => \m_axis_tdata[23]_i_4_n_0\,
      I4 => pass_reg_n_0,
      I5 => aresetn,
      O => pass_i_1_n_0
    );
pass_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pass_i_1_n_0,
      Q => pass_reg_n_0,
      R => '0'
    );
s0_axis_tready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0DF00DD"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => pass_reg_n_0,
      I3 => sel,
      I4 => s0_axis_tready_INST_0_i_1_n_0,
      I5 => sel_act,
      O => s0_axis_tready
    );
s0_axis_tready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s0_axis_tuser,
      I1 => s1_axis_tuser,
      I2 => s0_axis_tvalid,
      I3 => sel_act,
      I4 => s1_axis_tvalid,
      O => s0_axis_tready_INST_0_i_1_n_0
    );
s1_axis_tready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00D000DD000000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => pass_reg_n_0,
      I3 => sel_act,
      I4 => sel,
      I5 => s0_axis_tready_INST_0_i_1_n_0,
      O => s1_axis_tready
    );
sel_act_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7800000"
    )
        port map (
      I0 => s0_axis_tready_INST_0_i_1_n_0,
      I1 => pass_reg_n_0,
      I2 => sel_act,
      I3 => sel,
      I4 => aresetn,
      O => sel_act_i_1_n_0
    );
sel_act_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_act_i_1_n_0,
      Q => sel_act,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_vid_mux_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sel : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    s0_axis_tuser : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    s1_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s1_axis_tvalid : in STD_LOGIC;
    s1_axis_tready : out STD_LOGIC;
    s1_axis_tuser : in STD_LOGIC;
    s1_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_axis_vid_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axis_vid_mux_0_0 : entity is "image_block_axis_vid_mux_0_0,axis_vid_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axis_vid_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axis_vid_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axis_vid_mux_0_0 : entity is "axis_vid_mux,Vivado 2025.2";
end image_block_axis_vid_mux_0_0;

architecture STRUCTURE of image_block_axis_vid_mux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s0_axis:s1_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s0_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s0_axis TLAST";
  attribute X_INTERFACE_INFO of s0_axis_tready : signal is "xilinx.com:interface:axis:1.0 s0_axis TREADY";
  attribute X_INTERFACE_INFO of s0_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s0_axis TUSER";
  attribute X_INTERFACE_INFO of s0_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s0_axis TVALID";
  attribute X_INTERFACE_INFO of s1_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s1_axis TLAST";
  attribute X_INTERFACE_INFO of s1_axis_tready : signal is "xilinx.com:interface:axis:1.0 s1_axis TREADY";
  attribute X_INTERFACE_INFO of s1_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s1_axis TUSER";
  attribute X_INTERFACE_INFO of s1_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s1_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s0_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s0_axis TDATA";
  attribute X_INTERFACE_MODE of s0_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s0_axis_tdata : signal is "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s1_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s1_axis TDATA";
  attribute X_INTERFACE_MODE of s1_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s1_axis_tdata : signal is "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.image_block_axis_vid_mux_0_0_axis_vid_mux
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      s0_axis_tdata(23 downto 0) => s0_axis_tdata(23 downto 0),
      s0_axis_tlast => s0_axis_tlast,
      s0_axis_tready => s0_axis_tready,
      s0_axis_tuser => s0_axis_tuser,
      s0_axis_tvalid => s0_axis_tvalid,
      s1_axis_tdata(23 downto 0) => s1_axis_tdata(23 downto 0),
      s1_axis_tlast => s1_axis_tlast,
      s1_axis_tready => s1_axis_tready,
      s1_axis_tuser => s1_axis_tuser,
      s1_axis_tvalid => s1_axis_tvalid,
      sel => sel
    );
end STRUCTURE;
