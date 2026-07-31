-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Jul 29 22:12:35 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_u_ze_uart_0/image_block_u_ze_uart_0_sim_netlist.vhdl}
-- Design      : image_block_u_ze_uart_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_ze_uart_0_uart_rx is
  port (
    m_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_valid : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    aclk : in STD_LOGIC;
    rx : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_u_ze_uart_0_uart_rx : entity is "uart_rx";
end image_block_u_ze_uart_0_uart_rx;

architecture STRUCTURE of image_block_u_ze_uart_0_uart_rx is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal bit_idx : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_4_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_5_n_0\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal frame_err_i_1_n_0 : STD_LOGIC;
  signal \m_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \os_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \os_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \os_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal os_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal os_idx : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \os_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \os_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \os_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \os_idx[3]_i_2_n_0\ : STD_LOGIC;
  signal \os_idx[3]_i_3_n_0\ : STD_LOGIC;
  signal \os_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \os_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \os_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \os_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rx_meta : STD_LOGIC;
  signal rx_sync : STD_LOGIC;
  signal rx_sync_d : STD_LOGIC;
  signal shreg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \shreg_reg_n_0_[0]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_START:01,S_DATA:10,S_IDLE:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_START:01,S_DATA:10,S_IDLE:00,iSTATE:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_idx[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_idx[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_idx[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_idx[2]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of frame_err_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_data[7]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \os_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \os_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \os_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \os_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \os_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \os_cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \os_cnt[9]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \os_cnt[9]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \os_idx[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \os_idx[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \os_idx[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \os_idx[3]_i_3\ : label is "soft_lutpair4";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFF040404"
    )
        port map (
      I0 => rx_sync,
      I1 => rx_sync_d,
      I2 => state(1),
      I3 => \m_data[7]_i_3_n_0\,
      I4 => \FSM_sequential_state[1]_i_2_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F007F80"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \m_data[7]_i_3_n_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => rx_sync,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA800055550000"
    )
        port map (
      I0 => \os_idx_reg_n_0_[3]\,
      I1 => \bit_idx_reg_n_0_[1]\,
      I2 => \bit_idx_reg_n_0_[0]\,
      I3 => \bit_idx_reg_n_0_[2]\,
      I4 => state(0),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => \m_data[7]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => \m_data[7]_i_1_n_0\
    );
\bit_idx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => state(1),
      I1 => bit_idx(0),
      I2 => \bit_idx_reg_n_0_[0]\,
      O => \bit_idx[0]_i_1_n_0\
    );
\bit_idx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => state(1),
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => bit_idx(0),
      I3 => \bit_idx_reg_n_0_[1]\,
      O => \bit_idx[1]_i_1_n_0\
    );
\bit_idx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => state(1),
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      I3 => bit_idx(0),
      I4 => \bit_idx_reg_n_0_[2]\,
      O => \bit_idx[2]_i_1_n_0\
    );
\bit_idx[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \m_data[7]_i_5_n_0\,
      I1 => \m_data[7]_i_4_n_0\,
      I2 => \bit_idx[2]_i_3_n_0\,
      I3 => \bit_idx[2]_i_4_n_0\,
      I4 => \bit_idx[2]_i_5_n_0\,
      O => bit_idx(0)
    );
\bit_idx[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => os_cnt_reg(8),
      I1 => os_cnt_reg(6),
      I2 => os_cnt_reg(5),
      I3 => os_cnt_reg(4),
      O => \bit_idx[2]_i_3_n_0\
    );
\bit_idx[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => rx_sync,
      I3 => \os_idx_reg_n_0_[3]\,
      O => \bit_idx[2]_i_4_n_0\
    );
\bit_idx[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404040404040"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \os_idx_reg_n_0_[3]\,
      I3 => \bit_idx_reg_n_0_[2]\,
      I4 => \bit_idx_reg_n_0_[0]\,
      I5 => \bit_idx_reg_n_0_[1]\,
      O => \bit_idx[2]_i_5_n_0\
    );
\bit_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bit_idx[0]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[0]\,
      R => \m_data[7]_i_1_n_0\
    );
\bit_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bit_idx[1]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[1]\,
      R => \m_data[7]_i_1_n_0\
    );
\bit_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bit_idx[2]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[2]\,
      R => \m_data[7]_i_1_n_0\
    );
frame_err_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \os_idx_reg_n_0_[3]\,
      I1 => rx_sync,
      I2 => state(0),
      I3 => state(1),
      I4 => \m_data[7]_i_3_n_0\,
      O => frame_err_i_1_n_0
    );
frame_err_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => frame_err_i_1_n_0,
      Q => frame_err,
      R => \m_data[7]_i_1_n_0\
    );
\m_data[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \m_data[7]_i_1_n_0\
    );
