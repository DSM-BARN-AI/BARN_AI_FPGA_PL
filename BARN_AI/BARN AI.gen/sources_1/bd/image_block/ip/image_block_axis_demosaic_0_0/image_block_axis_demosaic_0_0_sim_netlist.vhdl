-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jul 25 13:36:50 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axis_demosaic_0_0/image_block_axis_demosaic_0_0_sim_netlist.vhdl}
-- Design      : image_block_axis_demosaic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_demosaic_0_0_axis_demosaic is
  port (
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axis_demosaic_0_0_axis_demosaic : entity is "axis_demosaic";
end image_block_axis_demosaic_0_0_axis_demosaic;

architecture STRUCTURE of image_block_axis_demosaic_0_0_axis_demosaic is
  signal L0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \L0__0\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal L2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buf0_reg_0_63_0_2_i_8_n_0 : STD_LOGIC;
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
  signal cross : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cvalid_f : STD_LOGIC;
  signal \cy[0]_i_1_n_0\ : STD_LOGIC;
  signal \cy[10]_i_1_n_0\ : STD_LOGIC;
  signal \cy[11]_i_1_n_0\ : STD_LOGIC;
  signal \cy[11]_i_2_n_0\ : STD_LOGIC;
  signal \cy[11]_i_3_n_0\ : STD_LOGIC;
  signal \cy[11]_i_5_n_0\ : STD_LOGIC;
  signal \cy[1]_i_1_n_0\ : STD_LOGIC;
  signal \cy[2]_i_1_n_0\ : STD_LOGIC;
  signal \cy[3]_i_1_n_0\ : STD_LOGIC;
  signal \cy[4]_i_1_n_0\ : STD_LOGIC;
  signal \cy[5]_i_1_n_0\ : STD_LOGIC;
  signal \cy[6]_i_1_n_0\ : STD_LOGIC;
  signal \cy[7]_i_1_n_0\ : STD_LOGIC;
  signal \cy[8]_i_1_n_0\ : STD_LOGIC;
  signal \cy[9]_i_1_n_0\ : STD_LOGIC;
  signal \cy_reg[11]_i_4_n_2\ : STD_LOGIC;
  signal \cy_reg[11]_i_4_n_3\ : STD_LOGIC;
  signal \cy_reg[11]_i_4_n_5\ : STD_LOGIC;
  signal \cy_reg[11]_i_4_n_6\ : STD_LOGIC;
  signal \cy_reg[11]_i_4_n_7\ : STD_LOGIC;
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
  signal diag : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \fc[0]_i_1_n_0\ : STD_LOGIC;
  signal \fc[11]_i_1_n_0\ : STD_LOGIC;
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
  signal \flush_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \lc__5\ : STD_LOGIC;
  signal lr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \m_axis_tdata[18]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_2_n_7\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_3_n_1\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_3_n_2\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_3_n_1\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_3_n_2\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_3_n_3\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser0 : STD_LOGIC;
  signal m_axis_tuser_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_4_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_5_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal need_input : STD_LOGIC;
  signal p1_ccx : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p1_ccx[0]_i_1_n_0\ : STD_LOGIC;
  signal p1_ccy : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal p1_cvalid : STD_LOGIC;
  signal p1_cvalid_i_2_n_0 : STD_LOGIC;
  signal p1_rpar : STD_LOGIC;
  signal p1_t0cur : STD_LOGIC;
  signal p1_t0cur_i_2_n_0 : STD_LOGIC;
  signal p1_t2buf : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[10]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[11]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[1]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[2]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[3]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[4]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[5]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[6]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[7]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[8]\ : STD_LOGIC;
  signal \p2_ccx_reg_n_0_[9]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[10]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[11]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[1]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[2]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[3]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[4]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[5]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[6]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[7]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[8]\ : STD_LOGIC;
  signal \p2_ccy_reg_n_0_[9]\ : STD_LOGIC;
  signal p2_cvalid : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__1\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal p_2_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q00 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_5_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_n_1\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_n_2\ : STD_LOGIC;
  signal \sum_cross__0_carry__0_n_3\ : STD_LOGIC;
  signal \sum_cross__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_n_0\ : STD_LOGIC;
  signal \sum_cross__0_carry_n_1\ : STD_LOGIC;
  signal \sum_cross__0_carry_n_2\ : STD_LOGIC;
  signal \sum_cross__0_carry_n_3\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_n_1\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_n_2\ : STD_LOGIC;
  signal \sum_diag__2_carry__0_n_3\ : STD_LOGIC;
  signal \sum_diag__2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_10_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_12_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_13_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_16_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_1_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_2_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_3_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_4_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_5_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_6_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_7_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_8_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_i_9_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_n_0\ : STD_LOGIC;
  signal \sum_diag__2_carry_n_1\ : STD_LOGIC;
  signal \sum_diag__2_carry_n_2\ : STD_LOGIC;
  signal \sum_diag__2_carry_n_3\ : STD_LOGIC;
  signal t0_from_cur_f : STD_LOGIC;
  signal t0_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t1_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_d_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal t2_from_buf_f : STD_LOGIC;
  signal t2_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ud : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w0_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w0_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w0_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w1_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w1_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w1_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w2_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w2_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w2_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wp0_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wp0_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wp0_s : STD_LOGIC;
  signal wp0_s_i_1_n_0 : STD_LOGIC;
  signal wp0_v : STD_LOGIC;
  signal wp1_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wp1_d : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal NLW_buf0_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_buf0_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_buf0_reg_0_63_6_7_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_buf0_reg_0_63_6_7_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_buf1_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_buf1_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_buf1_reg_0_63_6_7_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_buf1_reg_0_63_6_7_DOD_UNCONNECTED : STD_LOGIC;
  signal \NLW_ccx_f_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ccx_f_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cy_reg[11]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cy_reg[11]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_fc0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_fc0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m_axis_tdata_reg[18]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_m_axis_tdata_reg[23]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_m_axis_tdata_reg[23]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_cross__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sum_cross__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_cross__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_cross__0_carry__1_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_cross__0_carry__1_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_diag__2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sum_diag__2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_diag__2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_x_in_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_in_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of buf0_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of buf0_reg_0_63_0_2 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of buf0_reg_0_63_0_2 : label is "image_block_axis_demosaic_0_0/inst/buf0_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of buf0_reg_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of buf0_reg_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of buf0_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of buf0_reg_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of buf0_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of buf0_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of buf0_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of buf0_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of buf0_reg_0_63_3_5 : label is 512;
  attribute RTL_RAM_NAME of buf0_reg_0_63_3_5 : label is "image_block_axis_demosaic_0_0/inst/buf0_reg";
  attribute RTL_RAM_STYLE of buf0_reg_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of buf0_reg_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of buf0_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of buf0_reg_0_63_3_5 : label is 63;
  attribute ram_offset of buf0_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of buf0_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of buf0_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of buf0_reg_0_63_6_7 : label is "";
  attribute RTL_RAM_BITS of buf0_reg_0_63_6_7 : label is 512;
  attribute RTL_RAM_NAME of buf0_reg_0_63_6_7 : label is "image_block_axis_demosaic_0_0/inst/buf0_reg";
  attribute RTL_RAM_STYLE of buf0_reg_0_63_6_7 : label is "auto";
  attribute RTL_RAM_TYPE of buf0_reg_0_63_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of buf0_reg_0_63_6_7 : label is 0;
  attribute ram_addr_end of buf0_reg_0_63_6_7 : label is 63;
  attribute ram_offset of buf0_reg_0_63_6_7 : label is 0;
  attribute ram_slice_begin of buf0_reg_0_63_6_7 : label is 6;
  attribute ram_slice_end of buf0_reg_0_63_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of buf1_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of buf1_reg_0_63_0_2 : label is 512;
  attribute RTL_RAM_NAME of buf1_reg_0_63_0_2 : label is "image_block_axis_demosaic_0_0/inst/buf1_reg";
  attribute RTL_RAM_STYLE of buf1_reg_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of buf1_reg_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of buf1_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end of buf1_reg_0_63_0_2 : label is 63;
  attribute ram_offset of buf1_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin of buf1_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end of buf1_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of buf1_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of buf1_reg_0_63_3_5 : label is 512;
  attribute RTL_RAM_NAME of buf1_reg_0_63_3_5 : label is "image_block_axis_demosaic_0_0/inst/buf1_reg";
  attribute RTL_RAM_STYLE of buf1_reg_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of buf1_reg_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of buf1_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of buf1_reg_0_63_3_5 : label is 63;
  attribute ram_offset of buf1_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of buf1_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of buf1_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of buf1_reg_0_63_6_7 : label is "";
  attribute RTL_RAM_BITS of buf1_reg_0_63_6_7 : label is 512;
  attribute RTL_RAM_NAME of buf1_reg_0_63_6_7 : label is "image_block_axis_demosaic_0_0/inst/buf1_reg";
  attribute RTL_RAM_STYLE of buf1_reg_0_63_6_7 : label is "auto";
  attribute RTL_RAM_TYPE of buf1_reg_0_63_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of buf1_reg_0_63_6_7 : label is 0;
  attribute ram_addr_end of buf1_reg_0_63_6_7 : label is 63;
  attribute ram_offset of buf1_reg_0_63_6_7 : label is 0;
  attribute ram_slice_begin of buf1_reg_0_63_6_7 : label is 6;
  attribute ram_slice_end of buf1_reg_0_63_6_7 : label is 7;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ccx_f_carry : label is 35;
  attribute ADDER_THRESHOLD of \ccx_f_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ccx_f_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cy_reg[11]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \cy_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cy_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of fc0_carry : label is 35;
  attribute ADDER_THRESHOLD of \fc0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \fc0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fc[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fc[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fc[11]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fc[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \fc[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \fc[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fc[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fc[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fc[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fc[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fc[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fc[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \flush_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \flush_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \p1_ccx[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of p1_t2buf_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_5 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair0";
  attribute HLUTNM : string;
  attribute HLUTNM of \sum_cross__0_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \sum_cross__0_carry__0_i_4\ : label is "lutpair3";
  attribute HLUTNM of \sum_cross__0_carry__0_i_6\ : label is "lutpair4";
  attribute HLUTNM of \sum_cross__0_carry_i_1\ : label is "lutpair2";
  attribute HLUTNM of \sum_cross__0_carry_i_2\ : label is "lutpair1";
  attribute HLUTNM of \sum_cross__0_carry_i_3\ : label is "lutpair0";
  attribute HLUTNM of \sum_cross__0_carry_i_4\ : label is "lutpair3";
  attribute HLUTNM of \sum_cross__0_carry_i_5\ : label is "lutpair2";
  attribute HLUTNM of \sum_cross__0_carry_i_6\ : label is "lutpair1";
  attribute HLUTNM of \sum_cross__0_carry_i_7\ : label is "lutpair0";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_15\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_16\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__0_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__1_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sum_diag__2_carry__1_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_14\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_15\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_16\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_17\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sum_diag__2_carry_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w1[2][0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w1[2][1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w1[2][2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w1[2][3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w1[2][4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \w1[2][5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w1[2][6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \w1[2][7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \w2[2][0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2[2][1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w2[2][2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w2[2][3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w2[2][4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \w2[2][5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w2[2][6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \w2[2][7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wp0_a[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of wp0_v_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \x_in[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \x_in[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \x_in[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_in[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_in[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \x_in[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \x_in[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \x_in[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \x_in[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \x_in[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \x_in[9]_i_1\ : label is "soft_lutpair33";
  attribute ADDER_THRESHOLD of \x_in_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \x_in_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \x_in_reg[8]_i_2\ : label is 35;
begin
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
buf0_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => rd_addr(5 downto 0),
      ADDRB(5 downto 0) => rd_addr(5 downto 0),
      ADDRC(5 downto 0) => rd_addr(5 downto 0),
      ADDRD(5 downto 0) => wp1_a(5 downto 0),
      DIA => wp1_d(0),
      DIB => wp1_d(1),
      DIC => wp1_d(2),
      DID => '0',
      DOA => q00(0),
      DOB => q00(1),
      DOC => q00(2),
      DOD => NLW_buf0_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => aclk,
      WE => \p_0_in__1\
    );
buf0_reg_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wp1_s,
      I1 => \m_axis_tdata[23]_i_2_n_0\,
      I2 => wp1_v,
      O => \p_0_in__1\
    );
buf0_reg_0_63_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => buf0_reg_0_63_0_2_i_8_n_0,
      I2 => \fc_reg_n_0_[5]\,
      O => rd_addr(5)
    );
buf0_reg_0_63_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \fc_reg_n_0_[4]\,
      I1 => s_axis_tready_INST_0_i_2_n_0,
      O => rd_addr(4)
    );
buf0_reg_0_63_0_2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => buf0_reg_0_63_0_2_i_8_n_0,
      I2 => \fc_reg_n_0_[3]\,
      O => rd_addr(3)
    );
buf0_reg_0_63_0_2_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => buf0_reg_0_63_0_2_i_8_n_0,
      I2 => \fc_reg_n_0_[2]\,
      O => rd_addr(2)
    );
buf0_reg_0_63_0_2_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => buf0_reg_0_63_0_2_i_8_n_0,
      I2 => \fc_reg_n_0_[1]\,
      O => rd_addr(1)
    );
buf0_reg_0_63_0_2_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => buf0_reg_0_63_0_2_i_8_n_0,
      I2 => \fc_reg_n_0_[0]\,
      O => rd_addr(0)
    );
buf0_reg_0_63_0_2_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fc_reg_n_0_[2]\,
      I1 => \fc_reg_n_0_[3]\,
      I2 => \fc_reg_n_0_[4]\,
      I3 => \fc_reg_n_0_[5]\,
      I4 => \fc_reg_n_0_[0]\,
      I5 => \fc_reg_n_0_[1]\,
      O => buf0_reg_0_63_0_2_i_8_n_0
    );
buf0_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => rd_addr(5 downto 0),
      ADDRB(5 downto 0) => rd_addr(5 downto 0),
      ADDRC(5 downto 0) => rd_addr(5 downto 0),
      ADDRD(5 downto 0) => wp1_a(5 downto 0),
      DIA => wp1_d(3),
      DIB => wp1_d(4),
      DIC => wp1_d(5),
      DID => '0',
      DOA => q00(3),
      DOB => q00(4),
      DOC => q00(5),
      DOD => NLW_buf0_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => aclk,
      WE => \p_0_in__1\
    );
buf0_reg_0_63_6_7: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => rd_addr(5 downto 0),
      ADDRB(5 downto 0) => rd_addr(5 downto 0),
      ADDRC(5 downto 0) => rd_addr(5 downto 0),
      ADDRD(5 downto 0) => wp1_a(5 downto 0),
      DIA => wp1_d(6),
      DIB => wp1_d(7),
      DIC => '0',
      DID => '0',
      DOA => q00(6),
      DOB => q00(7),
      DOC => NLW_buf0_reg_0_63_6_7_DOC_UNCONNECTED,
      DOD => NLW_buf0_reg_0_63_6_7_DOD_UNCONNECTED,
      WCLK => aclk,
      WE => \p_0_in__1\
    );
buf1_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => rd_addr(5 downto 0),
      ADDRB(5 downto 0) => rd_addr(5 downto 0),
      ADDRC(5 downto 0) => rd_addr(5 downto 0),
      ADDRD(5 downto 0) => wp1_a(5 downto 0),
      DIA => wp1_d(0),
      DIB => wp1_d(1),
      DIC => wp1_d(2),
      DID => '0',
      DOA => q10(0),
      DOB => q10(1),
      DOC => q10(2),
      DOD => NLW_buf1_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => aclk,
      WE => \p_0_in__2\
    );
buf1_reg_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wp1_s,
      I1 => \m_axis_tdata[23]_i_2_n_0\,
      I2 => wp1_v,
      O => \p_0_in__2\
    );
buf1_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => rd_addr(5 downto 0),
      ADDRB(5 downto 0) => rd_addr(5 downto 0),
      ADDRC(5 downto 0) => rd_addr(5 downto 0),
      ADDRD(5 downto 0) => wp1_a(5 downto 0),
      DIA => wp1_d(3),
      DIB => wp1_d(4),
      DIC => wp1_d(5),
      DID => '0',
      DOA => q10(3),
      DOB => q10(4),
      DOC => q10(5),
      DOD => NLW_buf1_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => aclk,
      WE => \p_0_in__2\
    );
buf1_reg_0_63_6_7: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => rd_addr(5 downto 0),
      ADDRB(5 downto 0) => rd_addr(5 downto 0),
      ADDRC(5 downto 0) => rd_addr(5 downto 0),
      ADDRD(5 downto 0) => wp1_a(5 downto 0),
      DIA => wp1_d(6),
      DIB => wp1_d(7),
      DIC => '0',
      DID => '0',
      DOA => q10(6),
      DOB => q10(7),
      DOC => NLW_buf1_reg_0_63_6_7_DOC_UNCONNECTED,
      DOD => NLW_buf1_reg_0_63_6_7_DOD_UNCONNECTED,
      WCLK => aclk,
      WE => \p_0_in__2\
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
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[11]_i_4_n_6\,
      O => \cy[10]_i_1_n_0\
    );
\cy[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B080000"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state[0]_i_2_n_0\,
      I4 => \m_axis_tdata[23]_i_2_n_0\,
      O => \cy[11]_i_1_n_0\
    );
\cy[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[11]_i_4_n_5\,
      O => \cy[11]_i_2_n_0\
    );
\cy[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \cy[11]_i_5_n_0\,
      I1 => \fc_reg_n_0_[4]\,
      I2 => \fc_reg_n_0_[0]\,
      I3 => \fc_reg_n_0_[6]\,
      I4 => \fc_reg_n_0_[7]\,
      I5 => p1_cvalid_i_2_n_0,
      O => \cy[11]_i_3_n_0\
    );
\cy[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \fc_reg_n_0_[9]\,
      I1 => \fc_reg_n_0_[8]\,
      I2 => \fc_reg_n_0_[11]\,
      I3 => \fc_reg_n_0_[10]\,
      O => \cy[11]_i_5_n_0\
    );
\cy[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_7\,
      O => \cy[1]_i_1_n_0\
    );
\cy[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_6\,
      O => \cy[2]_i_1_n_0\
    );
\cy[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_5\,
      O => \cy[3]_i_1_n_0\
    );
\cy[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[4]_i_2_n_4\,
      O => \cy[4]_i_1_n_0\
    );
\cy[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_7\,
      O => \cy[5]_i_1_n_0\
    );
\cy[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_6\,
      O => \cy[6]_i_1_n_0\
    );
\cy[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_5\,
      O => \cy[7]_i_1_n_0\
    );
\cy[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[8]_i_2_n_4\,
      O => \cy[8]_i_1_n_0\
    );
\cy[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy_reg[11]_i_4_n_7\,
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
\cy_reg[11]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cy_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cy_reg[11]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cy_reg[11]_i_4_n_2\,
      CO(0) => \cy_reg[11]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cy_reg[11]_i_4_O_UNCONNECTED\(3),
      O(2) => \cy_reg[11]_i_4_n_5\,
      O(1) => \cy_reg[11]_i_4_n_6\,
      O(0) => \cy_reg[11]_i_4_n_7\,
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
      INIT => X"04"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc_reg_n_0_[0]\,
      O => \fc[0]_i_1_n_0\
    );
\fc[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__1_n_6\,
      O => p_1_in(10)
    );
\fc[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state[0]_i_2_n_0\,
      I3 => \state_reg_n_0_[1]\,
      O => \fc[11]_i_1_n_0\
    );
\fc[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__1_n_5\,
      O => p_1_in(11)
    );
\fc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => fc0_carry_n_7,
      O => p_1_in(1)
    );
\fc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => fc0_carry_n_6,
      O => p_1_in(2)
    );
\fc[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => fc0_carry_n_5,
      O => p_1_in(3)
    );
\fc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => fc0_carry_n_4,
      O => p_1_in(4)
    );
\fc[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__0_n_7\,
      O => p_1_in(5)
    );
\fc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__0_n_6\,
      O => p_1_in(6)
    );
\fc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__0_n_5\,
      O => p_1_in(7)
    );
\fc[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__0_n_4\,
      O => p_1_in(8)
    );
\fc[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cy[11]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \fc0_carry__1_n_7\,
      O => p_1_in(9)
    );
\fc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \fc[11]_i_1_n_0\,
      D => \fc[0]_i_1_n_0\,
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
\flush_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77085508"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => flush_cnt(1),
      I3 => flush_cnt(0),
      I4 => \state[1]_i_3_n_0\,
      O => \flush_cnt[0]_i_1_n_0\
    );
\flush_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F058D0"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => flush_cnt(1),
      I3 => flush_cnt(0),
      I4 => \state[1]_i_3_n_0\,
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
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(0),
      I1 => diag(0),
      I2 => \w1_reg[1]\(0),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(0),
      O => p_2_out(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(2),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(2),
      O => p_2_out(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(3),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(3),
      O => p_2_out(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(4),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(4),
      O => p_2_out(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(5),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(5),
      O => p_2_out(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(6),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(6),
      O => p_2_out(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(7),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(7),
      O => p_2_out(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(0),
      I1 => \w1_reg[1]\(0),
      I2 => diag(0),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(0),
      O => p_2_out(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(1),
      I1 => \w1_reg[1]\(1),
      I2 => diag(1),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(1),
      O => p_2_out(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(2),
      I1 => \w1_reg[1]\(2),
      I2 => diag(2),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(2),
      O => p_2_out(18)
    );
\m_axis_tdata[18]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(1),
      I1 => \w2_reg[1]\(1),
      O => \m_axis_tdata[18]_i_10_n_0\
    );
\m_axis_tdata[18]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(0),
      I1 => \w2_reg[1]\(0),
      O => \m_axis_tdata[18]_i_11_n_0\
    );
\m_axis_tdata[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(3),
      I2 => \w1_reg[1]\(3),
      I3 => \w1_reg[2]\(3),
      O => \m_axis_tdata[18]_i_4_n_0\
    );
\m_axis_tdata[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(2),
      I2 => \w1_reg[1]\(2),
      I3 => \w1_reg[2]\(2),
      O => \m_axis_tdata[18]_i_5_n_0\
    );
\m_axis_tdata[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(1),
      I2 => \w1_reg[1]\(1),
      I3 => \w1_reg[2]\(1),
      O => \m_axis_tdata[18]_i_6_n_0\
    );
\m_axis_tdata[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(0),
      I2 => \w1_reg[1]\(0),
      I3 => \w1_reg[2]\(0),
      O => \m_axis_tdata[18]_i_7_n_0\
    );
\m_axis_tdata[18]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(3),
      I1 => \w2_reg[1]\(3),
      O => \m_axis_tdata[18]_i_8_n_0\
    );
\m_axis_tdata[18]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(2),
      I1 => \w2_reg[1]\(2),
      O => \m_axis_tdata[18]_i_9_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(3),
      I1 => \w1_reg[1]\(3),
      I2 => diag(3),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(3),
      O => p_2_out(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(1),
      I1 => diag(1),
      I2 => \w1_reg[1]\(1),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(1),
      O => p_2_out(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(4),
      I1 => \w1_reg[1]\(4),
      I2 => diag(4),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(4),
      O => p_2_out(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(5),
      I1 => \w1_reg[1]\(5),
      I2 => diag(5),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(5),
      O => p_2_out(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(6),
      I1 => \w1_reg[1]\(6),
      I2 => diag(6),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(6),
      O => p_2_out(22)
    );
\m_axis_tdata[22]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(5),
      I1 => \w2_reg[1]\(5),
      O => \m_axis_tdata[22]_i_10_n_0\
    );
\m_axis_tdata[22]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(4),
      I1 => \w2_reg[1]\(4),
      O => \m_axis_tdata[22]_i_11_n_0\
    );
\m_axis_tdata[22]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(7),
      I2 => \w1_reg[1]\(7),
      I3 => \w1_reg[2]\(7),
      O => \m_axis_tdata[22]_i_4_n_0\
    );
\m_axis_tdata[22]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(6),
      I2 => \w1_reg[1]\(6),
      I3 => \w1_reg[2]\(6),
      O => \m_axis_tdata[22]_i_5_n_0\
    );
\m_axis_tdata[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(5),
      I2 => \w1_reg[1]\(5),
      I3 => \w1_reg[2]\(5),
      O => \m_axis_tdata[22]_i_6_n_0\
    );
\m_axis_tdata[22]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w1_reg[0]\(4),
      I2 => \w1_reg[1]\(4),
      I3 => \w1_reg[2]\(4),
      O => \m_axis_tdata[22]_i_7_n_0\
    );
\m_axis_tdata[22]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(7),
      I1 => \w2_reg[1]\(7),
      O => \m_axis_tdata[22]_i_8_n_0\
    );
\m_axis_tdata[22]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w0_reg[1]\(6),
      I1 => \w2_reg[1]\(6),
      O => \m_axis_tdata[22]_i_9_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => \^m_axis_tvalid_reg_0\,
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => lr(7),
      I1 => \w1_reg[1]\(7),
      I2 => diag(7),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => ud(7),
      O => p_2_out(23)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(2),
      I1 => diag(2),
      I2 => \w1_reg[1]\(2),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(2),
      O => p_2_out(2)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(3),
      I1 => diag(3),
      I2 => \w1_reg[1]\(3),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(3),
      O => p_2_out(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(4),
      I1 => diag(4),
      I2 => \w1_reg[1]\(4),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(4),
      O => p_2_out(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(5),
      I1 => diag(5),
      I2 => \w1_reg[1]\(5),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(5),
      O => p_2_out(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(6),
      I1 => diag(6),
      I2 => \w1_reg[1]\(6),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(6),
      O => p_2_out(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => ud(7),
      I1 => diag(7),
      I2 => \w1_reg[1]\(7),
      I3 => \p_0_in__0\(0),
      I4 => p_0_in_1(1),
      I5 => lr(7),
      O => p_2_out(7)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(0),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(0),
      O => p_2_out(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => cross(1),
      I1 => \p_0_in__0\(0),
      I2 => p_0_in_1(1),
      I3 => \w1_reg[1]\(1),
      O => p_2_out(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(0),
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(10),
      Q => m_axis_tdata(10),
      R => p_0_in
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(11),
      Q => m_axis_tdata(11),
      R => p_0_in
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(12),
      Q => m_axis_tdata(12),
      R => p_0_in
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(13),
      Q => m_axis_tdata(13),
      R => p_0_in
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(14),
      Q => m_axis_tdata(14),
      R => p_0_in
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(15),
      Q => m_axis_tdata(15),
      R => p_0_in
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(16),
      Q => m_axis_tdata(16),
      R => p_0_in
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(17),
      Q => m_axis_tdata(17),
      R => p_0_in
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(18),
      Q => m_axis_tdata(18),
      R => p_0_in
    );
\m_axis_tdata_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m_axis_tdata_reg[18]_i_2_n_0\,
      CO(2) => \m_axis_tdata_reg[18]_i_2_n_1\,
      CO(1) => \m_axis_tdata_reg[18]_i_2_n_2\,
      CO(0) => \m_axis_tdata_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \w1_reg[2]\(3 downto 0),
      O(3 downto 1) => lr(2 downto 0),
      O(0) => \m_axis_tdata_reg[18]_i_2_n_7\,
      S(3) => \m_axis_tdata[18]_i_4_n_0\,
      S(2) => \m_axis_tdata[18]_i_5_n_0\,
      S(1) => \m_axis_tdata[18]_i_6_n_0\,
      S(0) => \m_axis_tdata[18]_i_7_n_0\
    );
\m_axis_tdata_reg[18]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m_axis_tdata_reg[18]_i_3_n_0\,
      CO(2) => \m_axis_tdata_reg[18]_i_3_n_1\,
      CO(1) => \m_axis_tdata_reg[18]_i_3_n_2\,
      CO(0) => \m_axis_tdata_reg[18]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \w0_reg[1]\(3 downto 0),
      O(3 downto 1) => ud(2 downto 0),
      O(0) => \NLW_m_axis_tdata_reg[18]_i_3_O_UNCONNECTED\(0),
      S(3) => \m_axis_tdata[18]_i_8_n_0\,
      S(2) => \m_axis_tdata[18]_i_9_n_0\,
      S(1) => \m_axis_tdata[18]_i_10_n_0\,
      S(0) => \m_axis_tdata[18]_i_11_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(19),
      Q => m_axis_tdata(19),
      R => p_0_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(1),
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(20),
      Q => m_axis_tdata(20),
      R => p_0_in
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(21),
      Q => m_axis_tdata(21),
      R => p_0_in
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(22),
      Q => m_axis_tdata(22),
      R => p_0_in
    );
\m_axis_tdata_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata_reg[18]_i_2_n_0\,
      CO(3) => \m_axis_tdata_reg[22]_i_2_n_0\,
      CO(2) => \m_axis_tdata_reg[22]_i_2_n_1\,
      CO(1) => \m_axis_tdata_reg[22]_i_2_n_2\,
      CO(0) => \m_axis_tdata_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \w1_reg[2]\(7 downto 4),
      O(3 downto 0) => lr(6 downto 3),
      S(3) => \m_axis_tdata[22]_i_4_n_0\,
      S(2) => \m_axis_tdata[22]_i_5_n_0\,
      S(1) => \m_axis_tdata[22]_i_6_n_0\,
      S(0) => \m_axis_tdata[22]_i_7_n_0\
    );
\m_axis_tdata_reg[22]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata_reg[18]_i_3_n_0\,
      CO(3) => \m_axis_tdata_reg[22]_i_3_n_0\,
      CO(2) => \m_axis_tdata_reg[22]_i_3_n_1\,
      CO(1) => \m_axis_tdata_reg[22]_i_3_n_2\,
      CO(0) => \m_axis_tdata_reg[22]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \w0_reg[1]\(7 downto 4),
      O(3 downto 0) => ud(6 downto 3),
      S(3) => \m_axis_tdata[22]_i_8_n_0\,
      S(2) => \m_axis_tdata[22]_i_9_n_0\,
      S(1) => \m_axis_tdata[22]_i_10_n_0\,
      S(0) => \m_axis_tdata[22]_i_11_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(23),
      Q => m_axis_tdata(23),
      R => p_0_in
    );
\m_axis_tdata_reg[23]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata_reg[22]_i_3_n_0\,
      CO(3 downto 1) => \NLW_m_axis_tdata_reg[23]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ud(7),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tdata_reg[23]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(2),
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(3),
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(4),
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(5),
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(6),
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(7),
      Q => m_axis_tdata(7),
      R => p_0_in
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(8),
      Q => m_axis_tdata(8),
      R => p_0_in
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p_2_out(9),
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
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \p2_ccx_reg_n_0_[10]\,
      I1 => \p2_ccx_reg_n_0_[9]\,
      I2 => \p2_ccx_reg_n_0_[11]\,
      I3 => \p2_ccx_reg_n_0_[6]\,
      I4 => \p2_ccx_reg_n_0_[7]\,
      I5 => \p2_ccx_reg_n_0_[8]\,
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \p_0_in__0\(0),
      I1 => \p2_ccx_reg_n_0_[1]\,
      I2 => \p2_ccx_reg_n_0_[2]\,
      I3 => \p2_ccx_reg_n_0_[3]\,
      I4 => \p2_ccx_reg_n_0_[4]\,
      I5 => \p2_ccx_reg_n_0_[5]\,
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
m_axis_tuser_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \lc__5\,
      I1 => m_axis_tuser_i_3_n_0,
      I2 => \p2_ccy_reg_n_0_[11]\,
      I3 => \p2_ccy_reg_n_0_[10]\,
      I4 => \p2_ccy_reg_n_0_[8]\,
      I5 => \p2_ccy_reg_n_0_[9]\,
      O => m_axis_tuser0
    );
m_axis_tuser_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => m_axis_tuser_i_4_n_0,
      O => \lc__5\
    );
m_axis_tuser_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \p2_ccy_reg_n_0_[5]\,
      I1 => \p2_ccy_reg_n_0_[4]\,
      I2 => \p2_ccy_reg_n_0_[7]\,
      I3 => \p2_ccy_reg_n_0_[6]\,
      I4 => m_axis_tuser_i_5_n_0,
      O => m_axis_tuser_i_3_n_0
    );
m_axis_tuser_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \p2_ccx_reg_n_0_[2]\,
      I1 => \p_0_in__0\(0),
      I2 => \p2_ccx_reg_n_0_[1]\,
      I3 => \p2_ccx_reg_n_0_[5]\,
      I4 => \p2_ccx_reg_n_0_[3]\,
      I5 => \p2_ccx_reg_n_0_[4]\,
      O => m_axis_tuser_i_4_n_0
    );
m_axis_tuser_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \p2_ccy_reg_n_0_[2]\,
      I1 => \p2_ccy_reg_n_0_[3]\,
      I2 => p_0_in_1(1),
      I3 => \p2_ccy_reg_n_0_[1]\,
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
      INIT => X"8F880000"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => p2_cvalid,
      I2 => m_axis_tready,
      I3 => \^m_axis_tvalid_reg_0\,
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
p1_cvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => s_axis_tready_INST_0_i_2_n_0,
      I3 => p1_cvalid_i_2_n_0,
      I4 => \fc_reg_n_0_[4]\,
      I5 => \fc_reg_n_0_[0]\,
      O => cvalid_f
    );
p1_cvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \fc_reg_n_0_[2]\,
      I1 => \fc_reg_n_0_[3]\,
      I2 => \fc_reg_n_0_[5]\,
      I3 => \fc_reg_n_0_[1]\,
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
p1_rpar_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \cy_reg_n_0_[0]\,
      Q => p1_rpar,
      R => '0'
    );
p1_t0cur_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_4_n_0,
      I1 => p1_t0cur_i_2_n_0,
      O => t0_from_cur_f
    );
p1_t0cur_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cy_reg_n_0_[1]\,
      I1 => \cy_reg_n_0_[0]\,
      I2 => \cy_reg_n_0_[2]\,
      I3 => \cy_reg_n_0_[4]\,
      I4 => \cy_reg_n_0_[5]\,
      I5 => \cy_reg_n_0_[3]\,
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
p1_t2buf_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
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
      Q => \p_0_in__0\(0),
      R => '0'
    );
\p2_ccx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(10),
      Q => \p2_ccx_reg_n_0_[10]\,
      R => '0'
    );
\p2_ccx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(11),
      Q => \p2_ccx_reg_n_0_[11]\,
      R => '0'
    );
\p2_ccx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(1),
      Q => \p2_ccx_reg_n_0_[1]\,
      R => '0'
    );
\p2_ccx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(2),
      Q => \p2_ccx_reg_n_0_[2]\,
      R => '0'
    );
\p2_ccx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(3),
      Q => \p2_ccx_reg_n_0_[3]\,
      R => '0'
    );
\p2_ccx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(4),
      Q => \p2_ccx_reg_n_0_[4]\,
      R => '0'
    );
\p2_ccx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(5),
      Q => \p2_ccx_reg_n_0_[5]\,
      R => '0'
    );
\p2_ccx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(6),
      Q => \p2_ccx_reg_n_0_[6]\,
      R => '0'
    );
\p2_ccx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(7),
      Q => \p2_ccx_reg_n_0_[7]\,
      R => '0'
    );
\p2_ccx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(8),
      Q => \p2_ccx_reg_n_0_[8]\,
      R => '0'
    );
\p2_ccx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccx(9),
      Q => \p2_ccx_reg_n_0_[9]\,
      R => '0'
    );
\p2_ccy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_rpar,
      Q => p_0_in_1(1),
      R => '0'
    );
\p2_ccy_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(10),
      Q => \p2_ccy_reg_n_0_[10]\,
      R => '0'
    );
\p2_ccy_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(11),
      Q => \p2_ccy_reg_n_0_[11]\,
      R => '0'
    );
