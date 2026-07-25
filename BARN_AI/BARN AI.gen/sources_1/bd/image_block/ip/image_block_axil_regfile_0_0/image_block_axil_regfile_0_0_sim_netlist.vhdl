-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jul 25 13:36:44 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_axil_regfile_0_0/image_block_axil_regfile_0_0_sim_netlist.vhdl}
-- Design      : image_block_axil_regfile_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axil_regfile_0_0_axil_regfile is
  port (
    tpg_enable : out STD_LOGIC;
    pattern_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mux_sel : out STD_LOGIC;
    s_axil_wready : out STD_LOGIC;
    s_axil_arready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_bvalid : out STD_LOGIC;
    s_axil_rvalid : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axil_awvalid : in STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    status_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_arvalid : in STD_LOGIC;
    s_axil_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axil_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_axil_regfile_0_0_axil_regfile : entity is "axil_regfile";
end image_block_axil_regfile_0_0_axil_regfile;

architecture STRUCTURE of image_block_axil_regfile_0_0_axil_regfile is
  signal \ctrl_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^mux_sel\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^pattern_sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axil_arready\ : STD_LOGIC;
  signal \s_axil_arready0__0\ : STD_LOGIC;
  signal \^s_axil_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axil_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axil_bvalid\ : STD_LOGIC;
  signal s_axil_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axil_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axil_rvalid\ : STD_LOGIC;
  signal s_axil_rvalid00_out : STD_LOGIC;
  signal s_axil_rvalid_i_1_n_0 : STD_LOGIC;
  signal scratch_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal scratch_reg1 : STD_LOGIC;
  signal \^tpg_enable\ : STD_LOGIC;
  signal \tpg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tpg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tpg_reg[1]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axil_arready0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axil_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axil_bvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axil_rvalid_i_1 : label is "soft_lutpair0";
begin
  mux_sel <= \^mux_sel\;
  pattern_sel(1 downto 0) <= \^pattern_sel\(1 downto 0);
  s_axil_arready <= \^s_axil_arready\;
  s_axil_bresp(0) <= \^s_axil_bresp\(0);
  s_axil_bvalid <= \^s_axil_bvalid\;
  s_axil_rvalid <= \^s_axil_rvalid\;
  tpg_enable <= \^tpg_enable\;
\ctrl_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axil_wdata(0),
      I1 => s_axil_wstrb(0),
      I2 => scratch_reg1,
      I3 => \ctrl_reg[0]_i_2_n_0\,
      I4 => \^tpg_enable\,
      O => \ctrl_reg[0]_i_1_n_0\
    );
\ctrl_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axil_awaddr(0),
      I1 => s_axil_awaddr(2),
      I2 => s_axil_awaddr(1),
      I3 => s_axil_awaddr(4),
      I4 => s_axil_awaddr(3),
      I5 => s_axil_awaddr(5),
      O => \ctrl_reg[0]_i_2_n_0\
    );
\ctrl_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axil_wdata(1),
      I1 => s_axil_wstrb(0),
      I2 => scratch_reg1,
      I3 => \ctrl_reg[0]_i_2_n_0\,
      I4 => \^mux_sel\,
      O => \ctrl_reg[1]_i_1_n_0\
    );
\ctrl_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ctrl_reg[0]_i_1_n_0\,
      Q => \^tpg_enable\,
      R => p_0_in
    );
\ctrl_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ctrl_reg[1]_i_1_n_0\,
      Q => \^mux_sel\,
      R => p_0_in
    );
s_axil_arready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => s_axil_arvalid,
      I1 => \^s_axil_arready\,
      I2 => s_axil_rready,
      I3 => \^s_axil_rvalid\,
      O => \s_axil_arready0__0\
    );
s_axil_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axil_arready0__0\,
      Q => \^s_axil_arready\,
      R => p_0_in
    );
s_axil_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
s_axil_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axil_awvalid,
      I1 => s_axil_wvalid,
      I2 => \^s_axil_bvalid\,
      O => scratch_reg1
    );
s_axil_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => scratch_reg1,
      Q => s_axil_wready,
      R => p_0_in
    );
