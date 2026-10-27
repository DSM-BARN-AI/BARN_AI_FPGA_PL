-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Jul 29 22:12:53 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axis_gamma_0_0/image_block_axis_gamma_0_0_sim_netlist.vhdl}
-- Design      : image_block_axis_gamma_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_gamma_0_0_axis_gamma is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axis_gamma_0_0_axis_gamma : entity is "axis_gamma";
end image_block_axis_gamma_0_0_axis_gamma;

architecture STRUCTURE of image_block_axis_gamma_0_0_axis_gamma is
  signal \m_axis_tdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair0";
begin
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
\m_axis_tdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EA098B0E14B4B58"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[0]_i_4_n_0\
    );
\m_axis_tdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D99ED8AC633532D"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[0]_i_5_n_0\
    );
\m_axis_tdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40EA15FFBF14AA04"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(2),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(0),
      O => \m_axis_tdata[0]_i_6_n_0\
    );
\m_axis_tdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5EAE0BF1F052A50"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(3),
      I2 => s_axis_tdata(4),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[0]_i_7_n_0\
    );
\m_axis_tdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6975E0FC2CB0958"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[10]_i_4_n_0\
    );
\m_axis_tdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75F4F4E4A1A3B39E"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[10]_i_5_n_0\
    );
\m_axis_tdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1BBAF511AEEE0044"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[10]_i_6_n_0\
    );
\m_axis_tdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B64FE11BB11EE15"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[10]_i_7_n_0\
    );
\m_axis_tdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AD68BD7CBD6C286"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(8),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[11]_i_4_n_0\
    );
\m_axis_tdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A0F5F5A0A5F2CA"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[11]_i_5_n_0\
    );
\m_axis_tdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2ABF8000FFFA5555"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[11]_i_6_n_0\
    );
\m_axis_tdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDA5F5A5A5A0A0B0"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[11]_i_7_n_0\
    );
\m_axis_tdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0706464652535352"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[12]_i_4_n_0\
    );
\m_axis_tdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FCFCFCCFCF8FCF0"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(15),
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[12]_i_5_n_0\
    );
\m_axis_tdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8111555555550000"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[12]_i_6_n_0\
    );
\m_axis_tdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(15),
      O => \m_axis_tdata[12]_i_7_n_0\
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \m_axis_tdata[13]_i_2_n_0\,
      I1 => s_axis_tdata(14),
      I2 => \m_axis_tdata[13]_i_3_n_0\,
      I3 => s_axis_tdata(13),
      I4 => \m_axis_tdata[13]_i_4_n_0\,
      O => \m_axis_tdata[13]_i_1_n_0\
    );
\m_axis_tdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8880000"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(15),
      O => \m_axis_tdata[13]_i_2_n_0\
    );
\m_axis_tdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000FF00FF00FF"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => s_axis_tdata(9),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(15),
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[13]_i_3_n_0\
    );
\m_axis_tdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4303430313121212"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(8),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[13]_i_4_n_0\
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F5F1F5F5E4F4E4"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(13),
      I2 => s_axis_tdata(15),
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(12),
      O => \m_axis_tdata[14]_i_1_n_0\
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(13),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(12),
      I4 => s_axis_tdata(14),
      O => \m_axis_tdata[15]_i_1_n_0\
    );
\m_axis_tdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EA098B0E14B4B58"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[16]_i_4_n_0\
    );
\m_axis_tdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D99ED8AC633532D"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[16]_i_5_n_0\
    );
\m_axis_tdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40EA15FFBF14AA04"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(18),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(16),
      O => \m_axis_tdata[16]_i_6_n_0\
    );
