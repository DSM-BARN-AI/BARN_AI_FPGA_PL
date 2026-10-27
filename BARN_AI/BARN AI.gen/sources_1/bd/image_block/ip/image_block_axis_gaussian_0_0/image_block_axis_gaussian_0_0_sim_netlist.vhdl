-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sun Jul 26 20:46:12 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axis_gaussian_0_0/image_block_axis_gaussian_0_0_sim_netlist.vhdl}
-- Design      : image_block_axis_gaussian_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_gaussian_0_0_axis_gaussian is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axis_gaussian_0_0_axis_gaussian : entity is "axis_gaussian";
end image_block_axis_gaussian_0_0_axis_gaussian;

architecture STRUCTURE of image_block_axis_gaussian_0_0_axis_gaussian is
  signal bl : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \bl__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal br : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buf0_reg_i_1_n_0 : STD_LOGIC;
  signal buf1_reg_i_1_n_0 : STD_LOGIC;
  signal buf1_reg_i_8_n_0 : STD_LOGIC;
  signal ccx_f : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \ccx_f_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__0_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__0_n_1\ : STD_LOGIC;
  signal \ccx_f_carry__0_n_2\ : STD_LOGIC;
  signal \ccx_f_carry__0_n_3\ : STD_LOGIC;
  signal \ccx_f_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ccx_f_carry__1_n_2\ : STD_LOGIC;
  signal \ccx_f_carry__1_n_3\ : STD_LOGIC;
  signal ccx_f_carry_i_1_n_0 : STD_LOGIC;
  signal ccx_f_carry_i_2_n_0 : STD_LOGIC;
  signal ccx_f_carry_i_3_n_0 : STD_LOGIC;
  signal ccx_f_carry_i_4_n_0 : STD_LOGIC;
  signal ccx_f_carry_n_0 : STD_LOGIC;
  signal ccx_f_carry_n_1 : STD_LOGIC;
  signal ccx_f_carry_n_2 : STD_LOGIC;
  signal ccx_f_carry_n_3 : STD_LOGIC;
  signal cvalid_f : STD_LOGIC;
  signal \cy[0]_i_1_n_0\ : STD_LOGIC;
  signal \cy[10]_i_1_n_0\ : STD_LOGIC;
  signal \cy[11]_i_1_n_0\ : STD_LOGIC;
  signal \cy[11]_i_2_n_0\ : STD_LOGIC;
  signal \cy[11]_i_3_n_0\ : STD_LOGIC;
  signal \cy[11]_i_5_n_0\ : STD_LOGIC;
  signal \cy[11]_i_7_n_0\ : STD_LOGIC;
  signal \cy[11]_i_8_n_0\ : STD_LOGIC;
  signal \cy[1]_i_1_n_0\ : STD_LOGIC;
  signal \cy[2]_i_1_n_0\ : STD_LOGIC;
  signal \cy[3]_i_1_n_0\ : STD_LOGIC;
  signal \cy[4]_i_1_n_0\ : STD_LOGIC;
  signal \cy[5]_i_1_n_0\ : STD_LOGIC;
  signal \cy[6]_i_1_n_0\ : STD_LOGIC;
  signal \cy[7]_i_1_n_0\ : STD_LOGIC;
  signal \cy[8]_i_1_n_0\ : STD_LOGIC;
  signal \cy[9]_i_1_n_0\ : STD_LOGIC;
  signal \cy_reg[11]_i_6_n_2\ : STD_LOGIC;
  signal \cy_reg[11]_i_6_n_3\ : STD_LOGIC;
  signal \cy_reg[11]_i_6_n_5\ : STD_LOGIC;
  signal \cy_reg[11]_i_6_n_6\ : STD_LOGIC;
  signal \cy_reg[11]_i_6_n_7\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \cy_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \cy_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \cy_reg_n_0_[0]\ : STD_LOGIC;
  signal \cy_reg_n_0_[10]\ : STD_LOGIC;
  signal \cy_reg_n_0_[11]\ : STD_LOGIC;
  signal \cy_reg_n_0_[1]\ : STD_LOGIC;
  signal \cy_reg_n_0_[2]\ : STD_LOGIC;
  signal \cy_reg_n_0_[3]\ : STD_LOGIC;
  signal \cy_reg_n_0_[4]\ : STD_LOGIC;
  signal \cy_reg_n_0_[5]\ : STD_LOGIC;
  signal \cy_reg_n_0_[6]\ : STD_LOGIC;
  signal \cy_reg_n_0_[7]\ : STD_LOGIC;
  signal \cy_reg_n_0_[8]\ : STD_LOGIC;
  signal \cy_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \fc0_carry__0_n_0\ : STD_LOGIC;
  signal \fc0_carry__0_n_1\ : STD_LOGIC;
  signal \fc0_carry__0_n_2\ : STD_LOGIC;
  signal \fc0_carry__0_n_3\ : STD_LOGIC;
  signal \fc0_carry__0_n_4\ : STD_LOGIC;
  signal \fc0_carry__0_n_5\ : STD_LOGIC;
  signal \fc0_carry__0_n_6\ : STD_LOGIC;
  signal \fc0_carry__0_n_7\ : STD_LOGIC;
  signal \fc0_carry__1_n_2\ : STD_LOGIC;
  signal \fc0_carry__1_n_3\ : STD_LOGIC;
  signal \fc0_carry__1_n_5\ : STD_LOGIC;
  signal \fc0_carry__1_n_6\ : STD_LOGIC;
  signal \fc0_carry__1_n_7\ : STD_LOGIC;
  signal fc0_carry_n_0 : STD_LOGIC;
  signal fc0_carry_n_1 : STD_LOGIC;
  signal fc0_carry_n_2 : STD_LOGIC;
  signal fc0_carry_n_3 : STD_LOGIC;
  signal fc0_carry_n_4 : STD_LOGIC;
  signal fc0_carry_n_5 : STD_LOGIC;
  signal fc0_carry_n_6 : STD_LOGIC;
  signal fc0_carry_n_7 : STD_LOGIC;
  signal \fc[11]_i_1_n_0\ : STD_LOGIC;
  signal \fc[11]_i_3_n_0\ : STD_LOGIC;
  signal \fc_reg_n_0_[0]\ : STD_LOGIC;
  signal \fc_reg_n_0_[10]\ : STD_LOGIC;
  signal \fc_reg_n_0_[11]\ : STD_LOGIC;
  signal \fc_reg_n_0_[1]\ : STD_LOGIC;
  signal \fc_reg_n_0_[2]\ : STD_LOGIC;
  signal \fc_reg_n_0_[3]\ : STD_LOGIC;
  signal \fc_reg_n_0_[4]\ : STD_LOGIC;
  signal \fc_reg_n_0_[5]\ : STD_LOGIC;
  signal \fc_reg_n_0_[6]\ : STD_LOGIC;
  signal \fc_reg_n_0_[7]\ : STD_LOGIC;
  signal \fc_reg_n_0_[8]\ : STD_LOGIC;
  signal \fc_reg_n_0_[9]\ : STD_LOGIC;
  signal flush_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \flush_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \flush_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \flush_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \flush_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \flush_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal gauss8_return0 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \gauss8_return0__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0__1_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_i_8_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0__1_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_n_1\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_n_3\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_n_6\ : STD_LOGIC;
  signal \gauss8_return0__30_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0__30_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0__60_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0__60_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_1\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_3\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_4\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_5\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_6\ : STD_LOGIC;
  signal \gauss8_return0__86_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_1_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_2_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_3_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_4_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_5_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_6_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_i_7_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0__86_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___1_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__1_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__1_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__1_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___30_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___60_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__0/i___86_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___1_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__1_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__1_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__1_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___30_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__0_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry__1_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_4\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_5\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_6\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___60_carry_n_7\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__0_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__0_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__0_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__0_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__1_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__1_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry__1_n_3\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry_n_0\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry_n_1\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry_n_2\ : STD_LOGIC;
  signal \gauss8_return0_inferred__1/i___86_carry_n_3\ : STD_LOGIC;
  signal gauss8_return2 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gauss8_return4 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gauss8_return5 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal gauss8_return8 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \i___1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___1_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___30_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___60_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i___60_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___60_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i___86_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___86_carry_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser0 : STD_LOGIC;
  signal m_axis_tuser_i_2_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_4_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_5_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal need_input : STD_LOGIC;
  signal out_ok : STD_LOGIC;
  signal p1_ccx : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p1_ccx[0]_i_1_n_0\ : STD_LOGIC;
  signal p1_ccy : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p1_cvalid : STD_LOGIC;
  signal p1_cvalid_i_2_n_0 : STD_LOGIC;
  signal p1_t0cur : STD_LOGIC;
  signal p1_t0cur_i_2_n_0 : STD_LOGIC;
  signal p1_t2buf : STD_LOGIC;
  signal p2_ccx : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p2_ccy : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p2_cvalid : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal q0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal q1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rd_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal t0_from_cur_f : STD_LOGIC;
  signal t0_val : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal t1_val : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal t2_d : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal t2_d_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t2_from_buf_f : STD_LOGIC;
  signal t2_val : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tl : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w0_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \w0_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \w0_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][17]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][18]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][19]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][20]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][21]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][22]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][23]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \w0_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \w1_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \w1_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \w2_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \w2_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \w2_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][17]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][18]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][19]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][20]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][21]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][22]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][23]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \w2_reg_n_0_[2][7]\ : STD_LOGIC;
  signal wp0_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wp0_d : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal wp0_s : STD_LOGIC;
  signal wp0_s_i_1_n_0 : STD_LOGIC;
  signal wp0_s_i_2_n_0 : STD_LOGIC;
  signal wp0_v : STD_LOGIC;
  signal wp1_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wp1_d : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal wp1_s : STD_LOGIC;
  signal wp1_v : STD_LOGIC;
  signal wr_addr_now : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal x_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \x_in[11]_i_1_n_0\ : STD_LOGIC;
  signal \x_in_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \x_in_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \x_in_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \x_in_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \x_in_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \x_in_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \x_in_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \x_in_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \x_in_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \x_in_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \x_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[10]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[11]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[7]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[8]\ : STD_LOGIC;
  signal \x_in_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_buf0_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_buf0_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buf0_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buf1_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_buf1_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buf1_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_ccx_f_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ccx_f_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cy_reg[11]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cy_reg[11]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_fc0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_fc0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gauss8_return0__1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0__30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0__30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gauss8_return0__60_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0__60_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0__86_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0__86_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gauss8_return0_inferred__0/i___1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0_inferred__0/i___1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0_inferred__0/i___30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0_inferred__0/i___30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gauss8_return0_inferred__0/i___60_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0_inferred__0/i___60_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0_inferred__0/i___86_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0_inferred__0/i___86_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gauss8_return0_inferred__1/i___1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0_inferred__1/i___1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0_inferred__1/i___30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0_inferred__1/i___30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gauss8_return0_inferred__1/i___60_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0_inferred__1/i___60_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gauss8_return0_inferred__1/i___86_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gauss8_return0_inferred__1/i___86_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_x_in_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_in_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of buf0_reg : label is "p0_d24";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of buf0_reg : label is "p0_d24";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of buf0_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of buf0_reg : label is 1536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of buf0_reg : label is "image_block_axis_gaussian_0_0/inst/buf0_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of buf0_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of buf0_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of buf0_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of buf0_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of buf0_reg : label is 448;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of buf0_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of buf0_reg : label is 23;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of buf1_reg : label is "p0_d24";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of buf1_reg : label is "p0_d24";
  attribute METHODOLOGY_DRC_VIOS of buf1_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of buf1_reg : label is 1536;
  attribute RTL_RAM_NAME of buf1_reg : label is "image_block_axis_gaussian_0_0/inst/buf1_reg";
  attribute RTL_RAM_STYLE of buf1_reg : label is "auto";
  attribute RTL_RAM_TYPE of buf1_reg : label is "RAM_SDP";
  attribute ram_addr_begin of buf1_reg : label is 0;
  attribute ram_addr_end of buf1_reg : label is 511;
  attribute ram_offset of buf1_reg : label is 448;
  attribute ram_slice_begin of buf1_reg : label is 0;
  attribute ram_slice_end of buf1_reg : label is 23;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ccx_f_carry : label is 35;
  attribute ADDER_THRESHOLD of \ccx_f_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ccx_f_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cy[11]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cy[11]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cy[11]_i_8\ : label is "soft_lutpair35";
  attribute ADDER_THRESHOLD of \cy_reg[11]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \cy_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cy_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of fc0_carry : label is 35;
  attribute ADDER_THRESHOLD of \fc0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \fc0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \fc[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fc[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \fc[11]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \fc[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fc[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fc[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fc[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fc[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fc[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fc[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fc[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \fc[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \flush_cnt[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \flush_cnt[0]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gauss8_return0__1_carry_i_8\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gauss8_return0__30_carry__1_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gauss8_return0__30_carry_i_7\ : label is "soft_lutpair39";
  attribute HLUTNM : string;
  attribute HLUTNM of \gauss8_return0__60_carry_i_3\ : label is "lutpair0";
  attribute HLUTNM of \gauss8_return0__60_carry_i_7\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \gauss8_return0__86_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \gauss8_return0__86_carry__0\ : label is 35;
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_1\ : label is "lutpair7";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_2\ : label is "lutpair6";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_3\ : label is "lutpair5";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_4\ : label is "lutpair4";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_5\ : label is "lutpair8";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_6\ : label is "lutpair7";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_7\ : label is "lutpair6";
  attribute HLUTNM of \gauss8_return0__86_carry__0_i_8\ : label is "lutpair5";
  attribute ADDER_THRESHOLD of \gauss8_return0__86_carry__1\ : label is 35;
  attribute HLUTNM of \gauss8_return0__86_carry__1_i_2\ : label is "lutpair9";
  attribute HLUTNM of \gauss8_return0__86_carry__1_i_3\ : label is "lutpair8";
  attribute HLUTNM of \gauss8_return0__86_carry__1_i_7\ : label is "lutpair9";
  attribute HLUTNM of \gauss8_return0__86_carry_i_1\ : label is "lutpair3";
  attribute HLUTNM of \gauss8_return0__86_carry_i_2\ : label is "lutpair2";
  attribute HLUTNM of \gauss8_return0__86_carry_i_3\ : label is "lutpair1";
  attribute HLUTNM of \gauss8_return0__86_carry_i_4\ : label is "lutpair4";
  attribute HLUTNM of \gauss8_return0__86_carry_i_5\ : label is "lutpair3";
  attribute HLUTNM of \gauss8_return0__86_carry_i_6\ : label is "lutpair2";
  attribute HLUTNM of \gauss8_return0__86_carry_i_7\ : label is "lutpair1";
  attribute ADDER_THRESHOLD of \gauss8_return0_inferred__0/i___86_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \gauss8_return0_inferred__0/i___86_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gauss8_return0_inferred__0/i___86_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gauss8_return0_inferred__1/i___86_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \gauss8_return0_inferred__1/i___86_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gauss8_return0_inferred__1/i___86_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \i___1_carry_i_8\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i___1_carry_i_8__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i___30_carry__1_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i___30_carry__1_i_4__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i___30_carry_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i___30_carry_i_7__0\ : label is "soft_lutpair38";
  attribute HLUTNM of \i___60_carry_i_3\ : label is "lutpair10";
  attribute HLUTNM of \i___60_carry_i_3__0\ : label is "lutpair20";
  attribute HLUTNM of \i___60_carry_i_7\ : label is "lutpair10";
  attribute HLUTNM of \i___60_carry_i_7__0\ : label is "lutpair20";
  attribute HLUTNM of \i___86_carry__0_i_1\ : label is "lutpair17";
  attribute HLUTNM of \i___86_carry__0_i_1__0\ : label is "lutpair27";
  attribute HLUTNM of \i___86_carry__0_i_2\ : label is "lutpair16";
  attribute HLUTNM of \i___86_carry__0_i_2__0\ : label is "lutpair26";
  attribute HLUTNM of \i___86_carry__0_i_3\ : label is "lutpair15";
  attribute HLUTNM of \i___86_carry__0_i_3__0\ : label is "lutpair25";
  attribute HLUTNM of \i___86_carry__0_i_4\ : label is "lutpair14";
  attribute HLUTNM of \i___86_carry__0_i_4__0\ : label is "lutpair24";
  attribute HLUTNM of \i___86_carry__0_i_5\ : label is "lutpair18";
  attribute HLUTNM of \i___86_carry__0_i_5__0\ : label is "lutpair28";
  attribute HLUTNM of \i___86_carry__0_i_6\ : label is "lutpair17";
  attribute HLUTNM of \i___86_carry__0_i_6__0\ : label is "lutpair27";
  attribute HLUTNM of \i___86_carry__0_i_7\ : label is "lutpair16";
  attribute HLUTNM of \i___86_carry__0_i_7__0\ : label is "lutpair26";
  attribute HLUTNM of \i___86_carry__0_i_8\ : label is "lutpair15";
  attribute HLUTNM of \i___86_carry__0_i_8__0\ : label is "lutpair25";
  attribute HLUTNM of \i___86_carry__1_i_2\ : label is "lutpair19";
  attribute HLUTNM of \i___86_carry__1_i_2__0\ : label is "lutpair29";
  attribute HLUTNM of \i___86_carry__1_i_3\ : label is "lutpair18";
  attribute HLUTNM of \i___86_carry__1_i_3__0\ : label is "lutpair28";
  attribute HLUTNM of \i___86_carry__1_i_7\ : label is "lutpair19";
  attribute HLUTNM of \i___86_carry__1_i_7__0\ : label is "lutpair29";
  attribute HLUTNM of \i___86_carry_i_1\ : label is "lutpair13";
  attribute HLUTNM of \i___86_carry_i_1__0\ : label is "lutpair23";
  attribute HLUTNM of \i___86_carry_i_2\ : label is "lutpair12";
  attribute HLUTNM of \i___86_carry_i_2__0\ : label is "lutpair22";
  attribute HLUTNM of \i___86_carry_i_3\ : label is "lutpair11";
  attribute HLUTNM of \i___86_carry_i_3__0\ : label is "lutpair21";
  attribute HLUTNM of \i___86_carry_i_4\ : label is "lutpair14";
  attribute HLUTNM of \i___86_carry_i_4__0\ : label is "lutpair24";
  attribute HLUTNM of \i___86_carry_i_5\ : label is "lutpair13";
  attribute HLUTNM of \i___86_carry_i_5__0\ : label is "lutpair23";
  attribute HLUTNM of \i___86_carry_i_6\ : label is "lutpair12";
  attribute HLUTNM of \i___86_carry_i_6__0\ : label is "lutpair22";
  attribute HLUTNM of \i___86_carry_i_7\ : label is "lutpair11";
  attribute HLUTNM of \i___86_carry_i_7__0\ : label is "lutpair21";
  attribute SOFT_HLUTNM of m_axis_tuser_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of p1_t0cur_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \state[1]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w1[2][0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w1[2][10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w1[2][11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \w1[2][12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w1[2][13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \w1[2][14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \w1[2][15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \w1[2][16]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \w1[2][17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \w1[2][18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \w1[2][19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \w1[2][1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w1[2][20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \w1[2][21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \w1[2][22]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \w1[2][23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \w1[2][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w1[2][3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w1[2][4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w1[2][5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w1[2][6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w1[2][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w1[2][8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w1[2][9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w2[2][0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w2[2][10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w2[2][11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \w2[2][12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w2[2][13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \w2[2][14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \w2[2][15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \w2[2][16]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \w2[2][17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \w2[2][18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \w2[2][19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \w2[2][1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w2[2][20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \w2[2][21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \w2[2][22]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \w2[2][23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \w2[2][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w2[2][3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w2[2][4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w2[2][5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w2[2][6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2[2][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2[2][8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w2[2][9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wp0_a[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \x_in[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \x_in[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \x_in[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \x_in[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \x_in[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \x_in[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \x_in[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \x_in[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \x_in[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \x_in[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \x_in[9]_i_1\ : label is "soft_lutpair45";
  attribute ADDER_THRESHOLD of \x_in_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \x_in_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \x_in_reg[8]_i_2\ : label is 35;
begin
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
buf0_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 5) => rd_addr(5 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 11) => B"111",
      ADDRBWRADDR(10 downto 5) => wp1_a(5 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DIADI(15 downto 0) => wp1_d(15 downto 0),
      DIBDI(15 downto 8) => B"11111111",
      DIBDI(7 downto 0) => wp1_d(23 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => q0(15 downto 0),
      DOBDO(15 downto 8) => NLW_buf0_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => q0(23 downto 16),
      DOPADOP(1 downto 0) => NLW_buf0_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_buf0_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \m_axis_tdata[23]_i_2_n_0\,
      ENBWREN => buf0_reg_i_1_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => \m_axis_tdata[23]_i_2_n_0\,
      WEBWE(2) => \m_axis_tdata[23]_i_2_n_0\,
      WEBWE(1) => \m_axis_tdata[23]_i_2_n_0\,
      WEBWE(0) => \m_axis_tdata[23]_i_2_n_0\
    );
buf0_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wp1_v,
      I1 => wp1_s,
      O => buf0_reg_i_1_n_0
    );
buf1_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 5) => rd_addr(5 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 11) => B"111",
      ADDRBWRADDR(10 downto 5) => wp1_a(5 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DIADI(15 downto 0) => wp1_d(15 downto 0),
      DIBDI(15 downto 8) => B"11111111",
      DIBDI(7 downto 0) => wp1_d(23 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => q1(15 downto 0),
      DOBDO(15 downto 8) => NLW_buf1_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => q1(23 downto 16),
      DOPADOP(1 downto 0) => NLW_buf1_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_buf1_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \m_axis_tdata[23]_i_2_n_0\,
      ENBWREN => buf1_reg_i_1_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => \m_axis_tdata[23]_i_2_n_0\,
      WEBWE(2) => \m_axis_tdata[23]_i_2_n_0\,
      WEBWE(1) => \m_axis_tdata[23]_i_2_n_0\,
      WEBWE(0) => \m_axis_tdata[23]_i_2_n_0\
    );
buf1_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wp1_v,
      I1 => wp1_s,
      O => buf1_reg_i_1_n_0
    );
buf1_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buf1_reg_i_8_n_0,
      I1 => \fc_reg_n_0_[6]\,
      O => rd_addr(5)
    );
buf1_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_4_n_0,
      I1 => \fc_reg_n_0_[4]\,
      O => rd_addr(4)
    );
buf1_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_4_n_0,
      I1 => \fc_reg_n_0_[3]\,
      O => rd_addr(3)
    );
buf1_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_4_n_0,
      I1 => \fc_reg_n_0_[2]\,
      O => rd_addr(2)
    );
buf1_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_4_n_0,
      I1 => \fc_reg_n_0_[1]\,
      O => rd_addr(1)
    );
buf1_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_4_n_0,
      I1 => \fc_reg_n_0_[0]\,
      O => rd_addr(0)
    );
buf1_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fc_reg_n_0_[8]\,
      I1 => \fc_reg_n_0_[9]\,
      I2 => \fc_reg_n_0_[11]\,
      I3 => \fc_reg_n_0_[10]\,
      I4 => \fc_reg_n_0_[7]\,
      I5 => \fc_reg_n_0_[5]\,
      O => buf1_reg_i_8_n_0
    );
ccx_f_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ccx_f_carry_n_0,
      CO(2) => ccx_f_carry_n_1,
      CO(1) => ccx_f_carry_n_2,
      CO(0) => ccx_f_carry_n_3,
      CYINIT => \fc_reg_n_0_[0]\,
      DI(3) => \fc_reg_n_0_[4]\,
      DI(2) => \fc_reg_n_0_[3]\,
      DI(1) => \fc_reg_n_0_[2]\,
      DI(0) => \fc_reg_n_0_[1]\,
      O(3 downto 0) => ccx_f(4 downto 1),
      S(3) => ccx_f_carry_i_1_n_0,
      S(2) => ccx_f_carry_i_2_n_0,
      S(1) => ccx_f_carry_i_3_n_0,
      S(0) => ccx_f_carry_i_4_n_0
    );
\ccx_f_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ccx_f_carry_n_0,
      CO(3) => \ccx_f_carry__0_n_0\,
      CO(2) => \ccx_f_carry__0_n_1\,
      CO(1) => \ccx_f_carry__0_n_2\,
      CO(0) => \ccx_f_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \fc_reg_n_0_[8]\,
      DI(2) => \fc_reg_n_0_[7]\,
      DI(1) => \fc_reg_n_0_[6]\,
      DI(0) => \fc_reg_n_0_[5]\,
      O(3 downto 0) => ccx_f(8 downto 5),
      S(3) => \ccx_f_carry__0_i_1_n_0\,
      S(2) => \ccx_f_carry__0_i_2_n_0\,
      S(1) => \ccx_f_carry__0_i_3_n_0\,
      S(0) => \ccx_f_carry__0_i_4_n_0\
    );
\ccx_f_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[8]\,
      O => \ccx_f_carry__0_i_1_n_0\
    );
\ccx_f_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[7]\,
      O => \ccx_f_carry__0_i_2_n_0\
    );
\ccx_f_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[6]\,
      O => \ccx_f_carry__0_i_3_n_0\
    );
\ccx_f_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[5]\,
      O => \ccx_f_carry__0_i_4_n_0\
    );
\ccx_f_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ccx_f_carry__0_n_0\,
      CO(3 downto 2) => \NLW_ccx_f_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ccx_f_carry__1_n_2\,
      CO(0) => \ccx_f_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \fc_reg_n_0_[10]\,
      DI(0) => \fc_reg_n_0_[9]\,
      O(3) => \NLW_ccx_f_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => ccx_f(11 downto 9),
      S(3) => '0',
      S(2) => \ccx_f_carry__1_i_1_n_0\,
      S(1) => \ccx_f_carry__1_i_2_n_0\,
      S(0) => \ccx_f_carry__1_i_3_n_0\
    );
\ccx_f_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[11]\,
      O => \ccx_f_carry__1_i_1_n_0\
    );
\ccx_f_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[10]\,
      O => \ccx_f_carry__1_i_2_n_0\
    );
\ccx_f_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[9]\,
      O => \ccx_f_carry__1_i_3_n_0\
    );
ccx_f_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[4]\,
      O => ccx_f_carry_i_1_n_0
    );
ccx_f_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[3]\,
      O => ccx_f_carry_i_2_n_0
    );
ccx_f_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[2]\,
      O => ccx_f_carry_i_3_n_0
    );
ccx_f_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[1]\,
      O => ccx_f_carry_i_4_n_0
    );
\cy[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \cy_reg_n_0_[0]\,
      O => \cy[0]_i_1_n_0\
    );
\cy[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[11]_i_6_n_6\,
      O => \cy[10]_i_1_n_0\
    );
\cy[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000550000003000"
    )
        port map (
      I0 => \state[1]_i_4_n_0\,
      I1 => \cy[11]_i_3_n_0\,
      I2 => s_axis_tvalid,
      I3 => out_ok,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \cy[11]_i_1_n_0\
    );
\cy[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[11]_i_6_n_5\,
      O => \cy[11]_i_2_n_0\
    );
\cy[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \cy[11]_i_7_n_0\,
      I1 => \x_in_reg_n_0_[5]\,
      I2 => \x_in_reg_n_0_[4]\,
      I3 => \x_in_reg_n_0_[7]\,
      I4 => \x_in_reg_n_0_[6]\,
      I5 => \cy[11]_i_8_n_0\,
      O => \cy[11]_i_3_n_0\
    );
\cy[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      O => out_ok
    );
\cy[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \cy_reg_n_0_[2]\,
      I1 => \cy_reg_n_0_[3]\,
      I2 => \cy_reg_n_0_[0]\,
      I3 => \cy_reg_n_0_[1]\,
      I4 => \cy_reg_n_0_[5]\,
      O => \cy[11]_i_5_n_0\
    );
\cy[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \x_in_reg_n_0_[9]\,
      I1 => \x_in_reg_n_0_[8]\,
      I2 => \x_in_reg_n_0_[11]\,
      I3 => \x_in_reg_n_0_[10]\,
      O => \cy[11]_i_7_n_0\
    );
\cy[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \x_in_reg_n_0_[1]\,
      I1 => \x_in_reg_n_0_[0]\,
      I2 => \x_in_reg_n_0_[3]\,
      I3 => \x_in_reg_n_0_[2]\,
      O => \cy[11]_i_8_n_0\
    );
\cy[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_7\,
      O => \cy[1]_i_1_n_0\
    );
\cy[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_6\,
      O => \cy[2]_i_1_n_0\
    );
\cy[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_5\,
      O => \cy[3]_i_1_n_0\
    );
\cy[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_4\,
      O => \cy[4]_i_1_n_0\
    );
\cy[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_7\,
      O => \cy[5]_i_1_n_0\
    );
\cy[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_6\,
      O => \cy[6]_i_1_n_0\
    );
\cy[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_5\,
      O => \cy[7]_i_1_n_0\
    );
\cy[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_4\,
      O => \cy[8]_i_1_n_0\
    );
\cy[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_3_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[11]_i_6_n_7\,
      O => \cy[9]_i_1_n_0\
    );
\cy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[0]_i_1_n_0\,
      Q => \cy_reg_n_0_[0]\,
      R => p_0_in
    );
\cy_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[10]_i_1_n_0\,
      Q => \cy_reg_n_0_[10]\,
      R => p_0_in
    );
\cy_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[11]_i_2_n_0\,
      Q => \cy_reg_n_0_[11]\,
      R => p_0_in
    );
\cy_reg[11]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cy_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cy_reg[11]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cy_reg[11]_i_6_n_2\,
      CO(0) => \cy_reg[11]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cy_reg[11]_i_6_O_UNCONNECTED\(3),
      O(2) => \cy_reg[11]_i_6_n_5\,
      O(1) => \cy_reg[11]_i_6_n_6\,
      O(0) => \cy_reg[11]_i_6_n_7\,
      S(3) => '0',
      S(2) => \cy_reg_n_0_[11]\,
      S(1) => \cy_reg_n_0_[10]\,
      S(0) => \cy_reg_n_0_[9]\
    );
\cy_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[1]_i_1_n_0\,
      Q => \cy_reg_n_0_[1]\,
      R => p_0_in
    );
\cy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[2]_i_1_n_0\,
      Q => \cy_reg_n_0_[2]\,
      R => p_0_in
    );
\cy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[3]_i_1_n_0\,
      Q => \cy_reg_n_0_[3]\,
      R => p_0_in
    );
\cy_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[4]_i_1_n_0\,
      Q => \cy_reg_n_0_[4]\,
      R => p_0_in
    );
\cy_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cy_reg[4]_i_2_n_0\,
      CO(2) => \cy_reg[4]_i_2_n_1\,
      CO(1) => \cy_reg[4]_i_2_n_2\,
      CO(0) => \cy_reg[4]_i_2_n_3\,
      CYINIT => \cy_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \cy_reg[4]_i_2_n_4\,
      O(2) => \cy_reg[4]_i_2_n_5\,
      O(1) => \cy_reg[4]_i_2_n_6\,
      O(0) => \cy_reg[4]_i_2_n_7\,
      S(3) => \cy_reg_n_0_[4]\,
      S(2) => \cy_reg_n_0_[3]\,
      S(1) => \cy_reg_n_0_[2]\,
      S(0) => \cy_reg_n_0_[1]\
    );
\cy_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[5]_i_1_n_0\,
      Q => \cy_reg_n_0_[5]\,
      R => p_0_in
    );
\cy_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[6]_i_1_n_0\,
      Q => \cy_reg_n_0_[6]\,
      R => p_0_in
    );
\cy_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[7]_i_1_n_0\,
      Q => \cy_reg_n_0_[7]\,
      R => p_0_in
    );
\cy_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[8]_i_1_n_0\,
      Q => \cy_reg_n_0_[8]\,
      R => p_0_in
    );
\cy_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cy_reg[4]_i_2_n_0\,
      CO(3) => \cy_reg[8]_i_2_n_0\,
      CO(2) => \cy_reg[8]_i_2_n_1\,
      CO(1) => \cy_reg[8]_i_2_n_2\,
      CO(0) => \cy_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cy_reg[8]_i_2_n_4\,
      O(2) => \cy_reg[8]_i_2_n_5\,
      O(1) => \cy_reg[8]_i_2_n_6\,
      O(0) => \cy_reg[8]_i_2_n_7\,
      S(3) => \cy_reg_n_0_[8]\,
      S(2) => \cy_reg_n_0_[7]\,
      S(1) => \cy_reg_n_0_[6]\,
      S(0) => \cy_reg_n_0_[5]\
    );
\cy_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cy[11]_i_1_n_0\,
      D => \cy[9]_i_1_n_0\,
      Q => \cy_reg_n_0_[9]\,
      R => p_0_in
    );
fc0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fc0_carry_n_0,
      CO(2) => fc0_carry_n_1,
      CO(1) => fc0_carry_n_2,
      CO(0) => fc0_carry_n_3,
      CYINIT => \fc_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => fc0_carry_n_4,
      O(2) => fc0_carry_n_5,
      O(1) => fc0_carry_n_6,
      O(0) => fc0_carry_n_7,
      S(3) => \fc_reg_n_0_[4]\,
      S(2) => \fc_reg_n_0_[3]\,
      S(1) => \fc_reg_n_0_[2]\,
      S(0) => \fc_reg_n_0_[1]\
    );
\fc0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => fc0_carry_n_0,
      CO(3) => \fc0_carry__0_n_0\,
      CO(2) => \fc0_carry__0_n_1\,
      CO(1) => \fc0_carry__0_n_2\,
      CO(0) => \fc0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fc0_carry__0_n_4\,
      O(2) => \fc0_carry__0_n_5\,
      O(1) => \fc0_carry__0_n_6\,
      O(0) => \fc0_carry__0_n_7\,
      S(3) => \fc_reg_n_0_[8]\,
      S(2) => \fc_reg_n_0_[7]\,
      S(1) => \fc_reg_n_0_[6]\,
      S(0) => \fc_reg_n_0_[5]\
    );
\fc0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fc0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_fc0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \fc0_carry__1_n_2\,
      CO(0) => \fc0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_fc0_carry__1_O_UNCONNECTED\(3),
      O(2) => \fc0_carry__1_n_5\,
      O(1) => \fc0_carry__1_n_6\,
      O(0) => \fc0_carry__1_n_7\,
      S(3) => '0',
      S(2) => \fc_reg_n_0_[11]\,
      S(1) => \fc_reg_n_0_[10]\,
      S(0) => \fc_reg_n_0_[9]\
    );
\fc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc[11]_i_3_n_0\,
      O => p_1_in(0)
    );
\fc[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__1_n_6\,
      O => p_1_in(10)
    );
\fc[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FA220000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \cy[11]_i_3_n_0\,
      I2 => \m_axis_tdata[23]_i_3_n_0\,
      I3 => \state_reg_n_0_[0]\,
      I4 => out_ok,
      I5 => \state_reg_n_0_[1]\,
      O => \fc[11]_i_1_n_0\
    );
\fc[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__1_n_5\,
      O => p_1_in(11)
    );
\fc[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => buf1_reg_i_8_n_0,
      I1 => \fc_reg_n_0_[2]\,
      I2 => \fc_reg_n_0_[1]\,
      I3 => \fc_reg_n_0_[4]\,
      I4 => \fc_reg_n_0_[3]\,
      I5 => \fc_reg_n_0_[6]\,
      O => \fc[11]_i_3_n_0\
    );
\fc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => fc0_carry_n_7,
      O => p_1_in(1)
    );
\fc[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => fc0_carry_n_6,
      O => p_1_in(2)
    );
\fc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => fc0_carry_n_5,
      O => p_1_in(3)
    );
\fc[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => fc0_carry_n_4,
      O => p_1_in(4)
    );
\fc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__0_n_7\,
      O => p_1_in(5)
    );
\fc[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__0_n_6\,
      O => p_1_in(6)
    );
\fc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__0_n_5\,
      O => p_1_in(7)
    );
\fc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__0_n_4\,
      O => p_1_in(8)
    );
\fc[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \fc[11]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \fc0_carry__1_n_7\,
      O => p_1_in(9)
    );
\fc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(0),
      Q => \fc_reg_n_0_[0]\,
      R => p_0_in
    );
\fc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(10),
      Q => \fc_reg_n_0_[10]\,
      R => p_0_in
    );
\fc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(11),
      Q => \fc_reg_n_0_[11]\,
      R => p_0_in
    );
\fc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(1),
      Q => \fc_reg_n_0_[1]\,
      R => p_0_in
    );
\fc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(2),
      Q => \fc_reg_n_0_[2]\,
      R => p_0_in
    );
\fc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(3),
      Q => \fc_reg_n_0_[3]\,
      R => p_0_in
    );
\fc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(4),
      Q => \fc_reg_n_0_[4]\,
      R => p_0_in
    );
\fc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(5),
      Q => \fc_reg_n_0_[5]\,
      R => p_0_in
    );
\fc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(6),
      Q => \fc_reg_n_0_[6]\,
      R => p_0_in
    );
\fc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(7),
      Q => \fc_reg_n_0_[7]\,
      R => p_0_in
    );
\fc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(8),
      Q => \fc_reg_n_0_[8]\,
      R => p_0_in
    );
\fc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => p_1_in(9),
      Q => \fc_reg_n_0_[9]\,
      R => p_0_in
    );
\flush_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333303388888A88"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \flush_cnt[0]_i_2_n_0\,
      I2 => \state[1]_i_4_n_0\,
      I3 => \flush_cnt[0]_i_3_n_0\,
      I4 => \flush_cnt[0]_i_4_n_0\,
      I5 => flush_cnt(0),
      O => \flush_cnt[0]_i_1_n_0\
    );
\flush_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8A008A"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => flush_cnt(1),
      I4 => flush_cnt(0),
      O => \flush_cnt[0]_i_2_n_0\
    );
\flush_cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => \state_reg_n_0_[1]\,
      O => \flush_cnt[0]_i_3_n_0\
    );
\flush_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p1_t0cur_i_2_n_0,
      I1 => \cy_reg_n_0_[5]\,
      I2 => \cy_reg_n_0_[1]\,
      I3 => \cy_reg_n_0_[0]\,
      I4 => \cy_reg_n_0_[3]\,
      I5 => \cy_reg_n_0_[2]\,
      O => \flush_cnt[0]_i_4_n_0\
    );
\flush_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCC66006CCC6CCC"
    )
        port map (
      I0 => flush_cnt(0),
      I1 => flush_cnt(1),
      I2 => out_ok,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state[1]_i_4_n_0\,
      I5 => \state[1]_i_3_n_0\,
      O => \flush_cnt[1]_i_1_n_0\
    );
\flush_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \flush_cnt[0]_i_1_n_0\,
      Q => flush_cnt(0),
      R => p_0_in
    );
\flush_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \flush_cnt[1]_i_1_n_0\,
      Q => flush_cnt(1),
      R => p_0_in
    );
\gauss8_return0__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0__1_carry_n_0\,
      CO(2) => \gauss8_return0__1_carry_n_1\,
      CO(1) => \gauss8_return0__1_carry_n_2\,
      CO(0) => \gauss8_return0__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__1_carry_i_1_n_0\,
      DI(2) => \gauss8_return0__1_carry_i_2_n_0\,
      DI(1) => \gauss8_return0__1_carry_i_3_n_0\,
      DI(0) => \w2_reg_n_0_[2][0]\,
      O(3) => \gauss8_return0__1_carry_n_4\,
      O(2) => \gauss8_return0__1_carry_n_5\,
      O(1) => \gauss8_return0__1_carry_n_6\,
      O(0) => \gauss8_return0__1_carry_n_7\,
      S(3) => \gauss8_return0__1_carry_i_4_n_0\,
      S(2) => \gauss8_return0__1_carry_i_5_n_0\,
      S(1) => \gauss8_return0__1_carry_i_6_n_0\,
      S(0) => \gauss8_return0__1_carry_i_7_n_0\
    );