\s_axil_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFFFFFEAA0000"
    )
        port map (
      I0 => \s_axil_bresp[1]_i_2_n_0\,
      I1 => s_axil_awaddr(0),
      I2 => s_axil_awaddr(1),
      I3 => s_axil_awaddr(2),
      I4 => scratch_reg1,
      I5 => \^s_axil_bresp\(0),
      O => \s_axil_bresp[1]_i_1_n_0\
    );
\s_axil_bresp[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axil_awaddr(5),
      I1 => s_axil_awaddr(3),
      I2 => s_axil_awaddr(4),
      O => \s_axil_bresp[1]_i_2_n_0\
    );
\s_axil_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axil_bresp[1]_i_1_n_0\,
      Q => \^s_axil_bresp\(0),
      R => p_0_in
    );
s_axil_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => s_axil_wvalid,
      I1 => s_axil_awvalid,
      I2 => s_axil_bready,
      I3 => \^s_axil_bvalid\,
      O => s_axil_bvalid_i_1_n_0
    );
s_axil_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axil_bvalid_i_1_n_0,
      Q => \^s_axil_bvalid\,
      R => p_0_in
    );
\s_axil_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEF00E0"
    )
        port map (
      I0 => status_in(0),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => \s_axil_rdata[0]_i_2_n_0\,
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[0]_i_1_n_0\
    );
\s_axil_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFFFF0AACCFF"
    )
        port map (
      I0 => scratch_reg(0),
      I1 => \^tpg_enable\,
      I2 => \^pattern_sel\(0),
      I3 => s_axil_araddr(1),
      I4 => s_axil_araddr(0),
      I5 => s_axil_araddr(2),
      O => \s_axil_rdata[0]_i_2_n_0\
    );
\s_axil_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(10),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(10),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[10]_i_1_n_0\
    );
\s_axil_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(11),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(11),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[11]_i_1_n_0\
    );
\s_axil_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(12),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(12),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[12]_i_1_n_0\
    );
\s_axil_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(13),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(13),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[13]_i_1_n_0\
    );
\s_axil_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004A0040"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(14),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(14),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[14]_i_1_n_0\
    );
\s_axil_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(15),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(15),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[15]_i_1_n_0\
    );
\s_axil_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0EFF0E3"
    )
        port map (
      I0 => status_in(16),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(16),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[16]_i_1_n_0\
    );
\s_axil_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004A0040"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(17),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(17),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[17]_i_1_n_0\
    );
\s_axil_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(18),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(18),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[18]_i_1_n_0\
    );
\s_axil_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(19),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(19),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[19]_i_1_n_0\
    );
\s_axil_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEF00E0"
    )
        port map (
      I0 => status_in(1),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => \s_axil_rdata[1]_i_2_n_0\,
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[1]_i_1_n_0\
    );
\s_axil_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFFFF0AACC00"
    )
        port map (
      I0 => scratch_reg(1),
      I1 => \^mux_sel\,
      I2 => \^pattern_sel\(1),
      I3 => s_axil_araddr(1),
      I4 => s_axil_araddr(0),
      I5 => s_axil_araddr(2),
      O => \s_axil_rdata[1]_i_2_n_0\
    );
\s_axil_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004F0045"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(20),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(20),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[20]_i_1_n_0\
    );
\s_axil_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(21),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(21),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[21]_i_1_n_0\
    );
\s_axil_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004F0045"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(22),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(22),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[22]_i_1_n_0\
    );
\s_axil_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(23),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(23),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[23]_i_1_n_0\
    );
\s_axil_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004A0040"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(24),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(24),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[24]_i_1_n_0\
    );
\s_axil_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0EFF0E3"
    )
        port map (
      I0 => status_in(25),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(25),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[25]_i_1_n_0\
    );
\s_axil_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(26),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(26),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[26]_i_1_n_0\
    );
\s_axil_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0EFF0E3"
    )
        port map (
      I0 => status_in(27),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(27),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[27]_i_1_n_0\
    );