\p2_ccy_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(1),
      Q => \p2_ccy_reg_n_0_[1]\,
      R => '0'
    );
\p2_ccy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(2),
      Q => \p2_ccy_reg_n_0_[2]\,
      R => '0'
    );
\p2_ccy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(3),
      Q => \p2_ccy_reg_n_0_[3]\,
      R => '0'
    );
\p2_ccy_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(4),
      Q => \p2_ccy_reg_n_0_[4]\,
      R => '0'
    );
\p2_ccy_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(5),
      Q => \p2_ccy_reg_n_0_[5]\,
      R => '0'
    );
\p2_ccy_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(6),
      Q => \p2_ccy_reg_n_0_[6]\,
      R => '0'
    );
\p2_ccy_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(7),
      Q => \p2_ccy_reg_n_0_[7]\,
      R => '0'
    );
\p2_ccy_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(8),
      Q => \p2_ccy_reg_n_0_[8]\,
      R => '0'
    );
\p2_ccy_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => p1_ccy(9),
      Q => \p2_ccy_reg_n_0_[9]\,
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
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(0),
      Q => q0(0),
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(1),
      Q => q0(1),
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(2),
      Q => q0(2),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(3),
      Q => q0(3),
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(4),
      Q => q0(4),
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(5),
      Q => q0(5),
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(6),
      Q => q0(6),
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q00(7),
      Q => q0(7),
      R => '0'
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(0),
      Q => q1(0),
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(1),
      Q => q1(1),
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(2),
      Q => q1(2),
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(3),
      Q => q1(3),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(4),
      Q => q1(4),
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(5),
      Q => q1(5),
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(6),
      Q => q1(6),
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => q10(7),
      Q => q1(7),
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEE0EEEE"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => s_axis_tready_INST_0_i_2_n_0,
      I3 => s_axis_tready_INST_0_i_3_n_0,
      I4 => s_axis_tready_INST_0_i_4_n_0,
      I5 => s_axis_tready_INST_0_i_5_n_0,
      O => s_axis_tready_INST_0_i_1_n_0
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fc_reg_n_0_[6]\,
      I1 => \fc_reg_n_0_[7]\,
      I2 => \fc_reg_n_0_[10]\,
      I3 => \fc_reg_n_0_[11]\,
      I4 => \fc_reg_n_0_[8]\,
      I5 => \fc_reg_n_0_[9]\,
      O => s_axis_tready_INST_0_i_2_n_0
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cy_reg_n_0_[2]\,
      I1 => \cy_reg_n_0_[0]\,
      I2 => \cy_reg_n_0_[5]\,
      I3 => \cy_reg_n_0_[3]\,
      I4 => \cy_reg_n_0_[1]\,
      O => s_axis_tready_INST_0_i_3_n_0
    );
