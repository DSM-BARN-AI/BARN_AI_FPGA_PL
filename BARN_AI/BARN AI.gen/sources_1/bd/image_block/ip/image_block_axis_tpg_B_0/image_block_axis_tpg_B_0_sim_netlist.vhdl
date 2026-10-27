-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jul 25 13:37:04 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axis_tpg_B_0/image_block_axis_tpg_B_0_sim_netlist.vhdl}
-- Design      : image_block_axis_tpg_B_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_tpg_B_0_axis_tpg is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    pattern_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axis_tpg_B_0_axis_tpg : entity is "axis_tpg";
end image_block_axis_tpg_B_0_axis_tpg;

architecture STRUCTURE of image_block_axis_tpg_B_0_axis_tpg is
  signal bar_index : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bar_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \bar_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \bar_index[2]_i_1_n_0\ : STD_LOGIC;
  signal bar_pos : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \bar_pos[11]_i_1_n_0\ : STD_LOGIC;
  signal \bar_pos[11]_i_5_n_0\ : STD_LOGIC;
  signal \bar_pos[11]_i_6_n_0\ : STD_LOGIC;
  signal \bar_pos[11]_i_7_n_0\ : STD_LOGIC;
  signal bar_pos_nxt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \bar_pos_reg[11]_i_4_n_2\ : STD_LOGIC;
  signal \bar_pos_reg[11]_i_4_n_3\ : STD_LOGIC;
  signal \bar_pos_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bar_pos_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \bar_pos_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \bar_pos_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \bar_pos_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \bar_pos_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \bar_pos_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \bar_pos_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal enable_reg : STD_LOGIC;
  signal enable_reg_i_1_n_0 : STD_LOGIC;
  signal line_end : STD_LOGIC;
  signal load : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tuser0 : STD_LOGIC;
  signal m_axis_tuser_i_2_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_4_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_5_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_6_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal pattern_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pattern_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pattern_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \pattern_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \pattern_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \pattern_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal step : STD_LOGIC;
  signal \x[0]_i_2_n_0\ : STD_LOGIC;
  signal x_nxt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \x_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \x_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \x_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \x_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \y[0]_i_1_n_0\ : STD_LOGIC;
  signal \y[0]_i_4_n_0\ : STD_LOGIC;
  signal y_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \y_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_bar_pos_reg[11]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bar_pos_reg[11]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_x_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bar_pos[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bar_pos[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bar_pos[11]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bar_pos[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bar_pos[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bar_pos[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bar_pos[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bar_pos[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bar_pos[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bar_pos[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bar_pos[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bar_pos[9]_i_1\ : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bar_pos_reg[11]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \bar_pos_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \bar_pos_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \x_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \x_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \x_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_reg[0]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_reg[8]_i_1\ : label is 35;
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
\bar_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000059AAAAAA"
    )
        port map (
      I0 => bar_index(0),
      I1 => \^m_axis_tvalid\,
      I2 => m_axis_tready,
      I3 => enable_reg,
      I4 => \bar_pos[11]_i_5_n_0\,
      I5 => \bar_pos[11]_i_1_n_0\,
      O => \bar_index[0]_i_1_n_0\
    );
\bar_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => bar_index(1),
      I1 => \bar_pos[11]_i_5_n_0\,
      I2 => step,
      I3 => bar_index(0),
      I4 => \bar_pos[11]_i_1_n_0\,
      O => \bar_index[1]_i_1_n_0\
    );
\bar_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => bar_index(2),
      I1 => \bar_pos[11]_i_5_n_0\,
      I2 => step,
      I3 => bar_index(1),
      I4 => bar_index(0),
      I5 => \bar_pos[11]_i_1_n_0\,
      O => \bar_index[2]_i_1_n_0\
    );
\bar_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bar_index[0]_i_1_n_0\,
      Q => bar_index(0),
      R => '0'
    );
\bar_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bar_index[1]_i_1_n_0\,
      Q => bar_index(1),
      R => '0'
    );
\bar_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bar_index[2]_i_1_n_0\,
      Q => bar_index(2),
      R => '0'
    );
\bar_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bar_pos(0),
      O => bar_pos_nxt(0)
    );
\bar_pos[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(10)
    );
\bar_pos[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10001010FFFFFFFF"
    )
        port map (
      I0 => m_axis_tuser_i_6_n_0,
      I1 => m_axis_tlast_i_2_n_0,
      I2 => enable_reg,
      I3 => m_axis_tready,
      I4 => \^m_axis_tvalid\,
      I5 => aresetn,
      O => \bar_pos[11]_i_1_n_0\
    );
\bar_pos[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => enable_reg,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid\,
      O => step
    );
\bar_pos[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(11)
    );
\bar_pos[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => bar_pos(11),
      I1 => bar_pos(3),
      I2 => bar_pos(4),
      I3 => bar_pos(6),
      I4 => \bar_pos[11]_i_6_n_0\,
      I5 => \bar_pos[11]_i_7_n_0\,
      O => \bar_pos[11]_i_5_n_0\
    );
\bar_pos[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => bar_pos(2),
      I1 => bar_pos(9),
      I2 => bar_pos(1),
      I3 => bar_pos(8),
      O => \bar_pos[11]_i_6_n_0\
    );
\bar_pos[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => bar_pos(0),
      I1 => bar_pos(7),
      I2 => bar_pos(10),
      I3 => bar_pos(5),
      O => \bar_pos[11]_i_7_n_0\
    );
\bar_pos[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(1)
    );
\bar_pos[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(2)
    );
\bar_pos[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(3)
    );
\bar_pos[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(4)
    );
\bar_pos[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(5)
    );
\bar_pos[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(6)
    );
\bar_pos[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(7)
    );
\bar_pos[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(8)
    );
\bar_pos[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \bar_pos[11]_i_5_n_0\,
      O => bar_pos_nxt(9)
    );
\bar_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(0),
      Q => bar_pos(0),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(10),
      Q => bar_pos(10),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(11),
      Q => bar_pos(11),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[11]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bar_pos_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_bar_pos_reg[11]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bar_pos_reg[11]_i_4_n_2\,
      CO(0) => \bar_pos_reg[11]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bar_pos_reg[11]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => bar_pos(11 downto 9)
    );
\bar_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(1),
      Q => bar_pos(1),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(2),
      Q => bar_pos(2),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(3),
      Q => bar_pos(3),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(4),
      Q => bar_pos(4),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bar_pos_reg[4]_i_2_n_0\,
      CO(2) => \bar_pos_reg[4]_i_2_n_1\,
      CO(1) => \bar_pos_reg[4]_i_2_n_2\,
      CO(0) => \bar_pos_reg[4]_i_2_n_3\,
      CYINIT => bar_pos(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => bar_pos(4 downto 1)
    );
\bar_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(5),
      Q => bar_pos(5),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(6),
      Q => bar_pos(6),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(7),
      Q => bar_pos(7),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(8),
      Q => bar_pos(8),
      R => \bar_pos[11]_i_1_n_0\
    );
\bar_pos_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bar_pos_reg[4]_i_2_n_0\,
      CO(3) => \bar_pos_reg[8]_i_2_n_0\,
      CO(2) => \bar_pos_reg[8]_i_2_n_1\,
      CO(1) => \bar_pos_reg[8]_i_2_n_2\,
      CO(0) => \bar_pos_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => bar_pos(8 downto 5)
    );