\s_axil_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0EFF0E3"
    )
        port map (
      I0 => status_in(28),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(28),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[28]_i_1_n_0\
    );
\s_axil_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004F0045"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(29),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(29),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[29]_i_1_n_0\
    );
\s_axil_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(2),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(2),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[2]_i_1_n_0\
    );
\s_axil_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(30),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(30),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[30]_i_1_n_0\
    );
\s_axil_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axil_arvalid,
      I1 => \^s_axil_arready\,
      O => s_axil_rvalid00_out
    );
\s_axil_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0EFF0E3"
    )
        port map (
      I0 => status_in(31),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(31),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[31]_i_2_n_0\
    );
\s_axil_rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axil_araddr(5),
      I1 => s_axil_araddr(3),
      I2 => s_axil_araddr(4),
      O => \s_axil_rdata[31]_i_3_n_0\
    );
\s_axil_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(3),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(3),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[3]_i_1_n_0\
    );
\s_axil_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004A0040"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(4),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(4),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[4]_i_1_n_0\
    );
\s_axil_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(5),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(5),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[5]_i_1_n_0\
    );
\s_axil_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(6),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(6),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[6]_i_1_n_0\
    );
\s_axil_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0ECF0E0"
    )
        port map (
      I0 => status_in(7),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(7),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[7]_i_1_n_0\
    );
\s_axil_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004F0045"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => status_in(8),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(8),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[8]_i_1_n_0\
    );
\s_axil_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0EFF0E3"
    )
        port map (
      I0 => status_in(9),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => scratch_reg(9),
      I5 => \s_axil_rdata[31]_i_3_n_0\,
      O => \s_axil_rdata[9]_i_1_n_0\
    );
\s_axil_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[0]_i_1_n_0\,
      Q => s_axil_rdata(0),
      R => p_0_in
    );
\s_axil_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[10]_i_1_n_0\,
      Q => s_axil_rdata(10),
      R => p_0_in
    );
\s_axil_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[11]_i_1_n_0\,
      Q => s_axil_rdata(11),
      R => p_0_in
    );
\s_axil_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[12]_i_1_n_0\,
      Q => s_axil_rdata(12),
      R => p_0_in
    );
\s_axil_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[13]_i_1_n_0\,
      Q => s_axil_rdata(13),
      R => p_0_in
    );
\s_axil_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[14]_i_1_n_0\,
      Q => s_axil_rdata(14),
      R => p_0_in
    );
\s_axil_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[15]_i_1_n_0\,
      Q => s_axil_rdata(15),
      R => p_0_in
    );
\s_axil_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[16]_i_1_n_0\,
      Q => s_axil_rdata(16),
      R => p_0_in
    );
\s_axil_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[17]_i_1_n_0\,
      Q => s_axil_rdata(17),
      R => p_0_in
    );
\s_axil_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[18]_i_1_n_0\,
      Q => s_axil_rdata(18),
      R => p_0_in
    );
\s_axil_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[19]_i_1_n_0\,
      Q => s_axil_rdata(19),
      R => p_0_in
    );
\s_axil_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[1]_i_1_n_0\,
      Q => s_axil_rdata(1),
      R => p_0_in
    );
\s_axil_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[20]_i_1_n_0\,
      Q => s_axil_rdata(20),
      R => p_0_in
    );
\s_axil_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[21]_i_1_n_0\,
      Q => s_axil_rdata(21),
      R => p_0_in
    );
\s_axil_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[22]_i_1_n_0\,
      Q => s_axil_rdata(22),
      R => p_0_in
    );
\s_axil_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[23]_i_1_n_0\,
      Q => s_axil_rdata(23),
      R => p_0_in
    );
\s_axil_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[24]_i_1_n_0\,
      Q => s_axil_rdata(24),
      R => p_0_in
    );
\s_axil_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[25]_i_1_n_0\,
      Q => s_axil_rdata(25),
      R => p_0_in
    );
\s_axil_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[26]_i_1_n_0\,
      Q => s_axil_rdata(26),
      R => p_0_in
    );
\s_axil_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[27]_i_1_n_0\,
      Q => s_axil_rdata(27),
      R => p_0_in
    );