s_axis_tready_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cy_reg_n_0_[7]\,
      I1 => \cy_reg_n_0_[6]\,
      I2 => \cy_reg_n_0_[8]\,
      I3 => \cy_reg_n_0_[11]\,
      I4 => \cy_reg_n_0_[9]\,
      I5 => \cy_reg_n_0_[10]\,
      O => s_axis_tready_INST_0_i_4_n_0
    );
s_axis_tready_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \cy_reg_n_0_[4]\,
      I2 => \cy_reg_n_0_[5]\,
      O => s_axis_tready_INST_0_i_5_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"770A7708750A750A"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state[0]_i_2_n_0\,
      I5 => \state[1]_i_3_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \x_in_reg_n_0_[5]\,
      I1 => \x_in_reg_n_0_[3]\,
      I2 => \x_in_reg_n_0_[4]\,
      I3 => \x_in_reg_n_0_[8]\,
      I4 => \state[0]_i_3_n_0\,
      I5 => \state[0]_i_4_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \x_in_reg_n_0_[9]\,
      I1 => \x_in_reg_n_0_[11]\,
      I2 => \x_in_reg_n_0_[2]\,
      I3 => \x_in_reg_n_0_[10]\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \x_in_reg_n_0_[1]\,
      I1 => \x_in_reg_n_0_[6]\,
      I2 => \x_in_reg_n_0_[0]\,
      I3 => \x_in_reg_n_0_[7]\,
      O => \state[0]_i_4_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78707A70"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state[1]_i_3_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => flush_cnt(1),
      I2 => flush_cnt(0),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_3_n_0,
      I1 => s_axis_tready_INST_0_i_4_n_0,
      I2 => \cy_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cy[11]_i_3_n_0\,
      O => \state[1]_i_3_n_0\
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
\sum_cross__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_cross__0_carry_n_0\,
      CO(2) => \sum_cross__0_carry_n_1\,
      CO(1) => \sum_cross__0_carry_n_2\,
      CO(0) => \sum_cross__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \sum_cross__0_carry_i_1_n_0\,
      DI(2) => \sum_cross__0_carry_i_2_n_0\,
      DI(1) => \sum_cross__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 2) => cross(1 downto 0),
      O(1 downto 0) => \NLW_sum_cross__0_carry_O_UNCONNECTED\(1 downto 0),
      S(3) => \sum_cross__0_carry_i_4_n_0\,
      S(2) => \sum_cross__0_carry_i_5_n_0\,
      S(1) => \sum_cross__0_carry_i_6_n_0\,
      S(0) => \sum_cross__0_carry_i_7_n_0\
    );