\gauss8_return0__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__1_carry_n_0\,
      CO(3) => \gauss8_return0__1_carry__0_n_0\,
      CO(2) => \gauss8_return0__1_carry__0_n_1\,
      CO(1) => \gauss8_return0__1_carry__0_n_2\,
      CO(0) => \gauss8_return0__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__1_carry__0_i_1_n_0\,
      DI(2) => \gauss8_return0__1_carry__0_i_2_n_0\,
      DI(1) => \gauss8_return0__1_carry__0_i_3_n_0\,
      DI(0) => \gauss8_return0__1_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0__1_carry__0_n_4\,
      O(2) => \gauss8_return0__1_carry__0_n_5\,
      O(1) => \gauss8_return0__1_carry__0_n_6\,
      O(0) => \gauss8_return0__1_carry__0_n_7\,
      S(3) => \gauss8_return0__1_carry__0_i_5_n_0\,
      S(2) => \gauss8_return0__1_carry__0_i_6_n_0\,
      S(1) => \gauss8_return0__1_carry__0_i_7_n_0\,
      S(0) => \gauss8_return0__1_carry__0_i_8_n_0\
    );
\gauss8_return0__1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][6]\,
      I1 => \w2_reg_n_0_[1][5]\,
      I2 => \w0_reg[0]\(6),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][6]\,
      O => \gauss8_return0__1_carry__0_i_1_n_0\
    );
\gauss8_return0__1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][5]\,
      I1 => \w2_reg_n_0_[1][4]\,
      I2 => \w0_reg[0]\(5),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][5]\,
      O => \gauss8_return0__1_carry__0_i_2_n_0\
    );
\gauss8_return0__1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][4]\,
      I1 => \w2_reg_n_0_[1][3]\,
      I2 => \w0_reg[0]\(4),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][4]\,
      O => \gauss8_return0__1_carry__0_i_3_n_0\
    );
\gauss8_return0__1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][3]\,
      I1 => \w2_reg_n_0_[1][2]\,
      I2 => \w0_reg[0]\(3),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][3]\,
      O => \gauss8_return0__1_carry__0_i_4_n_0\
    );
\gauss8_return0__1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_i_1_n_0\,
      I1 => \w2_reg_n_0_[2][7]\,
      I2 => \w2_reg_n_0_[1][6]\,
      I3 => \w0_reg[0]\(7),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][7]\,
      O => \gauss8_return0__1_carry__0_i_5_n_0\
    );
\gauss8_return0__1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_i_2_n_0\,
      I1 => \w2_reg_n_0_[2][6]\,
      I2 => \w2_reg_n_0_[1][5]\,
      I3 => \w0_reg[0]\(6),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][6]\,
      O => \gauss8_return0__1_carry__0_i_6_n_0\
    );
\gauss8_return0__1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_i_3_n_0\,
      I1 => \w2_reg_n_0_[2][5]\,
      I2 => \w2_reg_n_0_[1][4]\,
      I3 => \w0_reg[0]\(5),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][5]\,
      O => \gauss8_return0__1_carry__0_i_7_n_0\
    );
\gauss8_return0__1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_i_4_n_0\,
      I1 => \w2_reg_n_0_[2][4]\,
      I2 => \w2_reg_n_0_[1][3]\,
      I3 => \w0_reg[0]\(4),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][4]\,
      O => \gauss8_return0__1_carry__0_i_8_n_0\
    );
\gauss8_return0__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gauss8_return0__1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gauss8_return0__1_carry__1_n_2\,
      CO(0) => \NLW_gauss8_return0__1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \w2_reg_n_0_[1][7]\,
      O(3 downto 1) => \NLW_gauss8_return0__1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gauss8_return0__1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gauss8_return0__1_carry__1_i_1_n_0\
    );