\m_axis_tdata[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5EAE0BF1F052A50"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(20),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[16]_i_7_n_0\
    );
\m_axis_tdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3772329AD86D8C2"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(16),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[17]_i_4_n_0\
    );
\m_axis_tdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EEFA9985547123F"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(17),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[17]_i_5_n_0\
    );
\m_axis_tdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5EB41BB1AB40EE44"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[17]_i_6_n_0\
    );
\m_axis_tdata[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8BA6750AFAF5014"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[17]_i_7_n_0\
    );
\m_axis_tdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6975E0FC2CB0958"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[18]_i_4_n_0\
    );
\m_axis_tdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75F4F4E4A1A3B39E"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(17),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[18]_i_5_n_0\
    );
\m_axis_tdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1BBAF511AEEE0044"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[18]_i_6_n_0\
    );
\m_axis_tdata[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B64FE11BB11EE15"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(19),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[18]_i_7_n_0\
    );
\m_axis_tdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AD68BD7CBD6C286"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(16),
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[19]_i_4_n_0\
    );
\m_axis_tdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A0F5F5A0A5F2CA"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(20),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[19]_i_5_n_0\
    );
\m_axis_tdata[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2ABF8000FFFA5555"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(20),
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[19]_i_6_n_0\
    );
\m_axis_tdata[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDA5F5A5A5A0A0B0"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(20),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(17),
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[19]_i_7_n_0\
    );
\m_axis_tdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3772329AD86D8C2"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[1]_i_4_n_0\
    );
\m_axis_tdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EEFA9985547123F"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(1),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[1]_i_5_n_0\
    );
\m_axis_tdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5EB41BB1AB40EE44"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[1]_i_6_n_0\
    );
\m_axis_tdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8BA6750AFAF5014"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[1]_i_7_n_0\
    );
\m_axis_tdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0706464652535352"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(17),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[20]_i_4_n_0\
    );
\m_axis_tdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FCFCFCCFCF8FCF0"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => s_axis_tdata(23),
      I2 => s_axis_tdata(20),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(17),
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[20]_i_5_n_0\
    );
\m_axis_tdata[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8111555555550000"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(20),
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[20]_i_6_n_0\
    );
\m_axis_tdata[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[20]_i_7_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_2_n_0\,
      I1 => s_axis_tdata(22),
      I2 => \m_axis_tdata[21]_i_3_n_0\,
      I3 => s_axis_tdata(21),
      I4 => \m_axis_tdata[21]_i_4_n_0\,
      O => \m_axis_tdata[21]_i_1_n_0\
    );
\m_axis_tdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8880000"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[21]_i_2_n_0\
    );
\m_axis_tdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000FF00FF00FF"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(23),
      I4 => s_axis_tdata(20),
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[21]_i_3_n_0\
    );
\m_axis_tdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4303430313121212"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(16),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[21]_i_4_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F5F1F5F5E4F4E4"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(19),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(20),
      O => \m_axis_tdata[22]_i_1_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(20),
      I4 => s_axis_tdata(22),
      O => \m_axis_tdata[23]_i_3_n_0\
    );
\m_axis_tdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6975E0FC2CB0958"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[2]_i_4_n_0\
    );
\m_axis_tdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75F4F4E4A1A3B39E"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(1),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[2]_i_5_n_0\
    );
\m_axis_tdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1BBAF511AEEE0044"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[2]_i_6_n_0\
    );
\m_axis_tdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B64FE11BB11EE15"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[2]_i_7_n_0\
    );
\m_axis_tdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AD68BD7CBD6C286"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(0),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[3]_i_4_n_0\
    );
\m_axis_tdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A0F5F5A0A5F2CA"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(4),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[3]_i_5_n_0\
    );
\m_axis_tdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2ABF8000FFFA5555"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(4),
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[3]_i_6_n_0\
    );
\m_axis_tdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDA5F5A5A5A0A0B0"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(4),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(1),
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[3]_i_7_n_0\
    );
\m_axis_tdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0706464652535352"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(1),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[4]_i_4_n_0\
    );
\m_axis_tdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FCFCFCCFCF8FCF0"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => s_axis_tdata(7),
      I2 => s_axis_tdata(4),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(1),
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[4]_i_5_n_0\
    );
\m_axis_tdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8111555555550000"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(4),
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[4]_i_6_n_0\
    );
\m_axis_tdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(7),
      O => \m_axis_tdata[4]_i_7_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => s_axis_tdata(6),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => s_axis_tdata(5),
      I4 => \m_axis_tdata[5]_i_4_n_0\,
      O => p_0_out(5)
    );
