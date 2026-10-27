-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sun Jul 26 20:46:13 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axis_wb_0_0/image_block_axis_wb_0_0_sim_netlist.vhdl}
-- Design      : image_block_axis_wb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_wb_0_0_axis_whitebalance is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axis_wb_0_0_axis_whitebalance : entity is "axis_whitebalance";
end image_block_axis_wb_0_0_axis_whitebalance;

architecture STRUCTURE of image_block_axis_wb_0_0_axis_whitebalance is
  signal A : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \FSM_onehot_dstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dstate[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dstate[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_dstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_dstate_reg_n_0_[2]\ : STD_LOGIC;
  signal acc_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \acc_B[11]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[11]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[11]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[11]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[15]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[15]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[15]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[15]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[19]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[19]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[19]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[19]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[23]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[23]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[23]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[23]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[27]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[27]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[27]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[27]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[31]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[31]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[31]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[31]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[3]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[3]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[3]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[3]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B[7]_i_2_n_0\ : STD_LOGIC;
  signal \acc_B[7]_i_3_n_0\ : STD_LOGIC;
  signal \acc_B[7]_i_4_n_0\ : STD_LOGIC;
  signal \acc_B[7]_i_5_n_0\ : STD_LOGIC;
  signal \acc_B_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \acc_B_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \acc_B_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \acc_B_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[0]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[10]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[11]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[12]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[13]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[14]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[15]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[16]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[17]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[18]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[19]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[1]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[20]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[21]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[22]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[23]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[24]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[25]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[26]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[27]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[28]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[29]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[2]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[30]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[31]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[3]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[4]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[5]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[6]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[7]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[8]\ : STD_LOGIC;
  signal \acc_B_reg_n_0_[9]\ : STD_LOGIC;
  signal acc_G : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \acc_G[11]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[11]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[11]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[11]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[15]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[15]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[15]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[15]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[19]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[19]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[19]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[19]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[23]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[23]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[23]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[23]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[27]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[27]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[27]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[27]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[31]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[31]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[31]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[31]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[3]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[3]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[3]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[3]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G[7]_i_2_n_0\ : STD_LOGIC;
  signal \acc_G[7]_i_3_n_0\ : STD_LOGIC;
  signal \acc_G[7]_i_4_n_0\ : STD_LOGIC;
  signal \acc_G[7]_i_5_n_0\ : STD_LOGIC;
  signal \acc_G_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \acc_G_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \acc_G_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \acc_G_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[0]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[10]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[11]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[12]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[13]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[14]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[15]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[16]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[17]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[18]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[19]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[1]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[20]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[21]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[22]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[23]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[24]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[25]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[26]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[27]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[28]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[29]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[2]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[30]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[31]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[3]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[4]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[5]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[6]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[7]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[8]\ : STD_LOGIC;
  signal \acc_G_reg_n_0_[9]\ : STD_LOGIC;
  signal acc_R0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \acc_R[31]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R[3]_i_2_n_0\ : STD_LOGIC;
  signal \acc_R[3]_i_3_n_0\ : STD_LOGIC;
  signal \acc_R[3]_i_4_n_0\ : STD_LOGIC;
  signal \acc_R[3]_i_5_n_0\ : STD_LOGIC;
  signal \acc_R[7]_i_2_n_0\ : STD_LOGIC;
  signal \acc_R[7]_i_3_n_0\ : STD_LOGIC;
  signal \acc_R[7]_i_4_n_0\ : STD_LOGIC;
  signal \acc_R[7]_i_5_n_0\ : STD_LOGIC;
  signal \acc_R_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \acc_R_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \acc_R_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \acc_R_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \acc_R_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \acc_R_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \acc_R_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[0]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[10]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[11]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[12]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[13]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[14]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[15]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[16]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[17]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[18]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[19]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[1]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[20]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[21]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[22]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[23]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[24]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[25]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[26]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[27]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[28]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[29]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[2]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[30]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[31]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[3]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[4]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[5]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[6]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[7]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[8]\ : STD_LOGIC;
  signal \acc_R_reg_n_0_[9]\ : STD_LOGIC;
  signal active_gB : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal active_gR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \active_gR[0]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[1]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[2]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[3]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[4]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[5]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[6]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[7]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[8]_i_1_n_0\ : STD_LOGIC;
  signal \active_gR[9]_i_1_n_0\ : STD_LOGIC;
  signal dchan : STD_LOGIC;
  signal dchan_reg_n_0 : STD_LOGIC;
  signal dcnt : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \dcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dcnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \dcnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \dcnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \dcnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \dcnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \dcnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \dcnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \dcnt_reg_n_0_[5]\ : STD_LOGIC;
  signal dden : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dden[0]_i_1_n_0\ : STD_LOGIC;
  signal \dden[10]_i_1_n_0\ : STD_LOGIC;
  signal \dden[11]_i_1_n_0\ : STD_LOGIC;
  signal \dden[12]_i_1_n_0\ : STD_LOGIC;
  signal \dden[13]_i_1_n_0\ : STD_LOGIC;
  signal \dden[14]_i_1_n_0\ : STD_LOGIC;
  signal \dden[15]_i_1_n_0\ : STD_LOGIC;
  signal \dden[16]_i_1_n_0\ : STD_LOGIC;
  signal \dden[17]_i_1_n_0\ : STD_LOGIC;
  signal \dden[18]_i_1_n_0\ : STD_LOGIC;
  signal \dden[19]_i_1_n_0\ : STD_LOGIC;
  signal \dden[1]_i_1_n_0\ : STD_LOGIC;
  signal \dden[20]_i_1_n_0\ : STD_LOGIC;
  signal \dden[21]_i_1_n_0\ : STD_LOGIC;
  signal \dden[22]_i_1_n_0\ : STD_LOGIC;
  signal \dden[23]_i_1_n_0\ : STD_LOGIC;
  signal \dden[24]_i_1_n_0\ : STD_LOGIC;
  signal \dden[25]_i_1_n_0\ : STD_LOGIC;
  signal \dden[26]_i_1_n_0\ : STD_LOGIC;
  signal \dden[27]_i_1_n_0\ : STD_LOGIC;
  signal \dden[28]_i_1_n_0\ : STD_LOGIC;
  signal \dden[29]_i_1_n_0\ : STD_LOGIC;
  signal \dden[2]_i_1_n_0\ : STD_LOGIC;
  signal \dden[30]_i_1_n_0\ : STD_LOGIC;
  signal \dden[31]_i_1_n_0\ : STD_LOGIC;
  signal \dden[3]_i_1_n_0\ : STD_LOGIC;
  signal \dden[4]_i_1_n_0\ : STD_LOGIC;
  signal \dden[5]_i_1_n_0\ : STD_LOGIC;
  signal \dden[6]_i_1_n_0\ : STD_LOGIC;
  signal \dden[7]_i_1_n_0\ : STD_LOGIC;
  signal \dden[8]_i_1_n_0\ : STD_LOGIC;
  signal \dden[9]_i_1_n_0\ : STD_LOGIC;
  signal div_go : STD_LOGIC;
  signal dnum : STD_LOGIC_VECTOR ( 39 downto 8 );
  signal \dquot[0]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[10]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[11]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[12]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[13]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[14]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[15]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[16]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[17]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[18]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[19]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[1]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[20]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[21]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[22]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[23]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[24]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[25]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[26]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[27]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[28]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[29]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[2]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[30]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[31]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[32]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[33]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[34]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[35]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[36]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[37]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[38]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[39]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[3]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[4]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[5]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[6]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[7]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[8]_i_1_n_0\ : STD_LOGIC;
  signal \dquot[9]_i_1_n_0\ : STD_LOGIC;
  signal \dquot_reg_n_0_[0]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[10]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[11]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[12]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[13]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[14]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[15]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[16]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[17]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[18]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[19]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[1]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[20]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[21]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[22]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[23]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[24]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[25]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[26]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[27]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[28]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[29]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[2]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[30]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[31]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[32]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[33]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[34]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[35]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[36]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[37]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[38]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[39]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[3]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[4]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[5]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[6]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[7]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[8]\ : STD_LOGIC;
  signal \dquot_reg_n_0_[9]\ : STD_LOGIC;
  signal drem : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \drem[0]_i_1_n_0\ : STD_LOGIC;
  signal \drem[10]_i_1_n_0\ : STD_LOGIC;
  signal \drem[10]_i_3_n_0\ : STD_LOGIC;
  signal \drem[10]_i_4_n_0\ : STD_LOGIC;
  signal \drem[10]_i_5_n_0\ : STD_LOGIC;
  signal \drem[10]_i_6_n_0\ : STD_LOGIC;
  signal \drem[11]_i_1_n_0\ : STD_LOGIC;
  signal \drem[12]_i_1_n_0\ : STD_LOGIC;
  signal \drem[13]_i_1_n_0\ : STD_LOGIC;
  signal \drem[14]_i_1_n_0\ : STD_LOGIC;
  signal \drem[14]_i_3_n_0\ : STD_LOGIC;
  signal \drem[14]_i_4_n_0\ : STD_LOGIC;
  signal \drem[14]_i_5_n_0\ : STD_LOGIC;
  signal \drem[14]_i_6_n_0\ : STD_LOGIC;
  signal \drem[15]_i_1_n_0\ : STD_LOGIC;
  signal \drem[16]_i_1_n_0\ : STD_LOGIC;
  signal \drem[17]_i_1_n_0\ : STD_LOGIC;
  signal \drem[18]_i_1_n_0\ : STD_LOGIC;
  signal \drem[18]_i_3_n_0\ : STD_LOGIC;
  signal \drem[18]_i_4_n_0\ : STD_LOGIC;
  signal \drem[18]_i_5_n_0\ : STD_LOGIC;
  signal \drem[18]_i_6_n_0\ : STD_LOGIC;
  signal \drem[19]_i_1_n_0\ : STD_LOGIC;
  signal \drem[1]_i_1_n_0\ : STD_LOGIC;
  signal \drem[20]_i_1_n_0\ : STD_LOGIC;
  signal \drem[21]_i_1_n_0\ : STD_LOGIC;
  signal \drem[22]_i_1_n_0\ : STD_LOGIC;
  signal \drem[22]_i_3_n_0\ : STD_LOGIC;
  signal \drem[22]_i_4_n_0\ : STD_LOGIC;
  signal \drem[22]_i_5_n_0\ : STD_LOGIC;
  signal \drem[22]_i_6_n_0\ : STD_LOGIC;
  signal \drem[23]_i_1_n_0\ : STD_LOGIC;
  signal \drem[24]_i_1_n_0\ : STD_LOGIC;
  signal \drem[25]_i_1_n_0\ : STD_LOGIC;
  signal \drem[26]_i_1_n_0\ : STD_LOGIC;
  signal \drem[26]_i_3_n_0\ : STD_LOGIC;
  signal \drem[26]_i_4_n_0\ : STD_LOGIC;
  signal \drem[26]_i_5_n_0\ : STD_LOGIC;
  signal \drem[26]_i_6_n_0\ : STD_LOGIC;
  signal \drem[27]_i_1_n_0\ : STD_LOGIC;
  signal \drem[28]_i_1_n_0\ : STD_LOGIC;
  signal \drem[29]_i_1_n_0\ : STD_LOGIC;
  signal \drem[2]_i_1_n_0\ : STD_LOGIC;
  signal \drem[2]_i_3_n_0\ : STD_LOGIC;
  signal \drem[2]_i_4_n_0\ : STD_LOGIC;
  signal \drem[2]_i_5_n_0\ : STD_LOGIC;
  signal \drem[30]_i_1_n_0\ : STD_LOGIC;
  signal \drem[30]_i_3_n_0\ : STD_LOGIC;
  signal \drem[30]_i_4_n_0\ : STD_LOGIC;
  signal \drem[30]_i_5_n_0\ : STD_LOGIC;
  signal \drem[30]_i_6_n_0\ : STD_LOGIC;
  signal \drem[31]_i_1_n_0\ : STD_LOGIC;
  signal \drem[32]_i_1_n_0\ : STD_LOGIC;
  signal \drem[33]_i_1_n_0\ : STD_LOGIC;
  signal \drem[34]_i_1_n_0\ : STD_LOGIC;
  signal \drem[34]_i_3_n_0\ : STD_LOGIC;
  signal \drem[34]_i_4_n_0\ : STD_LOGIC;
  signal \drem[34]_i_5_n_0\ : STD_LOGIC;
  signal \drem[34]_i_6_n_0\ : STD_LOGIC;
  signal \drem[34]_i_7_n_0\ : STD_LOGIC;
  signal \drem[35]_i_1_n_0\ : STD_LOGIC;
  signal \drem[36]_i_1_n_0\ : STD_LOGIC;
  signal \drem[37]_i_1_n_0\ : STD_LOGIC;
  signal \drem[38]_i_1_n_0\ : STD_LOGIC;
  signal \drem[38]_i_3_n_0\ : STD_LOGIC;
  signal \drem[38]_i_4_n_0\ : STD_LOGIC;
  signal \drem[38]_i_5_n_0\ : STD_LOGIC;
  signal \drem[38]_i_6_n_0\ : STD_LOGIC;
  signal \drem[39]_i_1_n_0\ : STD_LOGIC;
  signal \drem[39]_i_3_n_0\ : STD_LOGIC;
  signal \drem[3]_i_1_n_0\ : STD_LOGIC;
  signal \drem[4]_i_1_n_0\ : STD_LOGIC;
  signal \drem[5]_i_1_n_0\ : STD_LOGIC;
  signal \drem[6]_i_1_n_0\ : STD_LOGIC;
  signal \drem[6]_i_3_n_0\ : STD_LOGIC;
  signal \drem[6]_i_4_n_0\ : STD_LOGIC;
  signal \drem[6]_i_5_n_0\ : STD_LOGIC;
  signal \drem[6]_i_6_n_0\ : STD_LOGIC;
  signal \drem[7]_i_1_n_0\ : STD_LOGIC;
  signal \drem[8]_i_1_n_0\ : STD_LOGIC;
  signal \drem[9]_i_1_n_0\ : STD_LOGIC;
  signal drem_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \drem_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[14]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[18]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[22]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[30]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[34]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[38]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[39]_i_2_n_7\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_4\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \drem_reg[6]_i_2_n_7\ : STD_LOGIC;
  signal dzero : STD_LOGIC;
  signal dzero_4 : STD_LOGIC;
  signal dzero_i_10_n_0 : STD_LOGIC;
  signal dzero_i_11_n_0 : STD_LOGIC;
  signal dzero_i_12_n_0 : STD_LOGIC;
  signal dzero_i_13_n_0 : STD_LOGIC;
  signal dzero_i_14_n_0 : STD_LOGIC;
  signal dzero_i_2_n_0 : STD_LOGIC;
  signal dzero_i_3_n_0 : STD_LOGIC;
  signal dzero_i_4_n_0 : STD_LOGIC;
  signal dzero_i_5_n_0 : STD_LOGIC;
  signal dzero_i_6_n_0 : STD_LOGIC;
  signal dzero_i_7_n_0 : STD_LOGIC;
  signal dzero_i_8_n_0 : STD_LOGIC;
  signal dzero_i_9_n_0 : STD_LOGIC;
  signal ge : STD_LOGIC;
  signal \ge_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ge_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ge_carry__0_n_0\ : STD_LOGIC;
  signal \ge_carry__0_n_1\ : STD_LOGIC;
  signal \ge_carry__0_n_2\ : STD_LOGIC;
  signal \ge_carry__0_n_3\ : STD_LOGIC;
  signal \ge_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ge_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ge_carry__1_n_0\ : STD_LOGIC;
  signal \ge_carry__1_n_1\ : STD_LOGIC;
  signal \ge_carry__1_n_2\ : STD_LOGIC;
  signal \ge_carry__1_n_3\ : STD_LOGIC;
  signal \ge_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ge_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ge_carry__2_n_0\ : STD_LOGIC;
  signal \ge_carry__2_n_1\ : STD_LOGIC;
  signal \ge_carry__2_n_2\ : STD_LOGIC;
  signal \ge_carry__2_n_3\ : STD_LOGIC;
  signal \ge_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \ge_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \ge_carry__3_n_0\ : STD_LOGIC;
  signal \ge_carry__3_n_1\ : STD_LOGIC;
  signal \ge_carry__3_n_2\ : STD_LOGIC;
  signal \ge_carry__3_n_3\ : STD_LOGIC;
  signal \ge_carry__4_i_1_n_0\ : STD_LOGIC;
  signal ge_carry_i_1_n_0 : STD_LOGIC;
  signal ge_carry_i_2_n_0 : STD_LOGIC;
  signal ge_carry_i_3_n_0 : STD_LOGIC;
  signal ge_carry_i_4_n_0 : STD_LOGIC;
  signal ge_carry_i_5_n_0 : STD_LOGIC;
  signal ge_carry_i_6_n_0 : STD_LOGIC;
  signal ge_carry_i_7_n_0 : STD_LOGIC;
  signal ge_carry_i_8_n_0 : STD_LOGIC;
  signal ge_carry_n_0 : STD_LOGIC;
  signal ge_carry_n_1 : STD_LOGIC;
  signal ge_carry_n_2 : STD_LOGIC;
  signal ge_carry_n_3 : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 39 downto 8 );
  signal in13 : STD_LOGIC_VECTOR ( 39 downto 9 );
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal \mulB__0\ : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal mulB_n_100 : STD_LOGIC;
  signal mulB_n_101 : STD_LOGIC;
  signal mulB_n_102 : STD_LOGIC;
  signal mulB_n_103 : STD_LOGIC;
  signal mulB_n_104 : STD_LOGIC;
  signal mulB_n_105 : STD_LOGIC;
  signal mulB_n_98 : STD_LOGIC;
  signal mulB_n_99 : STD_LOGIC;
  signal \mulR__0\ : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal mulR_n_100 : STD_LOGIC;
  signal mulR_n_101 : STD_LOGIC;
  signal mulR_n_102 : STD_LOGIC;
  signal mulR_n_103 : STD_LOGIC;
  signal mulR_n_104 : STD_LOGIC;
  signal mulR_n_105 : STD_LOGIC;
  signal mulR_n_98 : STD_LOGIC;
  signal mulR_n_99 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pending_gB : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pending_gB[5]_i_2_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_10_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_3_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_4_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_5_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_6_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_7_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_8_n_0\ : STD_LOGIC;
  signal \pending_gB[9]_i_9_n_0\ : STD_LOGIC;
  signal pending_gB_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pending_gR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pending_gR_3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal snap_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal snap_R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sof : STD_LOGIC;
  signal \NLW_acc_B_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_acc_G_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_acc_R_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_drem_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_drem_reg[39]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_drem_reg[39]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ge_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ge_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ge_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ge_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ge_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ge_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ge_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mulB_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulB_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulB_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mulB_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulB_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulB_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mulB_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mulB_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mulB_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mulB_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_mulB_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mulR_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulR_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulR_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mulR_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulR_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mulR_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mulR_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mulR_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mulR_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mulR_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_mulR_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_dstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_dstate[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_dstate[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_dstate_reg[0]\ : label is "D_FIN:100,D_IDLE:001,D_RUN:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_dstate_reg[1]\ : label is "D_FIN:100,D_IDLE:001,D_RUN:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_dstate_reg[2]\ : label is "D_FIN:100,D_IDLE:001,D_RUN:010";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_B_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_B_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_G_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_R_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \dcnt[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \dcnt[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \dcnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dquot[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dquot[10]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dquot[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dquot[12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dquot[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dquot[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dquot[15]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dquot[16]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dquot[17]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dquot[18]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dquot[19]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dquot[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dquot[20]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dquot[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dquot[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dquot[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dquot[24]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dquot[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dquot[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dquot[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dquot[28]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dquot[29]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dquot[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dquot[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dquot[31]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dquot[32]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dquot[33]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dquot[34]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dquot[35]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dquot[36]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dquot[37]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dquot[38]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dquot[39]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dquot[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dquot[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dquot[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dquot[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dquot[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dquot[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dquot[9]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \drem[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \drem[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \drem[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \drem[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \drem[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \drem[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \drem[15]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \drem[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \drem[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \drem[18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \drem[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \drem[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \drem[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \drem[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \drem[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \drem[23]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \drem[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \drem[25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \drem[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \drem[27]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \drem[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \drem[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \drem[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \drem[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \drem[31]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \drem[32]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \drem[33]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \drem[34]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \drem[35]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \drem[36]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \drem[37]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \drem[38]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \drem[39]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \drem[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \drem[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \drem[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \drem[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \drem[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \drem[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \drem[9]_i_1\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD of \drem_reg[10]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[14]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[18]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[22]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[26]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[2]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[30]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[34]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[38]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[39]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \drem_reg[6]_i_2\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ge_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ge_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ge_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ge_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ge_carry__3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ge_carry__4\ : label is 11;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair55";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mulB : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mulR : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \pending_gB[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pending_gB[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pending_gB[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pending_gB[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pending_gB[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pending_gB[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pending_gB[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pending_gB[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair55";
begin
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
\FSM_onehot_dstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I1 => dchan_reg_n_0,
      I2 => \FSM_onehot_dstate[2]_i_2_n_0\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      O => \FSM_onehot_dstate[0]_i_1_n_0\
    );
\FSM_onehot_dstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => dchan_reg_n_0,
      I1 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I2 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I3 => \FSM_onehot_dstate[2]_i_2_n_0\,
      I4 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => \FSM_onehot_dstate[1]_i_1_n_0\
    );
\FSM_onehot_dstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \FSM_onehot_dstate[2]_i_2_n_0\,
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \FSM_onehot_dstate[2]_i_1_n_0\
    );
\FSM_onehot_dstate[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I1 => div_go,
      I2 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I3 => \dcnt_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate[2]_i_3_n_0\,
      O => \FSM_onehot_dstate[2]_i_2_n_0\
    );
\FSM_onehot_dstate[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \dcnt_reg_n_0_[3]\,
      I1 => \dcnt_reg_n_0_[4]\,
      I2 => \dcnt_reg_n_0_[1]\,
      I3 => \dcnt_reg_n_0_[2]\,
      I4 => \dcnt_reg_n_0_[5]\,
      I5 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => \FSM_onehot_dstate[2]_i_3_n_0\
    );
\FSM_onehot_dstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_dstate[0]_i_1_n_0\,
      Q => \FSM_onehot_dstate_reg_n_0_[0]\,
      S => \m_axis_tdata[23]_i_1_n_0\
    );
\FSM_onehot_dstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_dstate[1]_i_1_n_0\,
      Q => \FSM_onehot_dstate_reg_n_0_[1]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\FSM_onehot_dstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_dstate[2]_i_1_n_0\,
      Q => \FSM_onehot_dstate_reg_n_0_[2]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => \acc_B[11]_i_2_n_0\
    );
\acc_B[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => \acc_B[11]_i_3_n_0\
    );
\acc_B[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => \acc_B[11]_i_4_n_0\
    );
\acc_B[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => \acc_B[11]_i_5_n_0\
    );
\acc_B[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[15]\,
      I1 => s_axis_tuser,
      O => \acc_B[15]_i_2_n_0\
    );
\acc_B[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[14]\,
      I1 => s_axis_tuser,
      O => \acc_B[15]_i_3_n_0\
    );
\acc_B[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[13]\,
      I1 => s_axis_tuser,
      O => \acc_B[15]_i_4_n_0\
    );
\acc_B[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[12]\,
      I1 => s_axis_tuser,
      O => \acc_B[15]_i_5_n_0\
    );
\acc_B[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[19]\,
      I1 => s_axis_tuser,
      O => \acc_B[19]_i_2_n_0\
    );
\acc_B[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[18]\,
      I1 => s_axis_tuser,
      O => \acc_B[19]_i_3_n_0\
    );
\acc_B[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[17]\,
      I1 => s_axis_tuser,
      O => \acc_B[19]_i_4_n_0\
    );
\acc_B[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[16]\,
      I1 => s_axis_tuser,
      O => \acc_B[19]_i_5_n_0\
    );
\acc_B[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[23]\,
      I1 => s_axis_tuser,
      O => \acc_B[23]_i_2_n_0\
    );
\acc_B[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[22]\,
      I1 => s_axis_tuser,
      O => \acc_B[23]_i_3_n_0\
    );
\acc_B[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[21]\,
      I1 => s_axis_tuser,
      O => \acc_B[23]_i_4_n_0\
    );
\acc_B[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[20]\,
      I1 => s_axis_tuser,
      O => \acc_B[23]_i_5_n_0\
    );
\acc_B[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[27]\,
      I1 => s_axis_tuser,
      O => \acc_B[27]_i_2_n_0\
    );
\acc_B[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[26]\,
      I1 => s_axis_tuser,
      O => \acc_B[27]_i_3_n_0\
    );
\acc_B[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[25]\,
      I1 => s_axis_tuser,
      O => \acc_B[27]_i_4_n_0\
    );
\acc_B[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[24]\,
      I1 => s_axis_tuser,
      O => \acc_B[27]_i_5_n_0\
    );
\acc_B[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[31]\,
      I1 => s_axis_tuser,
      O => \acc_B[31]_i_2_n_0\
    );
\acc_B[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[30]\,
      I1 => s_axis_tuser,
      O => \acc_B[31]_i_3_n_0\
    );
\acc_B[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[29]\,
      I1 => s_axis_tuser,
      O => \acc_B[31]_i_4_n_0\
    );
\acc_B[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_B_reg_n_0_[28]\,
      I1 => s_axis_tuser,
      O => \acc_B[31]_i_5_n_0\
    );
\acc_B[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[3]\,
      I2 => s_axis_tdata(3),
      O => \acc_B[3]_i_2_n_0\
    );
\acc_B[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[2]\,
      I2 => s_axis_tdata(2),
      O => \acc_B[3]_i_3_n_0\
    );
\acc_B[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[1]\,
      I2 => s_axis_tdata(1),
      O => \acc_B[3]_i_4_n_0\
    );
\acc_B[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[0]\,
      I2 => s_axis_tdata(0),
      O => \acc_B[3]_i_5_n_0\
    );
\acc_B[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[7]\,
      I2 => s_axis_tdata(7),
      O => \acc_B[7]_i_2_n_0\
    );
\acc_B[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[6]\,
      I2 => s_axis_tdata(6),
      O => \acc_B[7]_i_3_n_0\
    );
\acc_B[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[5]\,
      I2 => s_axis_tdata(5),
      O => \acc_B[7]_i_4_n_0\
    );
\acc_B[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_B_reg_n_0_[4]\,
      I2 => s_axis_tdata(4),
      O => \acc_B[7]_i_5_n_0\
    );
\acc_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(0),
      Q => \acc_B_reg_n_0_[0]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(10),
      Q => \acc_B_reg_n_0_[10]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(11),
      Q => \acc_B_reg_n_0_[11]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[7]_i_1_n_0\,
      CO(3) => \acc_B_reg[11]_i_1_n_0\,
      CO(2) => \acc_B_reg[11]_i_1_n_1\,
      CO(1) => \acc_B_reg[11]_i_1_n_2\,
      CO(0) => \acc_B_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_B(11 downto 8),
      S(3) => \acc_B[11]_i_2_n_0\,
      S(2) => \acc_B[11]_i_3_n_0\,
      S(1) => \acc_B[11]_i_4_n_0\,
      S(0) => \acc_B[11]_i_5_n_0\
    );
\acc_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(12),
      Q => \acc_B_reg_n_0_[12]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(13),
      Q => \acc_B_reg_n_0_[13]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(14),
      Q => \acc_B_reg_n_0_[14]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(15),
      Q => \acc_B_reg_n_0_[15]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[11]_i_1_n_0\,
      CO(3) => \acc_B_reg[15]_i_1_n_0\,
      CO(2) => \acc_B_reg[15]_i_1_n_1\,
      CO(1) => \acc_B_reg[15]_i_1_n_2\,
      CO(0) => \acc_B_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_B(15 downto 12),
      S(3) => \acc_B[15]_i_2_n_0\,
      S(2) => \acc_B[15]_i_3_n_0\,
      S(1) => \acc_B[15]_i_4_n_0\,
      S(0) => \acc_B[15]_i_5_n_0\
    );
\acc_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(16),
      Q => \acc_B_reg_n_0_[16]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(17),
      Q => \acc_B_reg_n_0_[17]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(18),
      Q => \acc_B_reg_n_0_[18]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(19),
      Q => \acc_B_reg_n_0_[19]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[15]_i_1_n_0\,
      CO(3) => \acc_B_reg[19]_i_1_n_0\,
      CO(2) => \acc_B_reg[19]_i_1_n_1\,
      CO(1) => \acc_B_reg[19]_i_1_n_2\,
      CO(0) => \acc_B_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_B(19 downto 16),
      S(3) => \acc_B[19]_i_2_n_0\,
      S(2) => \acc_B[19]_i_3_n_0\,
      S(1) => \acc_B[19]_i_4_n_0\,
      S(0) => \acc_B[19]_i_5_n_0\
    );
\acc_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(1),
      Q => \acc_B_reg_n_0_[1]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(20),
      Q => \acc_B_reg_n_0_[20]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(21),
      Q => \acc_B_reg_n_0_[21]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(22),
      Q => \acc_B_reg_n_0_[22]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(23),
      Q => \acc_B_reg_n_0_[23]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[19]_i_1_n_0\,
      CO(3) => \acc_B_reg[23]_i_1_n_0\,
      CO(2) => \acc_B_reg[23]_i_1_n_1\,
      CO(1) => \acc_B_reg[23]_i_1_n_2\,
      CO(0) => \acc_B_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_B(23 downto 20),
      S(3) => \acc_B[23]_i_2_n_0\,
      S(2) => \acc_B[23]_i_3_n_0\,
      S(1) => \acc_B[23]_i_4_n_0\,
      S(0) => \acc_B[23]_i_5_n_0\
    );
\acc_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(24),
      Q => \acc_B_reg_n_0_[24]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(25),
      Q => \acc_B_reg_n_0_[25]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(26),
      Q => \acc_B_reg_n_0_[26]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(27),
      Q => \acc_B_reg_n_0_[27]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[23]_i_1_n_0\,
      CO(3) => \acc_B_reg[27]_i_1_n_0\,
      CO(2) => \acc_B_reg[27]_i_1_n_1\,
      CO(1) => \acc_B_reg[27]_i_1_n_2\,
      CO(0) => \acc_B_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_B(27 downto 24),
      S(3) => \acc_B[27]_i_2_n_0\,
      S(2) => \acc_B[27]_i_3_n_0\,
      S(1) => \acc_B[27]_i_4_n_0\,
      S(0) => \acc_B[27]_i_5_n_0\
    );
\acc_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(28),
      Q => \acc_B_reg_n_0_[28]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(29),
      Q => \acc_B_reg_n_0_[29]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(2),
      Q => \acc_B_reg_n_0_[2]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(30),
      Q => \acc_B_reg_n_0_[30]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(31),
      Q => \acc_B_reg_n_0_[31]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[27]_i_1_n_0\,
      CO(3) => \NLW_acc_B_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \acc_B_reg[31]_i_1_n_1\,
      CO(1) => \acc_B_reg[31]_i_1_n_2\,
      CO(0) => \acc_B_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_B(31 downto 28),
      S(3) => \acc_B[31]_i_2_n_0\,
      S(2) => \acc_B[31]_i_3_n_0\,
      S(1) => \acc_B[31]_i_4_n_0\,
      S(0) => \acc_B[31]_i_5_n_0\
    );
\acc_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(3),
      Q => \acc_B_reg_n_0_[3]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_B_reg[3]_i_1_n_0\,
      CO(2) => \acc_B_reg[3]_i_1_n_1\,
      CO(1) => \acc_B_reg[3]_i_1_n_2\,
      CO(0) => \acc_B_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(3 downto 0),
      O(3 downto 0) => acc_B(3 downto 0),
      S(3) => \acc_B[3]_i_2_n_0\,
      S(2) => \acc_B[3]_i_3_n_0\,
      S(1) => \acc_B[3]_i_4_n_0\,
      S(0) => \acc_B[3]_i_5_n_0\
    );
\acc_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(4),
      Q => \acc_B_reg_n_0_[4]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(5),
      Q => \acc_B_reg_n_0_[5]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(6),
      Q => \acc_B_reg_n_0_[6]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(7),
      Q => \acc_B_reg_n_0_[7]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_B_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_B_reg[3]_i_1_n_0\,
      CO(3) => \acc_B_reg[7]_i_1_n_0\,
      CO(2) => \acc_B_reg[7]_i_1_n_1\,
      CO(1) => \acc_B_reg[7]_i_1_n_2\,
      CO(0) => \acc_B_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(7 downto 4),
      O(3 downto 0) => acc_B(7 downto 4),
      S(3) => \acc_B[7]_i_2_n_0\,
      S(2) => \acc_B[7]_i_3_n_0\,
      S(1) => \acc_B[7]_i_4_n_0\,
      S(0) => \acc_B[7]_i_5_n_0\
    );
\acc_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(8),
      Q => \acc_B_reg_n_0_[8]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_B(9),
      Q => \acc_B_reg_n_0_[9]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => \acc_G[11]_i_2_n_0\
    );
\acc_G[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => \acc_G[11]_i_3_n_0\
    );
\acc_G[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => \acc_G[11]_i_4_n_0\
    );
\acc_G[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => \acc_G[11]_i_5_n_0\
    );
\acc_G[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[15]\,
      I1 => s_axis_tuser,
      O => \acc_G[15]_i_2_n_0\
    );
\acc_G[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[14]\,
      I1 => s_axis_tuser,
      O => \acc_G[15]_i_3_n_0\
    );
\acc_G[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[13]\,
      I1 => s_axis_tuser,
      O => \acc_G[15]_i_4_n_0\
    );
\acc_G[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[12]\,
      I1 => s_axis_tuser,
      O => \acc_G[15]_i_5_n_0\
    );
\acc_G[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[19]\,
      I1 => s_axis_tuser,
      O => \acc_G[19]_i_2_n_0\
    );
\acc_G[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[18]\,
      I1 => s_axis_tuser,
      O => \acc_G[19]_i_3_n_0\
    );
\acc_G[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[17]\,
      I1 => s_axis_tuser,
      O => \acc_G[19]_i_4_n_0\
    );
\acc_G[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[16]\,
      I1 => s_axis_tuser,
      O => \acc_G[19]_i_5_n_0\
    );
\acc_G[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[23]\,
      I1 => s_axis_tuser,
      O => \acc_G[23]_i_2_n_0\
    );
\acc_G[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[22]\,
      I1 => s_axis_tuser,
      O => \acc_G[23]_i_3_n_0\
    );
\acc_G[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[21]\,
      I1 => s_axis_tuser,
      O => \acc_G[23]_i_4_n_0\
    );
\acc_G[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[20]\,
      I1 => s_axis_tuser,
      O => \acc_G[23]_i_5_n_0\
    );
\acc_G[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[27]\,
      I1 => s_axis_tuser,
      O => \acc_G[27]_i_2_n_0\
    );
\acc_G[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[26]\,
      I1 => s_axis_tuser,
      O => \acc_G[27]_i_3_n_0\
    );
\acc_G[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[25]\,
      I1 => s_axis_tuser,
      O => \acc_G[27]_i_4_n_0\
    );
\acc_G[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[24]\,
      I1 => s_axis_tuser,
      O => \acc_G[27]_i_5_n_0\
    );
\acc_G[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[31]\,
      I1 => s_axis_tuser,
      O => \acc_G[31]_i_2_n_0\
    );
\acc_G[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[30]\,
      I1 => s_axis_tuser,
      O => \acc_G[31]_i_3_n_0\
    );
\acc_G[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[29]\,
      I1 => s_axis_tuser,
      O => \acc_G[31]_i_4_n_0\
    );
\acc_G[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_G_reg_n_0_[28]\,
      I1 => s_axis_tuser,
      O => \acc_G[31]_i_5_n_0\
    );
\acc_G[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[3]\,
      I2 => s_axis_tdata(11),
      O => \acc_G[3]_i_2_n_0\
    );
\acc_G[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[2]\,
      I2 => s_axis_tdata(10),
      O => \acc_G[3]_i_3_n_0\
    );
\acc_G[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[1]\,
      I2 => s_axis_tdata(9),
      O => \acc_G[3]_i_4_n_0\
    );
\acc_G[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[0]\,
      I2 => s_axis_tdata(8),
      O => \acc_G[3]_i_5_n_0\
    );
\acc_G[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[7]\,
      I2 => s_axis_tdata(15),
      O => \acc_G[7]_i_2_n_0\
    );
\acc_G[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[6]\,
      I2 => s_axis_tdata(14),
      O => \acc_G[7]_i_3_n_0\
    );
\acc_G[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[5]\,
      I2 => s_axis_tdata(13),
      O => \acc_G[7]_i_4_n_0\
    );
\acc_G[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_G_reg_n_0_[4]\,
      I2 => s_axis_tdata(12),
      O => \acc_G[7]_i_5_n_0\
    );
\acc_G_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(0),
      Q => \acc_G_reg_n_0_[0]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(10),
      Q => \acc_G_reg_n_0_[10]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(11),
      Q => \acc_G_reg_n_0_[11]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[7]_i_1_n_0\,
      CO(3) => \acc_G_reg[11]_i_1_n_0\,
      CO(2) => \acc_G_reg[11]_i_1_n_1\,
      CO(1) => \acc_G_reg[11]_i_1_n_2\,
      CO(0) => \acc_G_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_G(11 downto 8),
      S(3) => \acc_G[11]_i_2_n_0\,
      S(2) => \acc_G[11]_i_3_n_0\,
      S(1) => \acc_G[11]_i_4_n_0\,
      S(0) => \acc_G[11]_i_5_n_0\
    );
\acc_G_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(12),
      Q => \acc_G_reg_n_0_[12]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(13),
      Q => \acc_G_reg_n_0_[13]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(14),
      Q => \acc_G_reg_n_0_[14]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(15),
      Q => \acc_G_reg_n_0_[15]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[11]_i_1_n_0\,
      CO(3) => \acc_G_reg[15]_i_1_n_0\,
      CO(2) => \acc_G_reg[15]_i_1_n_1\,
      CO(1) => \acc_G_reg[15]_i_1_n_2\,
      CO(0) => \acc_G_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_G(15 downto 12),
      S(3) => \acc_G[15]_i_2_n_0\,
      S(2) => \acc_G[15]_i_3_n_0\,
      S(1) => \acc_G[15]_i_4_n_0\,
      S(0) => \acc_G[15]_i_5_n_0\
    );
\acc_G_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(16),
      Q => \acc_G_reg_n_0_[16]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(17),
      Q => \acc_G_reg_n_0_[17]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(18),
      Q => \acc_G_reg_n_0_[18]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(19),
      Q => \acc_G_reg_n_0_[19]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[15]_i_1_n_0\,
      CO(3) => \acc_G_reg[19]_i_1_n_0\,
      CO(2) => \acc_G_reg[19]_i_1_n_1\,
      CO(1) => \acc_G_reg[19]_i_1_n_2\,
      CO(0) => \acc_G_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_G(19 downto 16),
      S(3) => \acc_G[19]_i_2_n_0\,
      S(2) => \acc_G[19]_i_3_n_0\,
      S(1) => \acc_G[19]_i_4_n_0\,
      S(0) => \acc_G[19]_i_5_n_0\
    );
\acc_G_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(1),
      Q => \acc_G_reg_n_0_[1]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(20),
      Q => \acc_G_reg_n_0_[20]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(21),
      Q => \acc_G_reg_n_0_[21]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(22),
      Q => \acc_G_reg_n_0_[22]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(23),
      Q => \acc_G_reg_n_0_[23]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[19]_i_1_n_0\,
      CO(3) => \acc_G_reg[23]_i_1_n_0\,
      CO(2) => \acc_G_reg[23]_i_1_n_1\,
      CO(1) => \acc_G_reg[23]_i_1_n_2\,
      CO(0) => \acc_G_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_G(23 downto 20),
      S(3) => \acc_G[23]_i_2_n_0\,
      S(2) => \acc_G[23]_i_3_n_0\,
      S(1) => \acc_G[23]_i_4_n_0\,
      S(0) => \acc_G[23]_i_5_n_0\
    );
\acc_G_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(24),
      Q => \acc_G_reg_n_0_[24]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(25),
      Q => \acc_G_reg_n_0_[25]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(26),
      Q => \acc_G_reg_n_0_[26]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(27),
      Q => \acc_G_reg_n_0_[27]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[23]_i_1_n_0\,
      CO(3) => \acc_G_reg[27]_i_1_n_0\,
      CO(2) => \acc_G_reg[27]_i_1_n_1\,
      CO(1) => \acc_G_reg[27]_i_1_n_2\,
      CO(0) => \acc_G_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_G(27 downto 24),
      S(3) => \acc_G[27]_i_2_n_0\,
      S(2) => \acc_G[27]_i_3_n_0\,
      S(1) => \acc_G[27]_i_4_n_0\,
      S(0) => \acc_G[27]_i_5_n_0\
    );
\acc_G_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(28),
      Q => \acc_G_reg_n_0_[28]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(29),
      Q => \acc_G_reg_n_0_[29]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(2),
      Q => \acc_G_reg_n_0_[2]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(30),
      Q => \acc_G_reg_n_0_[30]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(31),
      Q => \acc_G_reg_n_0_[31]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[27]_i_1_n_0\,
      CO(3) => \NLW_acc_G_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \acc_G_reg[31]_i_1_n_1\,
      CO(1) => \acc_G_reg[31]_i_1_n_2\,
      CO(0) => \acc_G_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_G(31 downto 28),
      S(3) => \acc_G[31]_i_2_n_0\,
      S(2) => \acc_G[31]_i_3_n_0\,
      S(1) => \acc_G[31]_i_4_n_0\,
      S(0) => \acc_G[31]_i_5_n_0\
    );
\acc_G_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(3),
      Q => \acc_G_reg_n_0_[3]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_G_reg[3]_i_1_n_0\,
      CO(2) => \acc_G_reg[3]_i_1_n_1\,
      CO(1) => \acc_G_reg[3]_i_1_n_2\,
      CO(0) => \acc_G_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(11 downto 8),
      O(3 downto 0) => acc_G(3 downto 0),
      S(3) => \acc_G[3]_i_2_n_0\,
      S(2) => \acc_G[3]_i_3_n_0\,
      S(1) => \acc_G[3]_i_4_n_0\,
      S(0) => \acc_G[3]_i_5_n_0\
    );
\acc_G_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(4),
      Q => \acc_G_reg_n_0_[4]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(5),
      Q => \acc_G_reg_n_0_[5]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(6),
      Q => \acc_G_reg_n_0_[6]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(7),
      Q => \acc_G_reg_n_0_[7]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_G_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_G_reg[3]_i_1_n_0\,
      CO(3) => \acc_G_reg[7]_i_1_n_0\,
      CO(2) => \acc_G_reg[7]_i_1_n_1\,
      CO(1) => \acc_G_reg[7]_i_1_n_2\,
      CO(0) => \acc_G_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(15 downto 12),
      O(3 downto 0) => acc_G(7 downto 4),
      S(3) => \acc_G[7]_i_2_n_0\,
      S(2) => \acc_G[7]_i_3_n_0\,
      S(1) => \acc_G[7]_i_4_n_0\,
      S(0) => \acc_G[7]_i_5_n_0\
    );
\acc_G_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(8),
      Q => \acc_G_reg_n_0_[8]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_G_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_G(9),
      Q => \acc_G_reg_n_0_[9]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => p_0_in(11)
    );
\acc_R[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => p_0_in(10)
    );
\acc_R[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => p_0_in(9)
    );
\acc_R[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => p_0_in(8)
    );
\acc_R[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[15]\,
      I1 => s_axis_tuser,
      O => p_0_in(15)
    );
\acc_R[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[14]\,
      I1 => s_axis_tuser,
      O => p_0_in(14)
    );
\acc_R[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[13]\,
      I1 => s_axis_tuser,
      O => p_0_in(13)
    );
\acc_R[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[12]\,
      I1 => s_axis_tuser,
      O => p_0_in(12)
    );
\acc_R[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[19]\,
      I1 => s_axis_tuser,
      O => p_0_in(19)
    );
\acc_R[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[18]\,
      I1 => s_axis_tuser,
      O => p_0_in(18)
    );
\acc_R[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[17]\,
      I1 => s_axis_tuser,
      O => p_0_in(17)
    );
\acc_R[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[16]\,
      I1 => s_axis_tuser,
      O => p_0_in(16)
    );
\acc_R[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[23]\,
      I1 => s_axis_tuser,
      O => p_0_in(23)
    );
\acc_R[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[22]\,
      I1 => s_axis_tuser,
      O => p_0_in(22)
    );
\acc_R[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[21]\,
      I1 => s_axis_tuser,
      O => p_0_in(21)
    );
\acc_R[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[20]\,
      I1 => s_axis_tuser,
      O => p_0_in(20)
    );
\acc_R[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[27]\,
      I1 => s_axis_tuser,
      O => p_0_in(27)
    );
\acc_R[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[26]\,
      I1 => s_axis_tuser,
      O => p_0_in(26)
    );
\acc_R[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[25]\,
      I1 => s_axis_tuser,
      O => p_0_in(25)
    );
\acc_R[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[24]\,
      I1 => s_axis_tuser,
      O => p_0_in(24)
    );
\acc_R[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => s_axis_tvalid,
      I3 => s_axis_tuser,
      I4 => aresetn,
      O => \acc_R[31]_i_1_n_0\
    );
\acc_R[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[31]\,
      I1 => s_axis_tuser,
      O => p_0_in(31)
    );
\acc_R[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[30]\,
      I1 => s_axis_tuser,
      O => p_0_in(30)
    );
\acc_R[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[29]\,
      I1 => s_axis_tuser,
      O => p_0_in(29)
    );
\acc_R[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acc_R_reg_n_0_[28]\,
      I1 => s_axis_tuser,
      O => p_0_in(28)
    );
\acc_R[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[3]\,
      I2 => s_axis_tdata(19),
      O => \acc_R[3]_i_2_n_0\
    );
\acc_R[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[2]\,
      I2 => s_axis_tdata(18),
      O => \acc_R[3]_i_3_n_0\
    );
\acc_R[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[1]\,
      I2 => s_axis_tdata(17),
      O => \acc_R[3]_i_4_n_0\
    );
\acc_R[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[0]\,
      I2 => s_axis_tdata(16),
      O => \acc_R[3]_i_5_n_0\
    );
\acc_R[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[7]\,
      I2 => s_axis_tdata(23),
      O => \acc_R[7]_i_2_n_0\
    );
\acc_R[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[6]\,
      I2 => s_axis_tdata(22),
      O => \acc_R[7]_i_3_n_0\
    );
\acc_R[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[5]\,
      I2 => s_axis_tdata(21),
      O => \acc_R[7]_i_4_n_0\
    );
\acc_R[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \acc_R_reg_n_0_[4]\,
      I2 => s_axis_tdata(20),
      O => \acc_R[7]_i_5_n_0\
    );
\acc_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(0),
      Q => \acc_R_reg_n_0_[0]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(10),
      Q => \acc_R_reg_n_0_[10]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(11),
      Q => \acc_R_reg_n_0_[11]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[7]_i_1_n_0\,
      CO(3) => \acc_R_reg[11]_i_1_n_0\,
      CO(2) => \acc_R_reg[11]_i_1_n_1\,
      CO(1) => \acc_R_reg[11]_i_1_n_2\,
      CO(0) => \acc_R_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_R0_in(11 downto 8),
      S(3 downto 0) => p_0_in(11 downto 8)
    );
\acc_R_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(12),
      Q => \acc_R_reg_n_0_[12]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(13),
      Q => \acc_R_reg_n_0_[13]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(14),
      Q => \acc_R_reg_n_0_[14]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(15),
      Q => \acc_R_reg_n_0_[15]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[11]_i_1_n_0\,
      CO(3) => \acc_R_reg[15]_i_1_n_0\,
      CO(2) => \acc_R_reg[15]_i_1_n_1\,
      CO(1) => \acc_R_reg[15]_i_1_n_2\,
      CO(0) => \acc_R_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_R0_in(15 downto 12),
      S(3 downto 0) => p_0_in(15 downto 12)
    );
\acc_R_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(16),
      Q => \acc_R_reg_n_0_[16]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(17),
      Q => \acc_R_reg_n_0_[17]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(18),
      Q => \acc_R_reg_n_0_[18]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(19),
      Q => \acc_R_reg_n_0_[19]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[15]_i_1_n_0\,
      CO(3) => \acc_R_reg[19]_i_1_n_0\,
      CO(2) => \acc_R_reg[19]_i_1_n_1\,
      CO(1) => \acc_R_reg[19]_i_1_n_2\,
      CO(0) => \acc_R_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_R0_in(19 downto 16),
      S(3 downto 0) => p_0_in(19 downto 16)
    );
\acc_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(1),
      Q => \acc_R_reg_n_0_[1]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(20),
      Q => \acc_R_reg_n_0_[20]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(21),
      Q => \acc_R_reg_n_0_[21]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(22),
      Q => \acc_R_reg_n_0_[22]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(23),
      Q => \acc_R_reg_n_0_[23]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[19]_i_1_n_0\,
      CO(3) => \acc_R_reg[23]_i_1_n_0\,
      CO(2) => \acc_R_reg[23]_i_1_n_1\,
      CO(1) => \acc_R_reg[23]_i_1_n_2\,
      CO(0) => \acc_R_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_R0_in(23 downto 20),
      S(3 downto 0) => p_0_in(23 downto 20)
    );
\acc_R_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(24),
      Q => \acc_R_reg_n_0_[24]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(25),
      Q => \acc_R_reg_n_0_[25]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(26),
      Q => \acc_R_reg_n_0_[26]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(27),
      Q => \acc_R_reg_n_0_[27]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[23]_i_1_n_0\,
      CO(3) => \acc_R_reg[27]_i_1_n_0\,
      CO(2) => \acc_R_reg[27]_i_1_n_1\,
      CO(1) => \acc_R_reg[27]_i_1_n_2\,
      CO(0) => \acc_R_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_R0_in(27 downto 24),
      S(3 downto 0) => p_0_in(27 downto 24)
    );
\acc_R_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(28),
      Q => \acc_R_reg_n_0_[28]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(29),
      Q => \acc_R_reg_n_0_[29]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(2),
      Q => \acc_R_reg_n_0_[2]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(30),
      Q => \acc_R_reg_n_0_[30]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(31),
      Q => \acc_R_reg_n_0_[31]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[27]_i_1_n_0\,
      CO(3) => \NLW_acc_R_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \acc_R_reg[31]_i_2_n_1\,
      CO(1) => \acc_R_reg[31]_i_2_n_2\,
      CO(0) => \acc_R_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => acc_R0_in(31 downto 28),
      S(3 downto 0) => p_0_in(31 downto 28)
    );
\acc_R_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(3),
      Q => \acc_R_reg_n_0_[3]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_R_reg[3]_i_1_n_0\,
      CO(2) => \acc_R_reg[3]_i_1_n_1\,
      CO(1) => \acc_R_reg[3]_i_1_n_2\,
      CO(0) => \acc_R_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(19 downto 16),
      O(3 downto 0) => acc_R0_in(3 downto 0),
      S(3) => \acc_R[3]_i_2_n_0\,
      S(2) => \acc_R[3]_i_3_n_0\,
      S(1) => \acc_R[3]_i_4_n_0\,
      S(0) => \acc_R[3]_i_5_n_0\
    );
\acc_R_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(4),
      Q => \acc_R_reg_n_0_[4]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(5),
      Q => \acc_R_reg_n_0_[5]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(6),
      Q => \acc_R_reg_n_0_[6]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(7),
      Q => \acc_R_reg_n_0_[7]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\acc_R_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_R_reg[3]_i_1_n_0\,
      CO(3) => \acc_R_reg[7]_i_1_n_0\,
      CO(2) => \acc_R_reg[7]_i_1_n_1\,
      CO(1) => \acc_R_reg[7]_i_1_n_2\,
      CO(0) => \acc_R_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(23 downto 20),
      O(3 downto 0) => acc_R0_in(7 downto 4),
      S(3) => \acc_R[7]_i_2_n_0\,
      S(2) => \acc_R[7]_i_3_n_0\,
      S(1) => \acc_R[7]_i_4_n_0\,
      S(0) => \acc_R[7]_i_5_n_0\
    );
\acc_R_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(8),
      Q => \acc_R_reg_n_0_[8]\,
      R => \acc_R[31]_i_1_n_0\
    );
\acc_R_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => acc_R0_in(9),
      Q => \acc_R_reg_n_0_[9]\,
      R => \acc_R[31]_i_1_n_0\
    );
\active_gB[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(0),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(0),
      O => A(0)
    );
\active_gB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(1),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(1),
      O => A(1)
    );
\active_gB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(2),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(2),
      O => A(2)
    );
\active_gB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(3),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(3),
      O => A(3)
    );
\active_gB[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(4),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(4),
      O => A(4)
    );
\active_gB[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(5),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(5),
      O => A(5)
    );
\active_gB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(6),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(6),
      O => A(6)
    );
\active_gB[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(7),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(7),
      O => A(7)
    );
\active_gB[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(8),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(8),
      O => A(8)
    );
\active_gB[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gB(9),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gB(9),
      O => A(9)
    );
\active_gB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(0),
      Q => active_gB(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(1),
      Q => active_gB(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(2),
      Q => active_gB(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(3),
      Q => active_gB(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(4),
      Q => active_gB(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(5),
      Q => active_gB(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(6),
      Q => active_gB(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(7),
      Q => active_gB(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => A(8),
      Q => active_gB(8),
      S => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => A(9),
      Q => active_gB(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(0),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(0),
      O => \active_gR[0]_i_1_n_0\
    );
\active_gR[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(1),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(1),
      O => \active_gR[1]_i_1_n_0\
    );
\active_gR[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(2),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(2),
      O => \active_gR[2]_i_1_n_0\
    );
\active_gR[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(3),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(3),
      O => \active_gR[3]_i_1_n_0\
    );
\active_gR[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(4),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(4),
      O => \active_gR[4]_i_1_n_0\
    );
\active_gR[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(5),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(5),
      O => \active_gR[5]_i_1_n_0\
    );
\active_gR[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(6),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(6),
      O => \active_gR[6]_i_1_n_0\
    );
\active_gR[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(7),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(7),
      O => \active_gR[7]_i_1_n_0\
    );
\active_gR[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(8),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(8),
      O => \active_gR[8]_i_1_n_0\
    );
\active_gR[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => pending_gR(9),
      I1 => s_axis_tuser,
      I2 => s_axis_tvalid,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      I5 => active_gR(9),
      O => \active_gR[9]_i_1_n_0\
    );
\active_gR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[0]_i_1_n_0\,
      Q => active_gR(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[1]_i_1_n_0\,
      Q => active_gR(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[2]_i_1_n_0\,
      Q => active_gR(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[3]_i_1_n_0\,
      Q => active_gR(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[4]_i_1_n_0\,
      Q => active_gR(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[5]_i_1_n_0\,
      Q => active_gR(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[6]_i_1_n_0\,
      Q => active_gR(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[7]_i_1_n_0\,
      Q => active_gR(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[8]_i_1_n_0\,
      Q => active_gR(8),
      S => \m_axis_tdata[23]_i_1_n_0\
    );
\active_gR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \active_gR[9]_i_1_n_0\,
      Q => active_gR(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
dchan_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I1 => div_go,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dchan
    );
dchan_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \FSM_onehot_dstate_reg_n_0_[2]\,
      Q => dchan_reg_n_0,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dcnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dcnt_reg_n_0_[0]\,
      O => \dcnt[0]_i_1_n_0\
    );
\dcnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \dcnt_reg_n_0_[0]\,
      I1 => \dcnt_reg_n_0_[1]\,
      I2 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => dcnt(1)
    );
\dcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \dcnt_reg_n_0_[1]\,
      I1 => \dcnt_reg_n_0_[0]\,
      I2 => \dcnt_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => dcnt(2)
    );
\dcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAABAAAAAAAA"
    )
        port map (
      I0 => \dcnt[3]_i_2_n_0\,
      I1 => \dcnt_reg_n_0_[2]\,
      I2 => \dcnt_reg_n_0_[0]\,
      I3 => \dcnt_reg_n_0_[1]\,
      I4 => \dcnt_reg_n_0_[3]\,
      I5 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => dcnt(3)
    );
\dcnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dcnt[3]_i_2_n_0\
    );
\dcnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => \dcnt_reg_n_0_[3]\,
      I1 => \dcnt_reg_n_0_[1]\,
      I2 => \dcnt_reg_n_0_[0]\,
      I3 => \dcnt_reg_n_0_[2]\,
      I4 => \dcnt_reg_n_0_[4]\,
      I5 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => dcnt(4)
    );
\dcnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF222"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I1 => dchan_reg_n_0,
      I2 => div_go,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => drem_2(0)
    );
\dcnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFEEEE"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I2 => \dcnt[5]_i_3_n_0\,
      I3 => \dcnt_reg_n_0_[5]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => dcnt(5)
    );
\dcnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \dcnt_reg_n_0_[3]\,
      I1 => \dcnt_reg_n_0_[1]\,
      I2 => \dcnt_reg_n_0_[0]\,
      I3 => \dcnt_reg_n_0_[2]\,
      I4 => \dcnt_reg_n_0_[4]\,
      O => \dcnt[5]_i_3_n_0\
    );
\dcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dcnt[0]_i_1_n_0\,
      Q => \dcnt_reg_n_0_[0]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dcnt(1),
      Q => \dcnt_reg_n_0_[1]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dcnt(2),
      Q => \dcnt_reg_n_0_[2]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dcnt(3),
      Q => \dcnt_reg_n_0_[3]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dcnt(4),
      Q => \dcnt_reg_n_0_[4]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dcnt(5),
      Q => \dcnt_reg_n_0_[5]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(0),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(0),
      O => \dden[0]_i_1_n_0\
    );
\dden[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(10),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(10),
      O => \dden[10]_i_1_n_0\
    );
\dden[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(11),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(11),
      O => \dden[11]_i_1_n_0\
    );
\dden[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(12),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(12),
      O => \dden[12]_i_1_n_0\
    );
\dden[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(13),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(13),
      O => \dden[13]_i_1_n_0\
    );
\dden[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(14),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(14),
      O => \dden[14]_i_1_n_0\
    );
\dden[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(15),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(15),
      O => \dden[15]_i_1_n_0\
    );
\dden[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(16),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(16),
      O => \dden[16]_i_1_n_0\
    );
\dden[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(17),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(17),
      O => \dden[17]_i_1_n_0\
    );
\dden[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(18),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(18),
      O => \dden[18]_i_1_n_0\
    );
\dden[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(19),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(19),
      O => \dden[19]_i_1_n_0\
    );
\dden[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(1),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(1),
      O => \dden[1]_i_1_n_0\
    );
\dden[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(20),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(20),
      O => \dden[20]_i_1_n_0\
    );
\dden[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(21),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(21),
      O => \dden[21]_i_1_n_0\
    );
\dden[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(22),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(22),
      O => \dden[22]_i_1_n_0\
    );
\dden[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(23),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(23),
      O => \dden[23]_i_1_n_0\
    );
\dden[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(24),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(24),
      O => \dden[24]_i_1_n_0\
    );
\dden[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(25),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(25),
      O => \dden[25]_i_1_n_0\
    );
\dden[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(26),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(26),
      O => \dden[26]_i_1_n_0\
    );
\dden[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(27),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(27),
      O => \dden[27]_i_1_n_0\
    );
\dden[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(28),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(28),
      O => \dden[28]_i_1_n_0\
    );
\dden[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(29),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(29),
      O => \dden[29]_i_1_n_0\
    );
\dden[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(2),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(2),
      O => \dden[2]_i_1_n_0\
    );
\dden[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(30),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(30),
      O => \dden[30]_i_1_n_0\
    );
\dden[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(31),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(31),
      O => \dden[31]_i_1_n_0\
    );
\dden[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(3),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(3),
      O => \dden[3]_i_1_n_0\
    );
\dden[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(4),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(4),
      O => \dden[4]_i_1_n_0\
    );
\dden[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(5),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(5),
      O => \dden[5]_i_1_n_0\
    );
\dden[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(6),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(6),
      O => \dden[6]_i_1_n_0\
    );
\dden[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(7),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(7),
      O => \dden[7]_i_1_n_0\
    );
\dden[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(8),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(8),
      O => \dden[8]_i_1_n_0\
    );
\dden[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => snap_B(9),
      I2 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => snap_R(9),
      O => \dden[9]_i_1_n_0\
    );
\dden_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[0]_i_1_n_0\,
      Q => dden(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[10]_i_1_n_0\,
      Q => dden(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[11]_i_1_n_0\,
      Q => dden(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[12]_i_1_n_0\,
      Q => dden(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[13]_i_1_n_0\,
      Q => dden(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[14]_i_1_n_0\,
      Q => dden(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[15]_i_1_n_0\,
      Q => dden(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[16]_i_1_n_0\,
      Q => dden(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[17]_i_1_n_0\,
      Q => dden(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[18]_i_1_n_0\,
      Q => dden(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[19]_i_1_n_0\,
      Q => dden(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[1]_i_1_n_0\,
      Q => dden(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[20]_i_1_n_0\,
      Q => dden(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[21]_i_1_n_0\,
      Q => dden(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[22]_i_1_n_0\,
      Q => dden(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[23]_i_1_n_0\,
      Q => dden(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[24]_i_1_n_0\,
      Q => dden(24),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[25]_i_1_n_0\,
      Q => dden(25),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[26]_i_1_n_0\,
      Q => dden(26),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[27]_i_1_n_0\,
      Q => dden(27),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[28]_i_1_n_0\,
      Q => dden(28),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[29]_i_1_n_0\,
      Q => dden(29),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[2]_i_1_n_0\,
      Q => dden(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[30]_i_1_n_0\,
      Q => dden(30),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[31]_i_1_n_0\,
      Q => dden(31),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[3]_i_1_n_0\,
      Q => dden(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[4]_i_1_n_0\,
      Q => dden(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[5]_i_1_n_0\,
      Q => dden(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[6]_i_1_n_0\,
      Q => dden(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[7]_i_1_n_0\,
      Q => dden(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[8]_i_1_n_0\,
      Q => dden(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dden_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => \dden[9]_i_1_n_0\,
      Q => dden(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
div_go_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sof,
      Q => div_go,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(10),
      I2 => in12(10),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(10)
    );
\dnum[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(11),
      I2 => in12(11),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(11)
    );
\dnum[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(12),
      I2 => in12(12),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(12)
    );
\dnum[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(13),
      I2 => in12(13),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(13)
    );
\dnum[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(14),
      I2 => in12(14),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(14)
    );
\dnum[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(15),
      I2 => in12(15),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(15)
    );
\dnum[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(16),
      I2 => in12(16),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(16)
    );
\dnum[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(17),
      I2 => in12(17),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(17)
    );
\dnum[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(18),
      I2 => in12(18),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(18)
    );
\dnum[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(19),
      I2 => in12(19),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(19)
    );
\dnum[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(20),
      I2 => in12(20),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(20)
    );
\dnum[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(21),
      I2 => in12(21),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(21)
    );
\dnum[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(22),
      I2 => in12(22),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(22)
    );
\dnum[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(23),
      I2 => in12(23),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(23)
    );
\dnum[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(24),
      I2 => in12(24),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(24)
    );
\dnum[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(25),
      I2 => in12(25),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(25)
    );
\dnum[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(26),
      I2 => in12(26),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(26)
    );
\dnum[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(27),
      I2 => in12(27),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(27)
    );
\dnum[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(28),
      I2 => in12(28),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(28)
    );
\dnum[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(29),
      I2 => in12(29),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(29)
    );
\dnum[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(30),
      I2 => in12(30),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(30)
    );
\dnum[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(31),
      I2 => in12(31),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(31)
    );
\dnum[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(32),
      I2 => in12(32),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(32)
    );
\dnum[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(33),
      I2 => in12(33),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(33)
    );
\dnum[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(34),
      I2 => in12(34),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(34)
    );
\dnum[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(35),
      I2 => in12(35),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(35)
    );
\dnum[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(36),
      I2 => in12(36),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(36)
    );
\dnum[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(37),
      I2 => in12(37),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(37)
    );
\dnum[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(38),
      I2 => in12(38),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(38)
    );
\dnum[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(39),
      I2 => in12(39),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(39)
    );
\dnum[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I2 => in12(8),
      O => dnum(8)
    );
\dnum[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => in13(9),
      I2 => in12(9),
      I3 => \FSM_onehot_dstate_reg_n_0_[0]\,
      I4 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dnum(9)
    );
\dnum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(10),
      Q => in13(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(11),
      Q => in13(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(12),
      Q => in13(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(13),
      Q => in13(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(14),
      Q => in13(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(15),
      Q => in13(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(16),
      Q => in13(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(17),
      Q => in13(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(18),
      Q => in13(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(19),
      Q => in13(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(20),
      Q => in13(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(21),
      Q => in13(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(22),
      Q => in13(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(23),
      Q => in13(24),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(24),
      Q => in13(25),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(25),
      Q => in13(26),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(26),
      Q => in13(27),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(27),
      Q => in13(28),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(28),
      Q => in13(29),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(29),
      Q => in13(30),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(30),
      Q => in13(31),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(31),
      Q => in13(32),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(32),
      Q => in13(33),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(33),
      Q => in13(34),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(34),
      Q => in13(35),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(35),
      Q => in13(36),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(36),
      Q => in13(37),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(37),
      Q => in13(38),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(38),
      Q => in13(39),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(39),
      Q => p_0_in0,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(8),
      Q => in13(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dnum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => dnum(9),
      Q => in13(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => ge,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[0]_i_1_n_0\
    );
\dquot[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[9]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[10]_i_1_n_0\
    );
\dquot[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[10]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[11]_i_1_n_0\
    );
\dquot[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[11]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[12]_i_1_n_0\
    );
\dquot[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[12]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[13]_i_1_n_0\
    );
\dquot[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[13]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[14]_i_1_n_0\
    );
\dquot[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[14]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[15]_i_1_n_0\
    );
\dquot[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[15]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[16]_i_1_n_0\
    );
\dquot[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[16]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[17]_i_1_n_0\
    );
\dquot[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[17]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[18]_i_1_n_0\
    );
\dquot[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[18]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[19]_i_1_n_0\
    );
\dquot[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[0]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[1]_i_1_n_0\
    );
\dquot[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[19]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[20]_i_1_n_0\
    );
\dquot[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[20]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[21]_i_1_n_0\
    );
\dquot[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[21]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[22]_i_1_n_0\
    );
\dquot[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[22]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[23]_i_1_n_0\
    );
\dquot[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[23]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[24]_i_1_n_0\
    );
\dquot[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[24]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[25]_i_1_n_0\
    );
\dquot[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[25]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[26]_i_1_n_0\
    );
\dquot[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[26]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[27]_i_1_n_0\
    );
\dquot[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[27]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[28]_i_1_n_0\
    );
\dquot[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[28]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[29]_i_1_n_0\
    );
\dquot[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[1]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[2]_i_1_n_0\
    );
\dquot[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[29]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[30]_i_1_n_0\
    );
\dquot[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[30]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[31]_i_1_n_0\
    );
\dquot[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[31]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[32]_i_1_n_0\
    );
\dquot[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[32]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[33]_i_1_n_0\
    );
\dquot[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[33]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[34]_i_1_n_0\
    );
\dquot[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[34]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[35]_i_1_n_0\
    );
\dquot[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[35]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[36]_i_1_n_0\
    );
\dquot[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[36]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[37]_i_1_n_0\
    );
\dquot[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[37]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[38]_i_1_n_0\
    );
\dquot[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[38]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[39]_i_1_n_0\
    );
\dquot[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[2]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[3]_i_1_n_0\
    );
\dquot[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[3]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[4]_i_1_n_0\
    );
\dquot[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[4]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[5]_i_1_n_0\
    );
\dquot[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[5]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[6]_i_1_n_0\
    );
\dquot[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[6]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[7]_i_1_n_0\
    );
\dquot[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[7]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[8]_i_1_n_0\
    );
\dquot[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \dquot_reg_n_0_[8]\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \dquot[9]_i_1_n_0\
    );
\dquot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[0]_i_1_n_0\,
      Q => \dquot_reg_n_0_[0]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[10]_i_1_n_0\,
      Q => \dquot_reg_n_0_[10]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[11]_i_1_n_0\,
      Q => \dquot_reg_n_0_[11]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[12]_i_1_n_0\,
      Q => \dquot_reg_n_0_[12]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[13]_i_1_n_0\,
      Q => \dquot_reg_n_0_[13]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[14]_i_1_n_0\,
      Q => \dquot_reg_n_0_[14]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[15]_i_1_n_0\,
      Q => \dquot_reg_n_0_[15]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[16]_i_1_n_0\,
      Q => \dquot_reg_n_0_[16]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[17]_i_1_n_0\,
      Q => \dquot_reg_n_0_[17]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[18]_i_1_n_0\,
      Q => \dquot_reg_n_0_[18]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[19]_i_1_n_0\,
      Q => \dquot_reg_n_0_[19]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[1]_i_1_n_0\,
      Q => \dquot_reg_n_0_[1]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[20]_i_1_n_0\,
      Q => \dquot_reg_n_0_[20]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[21]_i_1_n_0\,
      Q => \dquot_reg_n_0_[21]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[22]_i_1_n_0\,
      Q => \dquot_reg_n_0_[22]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[23]_i_1_n_0\,
      Q => \dquot_reg_n_0_[23]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[24]_i_1_n_0\,
      Q => \dquot_reg_n_0_[24]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[25]_i_1_n_0\,
      Q => \dquot_reg_n_0_[25]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[26]_i_1_n_0\,
      Q => \dquot_reg_n_0_[26]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[27]_i_1_n_0\,
      Q => \dquot_reg_n_0_[27]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[28]_i_1_n_0\,
      Q => \dquot_reg_n_0_[28]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[29]_i_1_n_0\,
      Q => \dquot_reg_n_0_[29]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[2]_i_1_n_0\,
      Q => \dquot_reg_n_0_[2]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[30]_i_1_n_0\,
      Q => \dquot_reg_n_0_[30]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[31]_i_1_n_0\,
      Q => \dquot_reg_n_0_[31]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[32]_i_1_n_0\,
      Q => \dquot_reg_n_0_[32]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[33]_i_1_n_0\,
      Q => \dquot_reg_n_0_[33]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[34]_i_1_n_0\,
      Q => \dquot_reg_n_0_[34]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[35]_i_1_n_0\,
      Q => \dquot_reg_n_0_[35]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[36]_i_1_n_0\,
      Q => \dquot_reg_n_0_[36]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[37]_i_1_n_0\,
      Q => \dquot_reg_n_0_[37]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[38]_i_1_n_0\,
      Q => \dquot_reg_n_0_[38]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[39]_i_1_n_0\,
      Q => \dquot_reg_n_0_[39]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[3]_i_1_n_0\,
      Q => \dquot_reg_n_0_[3]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[4]_i_1_n_0\,
      Q => \dquot_reg_n_0_[4]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[5]_i_1_n_0\,
      Q => \dquot_reg_n_0_[5]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[6]_i_1_n_0\,
      Q => \dquot_reg_n_0_[6]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[7]_i_1_n_0\,
      Q => \dquot_reg_n_0_[7]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[8]_i_1_n_0\,
      Q => \dquot_reg_n_0_[8]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\dquot_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \dquot[9]_i_1_n_0\,
      Q => \dquot_reg_n_0_[9]\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[2]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[0]_i_1_n_0\
    );
\drem[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[10]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[10]_i_1_n_0\
    );
\drem[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(9),
      I1 => dden(10),
      I2 => ge,
      O => \drem[10]_i_3_n_0\
    );
\drem[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(8),
      I1 => dden(9),
      I2 => ge,
      O => \drem[10]_i_4_n_0\
    );
\drem[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(7),
      I1 => dden(8),
      I2 => ge,
      O => \drem[10]_i_5_n_0\
    );
\drem[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(6),
      I1 => dden(7),
      I2 => ge,
      O => \drem[10]_i_6_n_0\
    );
\drem[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[14]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[11]_i_1_n_0\
    );
\drem[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[14]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[12]_i_1_n_0\
    );
\drem[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[14]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[13]_i_1_n_0\
    );
\drem[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[14]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[14]_i_1_n_0\
    );
\drem[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(13),
      I1 => dden(14),
      I2 => ge,
      O => \drem[14]_i_3_n_0\
    );
\drem[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(12),
      I1 => dden(13),
      I2 => ge,
      O => \drem[14]_i_4_n_0\
    );
\drem[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(11),
      I1 => dden(12),
      I2 => ge,
      O => \drem[14]_i_5_n_0\
    );
\drem[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(10),
      I1 => dden(11),
      I2 => ge,
      O => \drem[14]_i_6_n_0\
    );
\drem[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[18]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[15]_i_1_n_0\
    );
\drem[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[18]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[16]_i_1_n_0\
    );
\drem[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[18]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[17]_i_1_n_0\
    );
\drem[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[18]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[18]_i_1_n_0\
    );
\drem[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(17),
      I1 => dden(18),
      I2 => ge,
      O => \drem[18]_i_3_n_0\
    );
\drem[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(16),
      I1 => dden(17),
      I2 => ge,
      O => \drem[18]_i_4_n_0\
    );
\drem[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(15),
      I1 => dden(16),
      I2 => ge,
      O => \drem[18]_i_5_n_0\
    );
\drem[18]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(14),
      I1 => dden(15),
      I2 => ge,
      O => \drem[18]_i_6_n_0\
    );
\drem[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[22]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[19]_i_1_n_0\
    );
\drem[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[2]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[1]_i_1_n_0\
    );
\drem[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[22]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[20]_i_1_n_0\
    );
\drem[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[22]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[21]_i_1_n_0\
    );
\drem[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[22]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[22]_i_1_n_0\
    );
\drem[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(21),
      I1 => dden(22),
      I2 => ge,
      O => \drem[22]_i_3_n_0\
    );
\drem[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(20),
      I1 => dden(21),
      I2 => ge,
      O => \drem[22]_i_4_n_0\
    );
\drem[22]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(19),
      I1 => dden(20),
      I2 => ge,
      O => \drem[22]_i_5_n_0\
    );
\drem[22]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(18),
      I1 => dden(19),
      I2 => ge,
      O => \drem[22]_i_6_n_0\
    );
\drem[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[26]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[23]_i_1_n_0\
    );
\drem[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[26]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[24]_i_1_n_0\
    );
\drem[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[26]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[25]_i_1_n_0\
    );
\drem[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[26]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[26]_i_1_n_0\
    );
\drem[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(25),
      I1 => dden(26),
      I2 => ge,
      O => \drem[26]_i_3_n_0\
    );
\drem[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(24),
      I1 => dden(25),
      I2 => ge,
      O => \drem[26]_i_4_n_0\
    );
\drem[26]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(23),
      I1 => dden(24),
      I2 => ge,
      O => \drem[26]_i_5_n_0\
    );
\drem[26]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(22),
      I1 => dden(23),
      I2 => ge,
      O => \drem[26]_i_6_n_0\
    );
\drem[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[30]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[27]_i_1_n_0\
    );
\drem[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[30]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[28]_i_1_n_0\
    );
\drem[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[30]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[29]_i_1_n_0\
    );
\drem[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[2]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[2]_i_1_n_0\
    );
\drem[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(1),
      I1 => dden(2),
      I2 => ge,
      O => \drem[2]_i_3_n_0\
    );
\drem[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(0),
      I1 => dden(1),
      I2 => ge,
      O => \drem[2]_i_4_n_0\
    );
\drem[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => p_0_in0,
      I1 => dden(0),
      I2 => ge,
      O => \drem[2]_i_5_n_0\
    );
\drem[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[30]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[30]_i_1_n_0\
    );
\drem[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(29),
      I1 => dden(30),
      I2 => ge,
      O => \drem[30]_i_3_n_0\
    );
\drem[30]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(28),
      I1 => dden(29),
      I2 => ge,
      O => \drem[30]_i_4_n_0\
    );
\drem[30]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(27),
      I1 => dden(28),
      I2 => ge,
      O => \drem[30]_i_5_n_0\
    );
\drem[30]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(26),
      I1 => dden(27),
      I2 => ge,
      O => \drem[30]_i_6_n_0\
    );
\drem[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[34]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[31]_i_1_n_0\
    );
\drem[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[34]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[32]_i_1_n_0\
    );
\drem[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[34]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[33]_i_1_n_0\
    );
\drem[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[34]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[34]_i_1_n_0\
    );
\drem[34]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drem(32),
      O => \drem[34]_i_3_n_0\
    );
\drem[34]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drem(32),
      I1 => drem(33),
      O => \drem[34]_i_4_n_0\
    );
\drem[34]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ge,
      I1 => drem(32),
      O => \drem[34]_i_5_n_0\
    );
\drem[34]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ge,
      I1 => drem(31),
      O => \drem[34]_i_6_n_0\
    );
\drem[34]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(30),
      I1 => dden(31),
      I2 => ge,
      O => \drem[34]_i_7_n_0\
    );
\drem[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[38]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[35]_i_1_n_0\
    );
\drem[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[38]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[36]_i_1_n_0\
    );
\drem[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[38]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[37]_i_1_n_0\
    );
\drem[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[38]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[38]_i_1_n_0\
    );
\drem[38]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drem(36),
      I1 => drem(37),
      O => \drem[38]_i_3_n_0\
    );
\drem[38]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drem(35),
      I1 => drem(36),
      O => \drem[38]_i_4_n_0\
    );
\drem[38]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drem(34),
      I1 => drem(35),
      O => \drem[38]_i_5_n_0\
    );
\drem[38]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drem(33),
      I1 => drem(34),
      O => \drem[38]_i_6_n_0\
    );
\drem[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[39]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[39]_i_1_n_0\
    );
\drem[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drem(38),
      I1 => drem(37),
      O => \drem[39]_i_3_n_0\
    );
\drem[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[6]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[3]_i_1_n_0\
    );
\drem[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[6]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[4]_i_1_n_0\
    );
\drem[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[6]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[5]_i_1_n_0\
    );
\drem[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[6]_i_2_n_4\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[6]_i_1_n_0\
    );
\drem[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(5),
      I1 => dden(6),
      I2 => ge,
      O => \drem[6]_i_3_n_0\
    );
\drem[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(4),
      I1 => dden(5),
      I2 => ge,
      O => \drem[6]_i_4_n_0\
    );
\drem[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(3),
      I1 => dden(4),
      I2 => ge,
      O => \drem[6]_i_5_n_0\
    );
\drem[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => drem(2),
      I1 => dden(3),
      I2 => ge,
      O => \drem[6]_i_6_n_0\
    );
\drem[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[10]_i_2_n_7\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[7]_i_1_n_0\
    );
\drem[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[10]_i_2_n_6\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[8]_i_1_n_0\
    );
\drem[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[1]\,
      I1 => \drem_reg[10]_i_2_n_5\,
      I2 => dchan_reg_n_0,
      I3 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => \drem[9]_i_1_n_0\
    );
\drem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[0]_i_1_n_0\,
      Q => drem(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[10]_i_1_n_0\,
      Q => drem(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[6]_i_2_n_0\,
      CO(3) => \drem_reg[10]_i_2_n_0\,
      CO(2) => \drem_reg[10]_i_2_n_1\,
      CO(1) => \drem_reg[10]_i_2_n_2\,
      CO(0) => \drem_reg[10]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(9 downto 6),
      O(3) => \drem_reg[10]_i_2_n_4\,
      O(2) => \drem_reg[10]_i_2_n_5\,
      O(1) => \drem_reg[10]_i_2_n_6\,
      O(0) => \drem_reg[10]_i_2_n_7\,
      S(3) => \drem[10]_i_3_n_0\,
      S(2) => \drem[10]_i_4_n_0\,
      S(1) => \drem[10]_i_5_n_0\,
      S(0) => \drem[10]_i_6_n_0\
    );
\drem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[11]_i_1_n_0\,
      Q => drem(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[12]_i_1_n_0\,
      Q => drem(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[13]_i_1_n_0\,
      Q => drem(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[14]_i_1_n_0\,
      Q => drem(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[10]_i_2_n_0\,
      CO(3) => \drem_reg[14]_i_2_n_0\,
      CO(2) => \drem_reg[14]_i_2_n_1\,
      CO(1) => \drem_reg[14]_i_2_n_2\,
      CO(0) => \drem_reg[14]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(13 downto 10),
      O(3) => \drem_reg[14]_i_2_n_4\,
      O(2) => \drem_reg[14]_i_2_n_5\,
      O(1) => \drem_reg[14]_i_2_n_6\,
      O(0) => \drem_reg[14]_i_2_n_7\,
      S(3) => \drem[14]_i_3_n_0\,
      S(2) => \drem[14]_i_4_n_0\,
      S(1) => \drem[14]_i_5_n_0\,
      S(0) => \drem[14]_i_6_n_0\
    );
\drem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[15]_i_1_n_0\,
      Q => drem(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[16]_i_1_n_0\,
      Q => drem(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[17]_i_1_n_0\,
      Q => drem(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[18]_i_1_n_0\,
      Q => drem(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[14]_i_2_n_0\,
      CO(3) => \drem_reg[18]_i_2_n_0\,
      CO(2) => \drem_reg[18]_i_2_n_1\,
      CO(1) => \drem_reg[18]_i_2_n_2\,
      CO(0) => \drem_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(17 downto 14),
      O(3) => \drem_reg[18]_i_2_n_4\,
      O(2) => \drem_reg[18]_i_2_n_5\,
      O(1) => \drem_reg[18]_i_2_n_6\,
      O(0) => \drem_reg[18]_i_2_n_7\,
      S(3) => \drem[18]_i_3_n_0\,
      S(2) => \drem[18]_i_4_n_0\,
      S(1) => \drem[18]_i_5_n_0\,
      S(0) => \drem[18]_i_6_n_0\
    );
\drem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[19]_i_1_n_0\,
      Q => drem(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[1]_i_1_n_0\,
      Q => drem(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[20]_i_1_n_0\,
      Q => drem(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[21]_i_1_n_0\,
      Q => drem(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[22]_i_1_n_0\,
      Q => drem(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[18]_i_2_n_0\,
      CO(3) => \drem_reg[22]_i_2_n_0\,
      CO(2) => \drem_reg[22]_i_2_n_1\,
      CO(1) => \drem_reg[22]_i_2_n_2\,
      CO(0) => \drem_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(21 downto 18),
      O(3) => \drem_reg[22]_i_2_n_4\,
      O(2) => \drem_reg[22]_i_2_n_5\,
      O(1) => \drem_reg[22]_i_2_n_6\,
      O(0) => \drem_reg[22]_i_2_n_7\,
      S(3) => \drem[22]_i_3_n_0\,
      S(2) => \drem[22]_i_4_n_0\,
      S(1) => \drem[22]_i_5_n_0\,
      S(0) => \drem[22]_i_6_n_0\
    );
\drem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[23]_i_1_n_0\,
      Q => drem(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[24]_i_1_n_0\,
      Q => drem(24),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[25]_i_1_n_0\,
      Q => drem(25),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[26]_i_1_n_0\,
      Q => drem(26),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[22]_i_2_n_0\,
      CO(3) => \drem_reg[26]_i_2_n_0\,
      CO(2) => \drem_reg[26]_i_2_n_1\,
      CO(1) => \drem_reg[26]_i_2_n_2\,
      CO(0) => \drem_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(25 downto 22),
      O(3) => \drem_reg[26]_i_2_n_4\,
      O(2) => \drem_reg[26]_i_2_n_5\,
      O(1) => \drem_reg[26]_i_2_n_6\,
      O(0) => \drem_reg[26]_i_2_n_7\,
      S(3) => \drem[26]_i_3_n_0\,
      S(2) => \drem[26]_i_4_n_0\,
      S(1) => \drem[26]_i_5_n_0\,
      S(0) => \drem[26]_i_6_n_0\
    );
\drem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[27]_i_1_n_0\,
      Q => drem(27),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[28]_i_1_n_0\,
      Q => drem(28),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[29]_i_1_n_0\,
      Q => drem(29),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[2]_i_1_n_0\,
      Q => drem(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \drem_reg[2]_i_2_n_0\,
      CO(2) => \drem_reg[2]_i_2_n_1\,
      CO(1) => \drem_reg[2]_i_2_n_2\,
      CO(0) => \drem_reg[2]_i_2_n_3\,
      CYINIT => ge,
      DI(3 downto 2) => drem(1 downto 0),
      DI(1) => p_0_in0,
      DI(0) => '0',
      O(3) => \drem_reg[2]_i_2_n_4\,
      O(2) => \drem_reg[2]_i_2_n_5\,
      O(1) => \drem_reg[2]_i_2_n_6\,
      O(0) => \NLW_drem_reg[2]_i_2_O_UNCONNECTED\(0),
      S(3) => \drem[2]_i_3_n_0\,
      S(2) => \drem[2]_i_4_n_0\,
      S(1) => \drem[2]_i_5_n_0\,
      S(0) => '1'
    );
\drem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[30]_i_1_n_0\,
      Q => drem(30),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[26]_i_2_n_0\,
      CO(3) => \drem_reg[30]_i_2_n_0\,
      CO(2) => \drem_reg[30]_i_2_n_1\,
      CO(1) => \drem_reg[30]_i_2_n_2\,
      CO(0) => \drem_reg[30]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(29 downto 26),
      O(3) => \drem_reg[30]_i_2_n_4\,
      O(2) => \drem_reg[30]_i_2_n_5\,
      O(1) => \drem_reg[30]_i_2_n_6\,
      O(0) => \drem_reg[30]_i_2_n_7\,
      S(3) => \drem[30]_i_3_n_0\,
      S(2) => \drem[30]_i_4_n_0\,
      S(1) => \drem[30]_i_5_n_0\,
      S(0) => \drem[30]_i_6_n_0\
    );
\drem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[31]_i_1_n_0\,
      Q => drem(31),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[32]_i_1_n_0\,
      Q => drem(32),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[33]_i_1_n_0\,
      Q => drem(33),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[34]_i_1_n_0\,
      Q => drem(34),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[34]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[30]_i_2_n_0\,
      CO(3) => \drem_reg[34]_i_2_n_0\,
      CO(2) => \drem_reg[34]_i_2_n_1\,
      CO(1) => \drem_reg[34]_i_2_n_2\,
      CO(0) => \drem_reg[34]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => drem(32),
      DI(2) => \drem[34]_i_3_n_0\,
      DI(1) => ge,
      DI(0) => drem(30),
      O(3) => \drem_reg[34]_i_2_n_4\,
      O(2) => \drem_reg[34]_i_2_n_5\,
      O(1) => \drem_reg[34]_i_2_n_6\,
      O(0) => \drem_reg[34]_i_2_n_7\,
      S(3) => \drem[34]_i_4_n_0\,
      S(2) => \drem[34]_i_5_n_0\,
      S(1) => \drem[34]_i_6_n_0\,
      S(0) => \drem[34]_i_7_n_0\
    );
\drem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[35]_i_1_n_0\,
      Q => drem(35),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[36]_i_1_n_0\,
      Q => drem(36),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[37]_i_1_n_0\,
      Q => drem(37),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[38]_i_1_n_0\,
      Q => drem(38),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[38]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[34]_i_2_n_0\,
      CO(3) => \drem_reg[38]_i_2_n_0\,
      CO(2) => \drem_reg[38]_i_2_n_1\,
      CO(1) => \drem_reg[38]_i_2_n_2\,
      CO(0) => \drem_reg[38]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(36 downto 33),
      O(3) => \drem_reg[38]_i_2_n_4\,
      O(2) => \drem_reg[38]_i_2_n_5\,
      O(1) => \drem_reg[38]_i_2_n_6\,
      O(0) => \drem_reg[38]_i_2_n_7\,
      S(3) => \drem[38]_i_3_n_0\,
      S(2) => \drem[38]_i_4_n_0\,
      S(1) => \drem[38]_i_5_n_0\,
      S(0) => \drem[38]_i_6_n_0\
    );
\drem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[39]_i_1_n_0\,
      Q => drem(39),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[39]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[38]_i_2_n_0\,
      CO(3 downto 0) => \NLW_drem_reg[39]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_drem_reg[39]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \drem_reg[39]_i_2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \drem[39]_i_3_n_0\
    );
\drem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[3]_i_1_n_0\,
      Q => drem(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[4]_i_1_n_0\,
      Q => drem(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[5]_i_1_n_0\,
      Q => drem(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[6]_i_1_n_0\,
      Q => drem(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \drem_reg[2]_i_2_n_0\,
      CO(3) => \drem_reg[6]_i_2_n_0\,
      CO(2) => \drem_reg[6]_i_2_n_1\,
      CO(1) => \drem_reg[6]_i_2_n_2\,
      CO(0) => \drem_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => drem(5 downto 2),
      O(3) => \drem_reg[6]_i_2_n_4\,
      O(2) => \drem_reg[6]_i_2_n_5\,
      O(1) => \drem_reg[6]_i_2_n_6\,
      O(0) => \drem_reg[6]_i_2_n_7\,
      S(3) => \drem[6]_i_3_n_0\,
      S(2) => \drem[6]_i_4_n_0\,
      S(1) => \drem[6]_i_5_n_0\,
      S(0) => \drem[6]_i_6_n_0\
    );
\drem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[7]_i_1_n_0\,
      Q => drem(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[8]_i_1_n_0\,
      Q => drem(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\drem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => drem_2(0),
      D => \drem[9]_i_1_n_0\,
      Q => drem(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
dzero_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => dzero_i_2_n_0,
      I1 => dzero_i_3_n_0,
      I2 => dzero_i_4_n_0,
      I3 => dzero_i_5_n_0,
      I4 => \FSM_onehot_dstate_reg_n_0_[1]\,
      O => dzero_4
    );
dzero_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_B(17),
      I1 => snap_B(18),
      I2 => snap_B(15),
      I3 => snap_B(16),
      I4 => snap_B(20),
      I5 => snap_B(19),
      O => dzero_i_10_n_0
    );
dzero_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_B(11),
      I1 => snap_B(12),
      I2 => snap_B(9),
      I3 => snap_B(10),
      I4 => snap_B(14),
      I5 => snap_B(13),
      O => dzero_i_11_n_0
    );
dzero_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_R(11),
      I1 => snap_R(12),
      I2 => snap_R(9),
      I3 => snap_R(10),
      I4 => snap_R(14),
      I5 => snap_R(13),
      O => dzero_i_12_n_0
    );
dzero_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_R(17),
      I1 => snap_R(18),
      I2 => snap_R(15),
      I3 => snap_R(16),
      I4 => snap_R(20),
      I5 => snap_R(19),
      O => dzero_i_13_n_0
    );
dzero_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_R(5),
      I1 => snap_R(6),
      I2 => snap_R(3),
      I3 => snap_R(4),
      I4 => snap_R(8),
      I5 => snap_R(7),
      O => dzero_i_14_n_0
    );
dzero_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => dzero_i_6_n_0,
      I1 => dzero_i_7_n_0,
      I2 => dzero_i_8_n_0,
      I3 => dzero_i_9_n_0,
      I4 => dzero_i_10_n_0,
      I5 => dzero_i_11_n_0,
      O => dzero_i_2_n_0
    );
dzero_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_R(23),
      I1 => snap_R(24),
      I2 => snap_R(21),
      I3 => snap_R(22),
      I4 => snap_R(26),
      I5 => snap_R(25),
      O => dzero_i_3_n_0
    );
dzero_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => snap_R(29),
      I1 => snap_R(30),
      I2 => snap_R(27),
      I3 => snap_R(28),
      I4 => snap_R(31),
      I5 => \FSM_onehot_dstate_reg_n_0_[0]\,
      O => dzero_i_4_n_0
    );
dzero_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => dzero_i_12_n_0,
      I1 => dzero_i_13_n_0,
      I2 => dzero_i_14_n_0,
      I3 => snap_R(2),
      I4 => snap_R(1),
      I5 => snap_R(0),
      O => dzero_i_5_n_0
    );
dzero_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_B(23),
      I1 => snap_B(24),
      I2 => snap_B(21),
      I3 => snap_B(22),
      I4 => snap_B(26),
      I5 => snap_B(25),
      O => dzero_i_6_n_0
    );
dzero_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => snap_B(29),
      I1 => snap_B(30),
      I2 => snap_B(27),
      I3 => snap_B(28),
      I4 => snap_B(31),
      I5 => \FSM_onehot_dstate_reg_n_0_[2]\,
      O => dzero_i_7_n_0
    );
dzero_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => snap_B(2),
      I1 => snap_B(1),
      I2 => snap_B(0),
      O => dzero_i_8_n_0
    );
dzero_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => snap_B(5),
      I1 => snap_B(6),
      I2 => snap_B(3),
      I3 => snap_B(4),
      I4 => snap_B(8),
      I5 => snap_B(7),
      O => dzero_i_9_n_0
    );
dzero_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => dchan,
      D => dzero_4,
      Q => dzero,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
ge_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ge_carry_n_0,
      CO(2) => ge_carry_n_1,
      CO(1) => ge_carry_n_2,
      CO(0) => ge_carry_n_3,
      CYINIT => '1',
      DI(3) => ge_carry_i_1_n_0,
      DI(2) => ge_carry_i_2_n_0,
      DI(1) => ge_carry_i_3_n_0,
      DI(0) => ge_carry_i_4_n_0,
      O(3 downto 0) => NLW_ge_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ge_carry_i_5_n_0,
      S(2) => ge_carry_i_6_n_0,
      S(1) => ge_carry_i_7_n_0,
      S(0) => ge_carry_i_8_n_0
    );
\ge_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ge_carry_n_0,
      CO(3) => \ge_carry__0_n_0\,
      CO(2) => \ge_carry__0_n_1\,
      CO(1) => \ge_carry__0_n_2\,
      CO(0) => \ge_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ge_carry__0_i_1_n_0\,
      DI(2) => \ge_carry__0_i_2_n_0\,
      DI(1) => \ge_carry__0_i_3_n_0\,
      DI(0) => \ge_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ge_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ge_carry__0_i_5_n_0\,
      S(2) => \ge_carry__0_i_6_n_0\,
      S(1) => \ge_carry__0_i_7_n_0\,
      S(0) => \ge_carry__0_i_8_n_0\
    );
\ge_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(14),
      I1 => dden(15),
      I2 => drem(13),
      I3 => dden(14),
      O => \ge_carry__0_i_1_n_0\
    );
\ge_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(12),
      I1 => dden(13),
      I2 => drem(11),
      I3 => dden(12),
      O => \ge_carry__0_i_2_n_0\
    );
\ge_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(10),
      I1 => dden(11),
      I2 => drem(9),
      I3 => dden(10),
      O => \ge_carry__0_i_3_n_0\
    );
\ge_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(8),
      I1 => dden(9),
      I2 => drem(7),
      I3 => dden(8),
      O => \ge_carry__0_i_4_n_0\
    );
\ge_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(15),
      I1 => drem(14),
      I2 => dden(14),
      I3 => drem(13),
      O => \ge_carry__0_i_5_n_0\
    );
\ge_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(13),
      I1 => drem(12),
      I2 => dden(12),
      I3 => drem(11),
      O => \ge_carry__0_i_6_n_0\
    );
\ge_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(11),
      I1 => drem(10),
      I2 => dden(10),
      I3 => drem(9),
      O => \ge_carry__0_i_7_n_0\
    );
\ge_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(9),
      I1 => drem(8),
      I2 => dden(8),
      I3 => drem(7),
      O => \ge_carry__0_i_8_n_0\
    );
\ge_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ge_carry__0_n_0\,
      CO(3) => \ge_carry__1_n_0\,
      CO(2) => \ge_carry__1_n_1\,
      CO(1) => \ge_carry__1_n_2\,
      CO(0) => \ge_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ge_carry__1_i_1_n_0\,
      DI(2) => \ge_carry__1_i_2_n_0\,
      DI(1) => \ge_carry__1_i_3_n_0\,
      DI(0) => \ge_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_ge_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ge_carry__1_i_5_n_0\,
      S(2) => \ge_carry__1_i_6_n_0\,
      S(1) => \ge_carry__1_i_7_n_0\,
      S(0) => \ge_carry__1_i_8_n_0\
    );
\ge_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(22),
      I1 => dden(23),
      I2 => drem(21),
      I3 => dden(22),
      O => \ge_carry__1_i_1_n_0\
    );
\ge_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(20),
      I1 => dden(21),
      I2 => drem(19),
      I3 => dden(20),
      O => \ge_carry__1_i_2_n_0\
    );
\ge_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(18),
      I1 => dden(19),
      I2 => drem(17),
      I3 => dden(18),
      O => \ge_carry__1_i_3_n_0\
    );
\ge_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(16),
      I1 => dden(17),
      I2 => drem(15),
      I3 => dden(16),
      O => \ge_carry__1_i_4_n_0\
    );
\ge_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(23),
      I1 => drem(22),
      I2 => dden(22),
      I3 => drem(21),
      O => \ge_carry__1_i_5_n_0\
    );
\ge_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(21),
      I1 => drem(20),
      I2 => dden(20),
      I3 => drem(19),
      O => \ge_carry__1_i_6_n_0\
    );
\ge_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(19),
      I1 => drem(18),
      I2 => dden(18),
      I3 => drem(17),
      O => \ge_carry__1_i_7_n_0\
    );
\ge_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(17),
      I1 => drem(16),
      I2 => dden(16),
      I3 => drem(15),
      O => \ge_carry__1_i_8_n_0\
    );
\ge_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ge_carry__1_n_0\,
      CO(3) => \ge_carry__2_n_0\,
      CO(2) => \ge_carry__2_n_1\,
      CO(1) => \ge_carry__2_n_2\,
      CO(0) => \ge_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ge_carry__2_i_1_n_0\,
      DI(2) => \ge_carry__2_i_2_n_0\,
      DI(1) => \ge_carry__2_i_3_n_0\,
      DI(0) => \ge_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_ge_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ge_carry__2_i_5_n_0\,
      S(2) => \ge_carry__2_i_6_n_0\,
      S(1) => \ge_carry__2_i_7_n_0\,
      S(0) => \ge_carry__2_i_8_n_0\
    );
\ge_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(30),
      I1 => dden(31),
      I2 => drem(29),
      I3 => dden(30),
      O => \ge_carry__2_i_1_n_0\
    );
\ge_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(28),
      I1 => dden(29),
      I2 => drem(27),
      I3 => dden(28),
      O => \ge_carry__2_i_2_n_0\
    );
\ge_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(26),
      I1 => dden(27),
      I2 => drem(25),
      I3 => dden(26),
      O => \ge_carry__2_i_3_n_0\
    );
\ge_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(24),
      I1 => dden(25),
      I2 => drem(23),
      I3 => dden(24),
      O => \ge_carry__2_i_4_n_0\
    );
\ge_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(31),
      I1 => drem(30),
      I2 => dden(30),
      I3 => drem(29),
      O => \ge_carry__2_i_5_n_0\
    );
\ge_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(29),
      I1 => drem(28),
      I2 => dden(28),
      I3 => drem(27),
      O => \ge_carry__2_i_6_n_0\
    );
\ge_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(27),
      I1 => drem(26),
      I2 => dden(26),
      I3 => drem(25),
      O => \ge_carry__2_i_7_n_0\
    );
\ge_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(25),
      I1 => drem(24),
      I2 => dden(24),
      I3 => drem(23),
      O => \ge_carry__2_i_8_n_0\
    );
\ge_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ge_carry__2_n_0\,
      CO(3) => \ge_carry__3_n_0\,
      CO(2) => \ge_carry__3_n_1\,
      CO(1) => \ge_carry__3_n_2\,
      CO(0) => \ge_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \ge_carry__3_i_1_n_0\,
      DI(2) => \ge_carry__3_i_2_n_0\,
      DI(1) => \ge_carry__3_i_3_n_0\,
      DI(0) => \ge_carry__3_i_4_n_0\,
      O(3 downto 0) => \NLW_ge_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \ge_carry__3_i_5_n_0\,
      S(2) => \ge_carry__3_i_6_n_0\,
      S(1) => \ge_carry__3_i_7_n_0\,
      S(0) => \ge_carry__3_i_8_n_0\
    );
\ge_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => drem(37),
      I1 => drem(38),
      O => \ge_carry__3_i_1_n_0\
    );
\ge_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => drem(35),
      I1 => drem(36),
      O => \ge_carry__3_i_2_n_0\
    );
\ge_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => drem(33),
      I1 => drem(34),
      O => \ge_carry__3_i_3_n_0\
    );
\ge_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => drem(31),
      I1 => drem(32),
      O => \ge_carry__3_i_4_n_0\
    );
\ge_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drem(38),
      I1 => drem(37),
      O => \ge_carry__3_i_5_n_0\
    );
\ge_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drem(35),
      I1 => drem(36),
      O => \ge_carry__3_i_6_n_0\
    );
\ge_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drem(33),
      I1 => drem(34),
      O => \ge_carry__3_i_7_n_0\
    );
\ge_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drem(31),
      I1 => drem(32),
      O => \ge_carry__3_i_8_n_0\
    );
\ge_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \ge_carry__3_n_0\,
      CO(3 downto 1) => \NLW_ge_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ge,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => drem(39),
      O(3 downto 0) => \NLW_ge_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \ge_carry__4_i_1_n_0\
    );
