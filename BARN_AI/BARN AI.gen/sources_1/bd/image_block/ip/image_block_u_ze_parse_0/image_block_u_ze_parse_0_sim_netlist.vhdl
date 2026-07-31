-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Jul 29 22:12:37 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_u_ze_parse_0/image_block_u_ze_parse_0_sim_netlist.vhdl}
-- Design      : image_block_u_ze_parse_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_ze_parse_0_ze03_parser is
  port (
    conc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gas_type : out STD_LOGIC_VECTOR ( 7 downto 0 );
    unit : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decimals : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \range\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_valid : out STD_LOGIC;
    csum_err : out STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_u_ze_parse_0_ze03_parser : entity is "ze03_parser";
end image_block_u_ze_parse_0_ze03_parser;

architecture STRUCTURE of image_block_u_ze_parse_0_ze03_parser is
  signal \conc[15]_i_10_n_0\ : STD_LOGIC;
  signal \conc[15]_i_11_n_0\ : STD_LOGIC;
  signal \conc[15]_i_12_n_0\ : STD_LOGIC;
  signal \conc[15]_i_13_n_0\ : STD_LOGIC;
  signal \conc[15]_i_14_n_0\ : STD_LOGIC;
  signal \conc[15]_i_1_n_0\ : STD_LOGIC;
  signal \conc[15]_i_2_n_0\ : STD_LOGIC;
  signal \conc[15]_i_3_n_0\ : STD_LOGIC;
  signal \conc[15]_i_4_n_0\ : STD_LOGIC;
  signal \conc[15]_i_7_n_0\ : STD_LOGIC;
  signal \conc[15]_i_8_n_0\ : STD_LOGIC;
  signal \conc[15]_i_9_n_0\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_1\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_2\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_3\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_4\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_5\ : STD_LOGIC;
  signal \conc_reg[15]_i_5_n_6\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_1\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_2\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_3\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_4\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_5\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_6\ : STD_LOGIC;
  signal \conc_reg[15]_i_6_n_7\ : STD_LOGIC;
  signal csum_err_i_1_n_0 : STD_LOGIC;
  signal frame_valid_i_1_n_0 : STD_LOGIC;
  signal frame_valid_i_2_n_0 : STD_LOGIC;
  signal idx : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \idx[2]_i_3_n_0\ : STD_LOGIC;
  signal \idx[2]_i_4_n_0\ : STD_LOGIC;
  signal \idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \idx_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal state_i_3_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \sum0_carry__0_n_1\ : STD_LOGIC;
  signal \sum0_carry__0_n_2\ : STD_LOGIC;
  signal \sum0_carry__0_n_3\ : STD_LOGIC;
  signal \sum0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal sum0_carry_i_1_n_0 : STD_LOGIC;
  signal \sum0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal sum0_carry_i_2_n_0 : STD_LOGIC;
  signal \sum0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal sum0_carry_i_3_n_0 : STD_LOGIC;
  signal \sum0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal sum0_carry_i_4_n_0 : STD_LOGIC;
  signal sum0_carry_n_0 : STD_LOGIC;
  signal sum0_carry_n_1 : STD_LOGIC;
  signal sum0_carry_n_2 : STD_LOGIC;
  signal sum0_carry_n_3 : STD_LOGIC;
  signal sum0_carry_n_7 : STD_LOGIC;
  signal \sum[0]_i_1_n_0\ : STD_LOGIC;
  signal sum_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t_ch : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t_cl : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t_dec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t_dec_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t_gas : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t_gas_4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t_rh : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t_rh_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t_rl : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t_rl_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t_unit : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t_unit_3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_conc_reg[15]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_conc_reg[15]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conc[15]_i_3\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \conc_reg[15]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \conc_reg[15]_i_6\ : label is 35;
  attribute SOFT_HLUTNM of \idx[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \idx[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of state_i_2 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of sum0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__0\ : label is 35;
begin
\conc[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \conc[15]_i_1_n_0\
    );
\conc[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(0),
      I1 => s_data(0),
      O => \conc[15]_i_10_n_0\
    );
\conc[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_data(7),
      I1 => sum_reg(7),
      O => \conc[15]_i_11_n_0\
    );
\conc[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(6),
      I1 => s_data(6),
      O => \conc[15]_i_12_n_0\
    );
\conc[15]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(5),
      I1 => s_data(5),
      O => \conc[15]_i_13_n_0\
    );
\conc[15]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(4),
      I1 => s_data(4),
      O => \conc[15]_i_14_n_0\
    );
\conc[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \conc[15]_i_3_n_0\,
      I1 => \conc[15]_i_4_n_0\,
      I2 => sum0_carry_n_7,
      I3 => \conc_reg[15]_i_5_n_5\,
      I4 => \conc_reg[15]_i_6_n_5\,
      I5 => \conc_reg[15]_i_6_n_6\,
      O => \conc[15]_i_2_n_0\
    );
\conc[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \idx_reg_n_0_[2]\,
      I3 => s_valid,
      I4 => state_reg_n_0,
      O => \conc[15]_i_3_n_0\
    );
\conc[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \conc_reg[15]_i_6_n_4\,
      I1 => \conc_reg[15]_i_6_n_7\,
      I2 => \conc_reg[15]_i_5_n_6\,
      I3 => \conc_reg[15]_i_5_n_4\,
      O => \conc[15]_i_4_n_0\
    );
\conc[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(3),
      I1 => s_data(3),
      O => \conc[15]_i_7_n_0\
    );
\conc[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(2),
      I1 => s_data(2),
      O => \conc[15]_i_8_n_0\
    );
\conc[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(1),
      I1 => s_data(1),
      O => \conc[15]_i_9_n_0\
    );
\conc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(0),
      Q => conc(0),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(10),
      Q => conc(10),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(11),
      Q => conc(11),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(12),
      Q => conc(12),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(13),
      Q => conc(13),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(14),
      Q => conc(14),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(15),
      Q => conc(15),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[15]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \conc_reg[15]_i_5_n_0\,
      CO(2) => \conc_reg[15]_i_5_n_1\,
      CO(1) => \conc_reg[15]_i_5_n_2\,
      CO(0) => \conc_reg[15]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sum_reg(3 downto 0),
      O(3) => \conc_reg[15]_i_5_n_4\,
      O(2) => \conc_reg[15]_i_5_n_5\,
      O(1) => \conc_reg[15]_i_5_n_6\,
      O(0) => \NLW_conc_reg[15]_i_5_O_UNCONNECTED\(0),
      S(3) => \conc[15]_i_7_n_0\,
      S(2) => \conc[15]_i_8_n_0\,
      S(1) => \conc[15]_i_9_n_0\,
      S(0) => \conc[15]_i_10_n_0\
    );