\gauss8_return0__1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D1DFFFFE2E200"
    )
        port map (
      I0 => \w0_reg_n_0_[1][7]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(7),
      I3 => \w2_reg_n_0_[1][6]\,
      I4 => \w2_reg_n_0_[2][7]\,
      I5 => \w2_reg_n_0_[1][7]\,
      O => \gauss8_return0__1_carry__1_i_1_n_0\
    );
\gauss8_return0__1_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][2]\,
      I1 => \w2_reg_n_0_[1][1]\,
      I2 => \w0_reg[0]\(2),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][2]\,
      O => \gauss8_return0__1_carry_i_1_n_0\
    );
\gauss8_return0__1_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => \w0_reg_n_0_[1][2]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(2),
      I3 => \w2_reg_n_0_[1][1]\,
      I4 => \w2_reg_n_0_[2][2]\,
      O => \gauss8_return0__1_carry_i_2_n_0\
    );
\gauss8_return0__1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w2_reg_n_0_[2][1]\,
      I1 => \w2_reg_n_0_[1][0]\,
      O => \gauss8_return0__1_carry_i_3_n_0\
    );
\gauss8_return0__1_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__1_carry_i_1_n_0\,
      I1 => \w2_reg_n_0_[2][3]\,
      I2 => \w2_reg_n_0_[1][2]\,
      I3 => \w0_reg[0]\(3),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][3]\,
      O => \gauss8_return0__1_carry_i_4_n_0\
    );
\gauss8_return0__1_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \w2_reg_n_0_[2][2]\,
      I1 => \w2_reg_n_0_[1][1]\,
      I2 => \gauss8_return0__1_carry_i_8_n_0\,
      I3 => \w2_reg_n_0_[1][0]\,
      I4 => \w2_reg_n_0_[2][1]\,
      O => \gauss8_return0__1_carry_i_5_n_0\
    );
\gauss8_return0__1_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \w2_reg_n_0_[1][0]\,
      I1 => \w2_reg_n_0_[2][1]\,
      I2 => \w0_reg_n_0_[1][1]\,
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg[0]\(1),
      O => \gauss8_return0__1_carry_i_6_n_0\
    );
\gauss8_return0__1_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \w0_reg_n_0_[1][0]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(0),
      I3 => \w2_reg_n_0_[2][0]\,
      O => \gauss8_return0__1_carry_i_7_n_0\
    );
\gauss8_return0__1_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w0_reg[0]\(2),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg_n_0_[1][2]\,
      O => \gauss8_return0__1_carry_i_8_n_0\
    );
\gauss8_return0__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0__30_carry_n_0\,
      CO(2) => \gauss8_return0__30_carry_n_1\,
      CO(1) => \gauss8_return0__30_carry_n_2\,
      CO(0) => \gauss8_return0__30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__30_carry_i_1_n_0\,
      DI(2) => \gauss8_return0__30_carry_i_2_n_0\,
      DI(1) => \w1_reg_n_0_[2][0]\,
      DI(0) => '0',
      O(3) => \gauss8_return0__30_carry_n_4\,
      O(2) => \gauss8_return0__30_carry_n_5\,
      O(1) => \gauss8_return0__30_carry_n_6\,
      O(0) => \gauss8_return0__30_carry_n_7\,
      S(3) => \gauss8_return0__30_carry_i_3_n_0\,
      S(2) => \gauss8_return0__30_carry_i_4_n_0\,
      S(1) => \gauss8_return0__30_carry_i_5_n_0\,
      S(0) => \gauss8_return0__30_carry_i_6_n_0\
    );
\gauss8_return0__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__30_carry_n_0\,
      CO(3) => \gauss8_return0__30_carry__0_n_0\,
      CO(2) => \gauss8_return0__30_carry__0_n_1\,
      CO(1) => \gauss8_return0__30_carry__0_n_2\,
      CO(0) => \gauss8_return0__30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__30_carry__0_i_1_n_0\,
      DI(2) => \gauss8_return0__30_carry__0_i_2_n_0\,
      DI(1) => \gauss8_return0__30_carry__0_i_3_n_0\,
      DI(0) => \gauss8_return0__30_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0__30_carry__0_n_4\,
      O(2) => \gauss8_return0__30_carry__0_n_5\,
      O(1) => \gauss8_return0__30_carry__0_n_6\,
      O(0) => \gauss8_return0__30_carry__0_n_7\,
      S(3) => \gauss8_return0__30_carry__0_i_5_n_0\,
      S(2) => \gauss8_return0__30_carry__0_i_6_n_0\,
      S(1) => \gauss8_return0__30_carry__0_i_7_n_0\,
      S(0) => \gauss8_return0__30_carry__0_i_8_n_0\
    );
\gauss8_return0__30_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][5]\,
      I1 => \w1_reg_n_0_[1][4]\,
      I2 => \w2_reg[0]\(6),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][6]\,
      O => \gauss8_return0__30_carry__0_i_1_n_0\
    );
\gauss8_return0__30_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][4]\,
      I1 => \w1_reg_n_0_[1][3]\,
      I2 => \w2_reg[0]\(5),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][5]\,
      O => \gauss8_return0__30_carry__0_i_2_n_0\
    );
\gauss8_return0__30_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][3]\,
      I1 => \w1_reg_n_0_[1][2]\,
      I2 => \w2_reg[0]\(4),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][4]\,
      O => \gauss8_return0__30_carry__0_i_3_n_0\
    );
\gauss8_return0__30_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][2]\,
      I1 => \w1_reg_n_0_[1][1]\,
      I2 => \w2_reg[0]\(3),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][3]\,
      O => \gauss8_return0__30_carry__0_i_4_n_0\
    );
\gauss8_return0__30_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__30_carry__0_i_1_n_0\,
      I1 => \w1_reg_n_0_[2][6]\,
      I2 => \w1_reg_n_0_[1][5]\,
      I3 => \w2_reg[0]\(7),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][7]\,
      O => \gauss8_return0__30_carry__0_i_5_n_0\
    );
\gauss8_return0__30_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__30_carry__0_i_2_n_0\,
      I1 => \w1_reg_n_0_[2][5]\,
      I2 => \w1_reg_n_0_[1][4]\,
      I3 => \w2_reg[0]\(6),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][6]\,
      O => \gauss8_return0__30_carry__0_i_6_n_0\
    );
\gauss8_return0__30_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__30_carry__0_i_3_n_0\,
      I1 => \w1_reg_n_0_[2][4]\,
      I2 => \w1_reg_n_0_[1][3]\,
      I3 => \w2_reg[0]\(5),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][5]\,
      O => \gauss8_return0__30_carry__0_i_7_n_0\
    );
\gauss8_return0__30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__30_carry__0_i_4_n_0\,
      I1 => \w1_reg_n_0_[2][3]\,
      I2 => \w1_reg_n_0_[1][2]\,
      I3 => \w2_reg[0]\(4),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][4]\,
      O => \gauss8_return0__30_carry__0_i_8_n_0\
    );
\gauss8_return0__30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__30_carry__0_n_0\,
      CO(3) => \NLW_gauss8_return0__30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \gauss8_return0__30_carry__1_n_1\,
      CO(1) => \NLW_gauss8_return0__30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \gauss8_return0__30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \w1_reg_n_0_[1][7]\,
      DI(0) => \gauss8_return0__30_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_gauss8_return0__30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \gauss8_return0__30_carry__1_n_6\,
      O(0) => \gauss8_return0__30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \gauss8_return0__30_carry__1_i_2_n_0\,
      S(0) => \gauss8_return0__30_carry__1_i_3_n_0\
    );
\gauss8_return0__30_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][6]\,
      I1 => \w1_reg_n_0_[1][5]\,
      I2 => \w2_reg[0]\(7),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][7]\,
      O => \gauss8_return0__30_carry__1_i_1_n_0\
    );
\gauss8_return0__30_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \w1_reg_n_0_[1][6]\,
      I1 => \w1_reg_n_0_[2][7]\,
      I2 => \w1_reg_n_0_[1][7]\,
      O => \gauss8_return0__30_carry__1_i_2_n_0\
    );
\gauss8_return0__30_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \gauss8_return0__30_carry__1_i_4_n_0\,
      I1 => \w1_reg_n_0_[1][5]\,
      I2 => \w1_reg_n_0_[2][6]\,
      I3 => \w1_reg_n_0_[1][6]\,
      I4 => \w1_reg_n_0_[2][7]\,
      O => \gauss8_return0__30_carry__1_i_3_n_0\
    );
\gauss8_return0__30_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(7),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg_n_0_[1][7]\,
      O => \gauss8_return0__30_carry__1_i_4_n_0\
    );
\gauss8_return0__30_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => \w2_reg_n_0_[1][3]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg[0]\(3),
      I3 => \w1_reg_n_0_[1][1]\,
      I4 => \w1_reg_n_0_[2][2]\,
      O => \gauss8_return0__30_carry_i_1_n_0\
    );
\gauss8_return0__30_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[2][1]\,
      I1 => \w1_reg_n_0_[1][0]\,
      O => \gauss8_return0__30_carry_i_2_n_0\
    );
\gauss8_return0__30_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \w1_reg_n_0_[2][2]\,
      I1 => \w1_reg_n_0_[1][1]\,
      I2 => \gauss8_return0__30_carry_i_7_n_0\,
      I3 => \w1_reg_n_0_[1][0]\,
      I4 => \w1_reg_n_0_[2][1]\,
      O => \gauss8_return0__30_carry_i_3_n_0\
    );
\gauss8_return0__30_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \w1_reg_n_0_[1][0]\,
      I1 => \w1_reg_n_0_[2][1]\,
      I2 => \w2_reg_n_0_[1][2]\,
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg[0]\(2),
      O => \gauss8_return0__30_carry_i_4_n_0\
    );
\gauss8_return0__30_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \w2_reg_n_0_[1][1]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg[0]\(1),
      I3 => \w1_reg_n_0_[2][0]\,
      O => \gauss8_return0__30_carry_i_5_n_0\
    );
\gauss8_return0__30_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(0),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg_n_0_[1][0]\,
      O => \gauss8_return0__30_carry_i_6_n_0\
    );
\gauss8_return0__30_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(3),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg_n_0_[1][3]\,
      O => \gauss8_return0__30_carry_i_7_n_0\
    );
\gauss8_return0__60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0__60_carry_n_0\,
      CO(2) => \gauss8_return0__60_carry_n_1\,
      CO(1) => \gauss8_return0__60_carry_n_2\,
      CO(0) => \gauss8_return0__60_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__60_carry_i_1_n_0\,
      DI(2) => \gauss8_return0__60_carry_i_2_n_0\,
      DI(1) => \gauss8_return0__60_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \gauss8_return0__60_carry_n_4\,
      O(2) => \gauss8_return0__60_carry_n_5\,
      O(1) => \gauss8_return0__60_carry_n_6\,
      O(0) => \gauss8_return0__60_carry_n_7\,
      S(3) => \gauss8_return0__60_carry_i_4_n_0\,
      S(2) => \gauss8_return0__60_carry_i_5_n_0\,
      S(1) => \gauss8_return0__60_carry_i_6_n_0\,
      S(0) => \gauss8_return0__60_carry_i_7_n_0\
    );
\gauss8_return0__60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__60_carry_n_0\,
      CO(3) => \gauss8_return0__60_carry__0_n_0\,
      CO(2) => \gauss8_return0__60_carry__0_n_1\,
      CO(1) => \gauss8_return0__60_carry__0_n_2\,
      CO(0) => \gauss8_return0__60_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__60_carry__0_i_1_n_0\,
      DI(2) => \gauss8_return0__60_carry__0_i_2_n_0\,
      DI(1) => \gauss8_return0__60_carry__0_i_3_n_0\,
      DI(0) => \gauss8_return0__60_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0__60_carry__0_n_4\,
      O(2) => \gauss8_return0__60_carry__0_n_5\,
      O(1) => \gauss8_return0__60_carry__0_n_6\,
      O(0) => \gauss8_return0__60_carry__0_n_7\,
      S(3) => \gauss8_return0__60_carry__0_i_5_n_0\,
      S(2) => \gauss8_return0__60_carry__0_i_6_n_0\,
      S(1) => \gauss8_return0__60_carry__0_i_7_n_0\,
      S(0) => \gauss8_return0__60_carry__0_i_8_n_0\
    );
\gauss8_return0__60_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][7]\,
      I1 => \w0_reg_n_0_[1][6]\,
      I2 => \w1_reg[0]\(6),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][6]\,
      O => \gauss8_return0__60_carry__0_i_1_n_0\
    );
\gauss8_return0__60_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][6]\,
      I1 => \w0_reg_n_0_[1][5]\,
      I2 => \w1_reg[0]\(5),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][5]\,
      O => \gauss8_return0__60_carry__0_i_2_n_0\
    );
\gauss8_return0__60_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][5]\,
      I1 => \w0_reg_n_0_[1][4]\,
      I2 => \w1_reg[0]\(4),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][4]\,
      O => \gauss8_return0__60_carry__0_i_3_n_0\
    );
\gauss8_return0__60_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][4]\,
      I1 => \w0_reg_n_0_[1][3]\,
      I2 => \w1_reg[0]\(3),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][3]\,
      O => \gauss8_return0__60_carry__0_i_4_n_0\
    );
\gauss8_return0__60_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \gauss8_return0__60_carry__0_i_1_n_0\,
      I1 => \w0_reg_n_0_[1][7]\,
      I2 => \w1_reg[0]\(7),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][7]\,
      O => \gauss8_return0__60_carry__0_i_5_n_0\
    );
\gauss8_return0__60_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__60_carry__0_i_2_n_0\,
      I1 => \w0_reg_n_0_[2][7]\,
      I2 => \w0_reg_n_0_[1][6]\,
      I3 => \w1_reg[0]\(6),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][6]\,
      O => \gauss8_return0__60_carry__0_i_6_n_0\
    );
\gauss8_return0__60_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__60_carry__0_i_3_n_0\,
      I1 => \w0_reg_n_0_[2][6]\,
      I2 => \w0_reg_n_0_[1][5]\,
      I3 => \w1_reg[0]\(5),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][5]\,
      O => \gauss8_return0__60_carry__0_i_7_n_0\
    );
\gauss8_return0__60_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__60_carry__0_i_4_n_0\,
      I1 => \w0_reg_n_0_[2][5]\,
      I2 => \w0_reg_n_0_[1][4]\,
      I3 => \w1_reg[0]\(4),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][4]\,
      O => \gauss8_return0__60_carry__0_i_8_n_0\
    );
\gauss8_return0__60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__60_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gauss8_return0__60_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gauss8_return0__60_carry__1_n_2\,
      CO(0) => \NLW_gauss8_return0__60_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gauss8_return0__60_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gauss8_return0__60_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gauss8_return0__60_carry__1_i_1_n_0\
    );
\gauss8_return0__60_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \w1_reg_n_0_[1][7]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w1_reg[0]\(7),
      I3 => \w0_reg_n_0_[1][7]\,
      O => \gauss8_return0__60_carry__1_i_1_n_0\
    );
\gauss8_return0__60_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][3]\,
      I1 => \w0_reg_n_0_[1][2]\,
      I2 => \w1_reg[0]\(2),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][2]\,
      O => \gauss8_return0__60_carry_i_1_n_0\
    );
\gauss8_return0__60_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][2]\,
      I1 => \w0_reg_n_0_[1][1]\,
      I2 => \w1_reg[0]\(1),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][1]\,
      O => \gauss8_return0__60_carry_i_2_n_0\
    );
\gauss8_return0__60_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][1]\,
      I1 => \w0_reg_n_0_[1][0]\,
      I2 => \w1_reg[0]\(0),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][0]\,
      O => \gauss8_return0__60_carry_i_3_n_0\
    );
\gauss8_return0__60_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__60_carry_i_1_n_0\,
      I1 => \w0_reg_n_0_[2][4]\,
      I2 => \w0_reg_n_0_[1][3]\,
      I3 => \w1_reg[0]\(3),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][3]\,
      O => \gauss8_return0__60_carry_i_4_n_0\
    );
\gauss8_return0__60_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__60_carry_i_2_n_0\,
      I1 => \w0_reg_n_0_[2][3]\,
      I2 => \w0_reg_n_0_[1][2]\,
      I3 => \w1_reg[0]\(2),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][2]\,
      O => \gauss8_return0__60_carry_i_5_n_0\
    );
\gauss8_return0__60_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \gauss8_return0__60_carry_i_3_n_0\,
      I1 => \w0_reg_n_0_[2][2]\,
      I2 => \w0_reg_n_0_[1][1]\,
      I3 => \w1_reg[0]\(1),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][1]\,
      O => \gauss8_return0__60_carry_i_6_n_0\
    );
\gauss8_return0__60_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \w0_reg_n_0_[2][1]\,
      I1 => \w0_reg_n_0_[1][0]\,
      I2 => \w1_reg[0]\(0),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][0]\,
      O => \gauss8_return0__60_carry_i_7_n_0\
    );
\gauss8_return0__86_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0__86_carry_n_0\,
      CO(2) => \gauss8_return0__86_carry_n_1\,
      CO(1) => \gauss8_return0__86_carry_n_2\,
      CO(0) => \gauss8_return0__86_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__86_carry_i_1_n_0\,
      DI(2) => \gauss8_return0__86_carry_i_2_n_0\,
      DI(1) => \gauss8_return0__86_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_gauss8_return0__86_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \gauss8_return0__86_carry_i_4_n_0\,
      S(2) => \gauss8_return0__86_carry_i_5_n_0\,
      S(1) => \gauss8_return0__86_carry_i_6_n_0\,
      S(0) => \gauss8_return0__86_carry_i_7_n_0\
    );
\gauss8_return0__86_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__86_carry_n_0\,
      CO(3) => \gauss8_return0__86_carry__0_n_0\,
      CO(2) => \gauss8_return0__86_carry__0_n_1\,
      CO(1) => \gauss8_return0__86_carry__0_n_2\,
      CO(0) => \gauss8_return0__86_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gauss8_return0__86_carry__0_i_1_n_0\,
      DI(2) => \gauss8_return0__86_carry__0_i_2_n_0\,
      DI(1) => \gauss8_return0__86_carry__0_i_3_n_0\,
      DI(0) => \gauss8_return0__86_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0__86_carry__0_n_4\,
      O(2) => \gauss8_return0__86_carry__0_n_5\,
      O(1) => \gauss8_return0__86_carry__0_n_6\,
      O(0) => \gauss8_return0__86_carry__0_n_7\,
      S(3) => \gauss8_return0__86_carry__0_i_5_n_0\,
      S(2) => \gauss8_return0__86_carry__0_i_6_n_0\,
      S(1) => \gauss8_return0__86_carry__0_i_7_n_0\,
      S(0) => \gauss8_return0__86_carry__0_i_8_n_0\
    );
\gauss8_return0__86_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_5\,
      I1 => \gauss8_return0__30_carry__0_n_5\,
      I2 => \gauss8_return0__60_carry__0_n_6\,
      O => \gauss8_return0__86_carry__0_i_1_n_0\
    );
\gauss8_return0__86_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_6\,
      I1 => \gauss8_return0__30_carry__0_n_6\,
      I2 => \gauss8_return0__60_carry__0_n_7\,
      O => \gauss8_return0__86_carry__0_i_2_n_0\
    );
\gauss8_return0__86_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_7\,
      I1 => \gauss8_return0__30_carry__0_n_7\,
      I2 => \gauss8_return0__60_carry_n_4\,
      O => \gauss8_return0__86_carry__0_i_3_n_0\
    );
\gauss8_return0__86_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_4\,
      I1 => \gauss8_return0__30_carry_n_4\,
      I2 => \gauss8_return0__60_carry_n_5\,
      O => \gauss8_return0__86_carry__0_i_4_n_0\
    );
\gauss8_return0__86_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_4\,
      I1 => \gauss8_return0__30_carry__0_n_4\,
      I2 => \gauss8_return0__60_carry__0_n_5\,
      I3 => \gauss8_return0__86_carry__0_i_1_n_0\,
      O => \gauss8_return0__86_carry__0_i_5_n_0\
    );
\gauss8_return0__86_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_5\,
      I1 => \gauss8_return0__30_carry__0_n_5\,
      I2 => \gauss8_return0__60_carry__0_n_6\,
      I3 => \gauss8_return0__86_carry__0_i_2_n_0\,
      O => \gauss8_return0__86_carry__0_i_6_n_0\
    );
\gauss8_return0__86_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_6\,
      I1 => \gauss8_return0__30_carry__0_n_6\,
      I2 => \gauss8_return0__60_carry__0_n_7\,
      I3 => \gauss8_return0__86_carry__0_i_3_n_0\,
      O => \gauss8_return0__86_carry__0_i_7_n_0\
    );
\gauss8_return0__86_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_7\,
      I1 => \gauss8_return0__30_carry__0_n_7\,
      I2 => \gauss8_return0__60_carry_n_4\,
      I3 => \gauss8_return0__86_carry__0_i_4_n_0\,
      O => \gauss8_return0__86_carry__0_i_8_n_0\
    );
\gauss8_return0__86_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0__86_carry__0_n_0\,
      CO(3) => \NLW_gauss8_return0__86_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \gauss8_return0__86_carry__1_n_1\,
      CO(1) => \gauss8_return0__86_carry__1_n_2\,
      CO(0) => \gauss8_return0__86_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gauss8_return0__86_carry__1_i_1_n_0\,
      DI(1) => \gauss8_return0__86_carry__1_i_2_n_0\,
      DI(0) => \gauss8_return0__86_carry__1_i_3_n_0\,
      O(3) => \gauss8_return0__86_carry__1_n_4\,
      O(2) => \gauss8_return0__86_carry__1_n_5\,
      O(1) => \gauss8_return0__86_carry__1_n_6\,
      O(0) => \gauss8_return0__86_carry__1_n_7\,
      S(3) => \gauss8_return0__86_carry__1_i_4_n_0\,
      S(2) => \gauss8_return0__86_carry__1_i_5_n_0\,
      S(1) => \gauss8_return0__86_carry__1_i_6_n_0\,
      S(0) => \gauss8_return0__86_carry__1_i_7_n_0\
    );