\sum_cross__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_cross__0_carry_n_0\,
      CO(3) => \sum_cross__0_carry__0_n_0\,
      CO(2) => \sum_cross__0_carry__0_n_1\,
      CO(1) => \sum_cross__0_carry__0_n_2\,
      CO(0) => \sum_cross__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sum_cross__0_carry__0_i_1_n_0\,
      DI(2) => \sum_cross__0_carry__0_i_2_n_0\,
      DI(1) => \sum_cross__0_carry__0_i_3_n_0\,
      DI(0) => \sum_cross__0_carry__0_i_4_n_0\,
      O(3 downto 0) => cross(5 downto 2),
      S(3) => \sum_cross__0_carry__0_i_5_n_0\,
      S(2) => \sum_cross__0_carry__0_i_6_n_0\,
      S(1) => \sum_cross__0_carry__0_i_7_n_0\,
      S(0) => \sum_cross__0_carry__0_i_8_n_0\
    );
\sum_cross__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(6),
      I1 => \w2_reg[1]\(6),
      I2 => lr(5),
      O => \sum_cross__0_carry__0_i_1_n_0\
    );
\sum_cross__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(5),
      I1 => \w2_reg[1]\(5),
      I2 => lr(4),
      O => \sum_cross__0_carry__0_i_2_n_0\
    );
