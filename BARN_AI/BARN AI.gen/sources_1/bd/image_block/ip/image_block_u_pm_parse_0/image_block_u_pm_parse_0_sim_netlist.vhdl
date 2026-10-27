-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Jul 29 22:12:37 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_u_pm_parse_0/image_block_u_pm_parse_0_sim_netlist.vhdl}
-- Design      : image_block_u_pm_parse_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_pm_parse_0_pms7003_parser is
  port (
    pm1_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pm2_5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pm10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_valid : out STD_LOGIC;
    csum_err : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_u_pm_parse_0_pms7003_parser : entity is "pms7003_parser";
end image_block_u_pm_parse_0_pms7003_parser;

architecture STRUCTURE of image_block_u_pm_parse_0_pms7003_parser is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal csum_err_i_1_n_0 : STD_LOGIC;
  signal csum_hi : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \csum_hi[7]_i_1_n_0\ : STD_LOGIC;
  signal \csum_hi[7]_i_2_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal frame_valid_i_1_n_0 : STD_LOGIC;
  signal idx : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \idx_reg_n_0_[3]\ : STD_LOGIC;
  signal \idx_reg_n_0_[4]\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pm1_00_carry__0_n_2\ : STD_LOGIC;
  signal \pm1_00_carry__0_n_3\ : STD_LOGIC;
  signal \pm1_00_carry_i_1__0_n_0\ : STD_LOGIC;
  signal pm1_00_carry_i_1_n_0 : STD_LOGIC;
  signal \pm1_00_carry_i_2__0_n_0\ : STD_LOGIC;
  signal pm1_00_carry_i_2_n_0 : STD_LOGIC;
  signal pm1_00_carry_i_3_n_0 : STD_LOGIC;
  signal pm1_00_carry_i_4_n_0 : STD_LOGIC;
  signal pm1_00_carry_n_0 : STD_LOGIC;
  signal pm1_00_carry_n_1 : STD_LOGIC;
  signal pm1_00_carry_n_2 : STD_LOGIC;
  signal pm1_00_carry_n_3 : STD_LOGIC;
  signal \pm1_0[15]_i_1_n_0\ : STD_LOGIC;
  signal \pm1_0[15]_i_2_n_0\ : STD_LOGIC;
  signal \pm1_0[15]_i_3_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sum : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_n_1\ : STD_LOGIC;
  signal \sum0_carry__0_n_2\ : STD_LOGIC;
  signal \sum0_carry__0_n_3\ : STD_LOGIC;
  signal \sum0_carry__1_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_n_1\ : STD_LOGIC;
  signal \sum0_carry__1_n_2\ : STD_LOGIC;
  signal \sum0_carry__1_n_3\ : STD_LOGIC;
  signal \sum0_carry__2_n_2\ : STD_LOGIC;
  signal \sum0_carry__2_n_3\ : STD_LOGIC;
  signal sum0_carry_i_1_n_0 : STD_LOGIC;
  signal sum0_carry_i_2_n_0 : STD_LOGIC;
  signal sum0_carry_n_0 : STD_LOGIC;
  signal sum0_carry_n_1 : STD_LOGIC;
  signal sum0_carry_n_2 : STD_LOGIC;
  signal sum0_carry_n_3 : STD_LOGIC;
  signal \sum[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum[10]_i_1_n_0\ : STD_LOGIC;
  signal \sum[11]_i_1_n_0\ : STD_LOGIC;
  signal \sum[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum[13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[14]_i_1_n_0\ : STD_LOGIC;
  signal \sum[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum[1]_i_1_n_0\ : STD_LOGIC;
  signal \sum[2]_i_1_n_0\ : STD_LOGIC;
  signal \sum[3]_i_1_n_0\ : STD_LOGIC;
  signal \sum[3]_i_3_n_0\ : STD_LOGIC;
  signal \sum[3]_i_4_n_0\ : STD_LOGIC;
  signal \sum[3]_i_5_n_0\ : STD_LOGIC;
  signal \sum[3]_i_6_n_0\ : STD_LOGIC;
  signal \sum[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum[5]_i_1_n_0\ : STD_LOGIC;
  signal \sum[6]_i_1_n_0\ : STD_LOGIC;
  signal \sum[6]_i_2_n_0\ : STD_LOGIC;
  signal \sum[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum[7]_i_6_n_0\ : STD_LOGIC;
  signal \sum[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum[9]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[15]_i_4_n_1\ : STD_LOGIC;
  signal \sum_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \sum_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal t_10h : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t_10h[7]_i_1_n_0\ : STD_LOGIC;
  signal t_10l : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t_10l[7]_i_1_n_0\ : STD_LOGIC;
  signal \t_10l[7]_i_2_n_0\ : STD_LOGIC;
  signal \t_1h[7]_i_1_n_0\ : STD_LOGIC;
  signal \t_1l[7]_i_1_n_0\ : STD_LOGIC;
  signal \t_1l[7]_i_2_n_0\ : STD_LOGIC;
  signal t_2h : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t_2h[7]_i_1_n_0\ : STD_LOGIC;
  signal t_2l : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t_2l[7]_i_1_n_0\ : STD_LOGIC;
  signal NLW_pm1_00_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pm1_00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pm1_00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:10,S_H0:00,S_H1:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:10,S_H0:00,S_H1:01";
  attribute SOFT_HLUTNM of csum_err_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \csum_hi[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of frame_valid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \idx[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \idx[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \idx[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pm1_0[15]_i_3\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sum0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \sum[15]_i_3\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \sum_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[15]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[7]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \t_10l[7]_i_2\ : label is "soft_lutpair4";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2E60000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => aresetn,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => s_data(3),
      I1 => \state__0\(1),
      I2 => s_data(2),
      I3 => s_data(1),
      I4 => s_data(0),
      I5 => \FSM_sequential_state[1]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => \state__1\(1),
      I3 => aresetn,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550000FF300000"
    )
        port map (
      I0 => \pm1_0[15]_i_3_n_0\,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_state[1]_i_5_n_0\,
      I3 => \state__0\(0),
      I4 => s_valid,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_6_n_0\,
      I1 => s_data(2),
      I2 => \state__0\(0),
      I3 => s_data(3),
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \state__0\(1),
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_data(5),
      I1 => s_data(4),
      I2 => s_data(6),
      I3 => s_data(7),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_data(0),
      I1 => s_data(1),
      I2 => s_data(3),
      I3 => s_data(2),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_data(1),
      I1 => s_data(0),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
csum_err_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \pm1_0[15]_i_3_n_0\,
      I1 => \state__0\(1),
      I2 => \pm1_00_carry__0_n_2\,
      I3 => s_valid,
      I4 => aresetn,
      O => csum_err_i_1_n_0
    );
csum_err_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => csum_err_i_1_n_0,
      Q => csum_err,
      R => '0'
    );
\csum_hi[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \csum_hi[7]_i_2_n_0\,
      I2 => \idx_reg_n_0_[4]\,
      I3 => \idx_reg_n_0_[3]\,
      I4 => \idx_reg_n_0_[2]\,
      I5 => \idx_reg_n_0_[1]\,
      O => \csum_hi[7]_i_1_n_0\
    );
\csum_hi[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(1),
      I1 => s_valid,
      O => \csum_hi[7]_i_2_n_0\
    );
\csum_hi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(0),
      Q => csum_hi(0),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(1),
      Q => csum_hi(1),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(2),
      Q => csum_hi(2),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(3),
      Q => csum_hi(3),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(4),
      Q => csum_hi(4),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(5),
      Q => csum_hi(5),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(6),
      Q => csum_hi(6),
      R => \pm1_0[15]_i_1_n_0\
    );
\csum_hi_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \csum_hi[7]_i_1_n_0\,
      D => s_data(7),
      Q => csum_hi(7),
      R => \pm1_0[15]_i_1_n_0\
    );
frame_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \pm1_0[15]_i_3_n_0\,
      I1 => \pm1_00_carry__0_n_2\,
      I2 => \state__0\(1),
      I3 => s_valid,
      I4 => aresetn,
      O => frame_valid_i_1_n_0
    );
frame_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => frame_valid_i_1_n_0,
      Q => frame_valid,
      R => '0'
    );
\idx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \idx_reg_n_0_[0]\,
      O => \idx[0]_i_1_n_0\
    );
\idx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \idx_reg_n_0_[1]\,
      O => idx(1)
    );
\idx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \idx_reg_n_0_[1]\,
      I2 => \state__0\(1),
      I3 => \idx_reg_n_0_[2]\,
      O => idx(2)
    );
\idx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \idx_reg_n_0_[2]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \idx_reg_n_0_[1]\,
      I3 => \state__0\(1),
      I4 => \idx_reg_n_0_[3]\,
      O => idx(3)
    );
\idx[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \pm1_0[15]_i_3_n_0\,
      I2 => s_valid,
      I3 => \state__1\(1),
      O => \idx[4]_i_1_n_0\
    );
\idx[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \idx_reg_n_0_[3]\,
      I3 => \idx_reg_n_0_[2]\,
      I4 => \state__0\(1),
      I5 => \idx_reg_n_0_[4]\,
      O => idx(4)
    );
\idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \idx[4]_i_1_n_0\,
      D => \idx[0]_i_1_n_0\,
      Q => \idx_reg_n_0_[0]\,
      R => \pm1_0[15]_i_1_n_0\
    );
\idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \idx[4]_i_1_n_0\,
      D => idx(1),
      Q => \idx_reg_n_0_[1]\,
      R => \pm1_0[15]_i_1_n_0\
    );
\idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \idx[4]_i_1_n_0\,
      D => idx(2),
      Q => \idx_reg_n_0_[2]\,
      R => \pm1_0[15]_i_1_n_0\
    );
\idx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \idx[4]_i_1_n_0\,
      D => idx(3),
      Q => \idx_reg_n_0_[3]\,
      R => \pm1_0[15]_i_1_n_0\
    );
\idx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \idx[4]_i_1_n_0\,
      D => idx(4),
      Q => \idx_reg_n_0_[4]\,
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(0),
      Q => pm10(0),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(2),
      Q => pm10(10),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(3),
      Q => pm10(11),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(4),
      Q => pm10(12),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(5),
      Q => pm10(13),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(6),
      Q => pm10(14),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(7),
      Q => pm10(15),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(1),
      Q => pm10(1),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(2),
      Q => pm10(2),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(3),
      Q => pm10(3),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(4),
      Q => pm10(4),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(5),
      Q => pm10(5),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(6),
      Q => pm10(6),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10l(7),
      Q => pm10(7),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(0),
      Q => pm10(8),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_10h(1),
      Q => pm10(9),
      R => \pm1_0[15]_i_1_n_0\
    );
pm1_00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pm1_00_carry_n_0,
      CO(2) => pm1_00_carry_n_1,
      CO(1) => pm1_00_carry_n_2,
      CO(0) => pm1_00_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pm1_00_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pm1_00_carry_i_1_n_0,
      S(2) => pm1_00_carry_i_2_n_0,
      S(1) => pm1_00_carry_i_3_n_0,
      S(0) => pm1_00_carry_i_4_n_0
    );