\gauss8_return0__86_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry__1_n_2\,
      I1 => \gauss8_return0__30_carry__1_n_6\,
      I2 => \gauss8_return0__60_carry__1_n_7\,
      O => \gauss8_return0__86_carry__1_i_1_n_0\
    );
\gauss8_return0__86_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry__1_n_7\,
      I1 => \gauss8_return0__30_carry__1_n_7\,
      I2 => \gauss8_return0__60_carry__0_n_4\,
      O => \gauss8_return0__86_carry__1_i_2_n_0\
    );
\gauss8_return0__86_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry__0_n_4\,
      I1 => \gauss8_return0__30_carry__0_n_4\,
      I2 => \gauss8_return0__60_carry__0_n_5\,
      O => \gauss8_return0__86_carry__1_i_3_n_0\
    );
\gauss8_return0__86_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gauss8_return0__30_carry__1_n_1\,
      I1 => \gauss8_return0__60_carry__1_n_2\,
      O => \gauss8_return0__86_carry__1_i_4_n_0\
    );
\gauss8_return0__86_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \gauss8_return0__60_carry__1_n_7\,
      I1 => \gauss8_return0__30_carry__1_n_6\,
      I2 => \gauss8_return0__1_carry__1_n_2\,
      I3 => \gauss8_return0__60_carry__1_n_2\,
      I4 => \gauss8_return0__30_carry__1_n_1\,
      O => \gauss8_return0__86_carry__1_i_5_n_0\
    );
\gauss8_return0__86_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__86_carry__1_i_2_n_0\,
      I1 => \gauss8_return0__30_carry__1_n_6\,
      I2 => \gauss8_return0__60_carry__1_n_7\,
      I3 => \gauss8_return0__1_carry__1_n_2\,
      O => \gauss8_return0__86_carry__1_i_6_n_0\
    );
\gauss8_return0__86_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry__1_n_7\,
      I1 => \gauss8_return0__30_carry__1_n_7\,
      I2 => \gauss8_return0__60_carry__0_n_4\,
      I3 => \gauss8_return0__86_carry__1_i_3_n_0\,
      O => \gauss8_return0__86_carry__1_i_7_n_0\
    );
\gauss8_return0__86_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_5\,
      I1 => \gauss8_return0__60_carry_n_6\,
      I2 => \gauss8_return0__30_carry_n_5\,
      O => \gauss8_return0__86_carry_i_1_n_0\
    );
\gauss8_return0__86_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_6\,
      I1 => \gauss8_return0__60_carry_n_7\,
      I2 => \gauss8_return0__30_carry_n_6\,
      O => \gauss8_return0__86_carry_i_2_n_0\
    );
\gauss8_return0__86_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_7\,
      I1 => \gauss8_return0__30_carry_n_7\,
      I2 => \w0_reg_n_0_[2][0]\,
      O => \gauss8_return0__86_carry_i_3_n_0\
    );
\gauss8_return0__86_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_4\,
      I1 => \gauss8_return0__30_carry_n_4\,
      I2 => \gauss8_return0__60_carry_n_5\,
      I3 => \gauss8_return0__86_carry_i_1_n_0\,
      O => \gauss8_return0__86_carry_i_4_n_0\
    );
\gauss8_return0__86_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_5\,
      I1 => \gauss8_return0__60_carry_n_6\,
      I2 => \gauss8_return0__30_carry_n_5\,
      I3 => \gauss8_return0__86_carry_i_2_n_0\,
      O => \gauss8_return0__86_carry_i_5_n_0\
    );
\gauss8_return0__86_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_6\,
      I1 => \gauss8_return0__60_carry_n_7\,
      I2 => \gauss8_return0__30_carry_n_6\,
      I3 => \gauss8_return0__86_carry_i_3_n_0\,
      O => \gauss8_return0__86_carry_i_6_n_0\
    );
\gauss8_return0__86_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \gauss8_return0__1_carry_n_7\,
      I1 => \gauss8_return0__30_carry_n_7\,
      I2 => \w0_reg_n_0_[2][0]\,
      O => \gauss8_return0__86_carry_i_7_n_0\
    );
\gauss8_return0_inferred__0/i___1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__0/i___1_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___1_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___1_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___1_carry_i_1_n_0\,
      DI(2) => \i___1_carry_i_2_n_0\,
      DI(1) => \i___1_carry_i_3_n_0\,
      DI(0) => br(0),
      O(3) => \gauss8_return0_inferred__0/i___1_carry_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___1_carry_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___1_carry_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___1_carry_n_7\,
      S(3) => \i___1_carry_i_4_n_0\,
      S(2) => \i___1_carry_i_5_n_0\,
      S(1) => \i___1_carry_i_6_n_0\,
      S(0) => \i___1_carry_i_7_n_0\
    );
\gauss8_return0_inferred__0/i___1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___1_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__0/i___1_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___1_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___1_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___1_carry__0_i_1__0_n_0\,
      DI(2) => \i___1_carry__0_i_2__0_n_0\,
      DI(1) => \i___1_carry__0_i_3__0_n_0\,
      DI(0) => \i___1_carry__0_i_4__0_n_0\,
      O(3) => \gauss8_return0_inferred__0/i___1_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___1_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___1_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___1_carry__0_n_7\,
      S(3) => \i___1_carry__0_i_5_n_0\,
      S(2) => \i___1_carry__0_i_6_n_0\,
      S(1) => \i___1_carry__0_i_7_n_0\,
      S(0) => \i___1_carry__0_i_8_n_0\
    );
\gauss8_return0_inferred__0/i___1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gauss8_return0_inferred__0/i___1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gauss8_return0_inferred__0/i___1_carry__1_n_2\,
      CO(0) => \NLW_gauss8_return0_inferred__0/i___1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \w2_reg_n_0_[1][15]\,
      O(3 downto 1) => \NLW_gauss8_return0_inferred__0/i___1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gauss8_return0_inferred__0/i___1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i___1_carry__1_i_1_n_0\
    );
\gauss8_return0_inferred__0/i___30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__0/i___30_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___30_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___30_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___30_carry_i_1_n_0\,
      DI(2) => \i___30_carry_i_2_n_0\,
      DI(1) => \w1_reg_n_0_[2][8]\,
      DI(0) => '0',
      O(3) => \gauss8_return0_inferred__0/i___30_carry_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___30_carry_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___30_carry_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___30_carry_n_7\,
      S(3) => \i___30_carry_i_3_n_0\,
      S(2) => \i___30_carry_i_4_n_0\,
      S(1) => \i___30_carry_i_5_n_0\,
      S(0) => \bl__0\(0)
    );
\gauss8_return0_inferred__0/i___30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___30_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__0/i___30_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___30_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___30_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___30_carry__0_i_1__0_n_0\,
      DI(2) => \i___30_carry__0_i_2__0_n_0\,
      DI(1) => \i___30_carry__0_i_3__0_n_0\,
      DI(0) => \i___30_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0_inferred__0/i___30_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___30_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___30_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___30_carry__0_n_7\,
      S(3) => \i___30_carry__0_i_5_n_0\,
      S(2) => \i___30_carry__0_i_6_n_0\,
      S(1) => \i___30_carry__0_i_7_n_0\,
      S(0) => \i___30_carry__0_i_8_n_0\
    );
\gauss8_return0_inferred__0/i___30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___30_carry__0_n_0\,
      CO(3) => \NLW_gauss8_return0_inferred__0/i___30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \gauss8_return0_inferred__0/i___30_carry__1_n_1\,
      CO(1) => \NLW_gauss8_return0_inferred__0/i___30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \gauss8_return0_inferred__0/i___30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \w1_reg_n_0_[1][15]\,
      DI(0) => \i___30_carry__1_i_1__0_n_0\,
      O(3 downto 2) => \NLW_gauss8_return0_inferred__0/i___30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \gauss8_return0_inferred__0/i___30_carry__1_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \i___30_carry__1_i_2_n_0\,
      S(0) => \i___30_carry__1_i_3_n_0\
    );
\gauss8_return0_inferred__0/i___60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__0/i___60_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___60_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___60_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___60_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___60_carry_i_1__0_n_0\,
      DI(2) => \i___60_carry_i_2__0_n_0\,
      DI(1) => \i___60_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \gauss8_return0_inferred__0/i___60_carry_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___60_carry_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___60_carry_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___60_carry_n_7\,
      S(3) => \i___60_carry_i_4_n_0\,
      S(2) => \i___60_carry_i_5_n_0\,
      S(1) => \i___60_carry_i_6_n_0\,
      S(0) => \i___60_carry_i_7_n_0\
    );
\gauss8_return0_inferred__0/i___60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___60_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__0/i___60_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___60_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___60_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___60_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___60_carry__0_i_1__0_n_0\,
      DI(2) => \i___60_carry__0_i_2__0_n_0\,
      DI(1) => \i___60_carry__0_i_3__0_n_0\,
      DI(0) => \i___60_carry__0_i_4__0_n_0\,
      O(3) => \gauss8_return0_inferred__0/i___60_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___60_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___60_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___60_carry__0_n_7\,
      S(3) => \i___60_carry__0_i_5_n_0\,
      S(2) => \i___60_carry__0_i_6_n_0\,
      S(1) => \i___60_carry__0_i_7_n_0\,
      S(0) => \i___60_carry__0_i_8_n_0\
    );
\gauss8_return0_inferred__0/i___60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___60_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gauss8_return0_inferred__0/i___60_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gauss8_return0_inferred__0/i___60_carry__1_n_2\,
      CO(0) => \NLW_gauss8_return0_inferred__0/i___60_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gauss8_return0_inferred__0/i___60_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gauss8_return0_inferred__0/i___60_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i___60_carry__1_i_1__0_n_0\
    );
\gauss8_return0_inferred__0/i___86_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__0/i___86_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___86_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___86_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___86_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___86_carry_i_1_n_0\,
      DI(2) => \i___86_carry_i_2_n_0\,
      DI(1) => \i___86_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_gauss8_return0_inferred__0/i___86_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___86_carry_i_4_n_0\,
      S(2) => \i___86_carry_i_5_n_0\,
      S(1) => \i___86_carry_i_6_n_0\,
      S(0) => \i___86_carry_i_7_n_0\
    );
\gauss8_return0_inferred__0/i___86_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___86_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__0/i___86_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__0/i___86_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___86_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___86_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___86_carry__0_i_1_n_0\,
      DI(2) => \i___86_carry__0_i_2_n_0\,
      DI(1) => \i___86_carry__0_i_3_n_0\,
      DI(0) => \i___86_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0_inferred__0/i___86_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___86_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___86_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___86_carry__0_n_7\,
      S(3) => \i___86_carry__0_i_5_n_0\,
      S(2) => \i___86_carry__0_i_6_n_0\,
      S(1) => \i___86_carry__0_i_7_n_0\,
      S(0) => \i___86_carry__0_i_8_n_0\
    );
\gauss8_return0_inferred__0/i___86_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__0/i___86_carry__0_n_0\,
      CO(3) => \NLW_gauss8_return0_inferred__0/i___86_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \gauss8_return0_inferred__0/i___86_carry__1_n_1\,
      CO(1) => \gauss8_return0_inferred__0/i___86_carry__1_n_2\,
      CO(0) => \gauss8_return0_inferred__0/i___86_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___86_carry__1_i_1_n_0\,
      DI(1) => \i___86_carry__1_i_2_n_0\,
      DI(0) => \i___86_carry__1_i_3_n_0\,
      O(3) => \gauss8_return0_inferred__0/i___86_carry__1_n_4\,
      O(2) => \gauss8_return0_inferred__0/i___86_carry__1_n_5\,
      O(1) => \gauss8_return0_inferred__0/i___86_carry__1_n_6\,
      O(0) => \gauss8_return0_inferred__0/i___86_carry__1_n_7\,
      S(3) => \i___86_carry__1_i_4_n_0\,
      S(2) => \i___86_carry__1_i_5_n_0\,
      S(1) => \i___86_carry__1_i_6_n_0\,
      S(0) => \i___86_carry__1_i_7_n_0\
    );
\gauss8_return0_inferred__1/i___1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__1/i___1_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___1_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___1_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___1_carry_i_1__0_n_0\,
      DI(2) => \i___1_carry_i_2__0_n_0\,
      DI(1) => \i___1_carry_i_3__0_n_0\,
      DI(0) => \w2_reg_n_0_[2][16]\,
      O(3) => \gauss8_return0_inferred__1/i___1_carry_n_4\,
      O(2) => \gauss8_return0_inferred__1/i___1_carry_n_5\,
      O(1) => \gauss8_return0_inferred__1/i___1_carry_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___1_carry_n_7\,
      S(3) => \i___1_carry_i_4__0_n_0\,
      S(2) => \i___1_carry_i_5__0_n_0\,
      S(1) => \i___1_carry_i_6__0_n_0\,
      S(0) => \i___1_carry_i_7__0_n_0\
    );
\gauss8_return0_inferred__1/i___1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___1_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__1/i___1_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___1_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___1_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___1_carry__0_i_1_n_0\,
      DI(2) => \i___1_carry__0_i_2_n_0\,
      DI(1) => \i___1_carry__0_i_3_n_0\,
      DI(0) => \i___1_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0_inferred__1/i___1_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__1/i___1_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__1/i___1_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___1_carry__0_n_7\,
      S(3) => \i___1_carry__0_i_5__0_n_0\,
      S(2) => \i___1_carry__0_i_6__0_n_0\,
      S(1) => \i___1_carry__0_i_7__0_n_0\,
      S(0) => \i___1_carry__0_i_8__0_n_0\
    );
\gauss8_return0_inferred__1/i___1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gauss8_return0_inferred__1/i___1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gauss8_return0_inferred__1/i___1_carry__1_n_2\,
      CO(0) => \NLW_gauss8_return0_inferred__1/i___1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gauss8_return2(8),
      O(3 downto 1) => \NLW_gauss8_return0_inferred__1/i___1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gauss8_return0_inferred__1/i___1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i___1_carry__1_i_1__0_n_0\
    );
\gauss8_return0_inferred__1/i___30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__1/i___30_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___30_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___30_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___30_carry_i_1__0_n_0\,
      DI(2) => \i___30_carry_i_2__0_n_0\,
      DI(1) => gauss8_return4(1),
      DI(0) => '0',
      O(3) => \gauss8_return0_inferred__1/i___30_carry_n_4\,
      O(2) => \gauss8_return0_inferred__1/i___30_carry_n_5\,
      O(1) => \gauss8_return0_inferred__1/i___30_carry_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___30_carry_n_7\,
      S(3) => \i___30_carry_i_3__0_n_0\,
      S(2) => \i___30_carry_i_4__0_n_0\,
      S(1) => \i___30_carry_i_5__0_n_0\,
      S(0) => \i___30_carry_i_6__0_n_0\
    );
\gauss8_return0_inferred__1/i___30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___30_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__1/i___30_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___30_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___30_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___30_carry__0_i_1_n_0\,
      DI(2) => \i___30_carry__0_i_2_n_0\,
      DI(1) => \i___30_carry__0_i_3_n_0\,
      DI(0) => \i___30_carry__0_i_4__0_n_0\,
      O(3) => \gauss8_return0_inferred__1/i___30_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__1/i___30_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__1/i___30_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___30_carry__0_n_7\,
      S(3) => \i___30_carry__0_i_5__0_n_0\,
      S(2) => \i___30_carry__0_i_6__0_n_0\,
      S(1) => \i___30_carry__0_i_7__0_n_0\,
      S(0) => \i___30_carry__0_i_8__0_n_0\
    );
\gauss8_return0_inferred__1/i___30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___30_carry__0_n_0\,
      CO(3) => \NLW_gauss8_return0_inferred__1/i___30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \gauss8_return0_inferred__1/i___30_carry__1_n_1\,
      CO(1) => \NLW_gauss8_return0_inferred__1/i___30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \gauss8_return0_inferred__1/i___30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => gauss8_return5(9),
      DI(0) => \i___30_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_gauss8_return0_inferred__1/i___30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \gauss8_return0_inferred__1/i___30_carry__1_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \i___30_carry__1_i_2__0_n_0\,
      S(0) => \i___30_carry__1_i_3__0_n_0\
    );
\gauss8_return0_inferred__1/i___60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__1/i___60_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___60_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___60_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___60_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___60_carry_i_1_n_0\,
      DI(2) => \i___60_carry_i_2_n_0\,
      DI(1) => \i___60_carry_i_3__0_n_0\,
      DI(0) => '0',
      O(3) => \gauss8_return0_inferred__1/i___60_carry_n_4\,
      O(2) => \gauss8_return0_inferred__1/i___60_carry_n_5\,
      O(1) => \gauss8_return0_inferred__1/i___60_carry_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___60_carry_n_7\,
      S(3) => \i___60_carry_i_4__0_n_0\,
      S(2) => \i___60_carry_i_5__0_n_0\,
      S(1) => \i___60_carry_i_6__0_n_0\,
      S(0) => \i___60_carry_i_7__0_n_0\
    );
\gauss8_return0_inferred__1/i___60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___60_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__1/i___60_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___60_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___60_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___60_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___60_carry__0_i_1_n_0\,
      DI(2) => \i___60_carry__0_i_2_n_0\,
      DI(1) => \i___60_carry__0_i_3_n_0\,
      DI(0) => \i___60_carry__0_i_4_n_0\,
      O(3) => \gauss8_return0_inferred__1/i___60_carry__0_n_4\,
      O(2) => \gauss8_return0_inferred__1/i___60_carry__0_n_5\,
      O(1) => \gauss8_return0_inferred__1/i___60_carry__0_n_6\,
      O(0) => \gauss8_return0_inferred__1/i___60_carry__0_n_7\,
      S(3) => \i___60_carry__0_i_5__0_n_0\,
      S(2) => \i___60_carry__0_i_6__0_n_0\,
      S(1) => \i___60_carry__0_i_7__0_n_0\,
      S(0) => \i___60_carry__0_i_8__0_n_0\
    );
\gauss8_return0_inferred__1/i___60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___60_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gauss8_return0_inferred__1/i___60_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gauss8_return0_inferred__1/i___60_carry__1_n_2\,
      CO(0) => \NLW_gauss8_return0_inferred__1/i___60_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gauss8_return0_inferred__1/i___60_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gauss8_return0_inferred__1/i___60_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i___60_carry__1_i_1_n_0\
    );
\gauss8_return0_inferred__1/i___86_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gauss8_return0_inferred__1/i___86_carry_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___86_carry_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___86_carry_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___86_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___86_carry_i_1__0_n_0\,
      DI(2) => \i___86_carry_i_2__0_n_0\,
      DI(1) => \i___86_carry_i_3__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_gauss8_return0_inferred__1/i___86_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___86_carry_i_4__0_n_0\,
      S(2) => \i___86_carry_i_5__0_n_0\,
      S(1) => \i___86_carry_i_6__0_n_0\,
      S(0) => \i___86_carry_i_7__0_n_0\
    );
\gauss8_return0_inferred__1/i___86_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___86_carry_n_0\,
      CO(3) => \gauss8_return0_inferred__1/i___86_carry__0_n_0\,
      CO(2) => \gauss8_return0_inferred__1/i___86_carry__0_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___86_carry__0_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___86_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___86_carry__0_i_1__0_n_0\,
      DI(2) => \i___86_carry__0_i_2__0_n_0\,
      DI(1) => \i___86_carry__0_i_3__0_n_0\,
      DI(0) => \i___86_carry__0_i_4__0_n_0\,
      O(3 downto 0) => gauss8_return0(7 downto 4),
      S(3) => \i___86_carry__0_i_5__0_n_0\,
      S(2) => \i___86_carry__0_i_6__0_n_0\,
      S(1) => \i___86_carry__0_i_7__0_n_0\,
      S(0) => \i___86_carry__0_i_8__0_n_0\
    );
\gauss8_return0_inferred__1/i___86_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gauss8_return0_inferred__1/i___86_carry__0_n_0\,
      CO(3) => \NLW_gauss8_return0_inferred__1/i___86_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \gauss8_return0_inferred__1/i___86_carry__1_n_1\,
      CO(1) => \gauss8_return0_inferred__1/i___86_carry__1_n_2\,
      CO(0) => \gauss8_return0_inferred__1/i___86_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___86_carry__1_i_1__0_n_0\,
      DI(1) => \i___86_carry__1_i_2__0_n_0\,
      DI(0) => \i___86_carry__1_i_3__0_n_0\,
      O(3 downto 0) => gauss8_return0(11 downto 8),
      S(3) => \i___86_carry__1_i_4__0_n_0\,
      S(2) => \i___86_carry__1_i_5__0_n_0\,
      S(1) => \i___86_carry__1_i_6__0_n_0\,
      S(0) => \i___86_carry__1_i_7__0_n_0\
    );
\i___1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][22]\,
      I1 => gauss8_return2(6),
      I2 => \w0_reg[0]\(22),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return8(7),
      O => \i___1_carry__0_i_1_n_0\
    );
\i___1_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => br(6),
      I1 => \w2_reg_n_0_[1][13]\,
      I2 => \w0_reg[0]\(14),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][14]\,
      O => \i___1_carry__0_i_1__0_n_0\
    );
\i___1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][21]\,
      I1 => gauss8_return2(5),
      I2 => \w0_reg[0]\(21),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return8(6),
      O => \i___1_carry__0_i_2_n_0\
    );
\i___1_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => br(5),
      I1 => \w2_reg_n_0_[1][12]\,
      I2 => \w0_reg[0]\(13),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][13]\,
      O => \i___1_carry__0_i_2__0_n_0\
    );