\sum_cross__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(4),
      I1 => \w2_reg[1]\(4),
      I2 => lr(3),
      O => \sum_cross__0_carry__0_i_3_n_0\
    );
\sum_cross__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(3),
      I1 => \w2_reg[1]\(3),
      I2 => lr(2),
      O => \sum_cross__0_carry__0_i_4_n_0\
    );
\sum_cross__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_cross__0_carry__0_i_1_n_0\,
      I1 => \w2_reg[1]\(7),
      I2 => \w0_reg[1]\(7),
      I3 => lr(6),
      O => \sum_cross__0_carry__0_i_5_n_0\
    );
\sum_cross__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \w0_reg[1]\(6),
      I1 => \w2_reg[1]\(6),
      I2 => lr(5),
      I3 => \sum_cross__0_carry__0_i_2_n_0\,
      O => \sum_cross__0_carry__0_i_6_n_0\
    );
\sum_cross__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \w0_reg[1]\(5),
      I1 => \w2_reg[1]\(5),
      I2 => lr(4),
      I3 => \sum_cross__0_carry__0_i_3_n_0\,
      O => \sum_cross__0_carry__0_i_7_n_0\
    );
\sum_cross__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \w0_reg[1]\(4),
      I1 => \w2_reg[1]\(4),
      I2 => lr(3),
      I3 => \sum_cross__0_carry__0_i_4_n_0\,
      O => \sum_cross__0_carry__0_i_8_n_0\
    );
\sum_cross__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_cross__0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_sum_cross__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => cross(7),
      CO(0) => \NLW_sum_cross__0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => lr(7),
      O(3 downto 1) => \NLW_sum_cross__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => cross(6),
      S(3 downto 1) => B"001",
      S(0) => \sum_cross__0_carry__1_i_2_n_0\
    );