\conc_reg[15]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \conc_reg[15]_i_5_n_0\,
      CO(3) => \NLW_conc_reg[15]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \conc_reg[15]_i_6_n_1\,
      CO(1) => \conc_reg[15]_i_6_n_2\,
      CO(0) => \conc_reg[15]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sum_reg(6 downto 4),
      O(3) => \conc_reg[15]_i_6_n_4\,
      O(2) => \conc_reg[15]_i_6_n_5\,
      O(1) => \conc_reg[15]_i_6_n_6\,
      O(0) => \conc_reg[15]_i_6_n_7\,
      S(3) => \conc[15]_i_11_n_0\,
      S(2) => \conc[15]_i_12_n_0\,
      S(1) => \conc[15]_i_13_n_0\,
      S(0) => \conc[15]_i_14_n_0\
    );
\conc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(1),
      Q => conc(1),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(2),
      Q => conc(2),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(3),
      Q => conc(3),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(4),
      Q => conc(4),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(5),
      Q => conc(5),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(6),
      Q => conc(6),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(7),
      Q => conc(7),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(8),
      Q => conc(8),
      R => \conc[15]_i_1_n_0\
    );
\conc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => p_1_in(9),
      Q => conc(9),
      R => \conc[15]_i_1_n_0\
    );