\m_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \os_idx_reg_n_0_[3]\,
      I1 => rx_sync,
      I2 => state(0),
      I3 => state(1),
      I4 => \m_data[7]_i_3_n_0\,
      O => \m_data[7]_i_2_n_0\
    );
\m_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => os_cnt_reg(8),
      I1 => os_cnt_reg(6),
      I2 => os_cnt_reg(5),
      I3 => os_cnt_reg(4),
      I4 => \m_data[7]_i_4_n_0\,
      I5 => \m_data[7]_i_5_n_0\,
      O => \m_data[7]_i_3_n_0\
    );
\m_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => os_cnt_reg(9),
      I1 => os_cnt_reg(3),
      I2 => os_cnt_reg(1),
      I3 => os_cnt_reg(7),
      I4 => os_cnt_reg(2),
      I5 => os_cnt_reg(0),
      O => \m_data[7]_i_4_n_0\
    );
\m_data[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \os_idx_reg_n_0_[1]\,
      I1 => \os_idx_reg_n_0_[0]\,
      I2 => \os_idx_reg_n_0_[2]\,
      O => \m_data[7]_i_5_n_0\
    );
\m_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => \shreg_reg_n_0_[0]\,
      Q => m_data(0),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(0),
      Q => m_data(1),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(1),
      Q => m_data(2),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(2),
      Q => m_data(3),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(3),
      Q => m_data(4),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(4),
      Q => m_data(5),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(5),
      Q => m_data(6),
      R => \m_data[7]_i_1_n_0\
    );
\m_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_data[7]_i_2_n_0\,
      D => p_1_in(6),
      Q => m_data(7),
      R => \m_data[7]_i_1_n_0\
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_data[7]_i_2_n_0\,
      Q => m_valid,
      R => \m_data[7]_i_1_n_0\
    );
\os_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => os_cnt_reg(0),
      O => p_0_in(0)
    );
\os_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => os_cnt_reg(0),
      I1 => os_cnt_reg(1),
      O => p_0_in(1)
    );
\os_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => os_cnt_reg(1),
      I1 => os_cnt_reg(0),
      I2 => os_cnt_reg(2),
      O => p_0_in(2)
    );
\os_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => os_cnt_reg(1),
      I1 => os_cnt_reg(0),
      I2 => os_cnt_reg(2),
      I3 => os_cnt_reg(3),
      O => p_0_in(3)
    );
\os_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => os_cnt_reg(1),
      I1 => os_cnt_reg(3),
      I2 => os_cnt_reg(0),
      I3 => os_cnt_reg(2),
      I4 => os_cnt_reg(4),
      O => p_0_in(4)
    );
\os_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => os_cnt_reg(1),
      I1 => os_cnt_reg(3),
      I2 => os_cnt_reg(2),
      I3 => os_cnt_reg(0),
      I4 => os_cnt_reg(4),
      I5 => os_cnt_reg(5),
      O => p_0_in(5)
    );
\os_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \os_cnt[9]_i_4_n_0\,
      I1 => os_cnt_reg(4),
      I2 => os_cnt_reg(0),
      I3 => os_cnt_reg(2),
      I4 => os_cnt_reg(5),
      I5 => os_cnt_reg(6),
      O => p_0_in(6)
    );
\os_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \os_cnt[9]_i_3_n_0\,
      I1 => os_cnt_reg(3),
      I2 => os_cnt_reg(1),
      I3 => os_cnt_reg(6),
      I4 => os_cnt_reg(7),
      O => p_0_in(7)
    );
\os_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \os_cnt[9]_i_3_n_0\,
      I1 => os_cnt_reg(7),
      I2 => os_cnt_reg(1),
      I3 => os_cnt_reg(3),
      I4 => os_cnt_reg(6),
      I5 => os_cnt_reg(8),
      O => p_0_in(8)
    );
\os_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF57"
    )
        port map (
      I0 => aresetn,
      I1 => state(0),
      I2 => state(1),
      I3 => \os_idx[3]_i_3_n_0\,
      O => \os_cnt[9]_i_1_n_0\
    );
\os_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \os_cnt[9]_i_3_n_0\,
      I1 => os_cnt_reg(8),
      I2 => os_cnt_reg(6),
      I3 => os_cnt_reg(7),
      I4 => \os_cnt[9]_i_4_n_0\,
      I5 => os_cnt_reg(9),
      O => p_0_in(9)
    );
\os_cnt[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => os_cnt_reg(4),
      I1 => os_cnt_reg(0),
      I2 => os_cnt_reg(2),
      I3 => os_cnt_reg(5),
      O => \os_cnt[9]_i_3_n_0\
    );
\os_cnt[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => os_cnt_reg(1),
      I1 => os_cnt_reg(3),
      O => \os_cnt[9]_i_4_n_0\
    );