\sum_cross__0_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata_reg[22]_i_2_n_0\,
      CO(3 downto 1) => \NLW_sum_cross__0_carry__1_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => lr(7),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sum_cross__0_carry__1_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\sum_cross__0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => lr(6),
      I1 => \w2_reg[1]\(7),
      I2 => \w0_reg[1]\(7),
      I3 => lr(7),
      O => \sum_cross__0_carry__1_i_2_n_0\
    );
\sum_cross__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(2),
      I1 => \w2_reg[1]\(2),
      I2 => lr(1),
      O => \sum_cross__0_carry_i_1_n_0\
    );
\sum_cross__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(1),
      I1 => \w2_reg[1]\(1),
      I2 => lr(0),
      O => \sum_cross__0_carry_i_2_n_0\
    );
\sum_cross__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \w0_reg[1]\(0),
      I1 => \w2_reg[1]\(0),
      I2 => \m_axis_tdata_reg[18]_i_2_n_7\,
      O => \sum_cross__0_carry_i_3_n_0\
    );
\sum_cross__0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \w0_reg[1]\(3),
      I1 => \w2_reg[1]\(3),
      I2 => lr(2),
      I3 => \sum_cross__0_carry_i_1_n_0\,
      O => \sum_cross__0_carry_i_4_n_0\
    );
\sum_cross__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \w0_reg[1]\(2),
      I1 => \w2_reg[1]\(2),
      I2 => lr(1),
      I3 => \sum_cross__0_carry_i_2_n_0\,
      O => \sum_cross__0_carry_i_5_n_0\
    );
\sum_cross__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \w0_reg[1]\(1),
      I1 => \w2_reg[1]\(1),
      I2 => lr(0),
      I3 => \sum_cross__0_carry_i_3_n_0\,
      O => \sum_cross__0_carry_i_6_n_0\
    );
\sum_cross__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \w0_reg[1]\(0),
      I1 => \w2_reg[1]\(0),
      I2 => \m_axis_tdata_reg[18]_i_2_n_7\,
      O => \sum_cross__0_carry_i_7_n_0\
    );
\sum_diag__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_diag__2_carry_n_0\,
      CO(2) => \sum_diag__2_carry_n_1\,
      CO(1) => \sum_diag__2_carry_n_2\,
      CO(0) => \sum_diag__2_carry_n_3\,
      CYINIT => '0',
      DI(3) => \sum_diag__2_carry_i_1_n_0\,
      DI(2) => \sum_diag__2_carry_i_2_n_0\,
      DI(1) => \sum_diag__2_carry_i_3_n_0\,
      DI(0) => \sum_diag__2_carry_i_4_n_0\,
      O(3 downto 2) => diag(1 downto 0),
      O(1 downto 0) => \NLW_sum_diag__2_carry_O_UNCONNECTED\(1 downto 0),
      S(3) => \sum_diag__2_carry_i_5_n_0\,
      S(2) => \sum_diag__2_carry_i_6_n_0\,
      S(1) => \sum_diag__2_carry_i_7_n_0\,
      S(0) => \sum_diag__2_carry_i_8_n_0\
    );
\sum_diag__2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_diag__2_carry_n_0\,
      CO(3) => \sum_diag__2_carry__0_n_0\,
      CO(2) => \sum_diag__2_carry__0_n_1\,
      CO(1) => \sum_diag__2_carry__0_n_2\,
      CO(0) => \sum_diag__2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sum_diag__2_carry__0_i_1_n_0\,
      DI(2) => \sum_diag__2_carry__0_i_2_n_0\,
      DI(1) => \sum_diag__2_carry__0_i_3_n_0\,
      DI(0) => \sum_diag__2_carry__0_i_4_n_0\,
      O(3 downto 0) => diag(5 downto 2),
      S(3) => \sum_diag__2_carry__0_i_5_n_0\,
      S(2) => \sum_diag__2_carry__0_i_6_n_0\,
      S(1) => \sum_diag__2_carry__0_i_7_n_0\,
      S(0) => \sum_diag__2_carry__0_i_8_n_0\
    );
\sum_diag__2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w0_reg[0]\(6),
      I2 => \w0_reg[1]\(6),
      I3 => \sum_diag__2_carry__0_i_9_n_0\,
      I4 => \sum_diag__2_carry__0_i_10_n_0\,
      O => \sum_diag__2_carry__0_i_1_n_0\
    );
\sum_diag__2_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBAA820"
    )
        port map (
      I0 => \w0_reg[2]\(5),
      I1 => \lc__5\,
      I2 => \w2_reg[0]\(5),
      I3 => \w2_reg[1]\(5),
      I4 => \w2_reg[2]\(5),
      O => \sum_diag__2_carry__0_i_10_n_0\
    );
\sum_diag__2_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(5),
      I1 => \w0_reg[2]\(5),
      I2 => \w2_reg[1]\(5),
      I3 => \w2_reg[0]\(5),
      I4 => \lc__5\,
      O => \sum_diag__2_carry__0_i_11_n_0\
    );
\sum_diag__2_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBAA820"
    )
        port map (
      I0 => \w0_reg[2]\(4),
      I1 => \lc__5\,
      I2 => \w2_reg[0]\(4),
      I3 => \w2_reg[1]\(4),
      I4 => \w2_reg[2]\(4),
      O => \sum_diag__2_carry__0_i_12_n_0\
    );
\sum_diag__2_carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(4),
      I1 => \w0_reg[2]\(4),
      I2 => \w2_reg[1]\(4),
      I3 => \w2_reg[0]\(4),
      I4 => \lc__5\,
      O => \sum_diag__2_carry__0_i_13_n_0\
    );
\sum_diag__2_carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBAA820"
    )
        port map (
      I0 => \w0_reg[2]\(3),
      I1 => \lc__5\,
      I2 => \w2_reg[0]\(3),
      I3 => \w2_reg[1]\(3),
      I4 => \w2_reg[2]\(3),
      O => \sum_diag__2_carry__0_i_14_n_0\
    );
\sum_diag__2_carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(7),
      I1 => \w0_reg[2]\(7),
      I2 => \w2_reg[1]\(7),
      I3 => \w2_reg[0]\(7),
      I4 => \lc__5\,
      O => \sum_diag__2_carry__0_i_15_n_0\
    );
\sum_diag__2_carry__0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBAA820"
    )
        port map (
      I0 => \w0_reg[2]\(6),
      I1 => \lc__5\,
      I2 => \w2_reg[0]\(6),
      I3 => \w2_reg[1]\(6),
      I4 => \w2_reg[2]\(6),
      O => \sum_diag__2_carry__0_i_16_n_0\
    );
\sum_diag__2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w0_reg[0]\(5),
      I2 => \w0_reg[1]\(5),
      I3 => \sum_diag__2_carry__0_i_11_n_0\,
      I4 => \sum_diag__2_carry__0_i_12_n_0\,
      O => \sum_diag__2_carry__0_i_2_n_0\
    );
\sum_diag__2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w0_reg[0]\(4),
      I2 => \w0_reg[1]\(4),
      I3 => \sum_diag__2_carry__0_i_13_n_0\,
      I4 => \sum_diag__2_carry__0_i_14_n_0\,
      O => \sum_diag__2_carry__0_i_3_n_0\
    );
\sum_diag__2_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w0_reg[0]\(3),
      I2 => \w0_reg[1]\(3),
      I3 => \sum_diag__2_carry_i_12_n_0\,
      I4 => \sum_diag__2_carry_i_13_n_0\,
      O => \sum_diag__2_carry__0_i_4_n_0\
    );
\sum_diag__2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \sum_diag__2_carry__0_i_1_n_0\,
      I1 => \sum_diag__2_carry__0_i_15_n_0\,
      I2 => \lc__5\,
      I3 => \w0_reg[0]\(7),
      I4 => \w0_reg[1]\(7),
      I5 => \sum_diag__2_carry__0_i_16_n_0\,
      O => \sum_diag__2_carry__0_i_5_n_0\
    );
\sum_diag__2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \sum_diag__2_carry__0_i_2_n_0\,
      I1 => \sum_diag__2_carry__0_i_9_n_0\,
      I2 => \lc__5\,
      I3 => \w0_reg[0]\(6),
      I4 => \w0_reg[1]\(6),
      I5 => \sum_diag__2_carry__0_i_10_n_0\,
      O => \sum_diag__2_carry__0_i_6_n_0\
    );
\sum_diag__2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \sum_diag__2_carry__0_i_3_n_0\,
      I1 => \sum_diag__2_carry__0_i_11_n_0\,
      I2 => \lc__5\,
      I3 => \w0_reg[0]\(5),
      I4 => \w0_reg[1]\(5),
      I5 => \sum_diag__2_carry__0_i_12_n_0\,
      O => \sum_diag__2_carry__0_i_7_n_0\
    );
\sum_diag__2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \sum_diag__2_carry__0_i_4_n_0\,
      I1 => \sum_diag__2_carry__0_i_13_n_0\,
      I2 => \lc__5\,
      I3 => \w0_reg[0]\(4),
      I4 => \w0_reg[1]\(4),
      I5 => \sum_diag__2_carry__0_i_14_n_0\,
      O => \sum_diag__2_carry__0_i_8_n_0\
    );