\pm1_00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pm1_00_carry_n_0,
      CO(3 downto 2) => \NLW_pm1_00_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pm1_00_carry__0_n_2\,
      CO(0) => \pm1_00_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pm1_00_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \pm1_00_carry_i_1__0_n_0\,
      S(0) => \pm1_00_carry_i_2__0_n_0\
    );
pm1_00_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => csum_hi(3),
      I1 => sum(11),
      I2 => csum_hi(2),
      I3 => sum(10),
      I4 => sum(9),
      I5 => csum_hi(1),
      O => pm1_00_carry_i_1_n_0
    );
\pm1_00_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => csum_hi(7),
      I1 => sum(15),
      O => \pm1_00_carry_i_1__0_n_0\
    );
pm1_00_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => csum_hi(0),
      I1 => sum(8),
      I2 => s_data(6),
      I3 => sum(6),
      I4 => sum(7),
      I5 => s_data(7),
      O => pm1_00_carry_i_2_n_0
    );
\pm1_00_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => csum_hi(6),
      I1 => sum(14),
      I2 => csum_hi(5),
      I3 => sum(13),
      I4 => sum(12),
      I5 => csum_hi(4),
      O => \pm1_00_carry_i_2__0_n_0\
    );
pm1_00_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400008421000021"
    )
        port map (
      I0 => sum(5),
      I1 => s_data(4),
      I2 => s_data(5),
      I3 => sum(3),
      I4 => s_data(3),
      I5 => sum(4),
      O => pm1_00_carry_i_3_n_0
    );