\m_axis_tdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8880000"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(7),
      O => \m_axis_tdata[5]_i_2_n_0\
    );
\m_axis_tdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000FF00FF00FF"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(1),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(7),
      I4 => s_axis_tdata(4),
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[5]_i_3_n_0\
    );
\m_axis_tdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4303430313121212"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[5]_i_4_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F5F1F5F5E4F4E4"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(7),
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(2),
      I5 => s_axis_tdata(4),
      O => p_0_out(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(4),
      I4 => s_axis_tdata(6),
      O => p_0_out(7)
    );
\m_axis_tdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EA098B0E14B4B58"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[8]_i_4_n_0\
    );
\m_axis_tdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D99ED8AC633532D"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[8]_i_5_n_0\
    );
\m_axis_tdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40EA15FFBF14AA04"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(10),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(8),
      O => \m_axis_tdata[8]_i_6_n_0\
    );
\m_axis_tdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5EAE0BF1F052A50"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(11),
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[8]_i_7_n_0\
    );
\m_axis_tdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3772329AD86D8C2"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(8),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[9]_i_4_n_0\
    );
\m_axis_tdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EEFA9985547123F"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[9]_i_5_n_0\
    );
\m_axis_tdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5EB41BB1AB40EE44"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[9]_i_6_n_0\
    );
\m_axis_tdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8BA6750AFAF5014"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(10),
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[9]_i_7_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(0),
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[0]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[0]_i_3_n_0\,
      O => p_0_out(0),
      S => s_axis_tdata(6)
    );
\m_axis_tdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[0]_i_4_n_0\,
      I1 => \m_axis_tdata[0]_i_5_n_0\,
      O => \m_axis_tdata_reg[0]_i_2_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[0]_i_6_n_0\,
      I1 => \m_axis_tdata[0]_i_7_n_0\,
      O => \m_axis_tdata_reg[0]_i_3_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[10]_i_1_n_0\,
      Q => m_axis_tdata(10),
      R => p_0_in
    );
\m_axis_tdata_reg[10]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[10]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[10]_i_3_n_0\,
      O => \m_axis_tdata_reg[10]_i_1_n_0\,
      S => s_axis_tdata(14)
    );
\m_axis_tdata_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[10]_i_4_n_0\,
      I1 => \m_axis_tdata[10]_i_5_n_0\,
      O => \m_axis_tdata_reg[10]_i_2_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[10]_i_6_n_0\,
      I1 => \m_axis_tdata[10]_i_7_n_0\,
      O => \m_axis_tdata_reg[10]_i_3_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[11]_i_1_n_0\,
      Q => m_axis_tdata(11),
      R => p_0_in
    );
\m_axis_tdata_reg[11]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[11]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[11]_i_3_n_0\,
      O => \m_axis_tdata_reg[11]_i_1_n_0\,
      S => s_axis_tdata(14)
    );
\m_axis_tdata_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[11]_i_4_n_0\,
      I1 => \m_axis_tdata[11]_i_5_n_0\,
      O => \m_axis_tdata_reg[11]_i_2_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[11]_i_6_n_0\,
      I1 => \m_axis_tdata[11]_i_7_n_0\,
      O => \m_axis_tdata_reg[11]_i_3_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[12]_i_1_n_0\,
      Q => m_axis_tdata(12),
      R => p_0_in
    );
\m_axis_tdata_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[12]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[12]_i_3_n_0\,
      O => \m_axis_tdata_reg[12]_i_1_n_0\,
      S => s_axis_tdata(14)
    );
\m_axis_tdata_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[12]_i_4_n_0\,
      I1 => \m_axis_tdata[12]_i_5_n_0\,
      O => \m_axis_tdata_reg[12]_i_2_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[12]_i_6_n_0\,
      I1 => \m_axis_tdata[12]_i_7_n_0\,
      O => \m_axis_tdata_reg[12]_i_3_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[13]_i_1_n_0\,
      Q => m_axis_tdata(13),
      R => p_0_in
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[14]_i_1_n_0\,
      Q => m_axis_tdata(14),
      R => p_0_in
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[15]_i_1_n_0\,
      Q => m_axis_tdata(15),
      R => p_0_in
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[16]_i_1_n_0\,
      Q => m_axis_tdata(16),
      R => p_0_in
    );