\sum_diag__2_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(6),
      I1 => \w0_reg[2]\(6),
      I2 => \w2_reg[1]\(6),
      I3 => \w2_reg[0]\(6),
      I4 => \lc__5\,
      O => \sum_diag__2_carry__0_i_9_n_0\
    );
\sum_diag__2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_diag__2_carry__0_n_0\,
      CO(3 downto 2) => \NLW_sum_diag__2_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => diag(7),
      CO(0) => \NLW_sum_diag__2_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_diag__2_carry__1_i_1_n_0\,
      O(3 downto 1) => \NLW_sum_diag__2_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => diag(6),
      S(3 downto 1) => B"001",
      S(0) => \sum_diag__2_carry__1_i_2_n_0\
    );
\sum_diag__2_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w0_reg[0]\(7),
      I2 => \w0_reg[1]\(7),
      I3 => \sum_diag__2_carry__0_i_15_n_0\,
      I4 => \sum_diag__2_carry__0_i_16_n_0\,
      O => \sum_diag__2_carry__1_i_1_n_0\
    );
\sum_diag__2_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"177E7EE8"
    )
        port map (
      I0 => \sum_diag__2_carry__0_i_16_n_0\,
      I1 => \L0__0\(7),
      I2 => \w2_reg[2]\(7),
      I3 => L2(7),
      I4 => \w0_reg[2]\(7),
      O => \sum_diag__2_carry__1_i_2_n_0\
    );
\sum_diag__2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \w0_reg[1]\(7),
      I1 => \w0_reg[0]\(7),
      I2 => \lc__5\,
      O => \L0__0\(7)
    );
\sum_diag__2_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \w2_reg[1]\(7),
      I1 => \w2_reg[0]\(7),
      I2 => \lc__5\,
      O => L2(7)
    );
\sum_diag__2_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE4E400"
    )
        port map (
      I0 => \lc__5\,
      I1 => \w0_reg[0]\(2),
      I2 => \w0_reg[1]\(2),
      I3 => \sum_diag__2_carry_i_9_n_0\,
      I4 => \sum_diag__2_carry_i_10_n_0\,
      O => \sum_diag__2_carry_i_1_n_0\
    );
\sum_diag__2_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBAA820"
    )
        port map (
      I0 => \w0_reg[2]\(1),
      I1 => \lc__5\,
      I2 => \w2_reg[0]\(1),
      I3 => \w2_reg[1]\(1),
      I4 => \w2_reg[2]\(1),
      O => \sum_diag__2_carry_i_10_n_0\
    );
\sum_diag__2_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \w2_reg[1]\(1),
      I1 => \w2_reg[0]\(1),
      I2 => \lc__5\,
      O => L2(1)
    );
\sum_diag__2_carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(3),
      I1 => \w0_reg[2]\(3),
      I2 => \w2_reg[1]\(3),
      I3 => \w2_reg[0]\(3),
      I4 => \lc__5\,
      O => \sum_diag__2_carry_i_12_n_0\
    );
\sum_diag__2_carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBAA820"
    )
        port map (
      I0 => \w0_reg[2]\(2),
      I1 => \lc__5\,
      I2 => \w2_reg[0]\(2),
      I3 => \w2_reg[1]\(2),
      I4 => \w2_reg[2]\(2),
      O => \sum_diag__2_carry_i_13_n_0\
    );
\sum_diag__2_carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \w0_reg[1]\(2),
      I1 => \w0_reg[0]\(2),
      I2 => \lc__5\,
      O => \L0__0\(2)
    );
\sum_diag__2_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \w0_reg[1]\(1),
      I1 => \w0_reg[0]\(1),
      I2 => \lc__5\,
      O => L0(1)
    );
\sum_diag__2_carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(1),
      I1 => \w0_reg[2]\(1),
      I2 => \w2_reg[1]\(1),
      I3 => \w2_reg[0]\(1),
      I4 => \lc__5\,
      O => \sum_diag__2_carry_i_16_n_0\
    );
\sum_diag__2_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \w2_reg[1]\(0),
      I1 => \w2_reg[0]\(0),
      I2 => \lc__5\,
      O => L2(0)
    );
\sum_diag__2_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99A5665A"
    )
        port map (
      I0 => \sum_diag__2_carry_i_10_n_0\,
      I1 => \w0_reg[1]\(2),
      I2 => \w0_reg[0]\(2),
      I3 => \lc__5\,
      I4 => \sum_diag__2_carry_i_9_n_0\,
      O => \sum_diag__2_carry_i_2_n_0\
    );
\sum_diag__2_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696699696"
    )
        port map (
      I0 => L2(1),
      I1 => \w0_reg[2]\(1),
      I2 => \w2_reg[2]\(1),
      I3 => \lc__5\,
      I4 => \w0_reg[0]\(1),
      I5 => \w0_reg[1]\(1),
      O => \sum_diag__2_carry_i_3_n_0\
    );
\sum_diag__2_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(0),
      I1 => \w0_reg[2]\(0),
      I2 => \w2_reg[1]\(0),
      I3 => \w2_reg[0]\(0),
      I4 => \lc__5\,
      O => \sum_diag__2_carry_i_4_n_0\
    );
\sum_diag__2_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669969999966966"
    )
        port map (
      I0 => \sum_diag__2_carry_i_1_n_0\,
      I1 => \sum_diag__2_carry_i_12_n_0\,
      I2 => \lc__5\,
      I3 => \w0_reg[0]\(3),
      I4 => \w0_reg[1]\(3),
      I5 => \sum_diag__2_carry_i_13_n_0\,
      O => \sum_diag__2_carry_i_5_n_0\
    );
\sum_diag__2_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \sum_diag__2_carry_i_9_n_0\,
      I1 => \L0__0\(2),
      I2 => \w2_reg[2]\(1),
      I3 => \w0_reg[2]\(1),
      I4 => L2(1),
      I5 => L0(1),
      O => \sum_diag__2_carry_i_6_n_0\
    );
\sum_diag__2_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => L0(1),
      I1 => \sum_diag__2_carry_i_16_n_0\,
      I2 => \w2_reg[2]\(0),
      I3 => L2(0),
      I4 => \w0_reg[2]\(0),
      O => \sum_diag__2_carry_i_7_n_0\
    );
\sum_diag__2_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696699696"
    )
        port map (
      I0 => L2(0),
      I1 => \w0_reg[2]\(0),
      I2 => \w2_reg[2]\(0),
      I3 => \lc__5\,
      I4 => \w0_reg[0]\(0),
      I5 => \w0_reg[1]\(0),
      O => \sum_diag__2_carry_i_8_n_0\
    );
\sum_diag__2_carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969966"
    )
        port map (
      I0 => \w2_reg[2]\(2),
      I1 => \w0_reg[2]\(2),
      I2 => \w2_reg[1]\(2),
      I3 => \w2_reg[0]\(2),
      I4 => \lc__5\,
      O => \sum_diag__2_carry_i_9_n_0\
    );
\t2_d[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4500"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => s_axis_tvalid,
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
\t2_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => t2_d_0(0),
      D => s_axis_tdata(1),
      Q => t2_d(1),
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
\w0[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(0),
      I2 => p1_rpar,
      I3 => q1(0),
      O => t0_val(0)
    );
\w0[2][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(1),
      I2 => p1_rpar,
      I3 => q1(1),
      O => t0_val(1)
    );
\w0[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => p1_t0cur,
      I1 => q0(2),
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
      I3 => q1(7),
      O => t0_val(7)
    );
\w0_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(0),
      Q => \w0_reg[0]\(0),
      R => '0'
    );
\w0_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(1),
      Q => \w0_reg[0]\(1),
      R => '0'
    );
\w0_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(2),
      Q => \w0_reg[0]\(2),
      R => '0'
    );
\w0_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(3),
      Q => \w0_reg[0]\(3),
      R => '0'
    );
\w0_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(4),
      Q => \w0_reg[0]\(4),
      R => '0'
    );
\w0_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(5),
      Q => \w0_reg[0]\(5),
      R => '0'
    );
\w0_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(6),
      Q => \w0_reg[0]\(6),
      R => '0'
    );
\w0_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[1]\(7),
      Q => \w0_reg[0]\(7),
      R => '0'
    );
\w0_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(0),
      Q => \w0_reg[1]\(0),
      R => '0'
    );
\w0_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(1),
      Q => \w0_reg[1]\(1),
      R => '0'
    );
\w0_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(2),
      Q => \w0_reg[1]\(2),
      R => '0'
    );
\w0_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(3),
      Q => \w0_reg[1]\(3),
      R => '0'
    );
\w0_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(4),
      Q => \w0_reg[1]\(4),
      R => '0'
    );
\w0_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(5),
      Q => \w0_reg[1]\(5),
      R => '0'
    );