\s_axil_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[28]_i_1_n_0\,
      Q => s_axil_rdata(28),
      R => p_0_in
    );
\s_axil_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[29]_i_1_n_0\,
      Q => s_axil_rdata(29),
      R => p_0_in
    );
\s_axil_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[2]_i_1_n_0\,
      Q => s_axil_rdata(2),
      R => p_0_in
    );
\s_axil_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[30]_i_1_n_0\,
      Q => s_axil_rdata(30),
      R => p_0_in
    );
\s_axil_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[31]_i_2_n_0\,
      Q => s_axil_rdata(31),
      R => p_0_in
    );
\s_axil_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[3]_i_1_n_0\,
      Q => s_axil_rdata(3),
      R => p_0_in
    );
\s_axil_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[4]_i_1_n_0\,
      Q => s_axil_rdata(4),
      R => p_0_in
    );
\s_axil_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[5]_i_1_n_0\,
      Q => s_axil_rdata(5),
      R => p_0_in
    );
\s_axil_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[6]_i_1_n_0\,
      Q => s_axil_rdata(6),
      R => p_0_in
    );
\s_axil_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[7]_i_1_n_0\,
      Q => s_axil_rdata(7),
      R => p_0_in
    );
\s_axil_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[8]_i_1_n_0\,
      Q => s_axil_rdata(8),
      R => p_0_in
    );
\s_axil_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rdata[9]_i_1_n_0\,
      Q => s_axil_rdata(9),
      R => p_0_in
    );
\s_axil_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => s_axil_araddr(4),
      I1 => s_axil_araddr(3),
      I2 => s_axil_araddr(5),
      I3 => s_axil_araddr(0),
      I4 => s_axil_araddr(1),
      I5 => s_axil_araddr(2),
      O => \s_axil_rresp[1]_i_1_n_0\
    );
\s_axil_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid00_out,
      D => \s_axil_rresp[1]_i_1_n_0\,
      Q => s_axil_rresp(0),
      R => p_0_in
    );
s_axil_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^s_axil_arready\,
      I1 => s_axil_arvalid,
      I2 => s_axil_rready,
      I3 => \^s_axil_rvalid\,
      O => s_axil_rvalid_i_1_n_0
    );
s_axil_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axil_rvalid_i_1_n_0,
      Q => \^s_axil_rvalid\,
      R => p_0_in
    );
\scratch_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => scratch_reg1,
      I1 => \s_axil_bresp[1]_i_2_n_0\,
      I2 => s_axil_awaddr(0),
      I3 => s_axil_wstrb(1),
      I4 => s_axil_awaddr(1),
      I5 => s_axil_awaddr(2),
      O => p_1_in(15)
    );
\scratch_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => scratch_reg1,
      I1 => \s_axil_bresp[1]_i_2_n_0\,
      I2 => s_axil_awaddr(0),
      I3 => s_axil_wstrb(2),
      I4 => s_axil_awaddr(1),
      I5 => s_axil_awaddr(2),
      O => p_1_in(23)
    );
\scratch_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => scratch_reg1,
      I1 => \s_axil_bresp[1]_i_2_n_0\,
      I2 => s_axil_awaddr(0),
      I3 => s_axil_wstrb(3),
      I4 => s_axil_awaddr(1),
      I5 => s_axil_awaddr(2),
      O => p_1_in(31)
    );
\scratch_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => scratch_reg1,
      I1 => \s_axil_bresp[1]_i_2_n_0\,
      I2 => s_axil_awaddr(0),
      I3 => s_axil_wstrb(0),
      I4 => s_axil_awaddr(1),
      I5 => s_axil_awaddr(2),
      O => p_1_in(7)
    );
\scratch_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(0),
      Q => scratch_reg(0),
      R => p_0_in
    );
\scratch_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(10),
      Q => scratch_reg(10),
      R => p_0_in
    );
\scratch_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(11),
      Q => scratch_reg(11),
      R => p_0_in
    );
\scratch_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(12),
      Q => scratch_reg(12),
      R => p_0_in
    );