\os_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => os_cnt_reg(0),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => os_cnt_reg(1),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => os_cnt_reg(2),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => os_cnt_reg(3),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => os_cnt_reg(4),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => os_cnt_reg(5),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => os_cnt_reg(6),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => os_cnt_reg(7),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(8),
      Q => os_cnt_reg(8),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(9),
      Q => os_cnt_reg(9),
      R => \os_cnt[9]_i_1_n_0\
    );
\os_idx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \os_idx_reg_n_0_[0]\,
      O => \os_idx[0]_i_1_n_0\
    );
\os_idx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => \os_idx_reg_n_0_[0]\,
      I1 => \os_idx_reg_n_0_[1]\,
      I2 => state(0),
      I3 => state(1),
      O => \os_idx[1]_i_1_n_0\
    );
\os_idx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78787800"
    )
        port map (
      I0 => \os_idx_reg_n_0_[1]\,
      I1 => \os_idx_reg_n_0_[0]\,
      I2 => \os_idx_reg_n_0_[2]\,
      I3 => state(0),
      I4 => state(1),
      O => \os_idx[2]_i_1_n_0\
    );
\os_idx[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \os_idx[3]_i_3_n_0\,
      I1 => state(1),
      I2 => state(0),
      O => os_idx(0)
    );
\os_idx[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F807F000000"
    )
        port map (
      I0 => \os_idx_reg_n_0_[2]\,
      I1 => \os_idx_reg_n_0_[0]\,
      I2 => \os_idx_reg_n_0_[1]\,
      I3 => \os_idx_reg_n_0_[3]\,
      I4 => state(0),
      I5 => state(1),
      O => \os_idx[3]_i_2_n_0\
    );
\os_idx[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \m_data[7]_i_4_n_0\,
      I1 => os_cnt_reg(4),
      I2 => os_cnt_reg(5),
      I3 => os_cnt_reg(6),
      I4 => os_cnt_reg(8),
      O => \os_idx[3]_i_3_n_0\
    );
\os_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => os_idx(0),
      D => \os_idx[0]_i_1_n_0\,
      Q => \os_idx_reg_n_0_[0]\,
      R => \m_data[7]_i_1_n_0\
    );
\os_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => os_idx(0),
      D => \os_idx[1]_i_1_n_0\,
      Q => \os_idx_reg_n_0_[1]\,
      R => \m_data[7]_i_1_n_0\
    );
\os_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => os_idx(0),
      D => \os_idx[2]_i_1_n_0\,
      Q => \os_idx_reg_n_0_[2]\,
      R => \m_data[7]_i_1_n_0\
    );
\os_idx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => os_idx(0),
      D => \os_idx[3]_i_2_n_0\,
      Q => \os_idx_reg_n_0_[3]\,
      R => \m_data[7]_i_1_n_0\
    );
rx_meta_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => rx,
      Q => rx_meta,
      S => \m_data[7]_i_1_n_0\
    );
rx_sync_d_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => rx_sync,
      Q => rx_sync_d,
      S => \m_data[7]_i_1_n_0\
    );
rx_sync_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => rx_meta,
      Q => rx_sync,
      S => \m_data[7]_i_1_n_0\
    );
\shreg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \os_idx_reg_n_0_[3]\,
      I3 => \m_data[7]_i_3_n_0\,
      O => shreg(0)
    );
\shreg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(0),
      Q => \shreg_reg_n_0_[0]\,
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(1),
      Q => p_1_in(0),
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(2),
      Q => p_1_in(1),
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(3),
      Q => p_1_in(2),
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(4),
      Q => p_1_in(3),
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(5),
      Q => p_1_in(4),
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => p_1_in(6),
      Q => p_1_in(5),
      R => \m_data[7]_i_1_n_0\
    );
\shreg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shreg(0),
      D => rx_sync,
      Q => p_1_in(6),
      R => \m_data[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_ze_uart_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    rx : in STD_LOGIC;
    m_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_valid : out STD_LOGIC;
    frame_err : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_u_ze_uart_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_u_ze_uart_0 : entity is "image_block_u_ze_uart_0,uart_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_u_ze_uart_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_u_ze_uart_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_u_ze_uart_0 : entity is "uart_rx,Vivado 2025.2";
end image_block_u_ze_uart_0;

architecture STRUCTURE of image_block_u_ze_uart_0 is
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
inst: entity work.image_block_u_ze_uart_0_uart_rx
     port map (
      aclk => aclk,
      aresetn => aresetn,
      frame_err => frame_err,
      m_data(7 downto 0) => m_data(7 downto 0),
      m_valid => m_valid,
      rx => rx
    );
end STRUCTURE;