\bar_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => bar_pos_nxt(9),
      Q => bar_pos(9),
      R => \bar_pos[11]_i_1_n_0\
    );
enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => enable_reg,
      I1 => \pattern_reg[1]_i_2_n_0\,
      I2 => enable,
      I3 => aresetn,
      O => enable_reg_i_1_n_0
    );
enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => enable_reg_i_1_n_0,
      Q => enable_reg,
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(0),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(2),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(3),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(4),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(5),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(6),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0A3"
    )
        port map (
      I0 => x_reg(7),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(1),
      I3 => pattern_reg(1),
      O => p_1_in(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(2),
      I3 => pattern_reg(1),
      O => p_1_in(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(3),
      I3 => pattern_reg(1),
      O => p_1_in(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(1),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(4),
      I3 => pattern_reg(1),
      O => p_1_in(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(5),
      I3 => pattern_reg(1),
      O => p_1_in(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(6),
      I3 => pattern_reg(1),
      O => p_1_in(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid\,
      O => load
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCD1"
    )
        port map (
      I0 => bar_index(1),
      I1 => pattern_reg(0),
      I2 => x_reg(7),
      I3 => pattern_reg(1),
      O => p_1_in(23)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(2),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(2)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(3),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(4),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(5),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => x_reg(6),
      I1 => pattern_reg(1),
      I2 => pattern_reg(0),
      I3 => \m_axis_tdata[6]_i_2_n_0\,
      O => p_1_in(6)
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"013D0000C1FDFFFF"
    )
        port map (
      I0 => bar_index(1),
      I1 => x_reg(0),
      I2 => y_reg(0),
      I3 => bar_index(2),
      I4 => pattern_reg(1),
      I5 => bar_index(0),
      O => \m_axis_tdata[6]_i_2_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8BCC8B"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => pattern_reg(1),
      I2 => bar_index(0),
      I3 => pattern_reg(0),
      I4 => x_reg(7),
      O => p_1_in(7)
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50035FF3"
    )
        port map (
      I0 => bar_index(0),
      I1 => bar_index(1),
      I2 => x_reg(0),
      I3 => y_reg(0),
      I4 => bar_index(2),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(0),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => x_reg(1),
      I1 => bar_index(2),
      I2 => pattern_reg(0),
      I3 => pattern_reg(1),
      O => p_1_in(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(0),
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(10),
      Q => m_axis_tdata(10),
      R => p_0_in
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(11),
      Q => m_axis_tdata(11),
      R => p_0_in
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(12),
      Q => m_axis_tdata(12),
      R => p_0_in
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(13),
      Q => m_axis_tdata(13),
      R => p_0_in
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(14),
      Q => m_axis_tdata(14),
      R => p_0_in
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(15),
      Q => m_axis_tdata(15),
      R => p_0_in
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(16),
      Q => m_axis_tdata(16),
      R => p_0_in
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(17),
      Q => m_axis_tdata(17),
      R => p_0_in
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(18),
      Q => m_axis_tdata(18),
      R => p_0_in
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(19),
      Q => m_axis_tdata(19),
      R => p_0_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(1),
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(20),
      Q => m_axis_tdata(20),
      R => p_0_in
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(21),
      Q => m_axis_tdata(21),
      R => p_0_in
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(22),
      Q => m_axis_tdata(22),
      R => p_0_in
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(23),
      Q => m_axis_tdata(23),
      R => p_0_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(2),
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(3),
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(4),
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(5),
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(6),
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(7),
      Q => m_axis_tdata(7),
      R => p_0_in
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(8),
      Q => m_axis_tdata(8),
      R => p_0_in
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => p_1_in(9),
      Q => m_axis_tdata(9),
      R => p_0_in
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_tuser_i_6_n_0,
      I1 => m_axis_tlast_i_2_n_0,
      O => line_end
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x_reg(3),
      I1 => x_reg(0),
      I2 => x_reg(1),
      I3 => x_reg(2),
      I4 => x_reg(4),
      I5 => x_reg(5),
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => line_end,
      Q => m_axis_tlast,
      R => p_0_in
    );
m_axis_tuser_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => m_axis_tuser_i_2_n_0,
      I1 => m_axis_tuser_i_3_n_0,
      I2 => m_axis_tuser_i_4_n_0,
      I3 => m_axis_tuser_i_5_n_0,
      I4 => m_axis_tuser_i_6_n_0,
      O => m_axis_tuser0
    );
m_axis_tuser_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => y_reg(1),
      I1 => y_reg(2),
      I2 => x_reg(3),
      I3 => x_reg(1),
      O => m_axis_tuser_i_2_n_0
    );
m_axis_tuser_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => x_reg(5),
      I1 => x_reg(4),
      I2 => y_reg(3),
      I3 => y_reg(4),
      O => m_axis_tuser_i_3_n_0
    );
m_axis_tuser_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => y_reg(10),
      I1 => y_reg(8),
      I2 => y_reg(11),
      I3 => y_reg(9),
      O => m_axis_tuser_i_4_n_0
    );
m_axis_tuser_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => y_reg(7),
      I1 => y_reg(6),
      I2 => y_reg(5),
      I3 => x_reg(2),
      I4 => x_reg(0),
      I5 => y_reg(0),
      O => m_axis_tuser_i_5_n_0
    );
m_axis_tuser_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => x_reg(6),
      I1 => x_reg(7),
      I2 => x_reg(8),
      I3 => x_reg(9),
      I4 => x_reg(11),
      I5 => x_reg(10),
      O => m_axis_tuser_i_6_n_0
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => m_axis_tuser0,
      Q => m_axis_tuser,
      R => p_0_in
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load,
      D => enable_reg,
      Q => \^m_axis_tvalid\,
      R => p_0_in
    );
\pattern_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080000"
    )
        port map (
      I0 => pattern_reg(0),
      I1 => enable_reg,
      I2 => \pattern_reg[1]_i_2_n_0\,
      I3 => pattern_sel(0),
      I4 => aresetn,
      O => \pattern_reg[0]_i_1_n_0\
    );