\ge_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drem(39),
      O => \ge_carry__4_i_1_n_0\
    );
ge_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(6),
      I1 => dden(7),
      I2 => drem(5),
      I3 => dden(6),
      O => ge_carry_i_1_n_0
    );
ge_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(4),
      I1 => dden(5),
      I2 => drem(3),
      I3 => dden(4),
      O => ge_carry_i_2_n_0
    );
ge_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(2),
      I1 => dden(3),
      I2 => drem(1),
      I3 => dden(2),
      O => ge_carry_i_3_n_0
    );
ge_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => drem(0),
      I1 => dden(1),
      I2 => p_0_in0,
      I3 => dden(0),
      O => ge_carry_i_4_n_0
    );
ge_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(7),
      I1 => drem(6),
      I2 => dden(6),
      I3 => drem(5),
      O => ge_carry_i_5_n_0
    );
ge_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(5),
      I1 => drem(4),
      I2 => dden(4),
      I3 => drem(3),
      O => ge_carry_i_6_n_0
    );
ge_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(3),
      I1 => drem(2),
      I2 => dden(2),
      I3 => drem(1),
      O => ge_carry_i_7_n_0
    );
ge_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dden(1),
      I1 => drem(0),
      I2 => dden(0),
      I3 => p_0_in0,
      O => ge_carry_i_8_n_0
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(8),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(8),
      O => \m_axis_tdata[16]_i_1_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(9),
      O => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(10),
      O => \m_axis_tdata[18]_i_1_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(11),
      O => \m_axis_tdata[19]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(9),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(12),
      O => \m_axis_tdata[20]_i_1_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(13),
      O => \m_axis_tdata[21]_i_1_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(14),
      O => \m_axis_tdata[22]_i_1_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => s_axis_tvalid,
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulR__0\(22),
      I1 => \m_axis_tdata[23]_i_4_n_0\,
      I2 => \mulR__0\(23),
      I3 => \mulR__0\(15),
      O => \m_axis_tdata[23]_i_3_n_0\
    );