csum_err_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => \conc[15]_i_4_n_0\,
      I1 => sum0_carry_n_7,
      I2 => \conc_reg[15]_i_5_n_5\,
      I3 => \conc_reg[15]_i_6_n_5\,
      I4 => \conc_reg[15]_i_6_n_6\,
      I5 => frame_valid_i_2_n_0,
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
\decimals_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(0),
      Q => decimals(0),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(1),
      Q => decimals(1),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(2),
      Q => decimals(2),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(3),
      Q => decimals(3),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(4),
      Q => decimals(4),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(5),
      Q => decimals(5),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(6),
      Q => decimals(6),
      R => \conc[15]_i_1_n_0\
    );
\decimals_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_dec(7),
      Q => decimals(7),
      R => \conc[15]_i_1_n_0\
    );
frame_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \conc[15]_i_4_n_0\,
      I1 => sum0_carry_n_7,
      I2 => \conc_reg[15]_i_5_n_5\,
      I3 => \conc_reg[15]_i_6_n_5\,
      I4 => \conc_reg[15]_i_6_n_6\,
      I5 => frame_valid_i_2_n_0,
      O => frame_valid_i_1_n_0
    );
frame_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \idx_reg_n_0_[1]\,
      I2 => state_reg_n_0,
      I3 => \idx_reg_n_0_[2]\,
      I4 => s_valid,
      I5 => aresetn,
      O => frame_valid_i_2_n_0
    );
frame_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => frame_valid_i_1_n_0,
      Q => frame_valid,
      R => '0'
    );
\gas_type_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(0),
      Q => gas_type(0),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(1),
      Q => gas_type(1),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(2),
      Q => gas_type(2),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(3),
      Q => gas_type(3),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(4),
      Q => gas_type(4),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(5),
      Q => gas_type(5),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(6),
      Q => gas_type(6),
      R => \conc[15]_i_1_n_0\
    );
\gas_type_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_gas(7),
      Q => gas_type(7),
      R => \conc[15]_i_1_n_0\
    );
\idx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      O => \idx[0]_i_1_n_0\
    );
\idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      O => \idx[1]_i_1_n_0\
    );
\idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004000FFFFFFFF"
    )
        port map (
      I0 => \idx[2]_i_4_n_0\,
      I1 => s_data(3),
      I2 => s_data(0),
      I3 => s_data(6),
      I4 => state_reg_n_0,
      I5 => aresetn,
      O => \idx[2]_i_1_n_0\
    );
\idx[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F000000"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \idx_reg_n_0_[2]\,
      I3 => s_valid,
      I4 => state_reg_n_0,
      O => idx(0)
    );
\idx[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \idx_reg_n_0_[2]\,
      I1 => \idx_reg_n_0_[0]\,
      I2 => \idx_reg_n_0_[1]\,
      O => \idx[2]_i_3_n_0\
    );
\idx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => s_data(2),
      I1 => s_data(7),
      I2 => s_valid,
      I3 => s_data(5),
      I4 => s_data(1),
      I5 => s_data(4),
      O => \idx[2]_i_4_n_0\
    );
\idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => \idx[0]_i_1_n_0\,
      Q => \idx_reg_n_0_[0]\,
      R => \idx[2]_i_1_n_0\
    );
\idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => \idx[1]_i_1_n_0\,
      Q => \idx_reg_n_0_[1]\,
      R => \idx[2]_i_1_n_0\
    );
\idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => \idx[2]_i_3_n_0\,
      Q => \idx_reg_n_0_[2]\,
      R => \idx[2]_i_1_n_0\
    );
\range_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(0),
      Q => \range\(0),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(2),
      Q => \range\(10),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(3),
      Q => \range\(11),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(4),
      Q => \range\(12),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(5),
      Q => \range\(13),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(6),
      Q => \range\(14),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(7),
      Q => \range\(15),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(1),
      Q => \range\(1),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(2),
      Q => \range\(2),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(3),
      Q => \range\(3),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(4),
      Q => \range\(4),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(5),
      Q => \range\(5),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(6),
      Q => \range\(6),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rl(7),
      Q => \range\(7),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(0),
      Q => \range\(8),
      R => \conc[15]_i_1_n_0\
    );