pm1_00_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_data(2),
      I1 => sum(2),
      I2 => s_data(0),
      I3 => sum(0),
      I4 => sum(1),
      I5 => s_data(1),
      O => pm1_00_carry_i_4_n_0
    );
\pm1_0[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \pm1_0[15]_i_1_n_0\
    );
\pm1_0[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \pm1_00_carry__0_n_2\,
      I1 => \state__0\(1),
      I2 => s_valid,
      I3 => \pm1_0[15]_i_3_n_0\,
      O => \pm1_0[15]_i_2_n_0\
    );
\pm1_0[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => \idx_reg_n_0_[4]\,
      I1 => \idx_reg_n_0_[3]\,
      I2 => \idx_reg_n_0_[2]\,
      I3 => \idx_reg_n_0_[1]\,
      I4 => \idx_reg_n_0_[0]\,
      O => \pm1_0[15]_i_3_n_0\
    );
\pm1_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(0),
      Q => pm1_0(0),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(10),
      Q => pm1_0(10),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(11),
      Q => pm1_0(11),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(12),
      Q => pm1_0(12),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(13),
      Q => pm1_0(13),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(14),
      Q => pm1_0(14),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(15),
      Q => pm1_0(15),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(1),
      Q => pm1_0(1),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(2),
      Q => pm1_0(2),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(3),
      Q => pm1_0(3),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(4),
      Q => pm1_0(4),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(5),
      Q => pm1_0(5),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(6),
      Q => pm1_0(6),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(7),
      Q => pm1_0(7),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(8),
      Q => pm1_0(8),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm1_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => p_1_in(9),
      Q => pm1_0(9),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(0),
      Q => pm2_5(0),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(2),
      Q => pm2_5(10),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(3),
      Q => pm2_5(11),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(4),
      Q => pm2_5(12),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(5),
      Q => pm2_5(13),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(6),
      Q => pm2_5(14),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(7),
      Q => pm2_5(15),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(1),
      Q => pm2_5(1),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(2),
      Q => pm2_5(2),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(3),
      Q => pm2_5(3),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(4),
      Q => pm2_5(4),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(5),
      Q => pm2_5(5),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(6),
      Q => pm2_5(6),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2l(7),
      Q => pm2_5(7),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(0),
      Q => pm2_5(8),
      R => \pm1_0[15]_i_1_n_0\
    );
\pm2_5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \pm1_0[15]_i_2_n_0\,
      D => t_2h(1),
      Q => pm2_5(9),
      R => \pm1_0[15]_i_1_n_0\
    );
sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum0_carry_n_0,
      CO(2) => sum0_carry_n_1,
      CO(1) => sum0_carry_n_2,
      CO(0) => sum0_carry_n_3,
      CYINIT => sum(0),
      DI(3) => '0',
      DI(2 downto 1) => sum(3 downto 2),
      DI(0) => '0',
      O(3 downto 0) => data0(4 downto 1),
      S(3) => sum(4),
      S(2) => sum0_carry_i_1_n_0,
      S(1) => sum0_carry_i_2_n_0,
      S(0) => sum(1)
    );
\sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum0_carry_n_0,
      CO(3) => \sum0_carry__0_n_0\,
      CO(2) => \sum0_carry__0_n_1\,
      CO(1) => \sum0_carry__0_n_2\,
      CO(0) => \sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => sum(6),
      DI(0) => '0',
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 2) => sum(8 downto 7),
      S(1) => \sum0_carry__0_i_1_n_0\,
      S(0) => sum(5)
    );
\sum0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sum(6),
      O => \sum0_carry__0_i_1_n_0\
    );
\sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__0_n_0\,
      CO(3) => \sum0_carry__1_n_0\,
      CO(2) => \sum0_carry__1_n_1\,
      CO(1) => \sum0_carry__1_n_2\,
      CO(0) => \sum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => sum(12 downto 9)
    );
\sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_sum0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sum0_carry__2_n_2\,
      CO(0) => \sum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sum0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => sum(15 downto 13)
    );
sum0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sum(3),
      O => sum0_carry_i_1_n_0
    );
sum0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sum(2),
      O => sum0_carry_i_2_n_0
    );
\sum[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(0),
      I2 => sum(0),
      I3 => \state__1\(1),
      O => \sum[0]_i_1_n_0\
    );
\sum[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(10),
      I2 => data0(10),
      I3 => \state__1\(1),
      O => \sum[10]_i_1_n_0\
    );
\sum[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(11),
      I2 => data0(11),
      I3 => \state__1\(1),
      O => \sum[11]_i_1_n_0\
    );
\sum[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(12),
      I2 => data0(12),
      I3 => \state__1\(1),
      O => \sum[12]_i_1_n_0\
    );
\sum[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(13),
      I2 => data0(13),
      I3 => \state__1\(1),
      O => \sum[13]_i_1_n_0\
    );
\sum[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(14),
      I2 => data0(14),
      I3 => \state__1\(1),
      O => \sum[14]_i_1_n_0\
    );
\sum[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00EA00"
    )
        port map (
      I0 => \state__1\(1),
      I1 => \sum[15]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => s_valid,
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \sum[15]_i_1_n_0\
    );
\sum[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(15),
      I2 => data0(15),
      I3 => \state__1\(1),
      O => \sum[15]_i_2_n_0\
    );
\sum[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[2]\,
      I2 => \idx_reg_n_0_[3]\,
      I3 => \idx_reg_n_0_[4]\,
      O => \sum[15]_i_3_n_0\
    );
\sum[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \sum[6]_i_2_n_0\,
      I1 => data0(1),
      I2 => \state__0\(1),
      I3 => in10(1),
      O => \sum[1]_i_1_n_0\
    );
\sum[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(2),
      I2 => data0(2),
      I3 => \state__1\(1),
      O => \sum[2]_i_1_n_0\
    );
\sum[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(3),
      I2 => data0(3),
      I3 => \state__1\(1),
      O => \sum[3]_i_1_n_0\
    );
\sum[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(3),
      I1 => s_data(3),
      O => \sum[3]_i_3_n_0\
    );
\sum[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(2),
      I1 => s_data(2),
      O => \sum[3]_i_4_n_0\
    );
\sum[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(1),
      I1 => s_data(1),
      O => \sum[3]_i_5_n_0\
    );
\sum[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(0),
      I1 => s_data(0),
      O => \sum[3]_i_6_n_0\
    );