\i___1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][20]\,
      I1 => gauss8_return2(4),
      I2 => \w0_reg[0]\(20),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return8(5),
      O => \i___1_carry__0_i_3_n_0\
    );
\i___1_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => br(4),
      I1 => \w2_reg_n_0_[1][11]\,
      I2 => \w0_reg[0]\(12),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][12]\,
      O => \i___1_carry__0_i_3__0_n_0\
    );
\i___1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][19]\,
      I1 => gauss8_return2(3),
      I2 => \w0_reg[0]\(19),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return8(4),
      O => \i___1_carry__0_i_4_n_0\
    );
\i___1_carry__0_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => br(3),
      I1 => \w2_reg_n_0_[1][10]\,
      I2 => \w0_reg[0]\(11),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][11]\,
      O => \i___1_carry__0_i_4__0_n_0\
    );
\i___1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_1__0_n_0\,
      I1 => br(7),
      I2 => \w2_reg_n_0_[1][14]\,
      I3 => \w0_reg[0]\(15),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][15]\,
      O => \i___1_carry__0_i_5_n_0\
    );
\i___1_carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_1_n_0\,
      I1 => \w2_reg_n_0_[2][23]\,
      I2 => gauss8_return2(7),
      I3 => \w0_reg[0]\(23),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return8(8),
      O => \i___1_carry__0_i_5__0_n_0\
    );
\i___1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_2__0_n_0\,
      I1 => br(6),
      I2 => \w2_reg_n_0_[1][13]\,
      I3 => \w0_reg[0]\(14),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][14]\,
      O => \i___1_carry__0_i_6_n_0\
    );
\i___1_carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_2_n_0\,
      I1 => \w2_reg_n_0_[2][22]\,
      I2 => gauss8_return2(6),
      I3 => \w0_reg[0]\(22),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return8(7),
      O => \i___1_carry__0_i_6__0_n_0\
    );
\i___1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_3__0_n_0\,
      I1 => br(5),
      I2 => \w2_reg_n_0_[1][12]\,
      I3 => \w0_reg[0]\(13),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][13]\,
      O => \i___1_carry__0_i_7_n_0\
    );
\i___1_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_3_n_0\,
      I1 => \w2_reg_n_0_[2][21]\,
      I2 => gauss8_return2(5),
      I3 => \w0_reg[0]\(21),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return8(6),
      O => \i___1_carry__0_i_7__0_n_0\
    );
\i___1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_4__0_n_0\,
      I1 => br(4),
      I2 => \w2_reg_n_0_[1][11]\,
      I3 => \w0_reg[0]\(12),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][12]\,
      O => \i___1_carry__0_i_8_n_0\
    );
\i___1_carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry__0_i_4_n_0\,
      I1 => \w2_reg_n_0_[2][20]\,
      I2 => gauss8_return2(4),
      I3 => \w0_reg[0]\(20),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return8(5),
      O => \i___1_carry__0_i_8__0_n_0\
    );
\i___1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D1DFFFFE2E200"
    )
        port map (
      I0 => \w0_reg_n_0_[1][15]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(15),
      I3 => \w2_reg_n_0_[1][14]\,
      I4 => br(7),
      I5 => \w2_reg_n_0_[1][15]\,
      O => \i___1_carry__1_i_1_n_0\
    );
\i___1_carry__1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11177717EEE888E8"
    )
        port map (
      I0 => gauss8_return2(7),
      I1 => \w2_reg_n_0_[2][23]\,
      I2 => gauss8_return8(8),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg[0]\(23),
      I5 => gauss8_return2(8),
      O => \i___1_carry__1_i_1__0_n_0\
    );
\i___1_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => br(2),
      I1 => \w2_reg_n_0_[1][9]\,
      I2 => \w0_reg[0]\(10),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg_n_0_[1][10]\,
      O => \i___1_carry_i_1_n_0\
    );
\i___1_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w2_reg_n_0_[2][18]\,
      I1 => gauss8_return2(2),
      I2 => \w0_reg[0]\(18),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return8(3),
      O => \i___1_carry_i_1__0_n_0\
    );
\i___1_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => \w0_reg_n_0_[1][10]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(10),
      I3 => \w2_reg_n_0_[1][9]\,
      I4 => br(2),
      O => \i___1_carry_i_2_n_0\
    );
\i___1_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => gauss8_return8(3),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(18),
      I3 => gauss8_return2(2),
      I4 => \w2_reg_n_0_[2][18]\,
      O => \i___1_carry_i_2__0_n_0\
    );
\i___1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => br(1),
      I1 => \w2_reg_n_0_[1][8]\,
      O => \i___1_carry_i_3_n_0\
    );
\i___1_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w2_reg_n_0_[2][17]\,
      I1 => gauss8_return2(1),
      O => \i___1_carry_i_3__0_n_0\
    );
\i___1_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry_i_1_n_0\,
      I1 => br(3),
      I2 => \w2_reg_n_0_[1][10]\,
      I3 => \w0_reg[0]\(11),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w0_reg_n_0_[1][11]\,
      O => \i___1_carry_i_4_n_0\
    );
\i___1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___1_carry_i_1__0_n_0\,
      I1 => \w2_reg_n_0_[2][19]\,
      I2 => gauss8_return2(3),
      I3 => \w0_reg[0]\(19),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return8(4),
      O => \i___1_carry_i_4__0_n_0\
    );
\i___1_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => br(2),
      I1 => \w2_reg_n_0_[1][9]\,
      I2 => tl(2),
      I3 => \w2_reg_n_0_[1][8]\,
      I4 => br(1),
      O => \i___1_carry_i_5_n_0\
    );
\i___1_carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \w2_reg_n_0_[2][18]\,
      I1 => gauss8_return2(2),
      I2 => \i___1_carry_i_8__0_n_0\,
      I3 => gauss8_return2(1),
      I4 => \w2_reg_n_0_[2][17]\,
      O => \i___1_carry_i_5__0_n_0\
    );
\i___1_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \w2_reg_n_0_[1][8]\,
      I1 => br(1),
      I2 => \w0_reg_n_0_[1][9]\,
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg[0]\(9),
      O => \i___1_carry_i_6_n_0\
    );
\i___1_carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => gauss8_return2(1),
      I1 => \w2_reg_n_0_[2][17]\,
      I2 => gauss8_return8(2),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w0_reg[0]\(17),
      O => \i___1_carry_i_6__0_n_0\
    );
\i___1_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \w0_reg_n_0_[1][8]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(8),
      I3 => br(0),
      O => \i___1_carry_i_7_n_0\
    );
\i___1_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => gauss8_return8(1),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg[0]\(16),
      I3 => \w2_reg_n_0_[2][16]\,
      O => \i___1_carry_i_7__0_n_0\
    );
\i___1_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w0_reg[0]\(10),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w0_reg_n_0_[1][10]\,
      O => tl(2)
    );
\i___1_carry_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w0_reg[0]\(18),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => gauss8_return8(3),
      O => \i___1_carry_i_8__0_n_0\
    );
\i___30_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => gauss8_return4(6),
      I1 => gauss8_return5(6),
      I2 => \w2_reg[0]\(22),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return2(7),
      O => \i___30_carry__0_i_1_n_0\
    );
\i___30_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][13]\,
      I1 => \w1_reg_n_0_[1][12]\,
      I2 => \w2_reg[0]\(14),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][14]\,
      O => \i___30_carry__0_i_1__0_n_0\
    );
\i___30_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => gauss8_return4(5),
      I1 => gauss8_return5(5),
      I2 => \w2_reg[0]\(21),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return2(6),
      O => \i___30_carry__0_i_2_n_0\
    );
\i___30_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][12]\,
      I1 => \w1_reg_n_0_[1][11]\,
      I2 => \w2_reg[0]\(13),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][13]\,
      O => \i___30_carry__0_i_2__0_n_0\
    );
\i___30_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => gauss8_return4(4),
      I1 => gauss8_return5(4),
      I2 => \w2_reg[0]\(20),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return2(5),
      O => \i___30_carry__0_i_3_n_0\
    );
\i___30_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][11]\,
      I1 => \w1_reg_n_0_[1][10]\,
      I2 => \w2_reg[0]\(12),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][12]\,
      O => \i___30_carry__0_i_3__0_n_0\
    );
\i___30_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][10]\,
      I1 => \w1_reg_n_0_[1][9]\,
      I2 => \w2_reg[0]\(11),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][11]\,
      O => \i___30_carry__0_i_4_n_0\
    );
\i___30_carry__0_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => gauss8_return4(3),
      I1 => gauss8_return5(3),
      I2 => \w2_reg[0]\(19),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return2(4),
      O => \i___30_carry__0_i_4__0_n_0\
    );
\i___30_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_1__0_n_0\,
      I1 => \w1_reg_n_0_[2][14]\,
      I2 => \w1_reg_n_0_[1][13]\,
      I3 => \w2_reg[0]\(15),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][15]\,
      O => \i___30_carry__0_i_5_n_0\
    );
\i___30_carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_1_n_0\,
      I1 => gauss8_return4(7),
      I2 => gauss8_return5(7),
      I3 => \w2_reg[0]\(23),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return2(8),
      O => \i___30_carry__0_i_5__0_n_0\
    );
\i___30_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_2__0_n_0\,
      I1 => \w1_reg_n_0_[2][13]\,
      I2 => \w1_reg_n_0_[1][12]\,
      I3 => \w2_reg[0]\(14),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][14]\,
      O => \i___30_carry__0_i_6_n_0\
    );
\i___30_carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_2_n_0\,
      I1 => gauss8_return4(6),
      I2 => gauss8_return5(6),
      I3 => \w2_reg[0]\(22),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return2(7),
      O => \i___30_carry__0_i_6__0_n_0\
    );
\i___30_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_3__0_n_0\,
      I1 => \w1_reg_n_0_[2][12]\,
      I2 => \w1_reg_n_0_[1][11]\,
      I3 => \w2_reg[0]\(13),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][13]\,
      O => \i___30_carry__0_i_7_n_0\
    );
\i___30_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_3_n_0\,
      I1 => gauss8_return4(5),
      I2 => gauss8_return5(5),
      I3 => \w2_reg[0]\(21),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return2(6),
      O => \i___30_carry__0_i_7__0_n_0\
    );
\i___30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_4_n_0\,
      I1 => \w1_reg_n_0_[2][11]\,
      I2 => \w1_reg_n_0_[1][10]\,
      I3 => \w2_reg[0]\(12),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w2_reg_n_0_[1][12]\,
      O => \i___30_carry__0_i_8_n_0\
    );
\i___30_carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___30_carry__0_i_4__0_n_0\,
      I1 => gauss8_return4(4),
      I2 => gauss8_return5(4),
      I3 => \w2_reg[0]\(20),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return2(5),
      O => \i___30_carry__0_i_8__0_n_0\
    );
\i___30_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => gauss8_return4(7),
      I1 => gauss8_return5(7),
      I2 => \w2_reg[0]\(23),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return2(8),
      O => \i___30_carry__1_i_1_n_0\
    );
\i___30_carry__1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w1_reg_n_0_[2][14]\,
      I1 => \w1_reg_n_0_[1][13]\,
      I2 => \w2_reg[0]\(15),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg_n_0_[1][15]\,
      O => \i___30_carry__1_i_1__0_n_0\
    );
\i___30_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \w1_reg_n_0_[1][14]\,
      I1 => \w1_reg_n_0_[2][15]\,
      I2 => \w1_reg_n_0_[1][15]\,
      O => \i___30_carry__1_i_2_n_0\
    );
\i___30_carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => gauss8_return5(8),
      I1 => gauss8_return4(8),
      I2 => gauss8_return5(9),
      O => \i___30_carry__1_i_2__0_n_0\
    );
\i___30_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => bl(7),
      I1 => \w1_reg_n_0_[1][13]\,
      I2 => \w1_reg_n_0_[2][14]\,
      I3 => \w1_reg_n_0_[1][14]\,
      I4 => \w1_reg_n_0_[2][15]\,
      O => \i___30_carry__1_i_3_n_0\
    );
\i___30_carry__1_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \i___30_carry__1_i_4_n_0\,
      I1 => gauss8_return5(7),
      I2 => gauss8_return4(7),
      I3 => gauss8_return5(8),
      I4 => gauss8_return4(8),
      O => \i___30_carry__1_i_3__0_n_0\
    );
\i___30_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(23),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => gauss8_return2(8),
      O => \i___30_carry__1_i_4_n_0\
    );
\i___30_carry__1_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(15),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg_n_0_[1][15]\,
      O => bl(7)
    );
\i___30_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => \w2_reg_n_0_[1][11]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg[0]\(11),
      I3 => \w1_reg_n_0_[1][9]\,
      I4 => \w1_reg_n_0_[2][10]\,
      O => \i___30_carry_i_1_n_0\
    );
\i___30_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => gauss8_return2(4),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg[0]\(19),
      I3 => gauss8_return5(3),
      I4 => gauss8_return4(3),
      O => \i___30_carry_i_1__0_n_0\
    );
\i___30_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[2][9]\,
      I1 => \w1_reg_n_0_[1][8]\,
      O => \i___30_carry_i_2_n_0\
    );
\i___30_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gauss8_return4(2),
      I1 => gauss8_return5(2),
      O => \i___30_carry_i_2__0_n_0\
    );
\i___30_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \w1_reg_n_0_[2][10]\,
      I1 => \w1_reg_n_0_[1][9]\,
      I2 => \bl__0\(3),
      I3 => \w1_reg_n_0_[1][8]\,
      I4 => \w1_reg_n_0_[2][9]\,
      O => \i___30_carry_i_3_n_0\
    );
\i___30_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gauss8_return4(3),
      I1 => gauss8_return5(3),
      I2 => \i___30_carry_i_7__0_n_0\,
      I3 => gauss8_return5(2),
      I4 => gauss8_return4(2),
      O => \i___30_carry_i_3__0_n_0\
    );
\i___30_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \w1_reg_n_0_[1][8]\,
      I1 => \w1_reg_n_0_[2][9]\,
      I2 => \w2_reg_n_0_[1][10]\,
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg[0]\(10),
      O => \i___30_carry_i_4_n_0\
    );
\i___30_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => gauss8_return5(2),
      I1 => gauss8_return4(2),
      I2 => gauss8_return2(3),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w2_reg[0]\(18),
      O => \i___30_carry_i_4__0_n_0\
    );
\i___30_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \w2_reg_n_0_[1][9]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg[0]\(9),
      I3 => \w1_reg_n_0_[2][8]\,
      O => \i___30_carry_i_5_n_0\
    );
\i___30_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => gauss8_return2(2),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg[0]\(17),
      I3 => gauss8_return4(1),
      O => \i___30_carry_i_5__0_n_0\
    );
\i___30_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(8),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg_n_0_[1][8]\,
      O => \bl__0\(0)
    );
\i___30_carry_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(16),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => gauss8_return2(1),
      O => \i___30_carry_i_6__0_n_0\
    );
\i___30_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(11),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w2_reg_n_0_[1][11]\,
      O => \bl__0\(3)
    );
\i___30_carry_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w2_reg[0]\(19),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => gauss8_return2(4),
      O => \i___30_carry_i_7__0_n_0\
    );
\i___60_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][23]\,
      I1 => gauss8_return8(7),
      I2 => \w1_reg[0]\(22),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(8),
      O => \i___60_carry__0_i_1_n_0\
    );
\i___60_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(7),
      I1 => \w0_reg_n_0_[1][14]\,
      I2 => \w1_reg[0]\(14),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][14]\,
      O => \i___60_carry__0_i_1__0_n_0\
    );
\i___60_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][22]\,
      I1 => gauss8_return8(6),
      I2 => \w1_reg[0]\(21),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(7),
      O => \i___60_carry__0_i_2_n_0\
    );
\i___60_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(6),
      I1 => \w0_reg_n_0_[1][13]\,
      I2 => \w1_reg[0]\(13),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][13]\,
      O => \i___60_carry__0_i_2__0_n_0\
    );
\i___60_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][21]\,
      I1 => gauss8_return8(5),
      I2 => \w1_reg[0]\(20),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(6),
      O => \i___60_carry__0_i_3_n_0\
    );
\i___60_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(5),
      I1 => \w0_reg_n_0_[1][12]\,
      I2 => \w1_reg[0]\(12),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][12]\,
      O => \i___60_carry__0_i_3__0_n_0\
    );
\i___60_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][20]\,
      I1 => gauss8_return8(4),
      I2 => \w1_reg[0]\(19),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(5),
      O => \i___60_carry__0_i_4_n_0\
    );
\i___60_carry__0_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(4),
      I1 => \w0_reg_n_0_[1][11]\,
      I2 => \w1_reg[0]\(11),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][11]\,
      O => \i___60_carry__0_i_4__0_n_0\
    );
\i___60_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \i___60_carry__0_i_1__0_n_0\,
      I1 => \w0_reg_n_0_[1][15]\,
      I2 => \w1_reg[0]\(15),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][15]\,
      O => \i___60_carry__0_i_5_n_0\
    );
\i___60_carry__0_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \i___60_carry__0_i_1_n_0\,
      I1 => gauss8_return8(8),
      I2 => \w1_reg[0]\(23),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(9),
      O => \i___60_carry__0_i_5__0_n_0\
    );
\i___60_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry__0_i_2__0_n_0\,
      I1 => tr(7),
      I2 => \w0_reg_n_0_[1][14]\,
      I3 => \w1_reg[0]\(14),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][14]\,
      O => \i___60_carry__0_i_6_n_0\
    );
\i___60_carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry__0_i_2_n_0\,
      I1 => \w0_reg_n_0_[2][23]\,
      I2 => gauss8_return8(7),
      I3 => \w1_reg[0]\(22),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return5(8),
      O => \i___60_carry__0_i_6__0_n_0\
    );
\i___60_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry__0_i_3__0_n_0\,
      I1 => tr(6),
      I2 => \w0_reg_n_0_[1][13]\,
      I3 => \w1_reg[0]\(13),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][13]\,
      O => \i___60_carry__0_i_7_n_0\
    );
\i___60_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry__0_i_3_n_0\,
      I1 => \w0_reg_n_0_[2][22]\,
      I2 => gauss8_return8(6),
      I3 => \w1_reg[0]\(21),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return5(7),
      O => \i___60_carry__0_i_7__0_n_0\
    );
\i___60_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry__0_i_4__0_n_0\,
      I1 => tr(5),
      I2 => \w0_reg_n_0_[1][12]\,
      I3 => \w1_reg[0]\(12),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][12]\,
      O => \i___60_carry__0_i_8_n_0\
    );
\i___60_carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry__0_i_4_n_0\,
      I1 => \w0_reg_n_0_[2][21]\,
      I2 => gauss8_return8(5),
      I3 => \w1_reg[0]\(20),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return5(6),
      O => \i___60_carry__0_i_8__0_n_0\
    );
\i___60_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => gauss8_return5(9),
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w1_reg[0]\(23),
      I3 => gauss8_return8(8),
      O => \i___60_carry__1_i_1_n_0\
    );
\i___60_carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \w1_reg_n_0_[1][15]\,
      I1 => m_axis_tuser_i_4_n_0,
      I2 => \w1_reg[0]\(15),
      I3 => \w0_reg_n_0_[1][15]\,
      O => \i___60_carry__1_i_1__0_n_0\
    );
\i___60_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][19]\,
      I1 => gauss8_return8(3),
      I2 => \w1_reg[0]\(18),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(4),
      O => \i___60_carry_i_1_n_0\
    );
\i___60_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(3),
      I1 => \w0_reg_n_0_[1][10]\,
      I2 => \w1_reg[0]\(10),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][10]\,
      O => \i___60_carry_i_1__0_n_0\
    );
\i___60_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][18]\,
      I1 => gauss8_return8(2),
      I2 => \w1_reg[0]\(17),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(3),
      O => \i___60_carry_i_2_n_0\
    );
\i___60_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(2),
      I1 => \w0_reg_n_0_[1][9]\,
      I2 => \w1_reg[0]\(9),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][9]\,
      O => \i___60_carry_i_2__0_n_0\
    );
\i___60_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => tr(1),
      I1 => \w0_reg_n_0_[1][8]\,
      I2 => \w1_reg[0]\(8),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][8]\,
      O => \i___60_carry_i_3_n_0\
    );
\i___60_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8EEE888"
    )
        port map (
      I0 => \w0_reg_n_0_[2][17]\,
      I1 => gauss8_return8(1),
      I2 => \w1_reg[0]\(16),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(2),
      O => \i___60_carry_i_3__0_n_0\
    );
\i___60_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry_i_1__0_n_0\,
      I1 => tr(4),
      I2 => \w0_reg_n_0_[1][11]\,
      I3 => \w1_reg[0]\(11),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][11]\,
      O => \i___60_carry_i_4_n_0\
    );
\i___60_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry_i_1_n_0\,
      I1 => \w0_reg_n_0_[2][20]\,
      I2 => gauss8_return8(4),
      I3 => \w1_reg[0]\(19),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return5(5),
      O => \i___60_carry_i_4__0_n_0\
    );
\i___60_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry_i_2__0_n_0\,
      I1 => tr(3),
      I2 => \w0_reg_n_0_[1][10]\,
      I3 => \w1_reg[0]\(10),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][10]\,
      O => \i___60_carry_i_5_n_0\
    );
\i___60_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry_i_2_n_0\,
      I1 => \w0_reg_n_0_[2][19]\,
      I2 => gauss8_return8(3),
      I3 => \w1_reg[0]\(18),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return5(4),
      O => \i___60_carry_i_5__0_n_0\
    );
\i___60_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry_i_3_n_0\,
      I1 => tr(2),
      I2 => \w0_reg_n_0_[1][9]\,
      I3 => \w1_reg[0]\(9),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => \w1_reg_n_0_[1][9]\,
      O => \i___60_carry_i_6_n_0\
    );