\range_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_rh(1),
      Q => \range\(9),
      R => \conc[15]_i_1_n_0\
    );
state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55552AAA00000000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => s_valid,
      I2 => \idx_reg_n_0_[2]\,
      I3 => state_i_2_n_0,
      I4 => state_i_3_n_0,
      I5 => aresetn,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \idx_reg_n_0_[1]\,
      I1 => \idx_reg_n_0_[0]\,
      O => state_i_2_n_0
    );
state_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => s_data(6),
      I2 => s_data(0),
      I3 => s_data(3),
      I4 => \idx[2]_i_4_n_0\,
      O => state_i_3_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => '0'
    );
sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum0_carry_n_0,
      CO(2) => sum0_carry_n_1,
      CO(1) => sum0_carry_n_2,
      CO(0) => sum0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => sum_reg(3 downto 0),
      O(3 downto 1) => p_0_in(3 downto 1),
      O(0) => sum0_carry_n_7,
      S(3) => \sum0_carry_i_1__0_n_0\,
      S(2) => sum0_carry_i_2_n_0,
      S(1) => sum0_carry_i_3_n_0,
      S(0) => sum0_carry_i_4_n_0
    );
\sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum0_carry_n_0,
      CO(3) => \NLW_sum0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \sum0_carry__0_n_1\,
      CO(1) => \sum0_carry__0_n_2\,
      CO(0) => \sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sum_reg(6 downto 4),
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => sum0_carry_i_1_n_0,
      S(2) => \sum0_carry_i_2__0_n_0\,
      S(1) => \sum0_carry_i_3__0_n_0\,
      S(0) => \sum0_carry_i_4__0_n_0\
    );
sum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_data(7),
      I1 => sum_reg(7),
      O => sum0_carry_i_1_n_0
    );
\sum0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(3),
      I1 => s_data(3),
      O => \sum0_carry_i_1__0_n_0\
    );
sum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(2),
      I1 => s_data(2),
      O => sum0_carry_i_2_n_0
    );
\sum0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(6),
      I1 => s_data(6),
      O => \sum0_carry_i_2__0_n_0\
    );
sum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(1),
      I1 => s_data(1),
      O => sum0_carry_i_3_n_0
    );
\sum0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(5),
      I1 => s_data(5),
      O => \sum0_carry_i_3__0_n_0\
    );
sum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(0),
      I1 => s_data(0),
      O => sum0_carry_i_4_n_0
    );
\sum0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(4),
      I1 => s_data(4),
      O => \sum0_carry_i_4__0_n_0\
    );
\sum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg(0),
      I1 => s_data(0),
      O => \sum[0]_i_1_n_0\
    );
\sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => \sum[0]_i_1_n_0\,
      Q => sum_reg(0),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(1),
      Q => sum_reg(1),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(2),
      Q => sum_reg(2),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(3),
      Q => sum_reg(3),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(4),
      Q => sum_reg(4),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(5),
      Q => sum_reg(5),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(6),
      Q => sum_reg(6),
      R => \idx[2]_i_1_n_0\
    );
\sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => idx(0),
      D => p_0_in(7),
      Q => sum_reg(7),
      R => \idx[2]_i_1_n_0\
    );
\t_ch[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \idx_reg_n_0_[1]\,
      I2 => \idx_reg_n_0_[2]\,
      I3 => state_reg_n_0,
      I4 => s_valid,
      I5 => aresetn,
      O => t_ch(0)
    );
\t_ch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(0),
      Q => p_1_in(8),
      R => '0'
    );
\t_ch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(1),
      Q => p_1_in(9),
      R => '0'
    );
\t_ch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(2),
      Q => p_1_in(10),
      R => '0'
    );