\sum[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(4),
      I2 => data0(4),
      I3 => \state__1\(1),
      O => \sum[4]_i_1_n_0\
    );
\sum[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(5),
      I2 => data0(5),
      I3 => \state__1\(1),
      O => \sum[5]_i_1_n_0\
    );
\sum[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \sum[6]_i_2_n_0\,
      I1 => data0(6),
      I2 => \state__0\(1),
      I3 => in10(6),
      O => \sum[6]_i_1_n_0\
    );
\sum[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => s_data(3),
      I2 => \state__0\(0),
      I3 => s_data(2),
      I4 => s_data(1),
      I5 => s_data(0),
      O => \sum[6]_i_2_n_0\
    );
\sum[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(7),
      I2 => data0(7),
      I3 => \state__1\(1),
      O => \sum[7]_i_1_n_0\
    );
\sum[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(7),
      I1 => s_data(7),
      O => \sum[7]_i_3_n_0\
    );
\sum[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(6),
      I1 => s_data(6),
      O => \sum[7]_i_4_n_0\
    );
\sum[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(5),
      I1 => s_data(5),
      O => \sum[7]_i_5_n_0\
    );
\sum[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(4),
      I1 => s_data(4),
      O => \sum[7]_i_6_n_0\
    );
\sum[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(8),
      I2 => data0(8),
      I3 => \state__1\(1),
      O => \sum[8]_i_1_n_0\
    );
\sum[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => in10(9),
      I2 => data0(9),
      I3 => \state__1\(1),
      O => \sum[9]_i_1_n_0\
    );
\sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[0]_i_1_n_0\,
      Q => sum(0),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[10]_i_1_n_0\,
      Q => sum(10),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[11]_i_1_n_0\,
      Q => sum(11),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[7]_i_2_n_0\,
      CO(3) => \sum_reg[11]_i_2_n_0\,
      CO(2) => \sum_reg[11]_i_2_n_1\,
      CO(1) => \sum_reg[11]_i_2_n_2\,
      CO(0) => \sum_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(11 downto 8),
      S(3 downto 0) => sum(11 downto 8)
    );
\sum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[12]_i_1_n_0\,
      Q => sum(12),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[13]_i_1_n_0\,
      Q => sum(13),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[14]_i_1_n_0\,
      Q => sum(14),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[15]_i_2_n_0\,
      Q => sum(15),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[11]_i_2_n_0\,
      CO(3) => \NLW_sum_reg[15]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \sum_reg[15]_i_4_n_1\,
      CO(1) => \sum_reg[15]_i_4_n_2\,
      CO(0) => \sum_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(15 downto 12),
      S(3 downto 0) => sum(15 downto 12)
    );
\sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[1]_i_1_n_0\,
      Q => sum(1),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[2]_i_1_n_0\,
      Q => sum(2),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[3]_i_1_n_0\,
      Q => sum(3),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg[3]_i_2_n_0\,
      CO(2) => \sum_reg[3]_i_2_n_1\,
      CO(1) => \sum_reg[3]_i_2_n_2\,
      CO(0) => \sum_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sum(3 downto 0),
      O(3 downto 0) => in10(3 downto 0),
      S(3) => \sum[3]_i_3_n_0\,
      S(2) => \sum[3]_i_4_n_0\,
      S(1) => \sum[3]_i_5_n_0\,
      S(0) => \sum[3]_i_6_n_0\
    );
\sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[4]_i_1_n_0\,
      Q => sum(4),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[5]_i_1_n_0\,
      Q => sum(5),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[6]_i_1_n_0\,
      Q => sum(6),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[7]_i_1_n_0\,
      Q => sum(7),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[3]_i_2_n_0\,
      CO(3) => \sum_reg[7]_i_2_n_0\,
      CO(2) => \sum_reg[7]_i_2_n_1\,
      CO(1) => \sum_reg[7]_i_2_n_2\,
      CO(0) => \sum_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sum(7 downto 4),
      O(3 downto 0) => in10(7 downto 4),
      S(3) => \sum[7]_i_3_n_0\,
      S(2) => \sum[7]_i_4_n_0\,
      S(1) => \sum[7]_i_5_n_0\,
      S(0) => \sum[7]_i_6_n_0\
    );