\i___60_carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \i___60_carry_i_3__0_n_0\,
      I1 => \w0_reg_n_0_[2][18]\,
      I2 => gauss8_return8(2),
      I3 => \w1_reg[0]\(17),
      I4 => m_axis_tuser_i_4_n_0,
      I5 => gauss8_return5(3),
      O => \i___60_carry_i_6__0_n_0\
    );
\i___60_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => tr(1),
      I1 => \w0_reg_n_0_[1][8]\,
      I2 => \w1_reg[0]\(8),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => \w1_reg_n_0_[1][8]\,
      O => \i___60_carry_i_7_n_0\
    );
\i___60_carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \w0_reg_n_0_[2][17]\,
      I1 => gauss8_return8(1),
      I2 => \w1_reg[0]\(16),
      I3 => m_axis_tuser_i_4_n_0,
      I4 => gauss8_return5(2),
      O => \i___60_carry_i_7__0_n_0\
    );
\i___86_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_5\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_5\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_6\,
      O => \i___86_carry__0_i_1_n_0\
    );
\i___86_carry__0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_5\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_5\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_6\,
      O => \i___86_carry__0_i_1__0_n_0\
    );
\i___86_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_6\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_6\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_7\,
      O => \i___86_carry__0_i_2_n_0\
    );
\i___86_carry__0_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_6\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_6\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_7\,
      O => \i___86_carry__0_i_2__0_n_0\
    );
\i___86_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_7\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_7\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_4\,
      O => \i___86_carry__0_i_3_n_0\
    );
\i___86_carry__0_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_7\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_7\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_4\,
      O => \i___86_carry__0_i_3__0_n_0\
    );
\i___86_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_4\,
      I1 => \gauss8_return0_inferred__0/i___30_carry_n_4\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_5\,
      O => \i___86_carry__0_i_4_n_0\
    );
\i___86_carry__0_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_4\,
      I1 => \gauss8_return0_inferred__1/i___30_carry_n_4\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_5\,
      O => \i___86_carry__0_i_4__0_n_0\
    );
\i___86_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_4\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_4\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_5\,
      I3 => \i___86_carry__0_i_1_n_0\,
      O => \i___86_carry__0_i_5_n_0\
    );
\i___86_carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_4\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_4\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_5\,
      I3 => \i___86_carry__0_i_1__0_n_0\,
      O => \i___86_carry__0_i_5__0_n_0\
    );
\i___86_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_5\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_5\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_6\,
      I3 => \i___86_carry__0_i_2_n_0\,
      O => \i___86_carry__0_i_6_n_0\
    );
\i___86_carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_5\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_5\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_6\,
      I3 => \i___86_carry__0_i_2__0_n_0\,
      O => \i___86_carry__0_i_6__0_n_0\
    );
\i___86_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_6\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_6\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_7\,
      I3 => \i___86_carry__0_i_3_n_0\,
      O => \i___86_carry__0_i_7_n_0\
    );
\i___86_carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_6\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_6\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_7\,
      I3 => \i___86_carry__0_i_3__0_n_0\,
      O => \i___86_carry__0_i_7__0_n_0\
    );
\i___86_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_7\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_7\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_4\,
      I3 => \i___86_carry__0_i_4_n_0\,
      O => \i___86_carry__0_i_8_n_0\
    );
\i___86_carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_7\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_7\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_4\,
      I3 => \i___86_carry__0_i_4__0_n_0\,
      O => \i___86_carry__0_i_8__0_n_0\
    );
\i___86_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__1_n_2\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__1_n_6\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__1_n_7\,
      O => \i___86_carry__1_i_1_n_0\
    );
\i___86_carry__1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__1_n_2\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__1_n_6\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__1_n_7\,
      O => \i___86_carry__1_i_1__0_n_0\
    );
\i___86_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__1_n_7\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__1_n_7\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_4\,
      O => \i___86_carry__1_i_2_n_0\
    );
\i___86_carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__1_n_7\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__1_n_7\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_4\,
      O => \i___86_carry__1_i_2__0_n_0\
    );
\i___86_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__0_n_4\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__0_n_4\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_5\,
      O => \i___86_carry__1_i_3_n_0\
    );
\i___86_carry__1_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__0_n_4\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__0_n_4\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_5\,
      O => \i___86_carry__1_i_3__0_n_0\
    );
\i___86_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___30_carry__1_n_1\,
      I1 => \gauss8_return0_inferred__0/i___60_carry__1_n_2\,
      O => \i___86_carry__1_i_4_n_0\
    );
\i___86_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___30_carry__1_n_1\,
      I1 => \gauss8_return0_inferred__1/i___60_carry__1_n_2\,
      O => \i___86_carry__1_i_4__0_n_0\
    );
\i___86_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___60_carry__1_n_7\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__1_n_6\,
      I2 => \gauss8_return0_inferred__0/i___1_carry__1_n_2\,
      I3 => \gauss8_return0_inferred__0/i___60_carry__1_n_2\,
      I4 => \gauss8_return0_inferred__0/i___30_carry__1_n_1\,
      O => \i___86_carry__1_i_5_n_0\
    );
\i___86_carry__1_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___60_carry__1_n_7\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__1_n_6\,
      I2 => \gauss8_return0_inferred__1/i___1_carry__1_n_2\,
      I3 => \gauss8_return0_inferred__1/i___60_carry__1_n_2\,
      I4 => \gauss8_return0_inferred__1/i___30_carry__1_n_1\,
      O => \i___86_carry__1_i_5__0_n_0\
    );
\i___86_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \i___86_carry__1_i_2_n_0\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__1_n_6\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__1_n_7\,
      I3 => \gauss8_return0_inferred__0/i___1_carry__1_n_2\,
      O => \i___86_carry__1_i_6_n_0\
    );
\i___86_carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \i___86_carry__1_i_2__0_n_0\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__1_n_6\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__1_n_7\,
      I3 => \gauss8_return0_inferred__1/i___1_carry__1_n_2\,
      O => \i___86_carry__1_i_6__0_n_0\
    );
\i___86_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry__1_n_7\,
      I1 => \gauss8_return0_inferred__0/i___30_carry__1_n_7\,
      I2 => \gauss8_return0_inferred__0/i___60_carry__0_n_4\,
      I3 => \i___86_carry__1_i_3_n_0\,
      O => \i___86_carry__1_i_7_n_0\
    );
\i___86_carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry__1_n_7\,
      I1 => \gauss8_return0_inferred__1/i___30_carry__1_n_7\,
      I2 => \gauss8_return0_inferred__1/i___60_carry__0_n_4\,
      I3 => \i___86_carry__1_i_3__0_n_0\,
      O => \i___86_carry__1_i_7__0_n_0\
    );
\i___86_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_5\,
      I1 => \gauss8_return0_inferred__0/i___30_carry_n_5\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_6\,
      O => \i___86_carry_i_1_n_0\
    );
\i___86_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_5\,
      I1 => \gauss8_return0_inferred__1/i___30_carry_n_5\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_6\,
      O => \i___86_carry_i_1__0_n_0\
    );
\i___86_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_6\,
      I1 => \gauss8_return0_inferred__0/i___30_carry_n_6\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_7\,
      O => \i___86_carry_i_2_n_0\
    );
\i___86_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_6\,
      I1 => \gauss8_return0_inferred__1/i___30_carry_n_6\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_7\,
      O => \i___86_carry_i_2__0_n_0\
    );
\i___86_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_7\,
      I1 => tr(0),
      I2 => \gauss8_return0_inferred__0/i___30_carry_n_7\,
      O => \i___86_carry_i_3_n_0\
    );
\i___86_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_7\,
      I1 => \w0_reg_n_0_[2][16]\,
      I2 => \gauss8_return0_inferred__1/i___30_carry_n_7\,
      O => \i___86_carry_i_3__0_n_0\
    );
\i___86_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_4\,
      I1 => \gauss8_return0_inferred__0/i___30_carry_n_4\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_5\,
      I3 => \i___86_carry_i_1_n_0\,
      O => \i___86_carry_i_4_n_0\
    );
\i___86_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_4\,
      I1 => \gauss8_return0_inferred__1/i___30_carry_n_4\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_5\,
      I3 => \i___86_carry_i_1__0_n_0\,
      O => \i___86_carry_i_4__0_n_0\
    );
\i___86_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_5\,
      I1 => \gauss8_return0_inferred__0/i___30_carry_n_5\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_6\,
      I3 => \i___86_carry_i_2_n_0\,
      O => \i___86_carry_i_5_n_0\
    );
\i___86_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_5\,
      I1 => \gauss8_return0_inferred__1/i___30_carry_n_5\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_6\,
      I3 => \i___86_carry_i_2__0_n_0\,
      O => \i___86_carry_i_5__0_n_0\
    );
\i___86_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_6\,
      I1 => \gauss8_return0_inferred__0/i___30_carry_n_6\,
      I2 => \gauss8_return0_inferred__0/i___60_carry_n_7\,
      I3 => \i___86_carry_i_3_n_0\,
      O => \i___86_carry_i_6_n_0\
    );
\i___86_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_6\,
      I1 => \gauss8_return0_inferred__1/i___30_carry_n_6\,
      I2 => \gauss8_return0_inferred__1/i___60_carry_n_7\,
      I3 => \i___86_carry_i_3__0_n_0\,
      O => \i___86_carry_i_6__0_n_0\
    );
\i___86_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \gauss8_return0_inferred__0/i___1_carry_n_7\,
      I1 => tr(0),
      I2 => \gauss8_return0_inferred__0/i___30_carry_n_7\,
      O => \i___86_carry_i_7_n_0\
    );
\i___86_carry_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \gauss8_return0_inferred__1/i___1_carry_n_7\,
      I1 => \w0_reg_n_0_[2][16]\,
      I2 => \gauss8_return0_inferred__1/i___30_carry_n_7\,
      O => \i___86_carry_i_7__0_n_0\
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
      INIT => X"FFEA0000FFEAFFEA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \m_axis_tdata[23]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axis_tvalid,
      I4 => m_axis_tready,
      I5 => \^m_axis_tvalid_reg_0\,
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFDFD"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => s_axis_tready_INST_0_i_3_n_0,
      I3 => \cy_reg_n_0_[4]\,
      I4 => \cy_reg_n_0_[5]\,
      O => \m_axis_tdata[23]_i_3_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__0_n_7\,
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__0_n_5\,
      Q => m_axis_tdata(10),
      R => p_0_in
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__0_n_4\,
      Q => m_axis_tdata(11),
      R => p_0_in
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__1_n_7\,
      Q => m_axis_tdata(12),
      R => p_0_in
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__1_n_6\,
      Q => m_axis_tdata(13),
      R => p_0_in
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__1_n_5\,
      Q => m_axis_tdata(14),
      R => p_0_in
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__1_n_4\,
      Q => m_axis_tdata(15),
      R => p_0_in
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(4),
      Q => m_axis_tdata(16),
      R => p_0_in
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(5),
      Q => m_axis_tdata(17),
      R => p_0_in
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(6),
      Q => m_axis_tdata(18),
      R => p_0_in
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(7),
      Q => m_axis_tdata(19),
      R => p_0_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__0_n_6\,
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(8),
      Q => m_axis_tdata(20),
      R => p_0_in
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(9),
      Q => m_axis_tdata(21),
      R => p_0_in
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(10),
      Q => m_axis_tdata(22),
      R => p_0_in
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return0(11),
      Q => m_axis_tdata(23),
      R => p_0_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__0_n_5\,
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__0_n_4\,
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__1_n_7\,
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__1_n_6\,
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__1_n_5\,
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0__86_carry__1_n_4\,
      Q => m_axis_tdata(7),
      R => p_0_in
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__0_n_7\,
      Q => m_axis_tdata(8),
      R => p_0_in
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \gauss8_return0_inferred__0/i___86_carry__0_n_6\,
      Q => m_axis_tdata(9),
      R => p_0_in
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => m_axis_tlast_i_3_n_0,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p2_ccx(2),
      I1 => p2_ccx(3),
      I2 => p2_ccx(0),
      I3 => p2_ccx(1),
      I4 => p2_ccx(5),
      I5 => p2_ccx(4),
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p2_ccx(10),
      I1 => p2_ccx(11),
      I2 => p2_ccx(8),
      I3 => p2_ccx(9),
      I4 => p2_ccx(7),
      I5 => p2_ccx(6),
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => m_axis_tlast_i_1_n_0,
      Q => m_axis_tlast,
      R => p_0_in
    );
m_axis_tuser_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_axis_tuser_i_2_n_0,
      I1 => m_axis_tuser_i_3_n_0,
      I2 => m_axis_tuser_i_4_n_0,
      O => m_axis_tuser0
    );
m_axis_tuser_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p2_ccy(8),
      I1 => p2_ccy(9),
      I2 => p2_ccy(6),
      I3 => p2_ccy(7),
      I4 => p2_ccy(11),
      I5 => p2_ccy(10),
      O => m_axis_tuser_i_2_n_0
    );
m_axis_tuser_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p2_ccy(2),
      I1 => p2_ccy(3),
      I2 => p2_ccy(0),
      I3 => p2_ccy(1),
      I4 => p2_ccy(5),
      I5 => p2_ccy(4),
      O => m_axis_tuser_i_3_n_0
    );
m_axis_tuser_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_tuser_i_5_n_0,
      I1 => m_axis_tlast_i_3_n_0,
      O => m_axis_tuser_i_4_n_0
    );
m_axis_tuser_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p2_ccx(4),
      I1 => p2_ccx(5),
      I2 => p2_ccx(2),
      I3 => p2_ccx(3),
      I4 => p2_ccx(1),
      I5 => p2_ccx(0),
      O => m_axis_tuser_i_5_n_0
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => m_axis_tuser0,
      Q => m_axis_tuser,
      R => p_0_in
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => p2_cvalid,
      I3 => \m_axis_tdata[23]_i_2_n_0\,
      I4 => aresetn,
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
\p1_ccx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      O => \p1_ccx[0]_i_1_n_0\
    );
\p1_ccx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \p1_ccx[0]_i_1_n_0\,
      Q => p1_ccx(0),
      R => '0'
    );
\p1_ccx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(10),
      Q => p1_ccx(10),
      R => '0'
    );
\p1_ccx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(11),
      Q => p1_ccx(11),
      R => '0'
    );
\p1_ccx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(1),
      Q => p1_ccx(1),
      R => '0'
    );
\p1_ccx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(2),
      Q => p1_ccx(2),
      R => '0'
    );
\p1_ccx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(3),
      Q => p1_ccx(3),
      R => '0'
    );
\p1_ccx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(4),
      Q => p1_ccx(4),
      R => '0'
    );
\p1_ccx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(5),
      Q => p1_ccx(5),
      R => '0'
    );
\p1_ccx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(6),
      Q => p1_ccx(6),
      R => '0'
    );
\p1_ccx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(7),
      Q => p1_ccx(7),
      R => '0'
    );
\p1_ccx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(8),
      Q => p1_ccx(8),
      R => '0'
    );
\p1_ccx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => ccx_f(9),
      Q => p1_ccx(9),
      R => '0'
    );
\p1_ccy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[0]\,
      Q => p1_ccy(0),
      R => '0'
    );
\p1_ccy_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[10]\,
      Q => p1_ccy(10),
      R => '0'
    );
\p1_ccy_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[11]\,
      Q => p1_ccy(11),
      R => '0'
    );
\p1_ccy_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[1]\,
      Q => p1_ccy(1),
      R => '0'
    );
\p1_ccy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[2]\,
      Q => p1_ccy(2),
      R => '0'
    );
\p1_ccy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[3]\,
      Q => p1_ccy(3),
      R => '0'
    );
\p1_ccy_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[4]\,
      Q => p1_ccy(4),
      R => '0'
    );
\p1_ccy_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[5]\,
      Q => p1_ccy(5),
      R => '0'
    );
\p1_ccy_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[6]\,
      Q => p1_ccy(6),
      R => '0'
    );
\p1_ccy_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[7]\,
      Q => p1_ccy(7),
      R => '0'
    );
\p1_ccy_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[8]\,
      Q => p1_ccy(8),
      R => '0'
    );
\p1_ccy_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[9]\,
      Q => p1_ccy(9),
      R => '0'
    );
p1_cvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => \fc_reg_n_0_[6]\,
      I1 => \fc_reg_n_0_[0]\,
      I2 => p1_cvalid_i_2_n_0,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => cvalid_f
    );
p1_cvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \fc_reg_n_0_[3]\,
      I1 => \fc_reg_n_0_[4]\,
      I2 => \fc_reg_n_0_[1]\,
      I3 => \fc_reg_n_0_[2]\,
      I4 => buf1_reg_i_8_n_0,
      O => p1_cvalid_i_2_n_0
    );
p1_cvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => cvalid_f,
      Q => p1_cvalid,
      R => p_0_in
    );
p1_t0cur_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cy_reg_n_0_[3]\,
      I1 => \cy_reg_n_0_[5]\,
      I2 => \cy_reg_n_0_[2]\,
      I3 => \cy_reg_n_0_[1]\,
      I4 => \cy_reg_n_0_[0]\,
      I5 => p1_t0cur_i_2_n_0,
      O => t0_from_cur_f
    );
p1_t0cur_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => \cy_reg_n_0_[4]\,
      O => p1_t0cur_i_2_n_0
    );
p1_t0cur_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_from_cur_f,
      Q => p1_t0cur,
      R => '0'
    );
p1_t2buf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \cy_reg_n_0_[2]\,
      I1 => \cy_reg_n_0_[3]\,
      I2 => \cy_reg_n_0_[0]\,
      I3 => \cy_reg_n_0_[1]\,
      I4 => \cy_reg_n_0_[5]\,
      I5 => p1_t0cur_i_2_n_0,
      O => t2_from_buf_f
    );
p1_t2buf_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_from_buf_f,
      Q => p1_t2buf,
      R => '0'
    );
\p2_ccx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(0),
      Q => p2_ccx(0),
      R => '0'
    );
\p2_ccx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(10),
      Q => p2_ccx(10),
      R => '0'
    );
\p2_ccx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(11),
      Q => p2_ccx(11),
      R => '0'
    );
\p2_ccx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(1),
      Q => p2_ccx(1),
      R => '0'
    );
\p2_ccx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(2),
      Q => p2_ccx(2),
      R => '0'
    );
\p2_ccx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(3),
      Q => p2_ccx(3),
      R => '0'
    );
\p2_ccx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(4),
      Q => p2_ccx(4),
      R => '0'
    );
\p2_ccx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(5),
      Q => p2_ccx(5),
      R => '0'
    );
\p2_ccx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(6),
      Q => p2_ccx(6),
      R => '0'
    );
\p2_ccx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(7),
      Q => p2_ccx(7),
      R => '0'
    );
\p2_ccx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(8),
      Q => p2_ccx(8),
      R => '0'
    );
\p2_ccx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(9),
      Q => p2_ccx(9),
      R => '0'
    );
\p2_ccy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(0),
      Q => p2_ccy(0),
      R => '0'
    );
\p2_ccy_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(10),
      Q => p2_ccy(10),
      R => '0'
    );
\p2_ccy_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(11),
      Q => p2_ccy(11),
      R => '0'
    );
\p2_ccy_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(1),
      Q => p2_ccy(1),
      R => '0'
    );
\p2_ccy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(2),
      Q => p2_ccy(2),
      R => '0'
    );
\p2_ccy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(3),
      Q => p2_ccy(3),
      R => '0'
    );
\p2_ccy_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(4),
      Q => p2_ccy(4),
      R => '0'
    );
\p2_ccy_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(5),
      Q => p2_ccy(5),
      R => '0'
    );
\p2_ccy_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(6),
      Q => p2_ccy(6),
      R => '0'
    );
\p2_ccy_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(7),
      Q => p2_ccy(7),
      R => '0'
    );
\p2_ccy_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(8),
      Q => p2_ccy(8),
      R => '0'
    );
\p2_ccy_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(9),
      Q => p2_ccy(9),
      R => '0'
    );
p2_cvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_cvalid,
      Q => p2_cvalid,
      R => p_0_in
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => need_input,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AB0000FFFF"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => \cy_reg_n_0_[5]\,
      I2 => s_axis_tready_INST_0_i_3_n_0,
      I3 => s_axis_tready_INST_0_i_4_n_0,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => need_input
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => \cy_reg_n_0_[2]\,
      I1 => \cy_reg_n_0_[3]\,
      I2 => \cy_reg_n_0_[0]\,
      I3 => \cy_reg_n_0_[1]\,
      I4 => \cy_reg_n_0_[4]\,
      I5 => s_axis_tready_INST_0_i_3_n_0,
      O => s_axis_tready_INST_0_i_2_n_0
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cy_reg_n_0_[10]\,
      I1 => \cy_reg_n_0_[11]\,
      I2 => \cy_reg_n_0_[8]\,
      I3 => \cy_reg_n_0_[9]\,
      I4 => \cy_reg_n_0_[7]\,
      I5 => \cy_reg_n_0_[6]\,
      O => s_axis_tready_INST_0_i_3_n_0
    );
s_axis_tready_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fc_reg_n_0_[8]\,
      I1 => \fc_reg_n_0_[9]\,
      I2 => \fc_reg_n_0_[11]\,
      I3 => \fc_reg_n_0_[10]\,
      I4 => \fc_reg_n_0_[7]\,
      I5 => \fc_reg_n_0_[6]\,
      O => s_axis_tready_INST_0_i_4_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000330355554454"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state[1]_i_3_n_0\,
      I3 => \state[1]_i_4_n_0\,
      I4 => \state[1]_i_5_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003303AAAA88A8"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state[1]_i_3_n_0\,
      I3 => \state[1]_i_4_n_0\,
      I4 => \state[1]_i_5_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011010000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => m_axis_tready,
      I4 => s_axis_tvalid,
      I5 => \cy[11]_i_3_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005100"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy[11]_i_5_n_0\,
      I5 => p1_t0cur_i_2_n_0,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \fc[11]_i_3_n_0\,
      I1 => \fc_reg_n_0_[0]\,
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A00"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => flush_cnt(1),
      I4 => flush_cnt(0),
      O => \state[1]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => p_0_in
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => p_0_in
    );