\m_axis_tdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mulR__0\(21),
      I1 => \mulR__0\(19),
      I2 => \mulR__0\(17),
      I3 => \mulR__0\(16),
      I4 => \mulR__0\(18),
      I5 => \mulR__0\(20),
      O => \m_axis_tdata[23]_i_4_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(10),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(11),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(12),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(13),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(14),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mulB__0\(22),
      I1 => \m_axis_tdata[7]_i_2_n_0\,
      I2 => \mulB__0\(23),
      I3 => \mulB__0\(15),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mulB__0\(21),
      I1 => \mulB__0\(19),
      I2 => \mulB__0\(17),
      I3 => \mulB__0\(16),
      I4 => \mulB__0\(18),
      I5 => \mulB__0\(20),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[16]_i_1_n_0\,
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[17]_i_1_n_0\,
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[18]_i_1_n_0\,
      Q => m_axis_tdata(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[19]_i_1_n_0\,
      Q => m_axis_tdata(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[20]_i_1_n_0\,
      Q => m_axis_tdata(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[21]_i_1_n_0\,
      Q => m_axis_tdata(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[22]_i_1_n_0\,
      Q => m_axis_tdata(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[23]_i_3_n_0\,
      Q => m_axis_tdata(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => s_axis_tlast,
      Q => m_axis_tlast,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
m_axis_tuser_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => s_axis_tvalid,
      O => p_0_in_0
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => s_axis_tuser,
      Q => m_axis_tuser,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid_reg_0\,
      R => \m_axis_tdata[23]_i_1_n_0\
    );
mulB: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9 downto 0) => A(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mulB_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => s_axis_tdata(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mulB_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mulB_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mulB_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mulB_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mulB_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_mulB_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => \mulB__0\(23 downto 8),
      P(7) => mulB_n_98,
      P(6) => mulB_n_99,
      P(5) => mulB_n_100,
      P(4) => mulB_n_101,
      P(3) => mulB_n_102,
      P(2) => mulB_n_103,
      P(1) => mulB_n_104,
      P(0) => mulB_n_105,
      PATTERNBDETECT => NLW_mulB_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mulB_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mulB_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mulB_UNDERFLOW_UNCONNECTED
    );
mulR: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9) => \active_gR[9]_i_1_n_0\,
      A(8) => \active_gR[8]_i_1_n_0\,
      A(7) => \active_gR[7]_i_1_n_0\,
      A(6) => \active_gR[6]_i_1_n_0\,
      A(5) => \active_gR[5]_i_1_n_0\,
      A(4) => \active_gR[4]_i_1_n_0\,
      A(3) => \active_gR[3]_i_1_n_0\,
      A(2) => \active_gR[2]_i_1_n_0\,
      A(1) => \active_gR[1]_i_1_n_0\,
      A(0) => \active_gR[0]_i_1_n_0\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mulR_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => s_axis_tdata(23 downto 16),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mulR_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mulR_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mulR_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mulR_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mulR_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_mulR_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => \mulR__0\(23 downto 8),
      P(7) => mulR_n_98,
      P(6) => mulR_n_99,
      P(5) => mulR_n_100,
      P(4) => mulR_n_101,
      P(3) => mulR_n_102,
      P(2) => mulR_n_103,
      P(1) => mulR_n_104,
      P(0) => mulR_n_105,
      PATTERNBDETECT => NLW_mulR_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mulR_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mulR_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mulR_UNDERFLOW_UNCONNECTED
    );
\pending_gB[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \dquot_reg_n_0_[0]\,
      I1 => \pending_gB[5]_i_2_n_0\,
      I2 => dzero,
      I3 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(0)
    );
\pending_gB[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \dquot_reg_n_0_[1]\,
      I1 => \pending_gB[5]_i_2_n_0\,
      I2 => dzero,
      I3 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(1)
    );
\pending_gB[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \dquot_reg_n_0_[2]\,
      I1 => \pending_gB[5]_i_2_n_0\,
      I2 => dzero,
      I3 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(2)
    );
\pending_gB[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \dquot_reg_n_0_[3]\,
      I1 => \pending_gB[5]_i_2_n_0\,
      I2 => dzero,
      I3 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(3)
    );
\pending_gB[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \dquot_reg_n_0_[4]\,
      I1 => \pending_gB[5]_i_2_n_0\,
      I2 => dzero,
      I3 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(4)
    );
\pending_gB[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \dquot_reg_n_0_[5]\,
      I1 => \pending_gB[5]_i_2_n_0\,
      I2 => dzero,
      I3 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(5)
    );
\pending_gB[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[6]\,
      I1 => \dquot_reg_n_0_[9]\,
      I2 => \dquot_reg_n_0_[8]\,
      I3 => \dquot_reg_n_0_[7]\,
      I4 => dzero,
      O => \pending_gB[5]_i_2_n_0\
    );
\pending_gB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000AAAB"
    )
        port map (
      I0 => \pending_gB[9]_i_3_n_0\,
      I1 => \dquot_reg_n_0_[7]\,
      I2 => \dquot_reg_n_0_[8]\,
      I3 => \dquot_reg_n_0_[9]\,
      I4 => dzero,
      I5 => \dquot_reg_n_0_[6]\,
      O => p_1_in(6)
    );
\pending_gB[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \dquot_reg_n_0_[7]\,
      I1 => dzero,
      I2 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(7)
    );
\pending_gB[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \pending_gB[9]_i_3_n_0\,
      I1 => \dquot_reg_n_0_[8]\,
      I2 => dzero,
      O => p_1_in(8)
    );
\pending_gB[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I1 => dchan_reg_n_0,
      O => pending_gB_1(0)
    );
\pending_gB[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[37]\,
      I1 => \dquot_reg_n_0_[38]\,
      I2 => \dquot_reg_n_0_[35]\,
      I3 => \dquot_reg_n_0_[36]\,
      I4 => \dquot_reg_n_0_[10]\,
      I5 => \dquot_reg_n_0_[39]\,
      O => \pending_gB[9]_i_10_n_0\
    );
\pending_gB[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \dquot_reg_n_0_[9]\,
      I1 => dzero,
      I2 => \pending_gB[9]_i_3_n_0\,
      O => p_1_in(9)
    );
\pending_gB[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \pending_gB[9]_i_4_n_0\,
      I1 => \pending_gB[9]_i_5_n_0\,
      I2 => \pending_gB[9]_i_6_n_0\,
      O => \pending_gB[9]_i_3_n_0\
    );
\pending_gB[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[21]\,
      I1 => \dquot_reg_n_0_[22]\,
      I2 => \dquot_reg_n_0_[19]\,
      I3 => \dquot_reg_n_0_[20]\,
      I4 => \pending_gB[9]_i_7_n_0\,
      O => \pending_gB[9]_i_4_n_0\
    );
\pending_gB[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[13]\,
      I1 => \dquot_reg_n_0_[14]\,
      I2 => \dquot_reg_n_0_[11]\,
      I3 => \dquot_reg_n_0_[12]\,
      I4 => \pending_gB[9]_i_8_n_0\,
      O => \pending_gB[9]_i_5_n_0\
    );
\pending_gB[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pending_gB[9]_i_9_n_0\,
      I1 => \dquot_reg_n_0_[28]\,
      I2 => \dquot_reg_n_0_[27]\,
      I3 => \dquot_reg_n_0_[30]\,
      I4 => \dquot_reg_n_0_[29]\,
      I5 => \pending_gB[9]_i_10_n_0\,
      O => \pending_gB[9]_i_6_n_0\
    );
\pending_gB[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[24]\,
      I1 => \dquot_reg_n_0_[23]\,
      I2 => \dquot_reg_n_0_[26]\,
      I3 => \dquot_reg_n_0_[25]\,
      O => \pending_gB[9]_i_7_n_0\
    );
\pending_gB[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[16]\,
      I1 => \dquot_reg_n_0_[15]\,
      I2 => \dquot_reg_n_0_[18]\,
      I3 => \dquot_reg_n_0_[17]\,
      O => \pending_gB[9]_i_8_n_0\
    );
\pending_gB[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dquot_reg_n_0_[32]\,
      I1 => \dquot_reg_n_0_[31]\,
      I2 => \dquot_reg_n_0_[34]\,
      I3 => \dquot_reg_n_0_[33]\,
      O => \pending_gB[9]_i_9_n_0\
    );
\pending_gB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(0),
      Q => pending_gB(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(1),
      Q => pending_gB(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(2),
      Q => pending_gB(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(3),
      Q => pending_gB(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(4),
      Q => pending_gB(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(5),
      Q => pending_gB(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(6),
      Q => pending_gB(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(7),
      Q => pending_gB(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(8),
      Q => pending_gB(8),
      S => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gB_1(0),
      D => p_1_in(9),
      Q => pending_gB(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_dstate_reg_n_0_[2]\,
      I1 => dchan_reg_n_0,
      O => pending_gR_3(0)
    );
\pending_gR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(0),
      Q => pending_gR(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(1),
      Q => pending_gR(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(2),
      Q => pending_gR(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(3),
      Q => pending_gR(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(4),
      Q => pending_gR(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(5),
      Q => pending_gR(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(6),
      Q => pending_gR(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(7),
      Q => pending_gR(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(8),
      Q => pending_gR(8),
      S => \m_axis_tdata[23]_i_1_n_0\
    );
\pending_gR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pending_gR_3(0),
      D => p_1_in(9),
      Q => pending_gR(9),
      R => \m_axis_tdata[23]_i_1_n_0\
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
\snap_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[0]\,
      Q => snap_B(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[10]\,
      Q => snap_B(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[11]\,
      Q => snap_B(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[12]\,
      Q => snap_B(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[13]\,
      Q => snap_B(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[14]\,
      Q => snap_B(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[15]\,
      Q => snap_B(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[16]\,
      Q => snap_B(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[17]\,
      Q => snap_B(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[18]\,
      Q => snap_B(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[19]\,
      Q => snap_B(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[1]\,
      Q => snap_B(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[20]\,
      Q => snap_B(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[21]\,
      Q => snap_B(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[22]\,
      Q => snap_B(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[23]\,
      Q => snap_B(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[24]\,
      Q => snap_B(24),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[25]\,
      Q => snap_B(25),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[26]\,
      Q => snap_B(26),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[27]\,
      Q => snap_B(27),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[28]\,
      Q => snap_B(28),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[29]\,
      Q => snap_B(29),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[2]\,
      Q => snap_B(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[30]\,
      Q => snap_B(30),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[31]\,
      Q => snap_B(31),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[3]\,
      Q => snap_B(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[4]\,
      Q => snap_B(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[5]\,
      Q => snap_B(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[6]\,
      Q => snap_B(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[7]\,
      Q => snap_B(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[8]\,
      Q => snap_B(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_B_reg_n_0_[9]\,
      Q => snap_B(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[0]\,
      Q => in12(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[10]\,
      Q => in12(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[11]\,
      Q => in12(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[12]\,
      Q => in12(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[13]\,
      Q => in12(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[14]\,
      Q => in12(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[15]\,
      Q => in12(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[16]\,
      Q => in12(24),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[17]\,
      Q => in12(25),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[18]\,
      Q => in12(26),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[19]\,
      Q => in12(27),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[1]\,
      Q => in12(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[20]\,
      Q => in12(28),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[21]\,
      Q => in12(29),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[22]\,
      Q => in12(30),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[23]\,
      Q => in12(31),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[24]\,
      Q => in12(32),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[25]\,
      Q => in12(33),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[26]\,
      Q => in12(34),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[27]\,
      Q => in12(35),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[28]\,
      Q => in12(36),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[29]\,
      Q => in12(37),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[2]\,
      Q => in12(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[30]\,
      Q => in12(38),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[31]\,
      Q => in12(39),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[3]\,
      Q => in12(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[4]\,
      Q => in12(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[5]\,
      Q => in12(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[6]\,
      Q => in12(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[7]\,
      Q => in12(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[8]\,
      Q => in12(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_G_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_G_reg_n_0_[9]\,
      Q => in12(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => s_axis_tuser,
      I3 => s_axis_tvalid,
      O => sof
    );
\snap_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[0]\,
      Q => snap_R(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[10]\,
      Q => snap_R(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[11]\,
      Q => snap_R(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[12]\,
      Q => snap_R(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[13]\,
      Q => snap_R(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[14]\,
      Q => snap_R(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[15]\,
      Q => snap_R(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[16]\,
      Q => snap_R(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[17]\,
      Q => snap_R(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[18]\,
      Q => snap_R(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[19]\,
      Q => snap_R(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[1]\,
      Q => snap_R(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[20]\,
      Q => snap_R(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[21]\,
      Q => snap_R(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[22]\,
      Q => snap_R(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[23]\,
      Q => snap_R(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[24]\,
      Q => snap_R(24),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[25]\,
      Q => snap_R(25),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[26]\,
      Q => snap_R(26),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[27]\,
      Q => snap_R(27),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[28]\,
      Q => snap_R(28),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[29]\,
      Q => snap_R(29),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[2]\,
      Q => snap_R(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[30]\,
      Q => snap_R(30),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[31]\,
      Q => snap_R(31),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[3]\,
      Q => snap_R(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[4]\,
      Q => snap_R(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[5]\,
      Q => snap_R(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[6]\,
      Q => snap_R(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[7]\,
      Q => snap_R(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[8]\,
      Q => snap_R(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\snap_R_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sof,
      D => \acc_R_reg_n_0_[9]\,
      Q => snap_R(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axis_wb_0_0 is
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
  attribute NotValidForBitStream of image_block_axis_wb_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axis_wb_0_0 : entity is "image_block_axis_wb_0_0,axis_whitebalance,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axis_wb_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axis_wb_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axis_wb_0_0 : entity is "axis_whitebalance,Vivado 2025.2";
end image_block_axis_wb_0_0;

architecture STRUCTURE of image_block_axis_wb_0_0 is
  signal n_0_452 : STD_LOGIC;
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
i_452: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => n_0_452
    );
inst: entity work.image_block_axis_wb_0_0_axis_whitebalance
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