\pattern_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080000"
    )
        port map (
      I0 => pattern_reg(1),
      I1 => enable_reg,
      I2 => \pattern_reg[1]_i_2_n_0\,
      I3 => pattern_sel(1),
      I4 => aresetn,
      O => \pattern_reg[1]_i_1_n_0\
    );
\pattern_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => m_axis_tuser_i_6_n_0,
      I1 => m_axis_tlast_i_2_n_0,
      I2 => step,
      I3 => \pattern_reg[1]_i_3_n_0\,
      I4 => \pattern_reg[1]_i_4_n_0\,
      I5 => m_axis_tuser_i_4_n_0,
      O => \pattern_reg[1]_i_2_n_0\
    );
\pattern_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => y_reg(1),
      I1 => y_reg(0),
      I2 => y_reg(2),
      I3 => y_reg(5),
      O => \pattern_reg[1]_i_3_n_0\
    );
\pattern_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => y_reg(7),
      I1 => y_reg(6),
      I2 => y_reg(3),
      I3 => y_reg(4),
      O => \pattern_reg[1]_i_4_n_0\
    );
\pattern_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \pattern_reg[0]_i_1_n_0\,
      Q => pattern_reg(0),
      R => '0'
    );
\pattern_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \pattern_reg[1]_i_1_n_0\,
      Q => pattern_reg(1),
      R => '0'
    );