\t_ch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(3),
      Q => p_1_in(11),
      R => '0'
    );
\t_ch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(4),
      Q => p_1_in(12),
      R => '0'
    );
\t_ch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(5),
      Q => p_1_in(13),
      R => '0'
    );
\t_ch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(6),
      Q => p_1_in(14),
      R => '0'
    );
\t_ch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_ch(0),
      D => s_data(7),
      Q => p_1_in(15),
      R => '0'
    );
\t_cl[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \idx_reg_n_0_[2]\,
      I2 => s_valid,
      I3 => aresetn,
      I4 => \idx_reg_n_0_[0]\,
      I5 => \idx_reg_n_0_[1]\,
      O => t_cl(0)
    );
\t_cl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(0),
      Q => p_1_in(0),
      R => '0'
    );
\t_cl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(1),
      Q => p_1_in(1),
      R => '0'
    );
\t_cl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(2),
      Q => p_1_in(2),
      R => '0'
    );
\t_cl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(3),
      Q => p_1_in(3),
      R => '0'
    );
\t_cl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(4),
      Q => p_1_in(4),
      R => '0'
    );
\t_cl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(5),
      Q => p_1_in(5),
      R => '0'
    );
\t_cl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(6),
      Q => p_1_in(6),
      R => '0'
    );
\t_cl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_cl(0),
      D => s_data(7),
      Q => p_1_in(7),
      R => '0'
    );
\t_dec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \idx_reg_n_0_[2]\,
      I1 => state_reg_n_0,
      I2 => s_valid,
      I3 => aresetn,
      I4 => \idx_reg_n_0_[1]\,
      I5 => \idx_reg_n_0_[0]\,
      O => t_dec_2(0)
    );
\t_dec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(0),
      Q => t_dec(0),
      R => '0'
    );
\t_dec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(1),
      Q => t_dec(1),
      R => '0'
    );
\t_dec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(2),
      Q => t_dec(2),
      R => '0'
    );
\t_dec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(3),
      Q => t_dec(3),
      R => '0'
    );
\t_dec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(4),
      Q => t_dec(4),
      R => '0'
    );
\t_dec_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(5),
      Q => t_dec(5),
      R => '0'
    );
\t_dec_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(6),
      Q => t_dec(6),
      R => '0'
    );
\t_dec_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_dec_2(0),
      D => s_data(7),
      Q => t_dec(7),
      R => '0'
    );
\t_gas[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \idx_reg_n_0_[0]\,
      I1 => \idx_reg_n_0_[1]\,
      I2 => \idx_reg_n_0_[2]\,
      I3 => state_reg_n_0,
      I4 => s_valid,
      I5 => aresetn,
      O => t_gas_4(0)
    );
\t_gas_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(0),
      Q => t_gas(0),
      R => '0'
    );
\t_gas_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(1),
      Q => t_gas(1),
      R => '0'
    );
\t_gas_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(2),
      Q => t_gas(2),
      R => '0'
    );
\t_gas_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(3),
      Q => t_gas(3),
      R => '0'
    );
\t_gas_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(4),
      Q => t_gas(4),
      R => '0'
    );
\t_gas_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(5),
      Q => t_gas(5),
      R => '0'
    );
\t_gas_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(6),
      Q => t_gas(6),
      R => '0'
    );
\t_gas_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_gas_4(0),
      D => s_data(7),
      Q => t_gas(7),
      R => '0'
    );
\t_rh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \idx_reg_n_0_[2]\,
      I2 => s_valid,
      I3 => aresetn,
      I4 => \idx_reg_n_0_[0]\,
      I5 => \idx_reg_n_0_[1]\,
      O => t_rh_0(0)
    );
\t_rh_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(0),
      Q => t_rh(0),
      R => '0'
    );
\t_rh_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(1),
      Q => t_rh(1),
      R => '0'
    );
\t_rh_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(2),
      Q => t_rh(2),
      R => '0'
    );
\t_rh_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(3),
      Q => t_rh(3),
      R => '0'
    );