\t2_d[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => need_input,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => \^m_axis_tvalid_reg_0\,
      O => t2_d_0(0)
    );
\t2_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(0),
      Q => t2_d(0),
      R => '0'
    );
\t2_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(10),
      Q => t2_d(10),
      R => '0'
    );
\t2_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(11),
      Q => t2_d(11),
      R => '0'
    );
\t2_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(12),
      Q => t2_d(12),
      R => '0'
    );
\t2_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(13),
      Q => t2_d(13),
      R => '0'
    );
\t2_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(14),
      Q => t2_d(14),
      R => '0'
    );
\t2_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(15),
      Q => t2_d(15),
      R => '0'
    );
\t2_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(16),
      Q => t2_d(16),
      R => '0'
    );
\t2_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(17),
      Q => t2_d(17),
      R => '0'
    );
\t2_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(18),
      Q => t2_d(18),
      R => '0'
    );
\t2_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(19),
      Q => t2_d(19),
      R => '0'
    );
\t2_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(1),
      Q => t2_d(1),
      R => '0'
    );
\t2_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(20),
      Q => t2_d(20),
      R => '0'
    );
\t2_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(21),
      Q => t2_d(21),
      R => '0'
    );
\t2_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(22),
      Q => t2_d(22),
      R => '0'
    );
\t2_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(23),
      Q => t2_d(23),
      R => '0'
    );
\t2_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(2),
      Q => t2_d(2),
      R => '0'
    );
\t2_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(3),
      Q => t2_d(3),
      R => '0'
    );
\t2_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(4),
      Q => t2_d(4),
      R => '0'
    );
\t2_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(5),
      Q => t2_d(5),
      R => '0'
    );
\t2_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(6),
      Q => t2_d(6),
      R => '0'
    );
\t2_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(7),
      Q => t2_d(7),
      R => '0'
    );
\t2_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(8),
      Q => t2_d(8),
      R => '0'
    );
\t2_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(9),
      Q => t2_d(9),
      R => '0'
    );
\w0[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(0),
      I2 => p1_ccy(0),
      I3 => q1(0),
      O => t0_val(0)
    );
\w0[2][10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(10),
      I2 => p1_ccy(0),
      I3 => q1(10),
      O => t0_val(10)
    );
\w0[2][11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(11),
      I2 => p1_ccy(0),
      I3 => q1(11),
      O => t0_val(11)
    );
\w0[2][12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(12),
      I2 => p1_ccy(0),
      I3 => q1(12),
      O => t0_val(12)
    );
\w0[2][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(13),
      I2 => p1_ccy(0),
      I3 => q1(13),
      O => t0_val(13)
    );
\w0[2][14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(14),
      I2 => p1_ccy(0),
      I3 => q1(14),
      O => t0_val(14)
    );
\w0[2][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(15),
      I2 => p1_ccy(0),
      I3 => q1(15),
      O => t0_val(15)
    );
\w0[2][16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(16),
      I2 => p1_ccy(0),
      I3 => q1(16),
      O => t0_val(16)
    );
\w0[2][17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(17),
      I2 => p1_ccy(0),
      I3 => q1(17),
      O => t0_val(17)
    );
\w0[2][18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(18),
      I2 => p1_ccy(0),
      I3 => q1(18),
      O => t0_val(18)
    );
\w0[2][19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(19),
      I2 => p1_ccy(0),
      I3 => q1(19),
      O => t0_val(19)
    );
\w0[2][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(1),
      I2 => p1_ccy(0),
      I3 => q1(1),
      O => t0_val(1)
    );
\w0[2][20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(20),
      I2 => p1_ccy(0),
      I3 => q1(20),
      O => t0_val(20)
    );
\w0[2][21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(21),
      I2 => p1_ccy(0),
      I3 => q1(21),
      O => t0_val(21)
    );
\w0[2][22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(22),
      I2 => p1_ccy(0),
      I3 => q1(22),
      O => t0_val(22)
    );
\w0[2][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(23),
      I2 => p1_ccy(0),
      I3 => q1(23),
      O => t0_val(23)
    );
\w0[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(2),
      I2 => p1_ccy(0),
      I3 => q1(2),
      O => t0_val(2)
    );
\w0[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(3),
      I2 => p1_ccy(0),
      I3 => q1(3),
      O => t0_val(3)
    );
\w0[2][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(4),
      I2 => p1_ccy(0),
      I3 => q1(4),
      O => t0_val(4)
    );
\w0[2][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(5),
      I2 => p1_ccy(0),
      I3 => q1(5),
      O => t0_val(5)
    );
\w0[2][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(6),
      I2 => p1_ccy(0),
      I3 => q1(6),
      O => t0_val(6)
    );
\w0[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(7),
      I2 => p1_ccy(0),
      I3 => q1(7),
      O => t0_val(7)
    );
\w0[2][8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(8),
      I2 => p1_ccy(0),
      I3 => q1(8),
      O => t0_val(8)
    );
\w0[2][9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(9),
      I2 => p1_ccy(0),
      I3 => q1(9),
      O => t0_val(9)
    );
\w0_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][0]\,
      Q => \w0_reg[0]\(0),
      R => '0'
    );
\w0_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][10]\,
      Q => \w0_reg[0]\(10),
      R => '0'
    );
\w0_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][11]\,
      Q => \w0_reg[0]\(11),
      R => '0'
    );
\w0_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][12]\,
      Q => \w0_reg[0]\(12),
      R => '0'
    );
\w0_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][13]\,
      Q => \w0_reg[0]\(13),
      R => '0'
    );
\w0_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][14]\,
      Q => \w0_reg[0]\(14),
      R => '0'
    );
\w0_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][15]\,
      Q => \w0_reg[0]\(15),
      R => '0'
    );
\w0_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(1),
      Q => \w0_reg[0]\(16),
      R => '0'
    );
\w0_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(2),
      Q => \w0_reg[0]\(17),
      R => '0'
    );
\w0_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(3),
      Q => \w0_reg[0]\(18),
      R => '0'
    );
\w0_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(4),
      Q => \w0_reg[0]\(19),
      R => '0'
    );
\w0_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][1]\,
      Q => \w0_reg[0]\(1),
      R => '0'
    );
\w0_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(5),
      Q => \w0_reg[0]\(20),
      R => '0'
    );
\w0_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(6),
      Q => \w0_reg[0]\(21),
      R => '0'
    );
\w0_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(7),
      Q => \w0_reg[0]\(22),
      R => '0'
    );
\w0_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return8(8),
      Q => \w0_reg[0]\(23),
      R => '0'
    );
\w0_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][2]\,
      Q => \w0_reg[0]\(2),
      R => '0'
    );
\w0_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][3]\,
      Q => \w0_reg[0]\(3),
      R => '0'
    );
\w0_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][4]\,
      Q => \w0_reg[0]\(4),
      R => '0'
    );
\w0_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][5]\,
      Q => \w0_reg[0]\(5),
      R => '0'
    );
\w0_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][6]\,
      Q => \w0_reg[0]\(6),
      R => '0'
    );
\w0_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][7]\,
      Q => \w0_reg[0]\(7),
      R => '0'
    );
\w0_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][8]\,
      Q => \w0_reg[0]\(8),
      R => '0'
    );
\w0_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[1][9]\,
      Q => \w0_reg[0]\(9),
      R => '0'
    );
\w0_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][0]\,
      Q => \w0_reg_n_0_[1][0]\,
      R => '0'
    );
\w0_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(2),
      Q => \w0_reg_n_0_[1][10]\,
      R => '0'
    );
\w0_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(3),
      Q => \w0_reg_n_0_[1][11]\,
      R => '0'
    );
\w0_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(4),
      Q => \w0_reg_n_0_[1][12]\,
      R => '0'
    );
\w0_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(5),
      Q => \w0_reg_n_0_[1][13]\,
      R => '0'
    );
\w0_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(6),
      Q => \w0_reg_n_0_[1][14]\,
      R => '0'
    );
\w0_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(7),
      Q => \w0_reg_n_0_[1][15]\,
      R => '0'
    );
\w0_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][16]\,
      Q => gauss8_return8(1),
      R => '0'
    );
\w0_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][17]\,
      Q => gauss8_return8(2),
      R => '0'
    );
\w0_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][18]\,
      Q => gauss8_return8(3),
      R => '0'
    );
\w0_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][19]\,
      Q => gauss8_return8(4),
      R => '0'
    );
\w0_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][1]\,
      Q => \w0_reg_n_0_[1][1]\,
      R => '0'
    );
\w0_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][20]\,
      Q => gauss8_return8(5),
      R => '0'
    );
\w0_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][21]\,
      Q => gauss8_return8(6),
      R => '0'
    );
\w0_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][22]\,
      Q => gauss8_return8(7),
      R => '0'
    );
\w0_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][23]\,
      Q => gauss8_return8(8),
      R => '0'
    );
\w0_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][2]\,
      Q => \w0_reg_n_0_[1][2]\,
      R => '0'
    );
\w0_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][3]\,
      Q => \w0_reg_n_0_[1][3]\,
      R => '0'
    );
\w0_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][4]\,
      Q => \w0_reg_n_0_[1][4]\,
      R => '0'
    );
\w0_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][5]\,
      Q => \w0_reg_n_0_[1][5]\,
      R => '0'
    );
\w0_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][6]\,
      Q => \w0_reg_n_0_[1][6]\,
      R => '0'
    );
\w0_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg_n_0_[2][7]\,
      Q => \w0_reg_n_0_[1][7]\,
      R => '0'
    );
\w0_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(0),
      Q => \w0_reg_n_0_[1][8]\,
      R => '0'
    );
\w0_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => tr(1),
      Q => \w0_reg_n_0_[1][9]\,
      R => '0'
    );
\w0_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(0),
      Q => \w0_reg_n_0_[2][0]\,
      R => '0'
    );
\w0_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(10),
      Q => tr(2),
      R => '0'
    );
\w0_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(11),
      Q => tr(3),
      R => '0'
    );
\w0_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(12),
      Q => tr(4),
      R => '0'
    );
\w0_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(13),
      Q => tr(5),
      R => '0'
    );
\w0_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(14),
      Q => tr(6),
      R => '0'
    );
\w0_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(15),
      Q => tr(7),
      R => '0'
    );
\w0_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(16),
      Q => \w0_reg_n_0_[2][16]\,
      R => '0'
    );
\w0_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(17),
      Q => \w0_reg_n_0_[2][17]\,
      R => '0'
    );
\w0_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(18),
      Q => \w0_reg_n_0_[2][18]\,
      R => '0'
    );
\w0_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(19),
      Q => \w0_reg_n_0_[2][19]\,
      R => '0'
    );
\w0_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(1),
      Q => \w0_reg_n_0_[2][1]\,
      R => '0'
    );
\w0_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(20),
      Q => \w0_reg_n_0_[2][20]\,
      R => '0'
    );
\w0_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(21),
      Q => \w0_reg_n_0_[2][21]\,
      R => '0'
    );
\w0_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(22),
      Q => \w0_reg_n_0_[2][22]\,
      R => '0'
    );
\w0_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(23),
      Q => \w0_reg_n_0_[2][23]\,
      R => '0'
    );
\w0_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(2),
      Q => \w0_reg_n_0_[2][2]\,
      R => '0'
    );
\w0_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(3),
      Q => \w0_reg_n_0_[2][3]\,
      R => '0'
    );
\w0_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(4),
      Q => \w0_reg_n_0_[2][4]\,
      R => '0'
    );
\w0_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(5),
      Q => \w0_reg_n_0_[2][5]\,
      R => '0'
    );
\w0_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(6),
      Q => \w0_reg_n_0_[2][6]\,
      R => '0'
    );
\w0_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(7),
      Q => \w0_reg_n_0_[2][7]\,
      R => '0'
    );
\w0_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(8),
      Q => tr(0),
      R => '0'
    );
\w0_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(9),
      Q => tr(1),
      R => '0'
    );
\w1[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(0),
      I1 => q0(0),
      I2 => p1_ccy(0),
      O => t1_val(0)
    );
\w1[2][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(10),
      I1 => q0(10),
      I2 => p1_ccy(0),
      O => t1_val(10)
    );
\w1[2][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(11),
      I1 => q0(11),
      I2 => p1_ccy(0),
      O => t1_val(11)
    );
\w1[2][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(12),
      I1 => q0(12),
      I2 => p1_ccy(0),
      O => t1_val(12)
    );
\w1[2][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(13),
      I1 => q0(13),
      I2 => p1_ccy(0),
      O => t1_val(13)
    );
\w1[2][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(14),
      I1 => q0(14),
      I2 => p1_ccy(0),
      O => t1_val(14)
    );
\w1[2][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(15),
      I1 => q0(15),
      I2 => p1_ccy(0),
      O => t1_val(15)
    );
\w1[2][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(16),
      I1 => q0(16),
      I2 => p1_ccy(0),
      O => t1_val(16)
    );
\w1[2][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(17),
      I1 => q0(17),
      I2 => p1_ccy(0),
      O => t1_val(17)
    );
\w1[2][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(18),
      I1 => q0(18),
      I2 => p1_ccy(0),
      O => t1_val(18)
    );
\w1[2][19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(19),
      I1 => q0(19),
      I2 => p1_ccy(0),
      O => t1_val(19)
    );
\w1[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(1),
      I1 => q0(1),
      I2 => p1_ccy(0),
      O => t1_val(1)
    );
\w1[2][20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(20),
      I1 => q0(20),
      I2 => p1_ccy(0),
      O => t1_val(20)
    );
\w1[2][21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(21),
      I1 => q0(21),
      I2 => p1_ccy(0),
      O => t1_val(21)
    );
\w1[2][22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(22),
      I1 => q0(22),
      I2 => p1_ccy(0),
      O => t1_val(22)
    );
\w1[2][23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(23),
      I1 => q0(23),
      I2 => p1_ccy(0),
      O => t1_val(23)
    );
\w1[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(2),
      I1 => q0(2),
      I2 => p1_ccy(0),
      O => t1_val(2)
    );
\w1[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(3),
      I1 => q0(3),
      I2 => p1_ccy(0),
      O => t1_val(3)
    );
\w1[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(4),
      I1 => q0(4),
      I2 => p1_ccy(0),
      O => t1_val(4)
    );
\w1[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(5),
      I1 => q0(5),
      I2 => p1_ccy(0),
      O => t1_val(5)
    );
\w1[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(6),
      I1 => q0(6),
      I2 => p1_ccy(0),
      O => t1_val(6)
    );
\w1[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(7),
      I1 => q0(7),
      I2 => p1_ccy(0),
      O => t1_val(7)
    );
\w1[2][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(8),
      I1 => q0(8),
      I2 => p1_ccy(0),
      O => t1_val(8)
    );
\w1[2][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(9),
      I1 => q0(9),
      I2 => p1_ccy(0),
      O => t1_val(9)
    );
\w1_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][0]\,
      Q => \w1_reg[0]\(0),
      R => '0'
    );
\w1_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][10]\,
      Q => \w1_reg[0]\(10),
      R => '0'
    );
\w1_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][11]\,
      Q => \w1_reg[0]\(11),
      R => '0'
    );
\w1_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][12]\,
      Q => \w1_reg[0]\(12),
      R => '0'
    );
\w1_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][13]\,
      Q => \w1_reg[0]\(13),
      R => '0'
    );
\w1_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][14]\,
      Q => \w1_reg[0]\(14),
      R => '0'
    );
\w1_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][15]\,
      Q => \w1_reg[0]\(15),
      R => '0'
    );
\w1_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(2),
      Q => \w1_reg[0]\(16),
      R => '0'
    );
\w1_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(3),
      Q => \w1_reg[0]\(17),
      R => '0'
    );
\w1_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(4),
      Q => \w1_reg[0]\(18),
      R => '0'
    );
\w1_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(5),
      Q => \w1_reg[0]\(19),
      R => '0'
    );
\w1_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][1]\,
      Q => \w1_reg[0]\(1),
      R => '0'
    );
\w1_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(6),
      Q => \w1_reg[0]\(20),
      R => '0'
    );
\w1_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(7),
      Q => \w1_reg[0]\(21),
      R => '0'
    );
\w1_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(8),
      Q => \w1_reg[0]\(22),
      R => '0'
    );
\w1_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return5(9),
      Q => \w1_reg[0]\(23),
      R => '0'
    );
\w1_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][2]\,
      Q => \w1_reg[0]\(2),
      R => '0'
    );
\w1_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][3]\,
      Q => \w1_reg[0]\(3),
      R => '0'
    );
\w1_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][4]\,
      Q => \w1_reg[0]\(4),
      R => '0'
    );
\w1_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][5]\,
      Q => \w1_reg[0]\(5),
      R => '0'
    );
\w1_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][6]\,
      Q => \w1_reg[0]\(6),
      R => '0'
    );
\w1_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][7]\,
      Q => \w1_reg[0]\(7),
      R => '0'
    );
\w1_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][8]\,
      Q => \w1_reg[0]\(8),
      R => '0'
    );
\w1_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[1][9]\,
      Q => \w1_reg[0]\(9),
      R => '0'
    );
\w1_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][0]\,
      Q => \w1_reg_n_0_[1][0]\,
      R => '0'
    );
\w1_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][10]\,
      Q => \w1_reg_n_0_[1][10]\,
      R => '0'
    );
\w1_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][11]\,
      Q => \w1_reg_n_0_[1][11]\,
      R => '0'
    );
\w1_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][12]\,
      Q => \w1_reg_n_0_[1][12]\,
      R => '0'
    );
\w1_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][13]\,
      Q => \w1_reg_n_0_[1][13]\,
      R => '0'
    );
\w1_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][14]\,
      Q => \w1_reg_n_0_[1][14]\,
      R => '0'
    );
\w1_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][15]\,
      Q => \w1_reg_n_0_[1][15]\,
      R => '0'
    );
\w1_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(1),
      Q => gauss8_return5(2),
      R => '0'
    );
\w1_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(2),
      Q => gauss8_return5(3),
      R => '0'
    );
\w1_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(3),
      Q => gauss8_return5(4),
      R => '0'
    );
\w1_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(4),
      Q => gauss8_return5(5),
      R => '0'
    );
\w1_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][1]\,
      Q => \w1_reg_n_0_[1][1]\,
      R => '0'
    );
\w1_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(5),
      Q => gauss8_return5(6),
      R => '0'
    );
\w1_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(6),
      Q => gauss8_return5(7),
      R => '0'
    );
\w1_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(7),
      Q => gauss8_return5(8),
      R => '0'
    );
\w1_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return4(8),
      Q => gauss8_return5(9),
      R => '0'
    );
\w1_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][2]\,
      Q => \w1_reg_n_0_[1][2]\,
      R => '0'
    );
\w1_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][3]\,
      Q => \w1_reg_n_0_[1][3]\,
      R => '0'
    );
\w1_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][4]\,
      Q => \w1_reg_n_0_[1][4]\,
      R => '0'
    );
\w1_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][5]\,
      Q => \w1_reg_n_0_[1][5]\,
      R => '0'
    );
\w1_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][6]\,
      Q => \w1_reg_n_0_[1][6]\,
      R => '0'
    );
\w1_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][7]\,
      Q => \w1_reg_n_0_[1][7]\,
      R => '0'
    );
\w1_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][8]\,
      Q => \w1_reg_n_0_[1][8]\,
      R => '0'
    );
\w1_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg_n_0_[2][9]\,
      Q => \w1_reg_n_0_[1][9]\,
      R => '0'
    );
\w1_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(0),
      Q => \w1_reg_n_0_[2][0]\,
      R => '0'
    );
\w1_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(10),
      Q => \w1_reg_n_0_[2][10]\,
      R => '0'
    );
\w1_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(11),
      Q => \w1_reg_n_0_[2][11]\,
      R => '0'
    );
\w1_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(12),
      Q => \w1_reg_n_0_[2][12]\,
      R => '0'
    );
\w1_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(13),
      Q => \w1_reg_n_0_[2][13]\,
      R => '0'
    );
\w1_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(14),
      Q => \w1_reg_n_0_[2][14]\,
      R => '0'
    );
\w1_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(15),
      Q => \w1_reg_n_0_[2][15]\,
      R => '0'
    );
\w1_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(16),
      Q => gauss8_return4(1),
      R => '0'
    );
\w1_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(17),
      Q => gauss8_return4(2),
      R => '0'
    );
\w1_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(18),
      Q => gauss8_return4(3),
      R => '0'
    );
\w1_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(19),
      Q => gauss8_return4(4),
      R => '0'
    );
\w1_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(1),
      Q => \w1_reg_n_0_[2][1]\,
      R => '0'
    );
\w1_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(20),
      Q => gauss8_return4(5),
      R => '0'
    );
\w1_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(21),
      Q => gauss8_return4(6),
      R => '0'
    );
\w1_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(22),
      Q => gauss8_return4(7),
      R => '0'
    );
\w1_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(23),
      Q => gauss8_return4(8),
      R => '0'
    );
\w1_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(2),
      Q => \w1_reg_n_0_[2][2]\,
      R => '0'
    );
\w1_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(3),
      Q => \w1_reg_n_0_[2][3]\,
      R => '0'
    );
\w1_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(4),
      Q => \w1_reg_n_0_[2][4]\,
      R => '0'
    );
\w1_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(5),
      Q => \w1_reg_n_0_[2][5]\,
      R => '0'
    );
\w1_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(6),
      Q => \w1_reg_n_0_[2][6]\,
      R => '0'
    );