\scratch_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(13),
      Q => scratch_reg(13),
      R => p_0_in
    );
\scratch_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(14),
      Q => scratch_reg(14),
      R => p_0_in
    );
\scratch_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(15),
      Q => scratch_reg(15),
      R => p_0_in
    );
\scratch_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(16),
      Q => scratch_reg(16),
      R => p_0_in
    );
\scratch_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(17),
      Q => scratch_reg(17),
      R => p_0_in
    );
\scratch_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(18),
      Q => scratch_reg(18),
      R => p_0_in
    );
\scratch_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(19),
      Q => scratch_reg(19),
      R => p_0_in
    );
\scratch_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(1),
      Q => scratch_reg(1),
      R => p_0_in
    );
\scratch_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(20),
      Q => scratch_reg(20),
      R => p_0_in
    );
\scratch_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(21),
      Q => scratch_reg(21),
      R => p_0_in
    );
\scratch_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(22),
      Q => scratch_reg(22),
      R => p_0_in
    );
\scratch_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axil_wdata(23),
      Q => scratch_reg(23),
      R => p_0_in
    );
\scratch_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(24),
      Q => scratch_reg(24),
      R => p_0_in
    );
\scratch_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(25),
      Q => scratch_reg(25),
      R => p_0_in
    );
\scratch_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(26),
      Q => scratch_reg(26),
      R => p_0_in
    );
\scratch_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(27),
      Q => scratch_reg(27),
      R => p_0_in
    );
\scratch_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(28),
      Q => scratch_reg(28),
      R => p_0_in
    );
\scratch_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(29),
      Q => scratch_reg(29),
      R => p_0_in
    );
\scratch_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(2),
      Q => scratch_reg(2),
      R => p_0_in
    );
\scratch_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(30),
      Q => scratch_reg(30),
      R => p_0_in
    );
\scratch_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axil_wdata(31),
      Q => scratch_reg(31),
      R => p_0_in
    );
\scratch_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(3),
      Q => scratch_reg(3),
      R => p_0_in
    );
\scratch_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(4),
      Q => scratch_reg(4),
      R => p_0_in
    );
\scratch_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(5),
      Q => scratch_reg(5),
      R => p_0_in
    );
\scratch_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(6),
      Q => scratch_reg(6),
      R => p_0_in
    );
\scratch_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axil_wdata(7),
      Q => scratch_reg(7),
      R => p_0_in
    );
\scratch_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(8),
      Q => scratch_reg(8),
      R => p_0_in
    );
\scratch_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axil_wdata(9),
      Q => scratch_reg(9),
      R => p_0_in
    );
\tpg_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axil_wdata(0),
      I1 => s_axil_wstrb(0),
      I2 => scratch_reg1,
      I3 => \tpg_reg[1]_i_2_n_0\,
      I4 => \^pattern_sel\(0),
      O => \tpg_reg[0]_i_1_n_0\
    );
\tpg_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axil_wdata(1),
      I1 => s_axil_wstrb(0),
      I2 => scratch_reg1,
      I3 => \tpg_reg[1]_i_2_n_0\,
      I4 => \^pattern_sel\(1),
      O => \tpg_reg[1]_i_1_n_0\
    );
\tpg_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_axil_awaddr(1),
      I1 => s_axil_awaddr(0),
      I2 => s_axil_awaddr(2),
      I3 => s_axil_awaddr(4),
      I4 => s_axil_awaddr(3),
      I5 => s_axil_awaddr(5),
      O => \tpg_reg[1]_i_2_n_0\
    );
\tpg_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tpg_reg[0]_i_1_n_0\,
      Q => \^pattern_sel\(0),
      R => p_0_in
    );