\w0_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(6),
      Q => \w0_reg[1]\(6),
      R => '0'
    );
\w0_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w0_reg[2]\(7),
      Q => \w0_reg[1]\(7),
      R => '0'
    );
\w0_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(0),
      Q => \w0_reg[2]\(0),
      R => '0'
    );
\w0_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(1),
      Q => \w0_reg[2]\(1),
      R => '0'
    );
\w0_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(2),
      Q => \w0_reg[2]\(2),
      R => '0'
    );
\w0_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(3),
      Q => \w0_reg[2]\(3),
      R => '0'
    );
\w0_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(4),
      Q => \w0_reg[2]\(4),
      R => '0'
    );
\w0_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(5),
      Q => \w0_reg[2]\(5),
      R => '0'
    );
\w0_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(6),
      Q => \w0_reg[2]\(6),
      R => '0'
    );
\w0_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t0_val(7),
      Q => \w0_reg[2]\(7),
      R => '0'
    );
\w1[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(0),
      I1 => q0(0),
      I2 => p1_rpar,
      O => t1_val(0)
    );
\w1[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(1),
      I1 => q0(1),
      I2 => p1_rpar,
      O => t1_val(1)
    );
\w1[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(2),
      I1 => q0(2),
      I2 => p1_rpar,
      O => t1_val(2)
    );
\w1[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(3),
      I1 => q0(3),
      I2 => p1_rpar,
      O => t1_val(3)
    );
\w1[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(4),
      I1 => q0(4),
      I2 => p1_rpar,
      O => t1_val(4)
    );
\w1[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(5),
      I1 => q0(5),
      I2 => p1_rpar,
      O => t1_val(5)
    );
\w1[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(6),
      I1 => q0(6),
      I2 => p1_rpar,
      O => t1_val(6)
    );
\w1[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q1(7),
      I1 => q0(7),
      I2 => p1_rpar,
      O => t1_val(7)
    );
\w1_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(0),
      Q => \w1_reg[0]\(0),
      R => '0'
    );
\w1_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(1),
      Q => \w1_reg[0]\(1),
      R => '0'
    );
\w1_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(2),
      Q => \w1_reg[0]\(2),
      R => '0'
    );
\w1_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(3),
      Q => \w1_reg[0]\(3),
      R => '0'
    );
\w1_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(4),
      Q => \w1_reg[0]\(4),
      R => '0'
    );
\w1_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(5),
      Q => \w1_reg[0]\(5),
      R => '0'
    );
\w1_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(6),
      Q => \w1_reg[0]\(6),
      R => '0'
    );
\w1_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[1]\(7),
      Q => \w1_reg[0]\(7),
      R => '0'
    );
\w1_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(0),
      Q => \w1_reg[1]\(0),
      R => '0'
    );
\w1_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(1),
      Q => \w1_reg[1]\(1),
      R => '0'
    );
\w1_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(2),
      Q => \w1_reg[1]\(2),
      R => '0'
    );
\w1_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(3),
      Q => \w1_reg[1]\(3),
      R => '0'
    );
\w1_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(4),
      Q => \w1_reg[1]\(4),
      R => '0'
    );
\w1_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(5),
      Q => \w1_reg[1]\(5),
      R => '0'
    );
\w1_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(6),
      Q => \w1_reg[1]\(6),
      R => '0'
    );
\w1_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w1_reg[2]\(7),
      Q => \w1_reg[1]\(7),
      R => '0'
    );
\w1_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(0),
      Q => \w1_reg[2]\(0),
      R => '0'
    );
\w1_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(1),
      Q => \w1_reg[2]\(1),
      R => '0'
    );
\w1_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(2),
      Q => \w1_reg[2]\(2),
      R => '0'
    );
\w1_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(3),
      Q => \w1_reg[2]\(3),
      R => '0'
    );
\w1_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(4),
      Q => \w1_reg[2]\(4),
      R => '0'
    );
\w1_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(5),
      Q => \w1_reg[2]\(5),
      R => '0'
    );
\w1_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(6),
      Q => \w1_reg[2]\(6),
      R => '0'
    );
\w1_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t1_val(7),
      Q => \w1_reg[2]\(7),
      R => '0'
    );
\w2[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(0),
      I1 => q0(0),
      I2 => p1_rpar,
      I3 => t2_d(0),
      I4 => p1_t2buf,
      O => t2_val(0)
    );
\w2[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(1),
      I1 => q0(1),
      I2 => p1_rpar,
      I3 => t2_d(1),
      I4 => p1_t2buf,
      O => t2_val(1)
    );
\w2[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => q1(2),
      I1 => q0(2),
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
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
      I2 => p1_rpar,
      I3 => t2_d(7),
      I4 => p1_t2buf,
      O => t2_val(7)
    );
\w2_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(0),
      Q => \w2_reg[0]\(0),
      R => '0'
    );
\w2_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(1),
      Q => \w2_reg[0]\(1),
      R => '0'
    );
\w2_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(2),
      Q => \w2_reg[0]\(2),
      R => '0'
    );
\w2_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(3),
      Q => \w2_reg[0]\(3),
      R => '0'
    );
\w2_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(4),
      Q => \w2_reg[0]\(4),
      R => '0'
    );
\w2_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(5),
      Q => \w2_reg[0]\(5),
      R => '0'
    );
\w2_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(6),
      Q => \w2_reg[0]\(6),
      R => '0'
    );
\w2_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[1]\(7),
      Q => \w2_reg[0]\(7),
      R => '0'
    );
\w2_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(0),
      Q => \w2_reg[1]\(0),
      R => '0'
    );
\w2_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(1),
      Q => \w2_reg[1]\(1),
      R => '0'
    );
\w2_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(2),
      Q => \w2_reg[1]\(2),
      R => '0'
    );
\w2_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(3),
      Q => \w2_reg[1]\(3),
      R => '0'
    );
\w2_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(4),
      Q => \w2_reg[1]\(4),
      R => '0'
    );
\w2_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(5),
      Q => \w2_reg[1]\(5),
      R => '0'
    );
\w2_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(6),
      Q => \w2_reg[1]\(6),
      R => '0'
    );
\w2_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \w2_reg[2]\(7),
      Q => \w2_reg[1]\(7),
      R => '0'
    );
\w2_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(0),
      Q => \w2_reg[2]\(0),
      R => '0'
    );
\w2_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(1),
      Q => \w2_reg[2]\(1),
      R => '0'
    );
\w2_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(2),
      Q => \w2_reg[2]\(2),
      R => '0'
    );
\w2_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(3),
      Q => \w2_reg[2]\(3),
      R => '0'
    );
\w2_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(4),
      Q => \w2_reg[2]\(4),
      R => '0'
    );
\w2_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(5),
      Q => \w2_reg[2]\(5),
      R => '0'
    );
\w2_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(6),
      Q => \w2_reg[2]\(6),
      R => '0'
    );
\w2_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => t2_val(7),
      Q => \w2_reg[2]\(7),
      R => '0'
    );
\wp0_a[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \x_in_reg_n_0_[0]\,
      O => wr_addr_now(0)
    );
\wp0_a[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \x_in_reg_n_0_[1]\,
      O => wr_addr_now(1)
    );
\wp0_a[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \x_in_reg_n_0_[2]\,
      O => wr_addr_now(2)
    );
\wp0_a[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \x_in_reg_n_0_[3]\,
      O => wr_addr_now(3)
    );
\wp0_a[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \x_in_reg_n_0_[4]\,
      O => wr_addr_now(4)
    );
\wp0_a[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \fc_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
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
\wp0_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => wp0_d(1),
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
wp0_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3330AAAA"
    )
        port map (
      I0 => wp0_s,
      I1 => \cy_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \m_axis_tdata[23]_i_2_n_0\,
      O => wp0_s_i_1_n_0
    );
wp0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wp0_s_i_1_n_0,
      Q => wp0_s,
      R => '0'
    );
wp0_v_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      O => need_input
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
\wp1_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => wp0_d(1),
      Q => wp1_d(1),
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
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(10)
    );
\x_in[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => \x_in[11]_i_1_n_0\
    );
\x_in[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(11)
    );
\x_in[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(1)
    );
\x_in[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(2)
    );
\x_in[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(3)
    );
\x_in[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(4)
    );
\x_in[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(5)
    );
\x_in[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(6)
    );
\x_in[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(7)
    );
\x_in[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \state[0]_i_2_n_0\,
      O => x_in(8)
    );
\x_in[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \state[0]_i_2_n_0\,
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
entity image_block_axis_demosaic_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute NotValidForBitStream of image_block_axis_demosaic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axis_demosaic_0_0 : entity is "image_block_axis_demosaic_0_0,axis_demosaic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axis_demosaic_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axis_demosaic_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axis_demosaic_0_0 : entity is "axis_demosaic,Vivado 2025.2";
end image_block_axis_demosaic_0_0;

architecture STRUCTURE of image_block_axis_demosaic_0_0 is
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
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.image_block_axis_demosaic_0_0_axis_demosaic
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