\w1_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(7),
      Q => \w1_reg_n_0_[2][7]\,
      R => '0'
    );
\w1_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(8),
      Q => \w1_reg_n_0_[2][8]\,
      R => '0'
    );
\w1_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(9),
      Q => \w1_reg_n_0_[2][9]\,
      R => '0'
    );
\w2[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(0),
      I1 => q0(0),
      I2 => p1_ccy(0),
      I3 => t2_d(0),
      I4 => p1_t2buf,
      O => t2_val(0)
    );
\w2[2][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(10),
      I1 => q0(10),
      I2 => p1_ccy(0),
      I3 => t2_d(10),
      I4 => p1_t2buf,
      O => t2_val(10)
    );
\w2[2][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(11),
      I1 => q0(11),
      I2 => p1_ccy(0),
      I3 => t2_d(11),
      I4 => p1_t2buf,
      O => t2_val(11)
    );
\w2[2][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(12),
      I1 => q0(12),
      I2 => p1_ccy(0),
      I3 => t2_d(12),
      I4 => p1_t2buf,
      O => t2_val(12)
    );
\w2[2][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(13),
      I1 => q0(13),
      I2 => p1_ccy(0),
      I3 => t2_d(13),
      I4 => p1_t2buf,
      O => t2_val(13)
    );
\w2[2][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(14),
      I1 => q0(14),
      I2 => p1_ccy(0),
      I3 => t2_d(14),
      I4 => p1_t2buf,
      O => t2_val(14)
    );
\w2[2][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(15),
      I1 => q0(15),
      I2 => p1_ccy(0),
      I3 => t2_d(15),
      I4 => p1_t2buf,
      O => t2_val(15)
    );
\w2[2][16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(16),
      I1 => q0(16),
      I2 => p1_ccy(0),
      I3 => t2_d(16),
      I4 => p1_t2buf,
      O => t2_val(16)
    );
\w2[2][17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(17),
      I1 => q0(17),
      I2 => p1_ccy(0),
      I3 => t2_d(17),
      I4 => p1_t2buf,
      O => t2_val(17)
    );
\w2[2][18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(18),
      I1 => q0(18),
      I2 => p1_ccy(0),
      I3 => t2_d(18),
      I4 => p1_t2buf,
      O => t2_val(18)
    );
\w2[2][19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(19),
      I1 => q0(19),
      I2 => p1_ccy(0),
      I3 => t2_d(19),
      I4 => p1_t2buf,
      O => t2_val(19)
    );
\w2[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(1),
      I1 => q0(1),
      I2 => p1_ccy(0),
      I3 => t2_d(1),
      I4 => p1_t2buf,
      O => t2_val(1)
    );
\w2[2][20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(20),
      I1 => q0(20),
      I2 => p1_ccy(0),
      I3 => t2_d(20),
      I4 => p1_t2buf,
      O => t2_val(20)
    );
\w2[2][21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(21),
      I1 => q0(21),
      I2 => p1_ccy(0),
      I3 => t2_d(21),
      I4 => p1_t2buf,
      O => t2_val(21)
    );
\w2[2][22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(22),
      I1 => q0(22),
      I2 => p1_ccy(0),
      I3 => t2_d(22),
      I4 => p1_t2buf,
      O => t2_val(22)
    );
\w2[2][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(23),
      I1 => q0(23),
      I2 => p1_ccy(0),
      I3 => t2_d(23),
      I4 => p1_t2buf,
      O => t2_val(23)
    );
\w2[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(2),
      I1 => q0(2),
      I2 => p1_ccy(0),
      I3 => t2_d(2),
      I4 => p1_t2buf,
      O => t2_val(2)
    );
\w2[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(3),
      I1 => q0(3),
      I2 => p1_ccy(0),
      I3 => t2_d(3),
      I4 => p1_t2buf,
      O => t2_val(3)
    );
\w2[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(4),
      I1 => q0(4),
      I2 => p1_ccy(0),
      I3 => t2_d(4),
      I4 => p1_t2buf,
      O => t2_val(4)
    );
\w2[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(5),
      I1 => q0(5),
      I2 => p1_ccy(0),
      I3 => t2_d(5),
      I4 => p1_t2buf,
      O => t2_val(5)
    );
\w2[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(6),
      I1 => q0(6),
      I2 => p1_ccy(0),
      I3 => t2_d(6),
      I4 => p1_t2buf,
      O => t2_val(6)
    );
\w2[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(7),
      I1 => q0(7),
      I2 => p1_ccy(0),
      I3 => t2_d(7),
      I4 => p1_t2buf,
      O => t2_val(7)
    );
\w2[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(8),
      I1 => q0(8),
      I2 => p1_ccy(0),
      I3 => t2_d(8),
      I4 => p1_t2buf,
      O => t2_val(8)
    );
\w2[2][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(9),
      I1 => q0(9),
      I2 => p1_ccy(0),
      I3 => t2_d(9),
      I4 => p1_t2buf,
      O => t2_val(9)
    );
\w2_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][0]\,
      Q => \w2_reg[0]\(0),
      R => '0'
    );
\w2_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][10]\,
      Q => \w2_reg[0]\(10),
      R => '0'
    );
\w2_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][11]\,
      Q => \w2_reg[0]\(11),
      R => '0'
    );
\w2_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][12]\,
      Q => \w2_reg[0]\(12),
      R => '0'
    );
\w2_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][13]\,
      Q => \w2_reg[0]\(13),
      R => '0'
    );
\w2_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][14]\,
      Q => \w2_reg[0]\(14),
      R => '0'
    );
\w2_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][15]\,
      Q => \w2_reg[0]\(15),
      R => '0'
    );
\w2_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(1),
      Q => \w2_reg[0]\(16),
      R => '0'
    );
\w2_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(2),
      Q => \w2_reg[0]\(17),
      R => '0'
    );
\w2_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(3),
      Q => \w2_reg[0]\(18),
      R => '0'
    );
\w2_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(4),
      Q => \w2_reg[0]\(19),
      R => '0'
    );
\w2_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][1]\,
      Q => \w2_reg[0]\(1),
      R => '0'
    );
\w2_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(5),
      Q => \w2_reg[0]\(20),
      R => '0'
    );
\w2_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(6),
      Q => \w2_reg[0]\(21),
      R => '0'
    );
\w2_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(7),
      Q => \w2_reg[0]\(22),
      R => '0'
    );
\w2_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => gauss8_return2(8),
      Q => \w2_reg[0]\(23),
      R => '0'
    );
\w2_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][2]\,
      Q => \w2_reg[0]\(2),
      R => '0'
    );
\w2_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][3]\,
      Q => \w2_reg[0]\(3),
      R => '0'
    );
\w2_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][4]\,
      Q => \w2_reg[0]\(4),
      R => '0'
    );
\w2_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][5]\,
      Q => \w2_reg[0]\(5),
      R => '0'
    );
\w2_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][6]\,
      Q => \w2_reg[0]\(6),
      R => '0'
    );
\w2_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][7]\,
      Q => \w2_reg[0]\(7),
      R => '0'
    );
\w2_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][8]\,
      Q => \w2_reg[0]\(8),
      R => '0'
    );
\w2_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[1][9]\,
      Q => \w2_reg[0]\(9),
      R => '0'
    );
\w2_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][0]\,
      Q => \w2_reg_n_0_[1][0]\,
      R => '0'
    );
\w2_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(2),
      Q => \w2_reg_n_0_[1][10]\,
      R => '0'
    );
\w2_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(3),
      Q => \w2_reg_n_0_[1][11]\,
      R => '0'
    );
\w2_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(4),
      Q => \w2_reg_n_0_[1][12]\,
      R => '0'
    );
\w2_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(5),
      Q => \w2_reg_n_0_[1][13]\,
      R => '0'
    );
\w2_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(6),
      Q => \w2_reg_n_0_[1][14]\,
      R => '0'
    );
\w2_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(7),
      Q => \w2_reg_n_0_[1][15]\,
      R => '0'
    );
\w2_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][16]\,
      Q => gauss8_return2(1),
      R => '0'
    );
\w2_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][17]\,
      Q => gauss8_return2(2),
      R => '0'
    );
\w2_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][18]\,
      Q => gauss8_return2(3),
      R => '0'
    );
\w2_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][19]\,
      Q => gauss8_return2(4),
      R => '0'
    );
\w2_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][1]\,
      Q => \w2_reg_n_0_[1][1]\,
      R => '0'
    );
\w2_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][20]\,
      Q => gauss8_return2(5),
      R => '0'
    );
\w2_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][21]\,
      Q => gauss8_return2(6),
      R => '0'
    );
\w2_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][22]\,
      Q => gauss8_return2(7),
      R => '0'
    );
\w2_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][23]\,
      Q => gauss8_return2(8),
      R => '0'
    );
\w2_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][2]\,
      Q => \w2_reg_n_0_[1][2]\,
      R => '0'
    );
\w2_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][3]\,
      Q => \w2_reg_n_0_[1][3]\,
      R => '0'
    );
\w2_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][4]\,
      Q => \w2_reg_n_0_[1][4]\,
      R => '0'
    );
\w2_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][5]\,
      Q => \w2_reg_n_0_[1][5]\,
      R => '0'
    );
\w2_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][6]\,
      Q => \w2_reg_n_0_[1][6]\,
      R => '0'
    );
\w2_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg_n_0_[2][7]\,
      Q => \w2_reg_n_0_[1][7]\,
      R => '0'
    );
\w2_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(0),
      Q => \w2_reg_n_0_[1][8]\,
      R => '0'
    );
\w2_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => br(1),
      Q => \w2_reg_n_0_[1][9]\,
      R => '0'
    );
\w2_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(0),
      Q => \w2_reg_n_0_[2][0]\,
      R => '0'
    );
\w2_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(10),
      Q => br(2),
      R => '0'
    );
\w2_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(11),
      Q => br(3),
      R => '0'
    );
\w2_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(12),
      Q => br(4),
      R => '0'
    );
\w2_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(13),
      Q => br(5),
      R => '0'
    );
\w2_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(14),
      Q => br(6),
      R => '0'
    );
\w2_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(15),
      Q => br(7),
      R => '0'
    );
\w2_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(16),
      Q => \w2_reg_n_0_[2][16]\,
      R => '0'
    );
\w2_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(17),
      Q => \w2_reg_n_0_[2][17]\,
      R => '0'
    );
\w2_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(18),
      Q => \w2_reg_n_0_[2][18]\,
      R => '0'
    );
\w2_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(19),
      Q => \w2_reg_n_0_[2][19]\,
      R => '0'
    );
\w2_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(1),
      Q => \w2_reg_n_0_[2][1]\,
      R => '0'
    );
\w2_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(20),
      Q => \w2_reg_n_0_[2][20]\,
      R => '0'
    );
\w2_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(21),
      Q => \w2_reg_n_0_[2][21]\,
      R => '0'
    );
\w2_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(22),
      Q => \w2_reg_n_0_[2][22]\,
      R => '0'
    );
\w2_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(23),
      Q => \w2_reg_n_0_[2][23]\,
      R => '0'
    );
\w2_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(2),
      Q => \w2_reg_n_0_[2][2]\,
      R => '0'
    );
\w2_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(3),
      Q => \w2_reg_n_0_[2][3]\,
      R => '0'
    );
\w2_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(4),
      Q => \w2_reg_n_0_[2][4]\,
      R => '0'
    );
\w2_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(5),
      Q => \w2_reg_n_0_[2][5]\,
      R => '0'
    );
\w2_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(6),
      Q => \w2_reg_n_0_[2][6]\,
      R => '0'
    );
\w2_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(7),
      Q => \w2_reg_n_0_[2][7]\,
      R => '0'
    );
\w2_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(8),
      Q => br(0),
      R => '0'
    );
\w2_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(9),
      Q => br(1),
      R => '0'
    );
\wp0_a[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \x_in_reg_n_0_[0]\,
      O => wr_addr_now(0)
    );
\wp0_a[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \x_in_reg_n_0_[1]\,
      O => wr_addr_now(1)
    );
\wp0_a[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \x_in_reg_n_0_[2]\,
      O => wr_addr_now(2)
    );
\wp0_a[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \x_in_reg_n_0_[3]\,
      O => wr_addr_now(3)
    );
\wp0_a[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \x_in_reg_n_0_[4]\,
      O => wr_addr_now(4)
    );
\wp0_a[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \x_in_reg_n_0_[5]\,
      O => wr_addr_now(5)
    );
\wp0_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wr_addr_now(0),
      Q => wp0_a(0),
      R => '0'
    );
\wp0_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wr_addr_now(1),
      Q => wp0_a(1),
      R => '0'
    );
\wp0_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wr_addr_now(2),
      Q => wp0_a(2),
      R => '0'
    );
\wp0_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wr_addr_now(3),
      Q => wp0_a(3),
      R => '0'
    );
\wp0_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wr_addr_now(4),
      Q => wp0_a(4),
      R => '0'
    );
\wp0_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wr_addr_now(5),
      Q => wp0_a(5),
      R => '0'
    );
\wp0_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => wp0_d(0),
      R => '0'
    );
\wp0_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(10),
      Q => wp0_d(10),
      R => '0'
    );
\wp0_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(11),
      Q => wp0_d(11),
      R => '0'
    );
\wp0_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(12),
      Q => wp0_d(12),
      R => '0'
    );
\wp0_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(13),
      Q => wp0_d(13),
      R => '0'
    );
\wp0_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(14),
      Q => wp0_d(14),
      R => '0'
    );
\wp0_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(15),
      Q => wp0_d(15),
      R => '0'
    );
\wp0_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(16),
      Q => wp0_d(16),
      R => '0'
    );
\wp0_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(17),
      Q => wp0_d(17),
      R => '0'
    );
\wp0_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(18),
      Q => wp0_d(18),
      R => '0'
    );
\wp0_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(19),
      Q => wp0_d(19),
      R => '0'
    );
\wp0_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => wp0_d(1),
      R => '0'
    );
\wp0_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(20),
      Q => wp0_d(20),
      R => '0'
    );
\wp0_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(21),
      Q => wp0_d(21),
      R => '0'
    );
\wp0_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(22),
      Q => wp0_d(22),
      R => '0'
    );
\wp0_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(23),
      Q => wp0_d(23),
      R => '0'
    );
\wp0_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => wp0_d(2),
      R => '0'
    );
\wp0_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => wp0_d(3),
      R => '0'
    );
\wp0_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => wp0_d(4),
      R => '0'
    );
\wp0_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => wp0_d(5),
      R => '0'
    );
\wp0_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => wp0_d(6),
      R => '0'
    );
\wp0_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => wp0_d(7),
      R => '0'
    );
\wp0_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(8),
      Q => wp0_d(8),
      R => '0'
    );
\wp0_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(9),
      Q => wp0_d(9),
      R => '0'
    );
wp0_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE00FEFEFE00"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => wp0_s_i_2_n_0,
      I3 => wp0_s,
      I4 => \m_axis_tdata[23]_i_2_n_0\,
      I5 => \cy_reg_n_0_[0]\,
      O => wp0_s_i_1_n_0
    );
wp0_s_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      O => wp0_s_i_2_n_0
    );
wp0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wp0_s_i_1_n_0,
      Q => wp0_s,
      R => '0'
    );
wp0_v_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => need_input,
      Q => wp0_v,
      R => p_0_in
    );
\wp1_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_a(0),
      Q => wp1_a(0),
      R => '0'
    );
\wp1_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_a(1),
      Q => wp1_a(1),
      R => '0'
    );
\wp1_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_a(2),
      Q => wp1_a(2),
      R => '0'
    );
\wp1_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_a(3),
      Q => wp1_a(3),
      R => '0'
    );
\wp1_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_a(4),
      Q => wp1_a(4),
      R => '0'
    );
\wp1_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_a(5),
      Q => wp1_a(5),
      R => '0'
    );
\wp1_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(0),
      Q => wp1_d(0),
      R => '0'
    );
\wp1_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(10),
      Q => wp1_d(10),
      R => '0'
    );
\wp1_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(11),
      Q => wp1_d(11),
      R => '0'
    );
\wp1_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(12),
      Q => wp1_d(12),
      R => '0'
    );
\wp1_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(13),
      Q => wp1_d(13),
      R => '0'
    );
\wp1_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(14),
      Q => wp1_d(14),
      R => '0'
    );
\wp1_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(15),
      Q => wp1_d(15),
      R => '0'
    );
\wp1_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(16),
      Q => wp1_d(16),
      R => '0'
    );
\wp1_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(17),
      Q => wp1_d(17),
      R => '0'
    );
\wp1_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(18),
      Q => wp1_d(18),
      R => '0'
    );
\wp1_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(19),
      Q => wp1_d(19),
      R => '0'
    );
\wp1_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(1),
      Q => wp1_d(1),
      R => '0'
    );
\wp1_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(20),
      Q => wp1_d(20),
      R => '0'
    );
\wp1_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(21),
      Q => wp1_d(21),
      R => '0'
    );
\wp1_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(22),
      Q => wp1_d(22),
      R => '0'
    );
\wp1_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(23),
      Q => wp1_d(23),
      R => '0'
    );
\wp1_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(2),
      Q => wp1_d(2),
      R => '0'
    );
\wp1_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(3),
      Q => wp1_d(3),
      R => '0'
    );
\wp1_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(4),
      Q => wp1_d(4),
      R => '0'
    );
\wp1_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(5),
      Q => wp1_d(5),
      R => '0'
    );
\wp1_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(6),
      Q => wp1_d(6),
      R => '0'
    );
\wp1_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(7),
      Q => wp1_d(7),
      R => '0'
    );
\wp1_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(8),
      Q => wp1_d(8),
      R => '0'
    );
\wp1_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(9),
      Q => wp1_d(9),
      R => '0'
    );
wp1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_s,
      Q => wp1_s,
      R => '0'
    );
wp1_v_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_v,
      Q => wp1_v,
      R => p_0_in
    );
\x_in[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \x_in_reg_n_0_[0]\,
      O => x_in(0)
    );
\x_in[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(10),
      O => x_in(10)
    );
\x_in[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => m_axis_tready,
      I4 => s_axis_tvalid,
      O => \x_in[11]_i_1_n_0\
    );
\x_in[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(11),
      O => x_in(11)
    );
\x_in[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(1),
      O => x_in(1)
    );
\x_in[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(2),
      O => x_in(2)
    );
\x_in[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(3),
      O => x_in(3)
    );
\x_in[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(4),
      O => x_in(4)
    );
\x_in[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(5),
      O => x_in(5)
    );
\x_in[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(6),
      O => x_in(6)
    );
\x_in[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(7),
      O => x_in(7)
    );
\x_in[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(8),
      O => x_in(8)
    );
\x_in[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => data0(9),
      O => x_in(9)
    );
\x_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(0),
      Q => \x_in_reg_n_0_[0]\,
      R => p_0_in
    );
\x_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(10),
      Q => \x_in_reg_n_0_[10]\,
      R => p_0_in
    );
\x_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(11),
      Q => \x_in_reg_n_0_[11]\,
      R => p_0_in
    );
\x_in_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_in_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_x_in_reg[11]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \x_in_reg[11]_i_3_n_2\,
      CO(0) => \x_in_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_x_in_reg[11]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2) => \x_in_reg_n_0_[11]\,
      S(1) => \x_in_reg_n_0_[10]\,
      S(0) => \x_in_reg_n_0_[9]\
    );
\x_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(1),
      Q => \x_in_reg_n_0_[1]\,
      R => p_0_in
    );
\x_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(2),
      Q => \x_in_reg_n_0_[2]\,
      R => p_0_in
    );
\x_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(3),
      Q => \x_in_reg_n_0_[3]\,
      R => p_0_in
    );
\x_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(4),
      Q => \x_in_reg_n_0_[4]\,
      R => p_0_in
    );
\x_in_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_in_reg[4]_i_2_n_0\,
      CO(2) => \x_in_reg[4]_i_2_n_1\,
      CO(1) => \x_in_reg[4]_i_2_n_2\,
      CO(0) => \x_in_reg[4]_i_2_n_3\,
      CYINIT => \x_in_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \x_in_reg_n_0_[4]\,
      S(2) => \x_in_reg_n_0_[3]\,
      S(1) => \x_in_reg_n_0_[2]\,
      S(0) => \x_in_reg_n_0_[1]\
    );
\x_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(5),
      Q => \x_in_reg_n_0_[5]\,
      R => p_0_in
    );
\x_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(6),
      Q => \x_in_reg_n_0_[6]\,
      R => p_0_in
    );
\x_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(7),
      Q => \x_in_reg_n_0_[7]\,
      R => p_0_in
    );
\x_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(8),
      Q => \x_in_reg_n_0_[8]\,
      R => p_0_in
    );
\x_in_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_in_reg[4]_i_2_n_0\,
      CO(3) => \x_in_reg[8]_i_2_n_0\,
      CO(2) => \x_in_reg[8]_i_2_n_1\,
      CO(1) => \x_in_reg[8]_i_2_n_2\,
      CO(0) => \x_in_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \x_in_reg_n_0_[8]\,
      S(2) => \x_in_reg_n_0_[7]\,
      S(1) => \x_in_reg_n_0_[6]\,
      S(0) => \x_in_reg_n_0_[5]\
    );
\x_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \x_in[11]_i_1_n_0\,
      D => x_in(9),
      Q => \x_in_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_gaussian_0_0 is
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
  attribute NotValidForBitStream of image_block_axis_gaussian_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axis_gaussian_0_0 : entity is "image_block_axis_gaussian_0_0,axis_gaussian,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axis_gaussian_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axis_gaussian_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axis_gaussian_0_0 : entity is "axis_gaussian,Vivado 2025.2";
end image_block_axis_gaussian_0_0;

architecture STRUCTURE of image_block_axis_gaussian_0_0 is
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
inst: entity work.image_block_axis_gaussian_0_0_axis_gaussian
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