\m_axis_tdata_reg[16]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[16]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[16]_i_3_n_0\,
      O => \m_axis_tdata_reg[16]_i_1_n_0\,
      S => s_axis_tdata(22)
    );
\m_axis_tdata_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[16]_i_4_n_0\,
      I1 => \m_axis_tdata[16]_i_5_n_0\,
      O => \m_axis_tdata_reg[16]_i_2_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[16]_i_6_n_0\,
      I1 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata_reg[16]_i_3_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[17]_i_1_n_0\,
      Q => m_axis_tdata(17),
      R => p_0_in
    );
\m_axis_tdata_reg[17]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[17]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[17]_i_3_n_0\,
      O => \m_axis_tdata_reg[17]_i_1_n_0\,
      S => s_axis_tdata(22)
    );
\m_axis_tdata_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[17]_i_4_n_0\,
      I1 => \m_axis_tdata[17]_i_5_n_0\,
      O => \m_axis_tdata_reg[17]_i_2_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[17]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[17]_i_6_n_0\,
      I1 => \m_axis_tdata[17]_i_7_n_0\,
      O => \m_axis_tdata_reg[17]_i_3_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[18]_i_1_n_0\,
      Q => m_axis_tdata(18),
      R => p_0_in
    );
\m_axis_tdata_reg[18]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[18]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[18]_i_3_n_0\,
      O => \m_axis_tdata_reg[18]_i_1_n_0\,
      S => s_axis_tdata(22)
    );
\m_axis_tdata_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[18]_i_4_n_0\,
      I1 => \m_axis_tdata[18]_i_5_n_0\,
      O => \m_axis_tdata_reg[18]_i_2_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[18]_i_6_n_0\,
      I1 => \m_axis_tdata[18]_i_7_n_0\,
      O => \m_axis_tdata_reg[18]_i_3_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[19]_i_1_n_0\,
      Q => m_axis_tdata(19),
      R => p_0_in
    );
\m_axis_tdata_reg[19]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[19]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[19]_i_3_n_0\,
      O => \m_axis_tdata_reg[19]_i_1_n_0\,
      S => s_axis_tdata(22)
    );
\m_axis_tdata_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[19]_i_4_n_0\,
      I1 => \m_axis_tdata[19]_i_5_n_0\,
      O => \m_axis_tdata_reg[19]_i_2_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[19]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[19]_i_6_n_0\,
      I1 => \m_axis_tdata[19]_i_7_n_0\,
      O => \m_axis_tdata_reg[19]_i_3_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(1),
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[1]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[1]_i_3_n_0\,
      O => p_0_out(1),
      S => s_axis_tdata(6)
    );
\m_axis_tdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[1]_i_4_n_0\,
      I1 => \m_axis_tdata[1]_i_5_n_0\,
      O => \m_axis_tdata_reg[1]_i_2_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[1]_i_6_n_0\,
      I1 => \m_axis_tdata[1]_i_7_n_0\,
      O => \m_axis_tdata_reg[1]_i_3_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[20]_i_1_n_0\,
      Q => m_axis_tdata(20),
      R => p_0_in
    );
\m_axis_tdata_reg[20]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[20]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[20]_i_3_n_0\,
      O => \m_axis_tdata_reg[20]_i_1_n_0\,
      S => s_axis_tdata(22)
    );
\m_axis_tdata_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[20]_i_4_n_0\,
      I1 => \m_axis_tdata[20]_i_5_n_0\,
      O => \m_axis_tdata_reg[20]_i_2_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[20]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[20]_i_6_n_0\,
      I1 => \m_axis_tdata[20]_i_7_n_0\,
      O => \m_axis_tdata_reg[20]_i_3_n_0\,
      S => s_axis_tdata(21)
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[21]_i_1_n_0\,
      Q => m_axis_tdata(21),
      R => p_0_in
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[22]_i_1_n_0\,
      Q => m_axis_tdata(22),
      R => p_0_in
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[23]_i_3_n_0\,
      Q => m_axis_tdata(23),
      R => p_0_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(2),
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[2]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[2]_i_3_n_0\,
      O => p_0_out(2),
      S => s_axis_tdata(6)
    );