\tpg_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tpg_reg[1]_i_1_n_0\,
      Q => \^pattern_sel\(1),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_axil_regfile_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axil_awvalid : in STD_LOGIC;
    s_axil_awready : out STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_wvalid : in STD_LOGIC;
    s_axil_wready : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_bvalid : out STD_LOGIC;
    s_axil_bready : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axil_arvalid : in STD_LOGIC;
    s_axil_arready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_rvalid : out STD_LOGIC;
    s_axil_rready : in STD_LOGIC;
    tpg_enable : out STD_LOGIC;
    pattern_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mux_sel : out STD_LOGIC;
    status_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_axil_regfile_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_axil_regfile_0_0 : entity is "image_block_axil_regfile_0_0,axil_regfile,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_axil_regfile_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_axil_regfile_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_axil_regfile_0_0 : entity is "axil_regfile,Vivado 2025.2";
end image_block_axil_regfile_0_0;

architecture STRUCTURE of image_block_axil_regfile_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axil_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axil_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axil_wready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axil_arready : signal is "xilinx.com:interface:aximm:1.0 s_axil ARREADY";
  attribute X_INTERFACE_INFO of s_axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil ARVALID";
  attribute X_INTERFACE_INFO of s_axil_awready : signal is "xilinx.com:interface:aximm:1.0 s_axil AWREADY";
  attribute X_INTERFACE_INFO of s_axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil AWVALID";
  attribute X_INTERFACE_INFO of s_axil_bready : signal is "xilinx.com:interface:aximm:1.0 s_axil BREADY";
  attribute X_INTERFACE_INFO of s_axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil BVALID";
  attribute X_INTERFACE_INFO of s_axil_rready : signal is "xilinx.com:interface:aximm:1.0 s_axil RREADY";
  attribute X_INTERFACE_INFO of s_axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil RVALID";
  attribute X_INTERFACE_INFO of s_axil_wready : signal is "xilinx.com:interface:aximm:1.0 s_axil WREADY";
  attribute X_INTERFACE_INFO of s_axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil WVALID";
  attribute X_INTERFACE_INFO of s_axil_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axil ARADDR";
  attribute X_INTERFACE_INFO of s_axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axil AWADDR";
  attribute X_INTERFACE_MODE of s_axil_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axil_awaddr : signal is "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axil_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axil BRESP";
  attribute X_INTERFACE_INFO of s_axil_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axil RDATA";
  attribute X_INTERFACE_INFO of s_axil_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axil RRESP";
  attribute X_INTERFACE_INFO of s_axil_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axil WDATA";
  attribute X_INTERFACE_INFO of s_axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axil WSTRB";
begin
  s_axil_awready <= \^s_axil_wready\;
  s_axil_bresp(1) <= \^s_axil_bresp\(1);
  s_axil_bresp(0) <= \<const0>\;
  s_axil_rresp(1) <= \^s_axil_rresp\(1);
  s_axil_rresp(0) <= \<const0>\;
  s_axil_wready <= \^s_axil_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.image_block_axil_regfile_0_0_axil_regfile
     port map (
      aclk => aclk,
      aresetn => aresetn,
      mux_sel => mux_sel,
      pattern_sel(1 downto 0) => pattern_sel(1 downto 0),
      s_axil_araddr(5 downto 0) => s_axil_araddr(7 downto 2),
      s_axil_arready => s_axil_arready,
      s_axil_arvalid => s_axil_arvalid,
      s_axil_awaddr(5 downto 0) => s_axil_awaddr(7 downto 2),
      s_axil_awvalid => s_axil_awvalid,
      s_axil_bready => s_axil_bready,
      s_axil_bresp(0) => \^s_axil_bresp\(1),
      s_axil_bvalid => s_axil_bvalid,
      s_axil_rdata(31 downto 0) => s_axil_rdata(31 downto 0),
      s_axil_rready => s_axil_rready,
      s_axil_rresp(0) => \^s_axil_rresp\(1),
      s_axil_rvalid => s_axil_rvalid,
      s_axil_wdata(31 downto 0) => s_axil_wdata(31 downto 0),
      s_axil_wready => \^s_axil_wready\,
      s_axil_wstrb(3 downto 0) => s_axil_wstrb(3 downto 0),
      s_axil_wvalid => s_axil_wvalid,
      status_in(31 downto 0) => status_in(31 downto 0),
      tpg_enable => tpg_enable
    );
end STRUCTURE;