\x[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_reg(0),
      O => \x[0]_i_2_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[0]_i_1_n_7\,
      Q => x_reg(0),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_reg[0]_i_1_n_0\,
      CO(2) => \x_reg[0]_i_1_n_1\,
      CO(1) => \x_reg[0]_i_1_n_2\,
      CO(0) => \x_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \x_reg[0]_i_1_n_4\,
      O(2) => \x_reg[0]_i_1_n_5\,
      O(1) => \x_reg[0]_i_1_n_6\,
      O(0) => \x_reg[0]_i_1_n_7\,
      S(3 downto 1) => x_reg(3 downto 1),
      S(0) => \x[0]_i_2_n_0\
    );
\x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[8]_i_1_n_5\,
      Q => x_reg(10),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[8]_i_1_n_4\,
      Q => x_reg(11),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[0]_i_1_n_6\,
      Q => x_reg(1),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[0]_i_1_n_5\,
      Q => x_reg(2),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[0]_i_1_n_4\,
      Q => x_reg(3),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[4]_i_1_n_7\,
      Q => x_reg(4),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_reg[0]_i_1_n_0\,
      CO(3) => \x_reg[4]_i_1_n_0\,
      CO(2) => \x_reg[4]_i_1_n_1\,
      CO(1) => \x_reg[4]_i_1_n_2\,
      CO(0) => \x_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \x_reg[4]_i_1_n_4\,
      O(2) => \x_reg[4]_i_1_n_5\,
      O(1) => \x_reg[4]_i_1_n_6\,
      O(0) => \x_reg[4]_i_1_n_7\,
      S(3 downto 0) => x_reg(7 downto 4)
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[4]_i_1_n_6\,
      Q => x_reg(5),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[4]_i_1_n_5\,
      Q => x_reg(6),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[4]_i_1_n_4\,
      Q => x_reg(7),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[8]_i_1_n_7\,
      Q => x_reg(8),
      R => \bar_pos[11]_i_1_n_0\
    );
\x_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_reg[4]_i_1_n_0\,
      CO(3) => \NLW_x_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \x_reg[8]_i_1_n_1\,
      CO(1) => \x_reg[8]_i_1_n_2\,
      CO(0) => \x_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \x_reg[8]_i_1_n_4\,
      O(2) => \x_reg[8]_i_1_n_5\,
      O(1) => \x_reg[8]_i_1_n_6\,
      O(0) => \x_reg[8]_i_1_n_7\,
      S(3 downto 0) => x_reg(11 downto 8)
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => step,
      D => \x_reg[8]_i_1_n_6\,
      Q => x_reg(9),
      R => \bar_pos[11]_i_1_n_0\
    );