\t_rh_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(4),
      Q => t_rh(4),
      R => '0'
    );
\t_rh_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(5),
      Q => t_rh(5),
      R => '0'
    );
\t_rh_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(6),
      Q => t_rh(6),
      R => '0'
    );
\t_rh_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rh_0(0),
      D => s_data(7),
      Q => t_rh(7),
      R => '0'
    );
\t_rl[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \idx_reg_n_0_[2]\,
      I2 => s_valid,
      I3 => aresetn,
      I4 => \idx_reg_n_0_[1]\,
      I5 => \idx_reg_n_0_[0]\,
      O => t_rl_1(0)
    );
\t_rl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(0),
      Q => t_rl(0),
      R => '0'
    );
\t_rl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(1),
      Q => t_rl(1),
      R => '0'
    );
\t_rl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(2),
      Q => t_rl(2),
      R => '0'
    );
\t_rl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(3),
      Q => t_rl(3),
      R => '0'
    );
\t_rl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(4),
      Q => t_rl(4),
      R => '0'
    );
\t_rl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(5),
      Q => t_rl(5),
      R => '0'
    );
\t_rl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(6),
      Q => t_rl(6),
      R => '0'
    );
\t_rl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_rl_1(0),
      D => s_data(7),
      Q => t_rl(7),
      R => '0'
    );
\t_unit[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \idx_reg_n_0_[2]\,
      I1 => state_reg_n_0,
      I2 => s_valid,
      I3 => aresetn,
      I4 => \idx_reg_n_0_[0]\,
      I5 => \idx_reg_n_0_[1]\,
      O => t_unit_3(0)
    );
\t_unit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(0),
      Q => t_unit(0),
      R => '0'
    );
\t_unit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(1),
      Q => t_unit(1),
      R => '0'
    );
\t_unit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(2),
      Q => t_unit(2),
      R => '0'
    );
\t_unit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(3),
      Q => t_unit(3),
      R => '0'
    );
\t_unit_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(4),
      Q => t_unit(4),
      R => '0'
    );
\t_unit_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(5),
      Q => t_unit(5),
      R => '0'
    );
\t_unit_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(6),
      Q => t_unit(6),
      R => '0'
    );
\t_unit_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t_unit_3(0),
      D => s_data(7),
      Q => t_unit(7),
      R => '0'
    );
\unit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(0),
      Q => unit(0),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(1),
      Q => unit(1),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(2),
      Q => unit(2),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(3),
      Q => unit(3),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(4),
      Q => unit(4),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(5),
      Q => unit(5),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(6),
      Q => unit(6),
      R => \conc[15]_i_1_n_0\
    );
\unit_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \conc[15]_i_2_n_0\,
      D => t_unit(7),
      Q => unit(7),
      R => \conc[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_ze_parse_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_valid : in STD_LOGIC;
    conc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gas_type : out STD_LOGIC_VECTOR ( 7 downto 0 );
    unit : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decimals : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \range\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_valid : out STD_LOGIC;
    csum_err : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_u_ze_parse_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_u_ze_parse_0 : entity is "image_block_u_ze_parse_0,ze03_parser,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_u_ze_parse_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_u_ze_parse_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_u_ze_parse_0 : entity is "ze03_parser,Vivado 2025.2";
end image_block_u_ze_parse_0;

architecture STRUCTURE of image_block_u_ze_parse_0 is
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
inst: entity work.image_block_u_ze_parse_0_ze03_parser
     port map (
      aclk => aclk,
      aresetn => aresetn,
      conc(15 downto 0) => conc(15 downto 0),
      csum_err => csum_err,
      decimals(7 downto 0) => decimals(7 downto 0),
      frame_valid => frame_valid,
      gas_type(7 downto 0) => gas_type(7 downto 0),
      \range\(15 downto 0) => \range\(15 downto 0),
      s_data(7 downto 0) => s_data(7 downto 0),
      s_valid => s_valid,
      unit(7 downto 0) => unit(7 downto 0)
    );
end STRUCTURE;