\sum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[8]_i_1_n_0\,
      Q => sum(8),
      R => \pm1_0[15]_i_1_n_0\
    );
\sum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sum[15]_i_1_n_0\,
      D => \sum[9]_i_1_n_0\,
      Q => sum(9),
      R => \pm1_0[15]_i_1_n_0\
    );
\t_10h[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \idx_reg_n_0_[3]\,
      I2 => \idx_reg_n_0_[2]\,
      I3 => \idx_reg_n_0_[1]\,
      I4 => \t_10l[7]_i_2_n_0\,
      O => \t_10h[7]_i_1_n_0\
    );
\t_10h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(0),
      Q => t_10h(0),
      R => '0'
    );
\t_10h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(1),
      Q => t_10h(1),
      R => '0'
    );
\t_10h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(2),
      Q => t_10h(2),
      R => '0'
    );
\t_10h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(3),
      Q => t_10h(3),
      R => '0'
    );
\t_10h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(4),
      Q => t_10h(4),
      R => '0'
    );
\t_10h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(5),
      Q => t_10h(5),
      R => '0'
    );
\t_10h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(6),
      Q => t_10h(6),
      R => '0'
    );
\t_10h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10h[7]_i_1_n_0\,
      D => s_data(7),
      Q => t_10h(7),
      R => '0'
    );
\t_10l[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \idx_reg_n_0_[3]\,
      I1 => \idx_reg_n_0_[2]\,
      I2 => \idx_reg_n_0_[1]\,
      I3 => \idx_reg_n_0_[0]\,
      I4 => \t_10l[7]_i_2_n_0\,
      O => \t_10l[7]_i_1_n_0\
    );
\t_10l[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \idx_reg_n_0_[4]\,
      I1 => aresetn,
      I2 => s_valid,
      I3 => \state__0\(1),
      O => \t_10l[7]_i_2_n_0\
    );
\t_10l_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(0),
      Q => t_10l(0),
      R => '0'
    );
\t_10l_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(1),
      Q => t_10l(1),
      R => '0'
    );
\t_10l_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(2),
      Q => t_10l(2),
      R => '0'
    );
\t_10l_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(3),
      Q => t_10l(3),
      R => '0'
    );
\t_10l_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(4),
      Q => t_10l(4),
      R => '0'
    );
\t_10l_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(5),
      Q => t_10l(5),
      R => '0'
    );
\t_10l_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(6),
      Q => t_10l(6),
      R => '0'
    );
\t_10l_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_10l[7]_i_1_n_0\,
      D => s_data(7),
      Q => t_10l(7),
      R => '0'
    );
\t_1h[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \t_1l[7]_i_2_n_0\,
      O => \t_1h[7]_i_1_n_0\
    );
\t_1h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(0),
      Q => p_1_in(8),
      R => '0'
    );
\t_1h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(1),
      Q => p_1_in(9),
      R => '0'
    );
\t_1h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(2),
      Q => p_1_in(10),
      R => '0'
    );
\t_1h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(3),
      Q => p_1_in(11),
      R => '0'
    );
\t_1h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(4),
      Q => p_1_in(12),
      R => '0'
    );
\t_1h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(5),
      Q => p_1_in(13),
      R => '0'
    );
\t_1h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(6),
      Q => p_1_in(14),
      R => '0'
    );
\t_1h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1h[7]_i_1_n_0\,
      D => s_data(7),
      Q => p_1_in(15),
      R => '0'
    );
\t_1l[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \t_1l[7]_i_2_n_0\,
      O => \t_1l[7]_i_1_n_0\
    );