\y[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pattern_reg[1]_i_2_n_0\,
      I1 => aresetn,
      O => \y[0]_i_1_n_0\
    );
\y[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      I2 => enable_reg,
      I3 => m_axis_tlast_i_2_n_0,
      I4 => m_axis_tuser_i_6_n_0,
      O => x_nxt(0)
    );
\y[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_reg(0),
      O => \y[0]_i_4_n_0\
    );
\y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[0]_i_3_n_7\,
      Q => y_reg(0),
      R => \y[0]_i_1_n_0\
    );
\y_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_reg[0]_i_3_n_0\,
      CO(2) => \y_reg[0]_i_3_n_1\,
      CO(1) => \y_reg[0]_i_3_n_2\,
      CO(0) => \y_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \y_reg[0]_i_3_n_4\,
      O(2) => \y_reg[0]_i_3_n_5\,
      O(1) => \y_reg[0]_i_3_n_6\,
      O(0) => \y_reg[0]_i_3_n_7\,
      S(3 downto 1) => y_reg(3 downto 1),
      S(0) => \y[0]_i_4_n_0\
    );
\y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[8]_i_1_n_5\,
      Q => y_reg(10),
      R => \y[0]_i_1_n_0\
    );
\y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[8]_i_1_n_4\,
      Q => y_reg(11),
      R => \y[0]_i_1_n_0\
    );
\y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[0]_i_3_n_6\,
      Q => y_reg(1),
      R => \y[0]_i_1_n_0\
    );
\y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[0]_i_3_n_5\,
      Q => y_reg(2),
      R => \y[0]_i_1_n_0\
    );
\y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[0]_i_3_n_4\,
      Q => y_reg(3),
      R => \y[0]_i_1_n_0\
    );
\y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[4]_i_1_n_7\,
      Q => y_reg(4),
      R => \y[0]_i_1_n_0\
    );
\y_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg[0]_i_3_n_0\,
      CO(3) => \y_reg[4]_i_1_n_0\,
      CO(2) => \y_reg[4]_i_1_n_1\,
      CO(1) => \y_reg[4]_i_1_n_2\,
      CO(0) => \y_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_reg[4]_i_1_n_4\,
      O(2) => \y_reg[4]_i_1_n_5\,
      O(1) => \y_reg[4]_i_1_n_6\,
      O(0) => \y_reg[4]_i_1_n_7\,
      S(3 downto 0) => y_reg(7 downto 4)
    );
\y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[4]_i_1_n_6\,
      Q => y_reg(5),
      R => \y[0]_i_1_n_0\
    );
\y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[4]_i_1_n_5\,
      Q => y_reg(6),
      R => \y[0]_i_1_n_0\
    );
\y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[4]_i_1_n_4\,
      Q => y_reg(7),
      R => \y[0]_i_1_n_0\
    );
\y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[8]_i_1_n_7\,
      Q => y_reg(8),
      R => \y[0]_i_1_n_0\
    );
\y_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg[4]_i_1_n_0\,
      CO(3) => \NLW_y_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \y_reg[8]_i_1_n_1\,
      CO(1) => \y_reg[8]_i_1_n_2\,
      CO(0) => \y_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_reg[8]_i_1_n_4\,
      O(2) => \y_reg[8]_i_1_n_5\,
      O(1) => \y_reg[8]_i_1_n_6\,
      O(0) => \y_reg[8]_i_1_n_7\,
      S(3 downto 0) => y_reg(11 downto 8)
    );
\y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_nxt(0),
      D => \y_reg[8]_i_1_n_6\,
      Q => y_reg(9),
      R => \y[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_tpg_B_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    enable : in STD_LOGIC;
    pattern_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_axis_tpg_B_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axis_tpg_B_0 : entity is "image_block_axis_tpg_B_0,axis_tpg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axis_tpg_B_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axis_tpg_B_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axis_tpg_B_0 : entity is "axis_tpg,Vivado 2025.2";
end image_block_axis_tpg_B_0;

architecture STRUCTURE of image_block_axis_tpg_B_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.image_block_axis_tpg_B_0_axis_tpg
     port map (
      aclk => aclk,
      aresetn => aresetn,
      enable => enable,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid => m_axis_tvalid,
      pattern_sel(1 downto 0) => pattern_sel(1 downto 0)
    );
end STRUCTURE;