\m_axis_tdata_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[2]_i_4_n_0\,
      I1 => \m_axis_tdata[2]_i_5_n_0\,
      O => \m_axis_tdata_reg[2]_i_2_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[2]_i_6_n_0\,
      I1 => \m_axis_tdata[2]_i_7_n_0\,
      O => \m_axis_tdata_reg[2]_i_3_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(3),
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[3]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[3]_i_3_n_0\,
      O => p_0_out(3),
      S => s_axis_tdata(6)
    );
\m_axis_tdata_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[3]_i_4_n_0\,
      I1 => \m_axis_tdata[3]_i_5_n_0\,
      O => \m_axis_tdata_reg[3]_i_2_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[3]_i_6_n_0\,
      I1 => \m_axis_tdata[3]_i_7_n_0\,
      O => \m_axis_tdata_reg[3]_i_3_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(4),
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[4]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[4]_i_3_n_0\,
      O => p_0_out(4),
      S => s_axis_tdata(6)
    );
\m_axis_tdata_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[4]_i_4_n_0\,
      I1 => \m_axis_tdata[4]_i_5_n_0\,
      O => \m_axis_tdata_reg[4]_i_2_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[4]_i_6_n_0\,
      I1 => \m_axis_tdata[4]_i_7_n_0\,
      O => \m_axis_tdata_reg[4]_i_3_n_0\,
      S => s_axis_tdata(5)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(5),
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(6),
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_0_out(7),
      Q => m_axis_tdata(7),
      R => p_0_in
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[8]_i_1_n_0\,
      Q => m_axis_tdata(8),
      R => p_0_in
    );
\m_axis_tdata_reg[8]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[8]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[8]_i_3_n_0\,
      O => \m_axis_tdata_reg[8]_i_1_n_0\,
      S => s_axis_tdata(14)
    );
\m_axis_tdata_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[8]_i_4_n_0\,
      I1 => \m_axis_tdata[8]_i_5_n_0\,
      O => \m_axis_tdata_reg[8]_i_2_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[8]_i_6_n_0\,
      I1 => \m_axis_tdata[8]_i_7_n_0\,
      O => \m_axis_tdata_reg[8]_i_3_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata_reg[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => p_0_in
    );
\m_axis_tdata_reg[9]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \m_axis_tdata_reg[9]_i_2_n_0\,
      I1 => \m_axis_tdata_reg[9]_i_3_n_0\,
      O => \m_axis_tdata_reg[9]_i_1_n_0\,
      S => s_axis_tdata(14)
    );
\m_axis_tdata_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[9]_i_4_n_0\,
      I1 => \m_axis_tdata[9]_i_5_n_0\,
      O => \m_axis_tdata_reg[9]_i_2_n_0\,
      S => s_axis_tdata(13)
    );
\m_axis_tdata_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[9]_i_6_n_0\,
      I1 => \m_axis_tdata[9]_i_7_n_0\,
      O => \m_axis_tdata_reg[9]_i_3_n_0\,
      S => s_axis_tdata(13)
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tlast,
      Q => m_axis_tlast,
      R => p_0_in
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tuser,
      Q => m_axis_tuser,
      R => p_0_in
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
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
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      O => s_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_gamma_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_axis_gamma_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axis_gamma_0_0 : entity is "image_block_axis_gamma_0_0,axis_gamma,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axis_gamma_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axis_gamma_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axis_gamma_0_0 : entity is "axis_gamma,Vivado 2025.2";
end image_block_axis_gamma_0_0;

architecture STRUCTURE of image_block_axis_gamma_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.image_block_axis_gamma_0_0_axis_gamma
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