\t_1l[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \idx_reg_n_0_[2]\,
      I1 => \idx_reg_n_0_[3]\,
      I2 => \state__0\(1),
      I3 => s_valid,
      I4 => aresetn,
      I5 => \idx_reg_n_0_[4]\,
      O => \t_1l[7]_i_2_n_0\
    );
\t_1l_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(0),
      Q => p_1_in(0),
      R => '0'
    );
\t_1l_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(1),
      Q => p_1_in(1),
      R => '0'
    );
\t_1l_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(2),
      Q => p_1_in(2),
      R => '0'
    );
\t_1l_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(3),
      Q => p_1_in(3),
      R => '0'
    );
\t_1l_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(4),
      Q => p_1_in(4),
      R => '0'
    );
\t_1l_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(5),
      Q => p_1_in(5),
      R => '0'
    );
\t_1l_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(6),
      Q => p_1_in(6),
      R => '0'
    );
\t_1l_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_1l[7]_i_1_n_0\,
      D => s_data(7),
      Q => p_1_in(7),
      R => '0'
    );
\t_2h[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \idx_reg_n_0_[1]\,
      I2 => \t_1l[7]_i_2_n_0\,
      O => \t_2h[7]_i_1_n_0\
    );
\t_2h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(0),
      Q => t_2h(0),
      R => '0'
    );
\t_2h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(1),
      Q => t_2h(1),
      R => '0'
    );
\t_2h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(2),
      Q => t_2h(2),
      R => '0'
    );
\t_2h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(3),
      Q => t_2h(3),
      R => '0'
    );
\t_2h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(4),
      Q => t_2h(4),
      R => '0'
    );
\t_2h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(5),
      Q => t_2h(5),
      R => '0'
    );
\t_2h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(6),
      Q => t_2h(6),
      R => '0'
    );
\t_2h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2h[7]_i_1_n_0\,
      D => s_data(7),
      Q => t_2h(7),
      R => '0'
    );
\t_2l[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \t_1l[7]_i_2_n_0\,
      I1 => \idx_reg_n_0_[1]\,
      I2 => \idx_reg_n_0_[0]\,
      O => \t_2l[7]_i_1_n_0\
    );
\t_2l_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(0),
      Q => t_2l(0),
      R => '0'
    );
\t_2l_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(1),
      Q => t_2l(1),
      R => '0'
    );
\t_2l_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(2),
      Q => t_2l(2),
      R => '0'
    );
\t_2l_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(3),
      Q => t_2l(3),
      R => '0'
    );
\t_2l_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(4),
      Q => t_2l(4),
      R => '0'
    );
\t_2l_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(5),
      Q => t_2l(5),
      R => '0'
    );
\t_2l_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(6),
      Q => t_2l(6),
      R => '0'
    );
\t_2l_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \t_2l[7]_i_1_n_0\,
      D => s_data(7),
      Q => t_2l(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_pm_parse_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_valid : in STD_LOGIC;
    pm1_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pm2_5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pm10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_valid : out STD_LOGIC;
    csum_err : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_u_pm_parse_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_u_pm_parse_0 : entity is "image_block_u_pm_parse_0,pms7003_parser,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_u_pm_parse_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_u_pm_parse_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_u_pm_parse_0 : entity is "pms7003_parser,Vivado 2025.2";
end image_block_u_pm_parse_0;

architecture STRUCTURE of image_block_u_pm_parse_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.image_block_u_pm_parse_0_pms7003_parser
     port map (
      aclk => aclk,
      aresetn => aresetn,
      csum_err => csum_err,
      frame_valid => frame_valid,
      pm10(15 downto 0) => pm10(15 downto 0),
      pm1_0(15 downto 0) => pm1_0(15 downto 0),
      pm2_5(15 downto 0) => pm2_5(15 downto 0),
      s_data(7 downto 0) => s_data(7 downto 0),
      s_valid => s_valid
    );
end STRUCTURE;
