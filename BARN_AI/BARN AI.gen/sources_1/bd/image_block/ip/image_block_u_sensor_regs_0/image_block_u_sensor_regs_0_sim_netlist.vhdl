-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Jul 29 22:12:37 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_u_sensor_regs_0/image_block_u_sensor_regs_0_sim_netlist.vhdl}
-- Design      : image_block_u_sensor_regs_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_sensor_regs_0_axil_sensor_regs is
  port (
    s_axil_wready : out STD_LOGIC;
    s_axil_arready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_bvalid_reg_0 : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_rvalid : out STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    ze_conc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ze_range : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ze_gas_type : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ze_unit : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ze_decimals : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pm_pm1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_pm2_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_pm10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ze_frame_valid : in STD_LOGIC;
    ze_csum_err : in STD_LOGIC;
    ze_uart_frame_err : in STD_LOGIC;
    pm_frame_valid : in STD_LOGIC;
    pm_csum_err : in STD_LOGIC;
    pm_uart_frame_err : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axil_awvalid : in STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axil_arvalid : in STD_LOGIC;
    s_axil_rready : in STD_LOGIC;
    s_axil_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of image_block_u_sensor_regs_0_axil_sensor_regs : entity is "axil_sensor_regs";
end image_block_u_sensor_regs_0_axil_sensor_regs;

architecture STRUCTURE of image_block_u_sensor_regs_0_axil_sensor_regs is
  signal clear : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pm_ecnt[0]_i_2_n_0\ : STD_LOGIC;
  signal pm_ecnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pm_ecnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ecnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ecnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ecnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ecnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pm_fcnt[0]_i_2_n_0\ : STD_LOGIC;
  signal pm_fcnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pm_fcnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pm_fcnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pm_fcnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pm_fcnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pm_fcnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ucnt[0]_i_2_n_0\ : STD_LOGIC;
  signal pm_ucnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pm_ucnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ucnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ucnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ucnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pm_ucnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^s_axil_arready\ : STD_LOGIC;
  signal \s_axil_arready0__0\ : STD_LOGIC;
  signal \^s_axil_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axil_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_bresp[1]_i_3_n_0\ : STD_LOGIC;
  signal s_axil_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axil_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axil_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_axil_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axil_rvalid\ : STD_LOGIC;
  signal s_axil_rvalid02_out : STD_LOGIC;
  signal s_axil_rvalid_i_1_n_0 : STD_LOGIC;
  signal s_conc : STD_LOGIC;
  signal s_pm10 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_pu : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_zu : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wr_fire : STD_LOGIC;
  signal \ze_ecnt[0]_i_2_n_0\ : STD_LOGIC;
  signal ze_ecnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ze_ecnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ecnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ecnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ecnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ecnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ze_fcnt[0]_i_2_n_0\ : STD_LOGIC;
  signal ze_fcnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ze_fcnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ze_fcnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ze_fcnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ze_fcnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ze_fcnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ucnt[0]_i_2_n_0\ : STD_LOGIC;
  signal ze_ucnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ze_ucnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ucnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ucnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ucnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ze_ucnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_pm_ecnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pm_fcnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pm_ucnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ze_ecnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ze_fcnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ze_ucnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pm_ecnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ecnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ecnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ecnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_fcnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_fcnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_fcnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_fcnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ucnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ucnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ucnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pm_ucnt_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axil_arready0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axil_awready_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axil_bresp[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axil_rdata[14]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axil_rdata[16]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axil_rdata[17]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axil_rdata[18]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axil_rdata[19]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axil_rdata[20]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axil_rdata[21]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axil_rdata[22]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axil_rdata[23]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axil_rdata[31]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axil_rdata[31]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axil_rdata[8]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axil_rvalid_i_1 : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \ze_ecnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ecnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ecnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ecnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_fcnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_fcnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_fcnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_fcnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ucnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ucnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ucnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ze_ucnt_reg[8]_i_1\ : label is 35;
begin
  s_axil_arready <= \^s_axil_arready\;
  s_axil_bresp(0) <= \^s_axil_bresp\(0);
  s_axil_bvalid_reg_0 <= \^s_axil_bvalid_reg_0\;
  s_axil_rvalid <= \^s_axil_rvalid\;
\pm_ecnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pm_ecnt_reg(0),
      O => \pm_ecnt[0]_i_2_n_0\
    );
\pm_ecnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[0]_i_1_n_7\,
      Q => pm_ecnt_reg(0),
      R => clear
    );
\pm_ecnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pm_ecnt_reg[0]_i_1_n_0\,
      CO(2) => \pm_ecnt_reg[0]_i_1_n_1\,
      CO(1) => \pm_ecnt_reg[0]_i_1_n_2\,
      CO(0) => \pm_ecnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pm_ecnt_reg[0]_i_1_n_4\,
      O(2) => \pm_ecnt_reg[0]_i_1_n_5\,
      O(1) => \pm_ecnt_reg[0]_i_1_n_6\,
      O(0) => \pm_ecnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => pm_ecnt_reg(3 downto 1),
      S(0) => \pm_ecnt[0]_i_2_n_0\
    );
\pm_ecnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[8]_i_1_n_5\,
      Q => pm_ecnt_reg(10),
      R => clear
    );
\pm_ecnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[8]_i_1_n_4\,
      Q => pm_ecnt_reg(11),
      R => clear
    );
\pm_ecnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[12]_i_1_n_7\,
      Q => pm_ecnt_reg(12),
      R => clear
    );
\pm_ecnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_ecnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pm_ecnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pm_ecnt_reg[12]_i_1_n_1\,
      CO(1) => \pm_ecnt_reg[12]_i_1_n_2\,
      CO(0) => \pm_ecnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_ecnt_reg[12]_i_1_n_4\,
      O(2) => \pm_ecnt_reg[12]_i_1_n_5\,
      O(1) => \pm_ecnt_reg[12]_i_1_n_6\,
      O(0) => \pm_ecnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pm_ecnt_reg(15 downto 12)
    );
\pm_ecnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[12]_i_1_n_6\,
      Q => pm_ecnt_reg(13),
      R => clear
    );
\pm_ecnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[12]_i_1_n_5\,
      Q => pm_ecnt_reg(14),
      R => clear
    );
\pm_ecnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[12]_i_1_n_4\,
      Q => pm_ecnt_reg(15),
      R => clear
    );
\pm_ecnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[0]_i_1_n_6\,
      Q => pm_ecnt_reg(1),
      R => clear
    );
\pm_ecnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[0]_i_1_n_5\,
      Q => pm_ecnt_reg(2),
      R => clear
    );
\pm_ecnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[0]_i_1_n_4\,
      Q => pm_ecnt_reg(3),
      R => clear
    );
\pm_ecnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[4]_i_1_n_7\,
      Q => pm_ecnt_reg(4),
      R => clear
    );
\pm_ecnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_ecnt_reg[0]_i_1_n_0\,
      CO(3) => \pm_ecnt_reg[4]_i_1_n_0\,
      CO(2) => \pm_ecnt_reg[4]_i_1_n_1\,
      CO(1) => \pm_ecnt_reg[4]_i_1_n_2\,
      CO(0) => \pm_ecnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_ecnt_reg[4]_i_1_n_4\,
      O(2) => \pm_ecnt_reg[4]_i_1_n_5\,
      O(1) => \pm_ecnt_reg[4]_i_1_n_6\,
      O(0) => \pm_ecnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pm_ecnt_reg(7 downto 4)
    );
\pm_ecnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[4]_i_1_n_6\,
      Q => pm_ecnt_reg(5),
      R => clear
    );
\pm_ecnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[4]_i_1_n_5\,
      Q => pm_ecnt_reg(6),
      R => clear
    );
\pm_ecnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[4]_i_1_n_4\,
      Q => pm_ecnt_reg(7),
      R => clear
    );
\pm_ecnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[8]_i_1_n_7\,
      Q => pm_ecnt_reg(8),
      R => clear
    );
\pm_ecnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_ecnt_reg[4]_i_1_n_0\,
      CO(3) => \pm_ecnt_reg[8]_i_1_n_0\,
      CO(2) => \pm_ecnt_reg[8]_i_1_n_1\,
      CO(1) => \pm_ecnt_reg[8]_i_1_n_2\,
      CO(0) => \pm_ecnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_ecnt_reg[8]_i_1_n_4\,
      O(2) => \pm_ecnt_reg[8]_i_1_n_5\,
      O(1) => \pm_ecnt_reg[8]_i_1_n_6\,
      O(0) => \pm_ecnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pm_ecnt_reg(11 downto 8)
    );
\pm_ecnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_csum_err,
      D => \pm_ecnt_reg[8]_i_1_n_6\,
      Q => pm_ecnt_reg(9),
      R => clear
    );
\pm_fcnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pm_fcnt_reg(0),
      O => \pm_fcnt[0]_i_2_n_0\
    );
\pm_fcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[0]_i_1_n_7\,
      Q => pm_fcnt_reg(0),
      R => clear
    );
\pm_fcnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pm_fcnt_reg[0]_i_1_n_0\,
      CO(2) => \pm_fcnt_reg[0]_i_1_n_1\,
      CO(1) => \pm_fcnt_reg[0]_i_1_n_2\,
      CO(0) => \pm_fcnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pm_fcnt_reg[0]_i_1_n_4\,
      O(2) => \pm_fcnt_reg[0]_i_1_n_5\,
      O(1) => \pm_fcnt_reg[0]_i_1_n_6\,
      O(0) => \pm_fcnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => pm_fcnt_reg(3 downto 1),
      S(0) => \pm_fcnt[0]_i_2_n_0\
    );
\pm_fcnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[8]_i_1_n_5\,
      Q => pm_fcnt_reg(10),
      R => clear
    );
\pm_fcnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[8]_i_1_n_4\,
      Q => pm_fcnt_reg(11),
      R => clear
    );
\pm_fcnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[12]_i_1_n_7\,
      Q => pm_fcnt_reg(12),
      R => clear
    );
\pm_fcnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_fcnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pm_fcnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pm_fcnt_reg[12]_i_1_n_1\,
      CO(1) => \pm_fcnt_reg[12]_i_1_n_2\,
      CO(0) => \pm_fcnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_fcnt_reg[12]_i_1_n_4\,
      O(2) => \pm_fcnt_reg[12]_i_1_n_5\,
      O(1) => \pm_fcnt_reg[12]_i_1_n_6\,
      O(0) => \pm_fcnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pm_fcnt_reg(15 downto 12)
    );
\pm_fcnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[12]_i_1_n_6\,
      Q => pm_fcnt_reg(13),
      R => clear
    );
\pm_fcnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[12]_i_1_n_5\,
      Q => pm_fcnt_reg(14),
      R => clear
    );
\pm_fcnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[12]_i_1_n_4\,
      Q => pm_fcnt_reg(15),
      R => clear
    );
\pm_fcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[0]_i_1_n_6\,
      Q => pm_fcnt_reg(1),
      R => clear
    );
\pm_fcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[0]_i_1_n_5\,
      Q => pm_fcnt_reg(2),
      R => clear
    );
\pm_fcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[0]_i_1_n_4\,
      Q => pm_fcnt_reg(3),
      R => clear
    );
\pm_fcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[4]_i_1_n_7\,
      Q => pm_fcnt_reg(4),
      R => clear
    );
\pm_fcnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_fcnt_reg[0]_i_1_n_0\,
      CO(3) => \pm_fcnt_reg[4]_i_1_n_0\,
      CO(2) => \pm_fcnt_reg[4]_i_1_n_1\,
      CO(1) => \pm_fcnt_reg[4]_i_1_n_2\,
      CO(0) => \pm_fcnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_fcnt_reg[4]_i_1_n_4\,
      O(2) => \pm_fcnt_reg[4]_i_1_n_5\,
      O(1) => \pm_fcnt_reg[4]_i_1_n_6\,
      O(0) => \pm_fcnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pm_fcnt_reg(7 downto 4)
    );
\pm_fcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[4]_i_1_n_6\,
      Q => pm_fcnt_reg(5),
      R => clear
    );
\pm_fcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[4]_i_1_n_5\,
      Q => pm_fcnt_reg(6),
      R => clear
    );
\pm_fcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[4]_i_1_n_4\,
      Q => pm_fcnt_reg(7),
      R => clear
    );
\pm_fcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[8]_i_1_n_7\,
      Q => pm_fcnt_reg(8),
      R => clear
    );
\pm_fcnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_fcnt_reg[4]_i_1_n_0\,
      CO(3) => \pm_fcnt_reg[8]_i_1_n_0\,
      CO(2) => \pm_fcnt_reg[8]_i_1_n_1\,
      CO(1) => \pm_fcnt_reg[8]_i_1_n_2\,
      CO(0) => \pm_fcnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_fcnt_reg[8]_i_1_n_4\,
      O(2) => \pm_fcnt_reg[8]_i_1_n_5\,
      O(1) => \pm_fcnt_reg[8]_i_1_n_6\,
      O(0) => \pm_fcnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pm_fcnt_reg(11 downto 8)
    );
\pm_fcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_frame_valid,
      D => \pm_fcnt_reg[8]_i_1_n_6\,
      Q => pm_fcnt_reg(9),
      R => clear
    );
\pm_ucnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pm_ucnt_reg(0),
      O => \pm_ucnt[0]_i_2_n_0\
    );
\pm_ucnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[0]_i_1_n_7\,
      Q => pm_ucnt_reg(0),
      R => clear
    );
\pm_ucnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pm_ucnt_reg[0]_i_1_n_0\,
      CO(2) => \pm_ucnt_reg[0]_i_1_n_1\,
      CO(1) => \pm_ucnt_reg[0]_i_1_n_2\,
      CO(0) => \pm_ucnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pm_ucnt_reg[0]_i_1_n_4\,
      O(2) => \pm_ucnt_reg[0]_i_1_n_5\,
      O(1) => \pm_ucnt_reg[0]_i_1_n_6\,
      O(0) => \pm_ucnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => pm_ucnt_reg(3 downto 1),
      S(0) => \pm_ucnt[0]_i_2_n_0\
    );
\pm_ucnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[8]_i_1_n_5\,
      Q => pm_ucnt_reg(10),
      R => clear
    );
\pm_ucnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[8]_i_1_n_4\,
      Q => pm_ucnt_reg(11),
      R => clear
    );
\pm_ucnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[12]_i_1_n_7\,
      Q => pm_ucnt_reg(12),
      R => clear
    );
\pm_ucnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_ucnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pm_ucnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pm_ucnt_reg[12]_i_1_n_1\,
      CO(1) => \pm_ucnt_reg[12]_i_1_n_2\,
      CO(0) => \pm_ucnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_ucnt_reg[12]_i_1_n_4\,
      O(2) => \pm_ucnt_reg[12]_i_1_n_5\,
      O(1) => \pm_ucnt_reg[12]_i_1_n_6\,
      O(0) => \pm_ucnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pm_ucnt_reg(15 downto 12)
    );
\pm_ucnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[12]_i_1_n_6\,
      Q => pm_ucnt_reg(13),
      R => clear
    );
\pm_ucnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[12]_i_1_n_5\,
      Q => pm_ucnt_reg(14),
      R => clear
    );
\pm_ucnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[12]_i_1_n_4\,
      Q => pm_ucnt_reg(15),
      R => clear
    );
\pm_ucnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[0]_i_1_n_6\,
      Q => pm_ucnt_reg(1),
      R => clear
    );
\pm_ucnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[0]_i_1_n_5\,
      Q => pm_ucnt_reg(2),
      R => clear
    );
\pm_ucnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[0]_i_1_n_4\,
      Q => pm_ucnt_reg(3),
      R => clear
    );
\pm_ucnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[4]_i_1_n_7\,
      Q => pm_ucnt_reg(4),
      R => clear
    );
\pm_ucnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_ucnt_reg[0]_i_1_n_0\,
      CO(3) => \pm_ucnt_reg[4]_i_1_n_0\,
      CO(2) => \pm_ucnt_reg[4]_i_1_n_1\,
      CO(1) => \pm_ucnt_reg[4]_i_1_n_2\,
      CO(0) => \pm_ucnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_ucnt_reg[4]_i_1_n_4\,
      O(2) => \pm_ucnt_reg[4]_i_1_n_5\,
      O(1) => \pm_ucnt_reg[4]_i_1_n_6\,
      O(0) => \pm_ucnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pm_ucnt_reg(7 downto 4)
    );
\pm_ucnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[4]_i_1_n_6\,
      Q => pm_ucnt_reg(5),
      R => clear
    );
\pm_ucnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[4]_i_1_n_5\,
      Q => pm_ucnt_reg(6),
      R => clear
    );
\pm_ucnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[4]_i_1_n_4\,
      Q => pm_ucnt_reg(7),
      R => clear
    );
\pm_ucnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[8]_i_1_n_7\,
      Q => pm_ucnt_reg(8),
      R => clear
    );
\pm_ucnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pm_ucnt_reg[4]_i_1_n_0\,
      CO(3) => \pm_ucnt_reg[8]_i_1_n_0\,
      CO(2) => \pm_ucnt_reg[8]_i_1_n_1\,
      CO(1) => \pm_ucnt_reg[8]_i_1_n_2\,
      CO(0) => \pm_ucnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pm_ucnt_reg[8]_i_1_n_4\,
      O(2) => \pm_ucnt_reg[8]_i_1_n_5\,
      O(1) => \pm_ucnt_reg[8]_i_1_n_6\,
      O(0) => \pm_ucnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pm_ucnt_reg(11 downto 8)
    );
\pm_ucnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => pm_uart_frame_err,
      D => \pm_ucnt_reg[8]_i_1_n_6\,
      Q => pm_ucnt_reg(9),
      R => clear
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
      R => clear
    );
s_axil_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => clear
    );
s_axil_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axil_wvalid,
      I1 => \^s_axil_bvalid_reg_0\,
      I2 => s_axil_awvalid,
      O => wr_fire
    );
s_axil_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_fire,
      Q => s_axil_wready,
      R => clear
    );
\s_axil_bresp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E000"
    )
        port map (
      I0 => s_axil_awaddr(2),
      I1 => s_axil_awaddr(1),
      I2 => s_axil_awaddr(3),
      I3 => \s_axil_bresp[1]_i_2_n_0\,
      I4 => \s_axil_bresp[1]_i_3_n_0\,
      O => \s_axil_bresp[1]_i_1_n_0\
    );
\s_axil_bresp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
        port map (
      I0 => s_axil_awvalid,
      I1 => \^s_axil_bvalid_reg_0\,
      I2 => s_axil_wvalid,
      I3 => \^s_axil_bresp\(0),
      I4 => aresetn,
      O => \s_axil_bresp[1]_i_2_n_0\
    );
\s_axil_bresp[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => s_axil_awaddr(5),
      I1 => s_axil_awaddr(4),
      I2 => s_axil_wvalid,
      I3 => \^s_axil_bvalid_reg_0\,
      I4 => s_axil_awvalid,
      O => \s_axil_bresp[1]_i_3_n_0\
    );
\s_axil_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axil_bresp[1]_i_1_n_0\,
      Q => \^s_axil_bresp\(0),
      R => '0'
    );
s_axil_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C50"
    )
        port map (
      I0 => s_axil_bready,
      I1 => s_axil_wvalid,
      I2 => \^s_axil_bvalid_reg_0\,
      I3 => s_axil_awvalid,
      O => s_axil_bvalid_i_1_n_0
    );
s_axil_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axil_bvalid_i_1_n_0,
      Q => \^s_axil_bvalid_reg_0\,
      R => clear
    );
\s_axil_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[0]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[0]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[0]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(0)
    );
\s_axil_rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => data1(0),
      I1 => data0(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[0]_i_2_n_0\
    );
\s_axil_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(0),
      I1 => data4(0),
      I2 => s_axil_araddr(1),
      I3 => s_zu(0),
      I4 => s_axil_araddr(0),
      I5 => data2(0),
      O => \s_axil_rdata[0]_i_3_n_0\
    );
\s_axil_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(0),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(0),
      O => \s_axil_rdata[0]_i_4_n_0\
    );
\s_axil_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[10]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[10]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[10]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(10)
    );
\s_axil_rdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(10),
      I2 => s_axil_araddr(0),
      I3 => data1(10),
      O => \s_axil_rdata[10]_i_2_n_0\
    );
\s_axil_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(10),
      I1 => data4(10),
      I2 => s_axil_araddr(1),
      I3 => s_zu(10),
      I4 => s_axil_araddr(0),
      I5 => data2(10),
      O => \s_axil_rdata[10]_i_3_n_0\
    );
\s_axil_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(10),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(10),
      O => \s_axil_rdata[10]_i_4_n_0\
    );
\s_axil_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[11]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[11]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[11]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(11)
    );
\s_axil_rdata[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(11),
      I2 => s_axil_araddr(0),
      I3 => data1(11),
      O => \s_axil_rdata[11]_i_2_n_0\
    );
\s_axil_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(11),
      I1 => data4(11),
      I2 => s_axil_araddr(1),
      I3 => s_zu(11),
      I4 => s_axil_araddr(0),
      I5 => data2(11),
      O => \s_axil_rdata[11]_i_3_n_0\
    );
\s_axil_rdata[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(11),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(11),
      O => \s_axil_rdata[11]_i_4_n_0\
    );
\s_axil_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[12]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[12]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[12]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(12)
    );
\s_axil_rdata[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => data1(12),
      I1 => data0(12),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[12]_i_2_n_0\
    );
\s_axil_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(12),
      I1 => data4(12),
      I2 => s_axil_araddr(1),
      I3 => s_zu(12),
      I4 => s_axil_araddr(0),
      I5 => data2(12),
      O => \s_axil_rdata[12]_i_3_n_0\
    );
\s_axil_rdata[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(12),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(12),
      O => \s_axil_rdata[12]_i_4_n_0\
    );
\s_axil_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[13]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[13]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[13]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(13)
    );
\s_axil_rdata[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(13),
      I2 => s_axil_araddr(0),
      I3 => data1(13),
      O => \s_axil_rdata[13]_i_2_n_0\
    );
\s_axil_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(13),
      I1 => data4(13),
      I2 => s_axil_araddr(1),
      I3 => s_zu(13),
      I4 => s_axil_araddr(0),
      I5 => data2(13),
      O => \s_axil_rdata[13]_i_3_n_0\
    );
\s_axil_rdata[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(13),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(13),
      O => \s_axil_rdata[13]_i_4_n_0\
    );
\s_axil_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[14]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[14]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[14]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(14)
    );
\s_axil_rdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(14),
      I2 => s_axil_araddr(0),
      I3 => data1(14),
      O => \s_axil_rdata[14]_i_2_n_0\
    );
\s_axil_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(14),
      I1 => data4(14),
      I2 => s_axil_araddr(1),
      I3 => s_zu(14),
      I4 => s_axil_araddr(0),
      I5 => data2(14),
      O => \s_axil_rdata[14]_i_3_n_0\
    );
\s_axil_rdata[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => data6(14),
      I1 => s_axil_araddr(0),
      I2 => s_pu(14),
      I3 => s_axil_araddr(2),
      I4 => s_axil_araddr(1),
      O => \s_axil_rdata[14]_i_4_n_0\
    );
\s_axil_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[15]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[15]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[15]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(15)
    );
\s_axil_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(15),
      I2 => s_axil_araddr(0),
      I3 => data1(15),
      O => \s_axil_rdata[15]_i_2_n_0\
    );
\s_axil_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(15),
      I1 => data4(15),
      I2 => s_axil_araddr(1),
      I3 => s_zu(15),
      I4 => s_axil_araddr(0),
      I5 => data2(15),
      O => \s_axil_rdata[15]_i_3_n_0\
    );
\s_axil_rdata[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(15),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(15),
      O => \s_axil_rdata[15]_i_4_n_0\
    );
\s_axil_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[16]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[16]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[16]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(16)
    );
\s_axil_rdata[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => data1(16),
      I1 => data0(16),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[16]_i_2_n_0\
    );
\s_axil_rdata[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(16),
      I1 => s_axil_araddr(1),
      I2 => data2(16),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[16]_i_3_n_0\
    );
\s_axil_rdata[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => s_axil_araddr(2),
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => data6(16),
      O => \s_axil_rdata[16]_i_4_n_0\
    );
\s_axil_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[17]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[17]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[17]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(17)
    );
\s_axil_rdata[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(17),
      I2 => s_axil_araddr(0),
      I3 => data1(17),
      O => \s_axil_rdata[17]_i_2_n_0\
    );
\s_axil_rdata[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(17),
      I1 => s_axil_araddr(1),
      I2 => data2(17),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[17]_i_3_n_0\
    );
\s_axil_rdata[17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => data6(17),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      O => \s_axil_rdata[17]_i_4_n_0\
    );
\s_axil_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[18]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[18]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[18]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(18)
    );
\s_axil_rdata[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(18),
      I2 => s_axil_araddr(0),
      I3 => data1(18),
      O => \s_axil_rdata[18]_i_2_n_0\
    );
\s_axil_rdata[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(18),
      I1 => s_axil_araddr(1),
      I2 => data2(18),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[18]_i_3_n_0\
    );
\s_axil_rdata[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => s_axil_araddr(2),
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => data6(18),
      O => \s_axil_rdata[18]_i_4_n_0\
    );
\s_axil_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[19]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[19]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[19]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(19)
    );
\s_axil_rdata[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(19),
      I2 => s_axil_araddr(0),
      I3 => data1(19),
      O => \s_axil_rdata[19]_i_2_n_0\
    );
\s_axil_rdata[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(19),
      I1 => s_axil_araddr(1),
      I2 => data2(19),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[19]_i_3_n_0\
    );
\s_axil_rdata[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => s_axil_araddr(2),
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => data6(19),
      O => \s_axil_rdata[19]_i_4_n_0\
    );
\s_axil_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[1]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[1]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[1]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(1)
    );
\s_axil_rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(1),
      I2 => s_axil_araddr(0),
      I3 => data1(1),
      O => \s_axil_rdata[1]_i_2_n_0\
    );
\s_axil_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(1),
      I1 => data4(1),
      I2 => s_axil_araddr(1),
      I3 => s_zu(1),
      I4 => s_axil_araddr(0),
      I5 => data2(1),
      O => \s_axil_rdata[1]_i_3_n_0\
    );
\s_axil_rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(1),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(1),
      O => \s_axil_rdata[1]_i_4_n_0\
    );
\s_axil_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[20]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[20]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[20]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(20)
    );
\s_axil_rdata[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => data1(20),
      I1 => data0(20),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[20]_i_2_n_0\
    );
\s_axil_rdata[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(20),
      I1 => s_axil_araddr(1),
      I2 => data2(20),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[20]_i_3_n_0\
    );
\s_axil_rdata[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => data6(20),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      O => \s_axil_rdata[20]_i_4_n_0\
    );
\s_axil_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[21]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[21]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[21]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(21)
    );
\s_axil_rdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(21),
      I2 => s_axil_araddr(0),
      I3 => data1(21),
      O => \s_axil_rdata[21]_i_2_n_0\
    );
\s_axil_rdata[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(21),
      I1 => s_axil_araddr(1),
      I2 => data2(21),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[21]_i_3_n_0\
    );
\s_axil_rdata[21]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => s_axil_araddr(2),
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => data6(21),
      O => \s_axil_rdata[21]_i_4_n_0\
    );
\s_axil_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[22]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[22]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[22]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(22)
    );
\s_axil_rdata[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => data1(22),
      I1 => data0(22),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[22]_i_2_n_0\
    );
\s_axil_rdata[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(22),
      I1 => s_axil_araddr(1),
      I2 => data2(22),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[22]_i_3_n_0\
    );
\s_axil_rdata[22]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axil_araddr(0),
      I1 => data6(22),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      O => \s_axil_rdata[22]_i_4_n_0\
    );
\s_axil_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[23]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[23]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[23]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(23)
    );
\s_axil_rdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(23),
      I2 => s_axil_araddr(0),
      I3 => data1(23),
      O => \s_axil_rdata[23]_i_2_n_0\
    );
\s_axil_rdata[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data4(23),
      I1 => s_axil_araddr(1),
      I2 => data2(23),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[23]_i_3_n_0\
    );
\s_axil_rdata[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => s_axil_araddr(2),
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      I3 => data6(23),
      O => \s_axil_rdata[23]_i_4_n_0\
    );
\s_axil_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \s_axil_rdata[24]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => \s_axil_rdata[31]_i_5_n_0\,
      I3 => data6(24),
      I4 => \s_axil_rdata[31]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(24)
    );
\s_axil_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFC00000A0C0"
    )
        port map (
      I0 => data4(24),
      I1 => data2(24),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => s_axil_araddr(0),
      I5 => data0(24),
      O => \s_axil_rdata[24]_i_2_n_0\
    );
\s_axil_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \s_axil_rdata[25]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => data6(25),
      I3 => \s_axil_rdata[31]_i_4_n_0\,
      I4 => \s_axil_rdata[31]_i_5_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(25)
    );
\s_axil_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFA0CFCF"
    )
        port map (
      I0 => data4(25),
      I1 => data2(25),
      I2 => s_axil_araddr(2),
      I3 => data0(25),
      I4 => s_axil_araddr(1),
      I5 => s_axil_araddr(0),
      O => \s_axil_rdata[25]_i_2_n_0\
    );
\s_axil_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \s_axil_rdata[26]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => data6(26),
      I3 => \s_axil_rdata[31]_i_4_n_0\,
      I4 => \s_axil_rdata[31]_i_5_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(26)
    );
\s_axil_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFC00000A0C0"
    )
        port map (
      I0 => data4(26),
      I1 => data2(26),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => s_axil_araddr(0),
      I5 => data0(26),
      O => \s_axil_rdata[26]_i_2_n_0\
    );
\s_axil_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \s_axil_rdata[27]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => data6(27),
      I3 => \s_axil_rdata[31]_i_4_n_0\,
      I4 => \s_axil_rdata[31]_i_5_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(27)
    );
\s_axil_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFA0CFCF"
    )
        port map (
      I0 => data4(27),
      I1 => data2(27),
      I2 => s_axil_araddr(2),
      I3 => data0(27),
      I4 => s_axil_araddr(1),
      I5 => s_axil_araddr(0),
      O => \s_axil_rdata[27]_i_2_n_0\
    );
\s_axil_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \s_axil_rdata[28]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => data6(28),
      I3 => \s_axil_rdata[31]_i_4_n_0\,
      I4 => \s_axil_rdata[31]_i_5_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(28)
    );
\s_axil_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFA0CFCF"
    )
        port map (
      I0 => data4(28),
      I1 => data2(28),
      I2 => s_axil_araddr(2),
      I3 => data0(28),
      I4 => s_axil_araddr(1),
      I5 => s_axil_araddr(0),
      O => \s_axil_rdata[28]_i_2_n_0\
    );
\s_axil_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \s_axil_rdata[29]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => \s_axil_rdata[31]_i_5_n_0\,
      I3 => data6(29),
      I4 => \s_axil_rdata[31]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(29)
    );
\s_axil_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFA0CFCF"
    )
        port map (
      I0 => data4(29),
      I1 => data2(29),
      I2 => s_axil_araddr(2),
      I3 => data0(29),
      I4 => s_axil_araddr(1),
      I5 => s_axil_araddr(0),
      O => \s_axil_rdata[29]_i_2_n_0\
    );
\s_axil_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[2]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[2]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[2]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(2)
    );
\s_axil_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(2),
      I2 => s_axil_araddr(0),
      I3 => data1(2),
      O => \s_axil_rdata[2]_i_2_n_0\
    );
\s_axil_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(2),
      I1 => data4(2),
      I2 => s_axil_araddr(1),
      I3 => s_zu(2),
      I4 => s_axil_araddr(0),
      I5 => data2(2),
      O => \s_axil_rdata[2]_i_3_n_0\
    );
\s_axil_rdata[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(2),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(2),
      O => \s_axil_rdata[2]_i_4_n_0\
    );
\s_axil_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \s_axil_rdata[30]_i_2_n_0\,
      I1 => s_axil_araddr(3),
      I2 => data6(30),
      I3 => \s_axil_rdata[31]_i_4_n_0\,
      I4 => \s_axil_rdata[31]_i_5_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(30)
    );
\s_axil_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFC00000A0C0"
    )
        port map (
      I0 => data4(30),
      I1 => data2(30),
      I2 => s_axil_araddr(2),
      I3 => s_axil_araddr(1),
      I4 => s_axil_araddr(0),
      I5 => data0(30),
      O => \s_axil_rdata[30]_i_2_n_0\
    );
\s_axil_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axil_arvalid,
      I1 => \^s_axil_arready\,
      O => s_axil_rvalid02_out
    );
\s_axil_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \s_axil_rdata[31]_i_3_n_0\,
      I1 => s_axil_araddr(3),
      I2 => data6(31),
      I3 => \s_axil_rdata[31]_i_4_n_0\,
      I4 => \s_axil_rdata[31]_i_5_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(31)
    );
\s_axil_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFA0CFCF"
    )
        port map (
      I0 => data4(31),
      I1 => data2(31),
      I2 => s_axil_araddr(2),
      I3 => data0(31),
      I4 => s_axil_araddr(1),
      I5 => s_axil_araddr(0),
      O => \s_axil_rdata[31]_i_3_n_0\
    );
\s_axil_rdata[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axil_araddr(2),
      I1 => s_axil_araddr(1),
      I2 => s_axil_araddr(0),
      O => \s_axil_rdata[31]_i_4_n_0\
    );
\s_axil_rdata[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => s_axil_araddr(2),
      O => \s_axil_rdata[31]_i_5_n_0\
    );
\s_axil_rdata[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axil_araddr(5),
      I1 => s_axil_araddr(4),
      O => \s_axil_rdata[31]_i_6_n_0\
    );
\s_axil_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[3]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[3]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[3]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(3)
    );
\s_axil_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(3),
      I2 => s_axil_araddr(0),
      I3 => data1(3),
      O => \s_axil_rdata[3]_i_2_n_0\
    );
\s_axil_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(3),
      I1 => data4(3),
      I2 => s_axil_araddr(1),
      I3 => s_zu(3),
      I4 => s_axil_araddr(0),
      I5 => data2(3),
      O => \s_axil_rdata[3]_i_3_n_0\
    );
\s_axil_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(3),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(3),
      O => \s_axil_rdata[3]_i_4_n_0\
    );
\s_axil_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[4]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[4]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[4]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(4)
    );
\s_axil_rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(4),
      I2 => s_axil_araddr(0),
      I3 => data1(4),
      O => \s_axil_rdata[4]_i_2_n_0\
    );
\s_axil_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(4),
      I1 => data4(4),
      I2 => s_axil_araddr(1),
      I3 => s_zu(4),
      I4 => s_axil_araddr(0),
      I5 => data2(4),
      O => \s_axil_rdata[4]_i_3_n_0\
    );
\s_axil_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => data6(4),
      I1 => s_axil_araddr(0),
      I2 => s_pu(4),
      I3 => s_axil_araddr(2),
      I4 => s_axil_araddr(1),
      O => \s_axil_rdata[4]_i_4_n_0\
    );
\s_axil_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[5]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[5]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[5]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(5)
    );
\s_axil_rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(5),
      I2 => s_axil_araddr(0),
      I3 => data1(5),
      O => \s_axil_rdata[5]_i_2_n_0\
    );
\s_axil_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(5),
      I1 => data4(5),
      I2 => s_axil_araddr(1),
      I3 => s_zu(5),
      I4 => s_axil_araddr(0),
      I5 => data2(5),
      O => \s_axil_rdata[5]_i_3_n_0\
    );
\s_axil_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(5),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(5),
      O => \s_axil_rdata[5]_i_4_n_0\
    );
\s_axil_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[6]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[6]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[6]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(6)
    );
\s_axil_rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(6),
      I2 => s_axil_araddr(0),
      I3 => data1(6),
      O => \s_axil_rdata[6]_i_2_n_0\
    );
\s_axil_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(6),
      I1 => data4(6),
      I2 => s_axil_araddr(1),
      I3 => s_zu(6),
      I4 => s_axil_araddr(0),
      I5 => data2(6),
      O => \s_axil_rdata[6]_i_3_n_0\
    );
\s_axil_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(6),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(6),
      O => \s_axil_rdata[6]_i_4_n_0\
    );
\s_axil_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[7]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[7]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[7]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(7)
    );
\s_axil_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(7),
      I2 => s_axil_araddr(0),
      I3 => data1(7),
      O => \s_axil_rdata[7]_i_2_n_0\
    );
\s_axil_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(7),
      I1 => data4(7),
      I2 => s_axil_araddr(1),
      I3 => s_zu(7),
      I4 => s_axil_araddr(0),
      I5 => data2(7),
      O => \s_axil_rdata[7]_i_3_n_0\
    );
\s_axil_rdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(7),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(7),
      O => \s_axil_rdata[7]_i_4_n_0\
    );
\s_axil_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[8]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[8]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[8]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(8)
    );
\s_axil_rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => data1(8),
      I1 => data0(8),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(0),
      O => \s_axil_rdata[8]_i_2_n_0\
    );
\s_axil_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(8),
      I1 => data4(8),
      I2 => s_axil_araddr(1),
      I3 => s_zu(8),
      I4 => s_axil_araddr(0),
      I5 => data2(8),
      O => \s_axil_rdata[8]_i_3_n_0\
    );
\s_axil_rdata[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => data6(8),
      I1 => s_axil_araddr(0),
      I2 => s_pu(8),
      I3 => s_axil_araddr(2),
      I4 => s_axil_araddr(1),
      O => \s_axil_rdata[8]_i_4_n_0\
    );
\s_axil_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \s_axil_rdata[9]_i_2_n_0\,
      I1 => s_axil_araddr(2),
      I2 => \s_axil_rdata[9]_i_3_n_0\,
      I3 => s_axil_araddr(3),
      I4 => \s_axil_rdata[9]_i_4_n_0\,
      I5 => \s_axil_rdata[31]_i_6_n_0\,
      O => p_1_in(9)
    );
\s_axil_rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => data0(9),
      I2 => s_axil_araddr(0),
      I3 => data1(9),
      O => \s_axil_rdata[9]_i_2_n_0\
    );
\s_axil_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_pm10(9),
      I1 => data4(9),
      I2 => s_axil_araddr(1),
      I3 => s_zu(9),
      I4 => s_axil_araddr(0),
      I5 => data2(9),
      O => \s_axil_rdata[9]_i_3_n_0\
    );
\s_axil_rdata[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFF2"
    )
        port map (
      I0 => data6(9),
      I1 => s_axil_araddr(0),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_pu(9),
      O => \s_axil_rdata[9]_i_4_n_0\
    );
\s_axil_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(0),
      Q => s_axil_rdata(0),
      R => clear
    );
\s_axil_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(10),
      Q => s_axil_rdata(10),
      R => clear
    );
\s_axil_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(11),
      Q => s_axil_rdata(11),
      R => clear
    );
\s_axil_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(12),
      Q => s_axil_rdata(12),
      R => clear
    );
\s_axil_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(13),
      Q => s_axil_rdata(13),
      R => clear
    );
\s_axil_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(14),
      Q => s_axil_rdata(14),
      R => clear
    );
\s_axil_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(15),
      Q => s_axil_rdata(15),
      R => clear
    );
\s_axil_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(16),
      Q => s_axil_rdata(16),
      R => clear
    );
\s_axil_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(17),
      Q => s_axil_rdata(17),
      R => clear
    );
\s_axil_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(18),
      Q => s_axil_rdata(18),
      R => clear
    );
\s_axil_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(19),
      Q => s_axil_rdata(19),
      R => clear
    );
\s_axil_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(1),
      Q => s_axil_rdata(1),
      R => clear
    );
\s_axil_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(20),
      Q => s_axil_rdata(20),
      R => clear
    );
\s_axil_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(21),
      Q => s_axil_rdata(21),
      R => clear
    );
\s_axil_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(22),
      Q => s_axil_rdata(22),
      R => clear
    );
\s_axil_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(23),
      Q => s_axil_rdata(23),
      R => clear
    );
\s_axil_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(24),
      Q => s_axil_rdata(24),
      R => clear
    );
\s_axil_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(25),
      Q => s_axil_rdata(25),
      R => clear
    );
\s_axil_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(26),
      Q => s_axil_rdata(26),
      R => clear
    );
\s_axil_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(27),
      Q => s_axil_rdata(27),
      R => clear
    );
\s_axil_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(28),
      Q => s_axil_rdata(28),
      R => clear
    );
\s_axil_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(29),
      Q => s_axil_rdata(29),
      R => clear
    );
\s_axil_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(2),
      Q => s_axil_rdata(2),
      R => clear
    );
\s_axil_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(30),
      Q => s_axil_rdata(30),
      R => clear
    );
\s_axil_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(31),
      Q => s_axil_rdata(31),
      R => clear
    );
\s_axil_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(3),
      Q => s_axil_rdata(3),
      R => clear
    );
\s_axil_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(4),
      Q => s_axil_rdata(4),
      R => clear
    );
\s_axil_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(5),
      Q => s_axil_rdata(5),
      R => clear
    );
\s_axil_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(6),
      Q => s_axil_rdata(6),
      R => clear
    );
\s_axil_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(7),
      Q => s_axil_rdata(7),
      R => clear
    );
\s_axil_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(8),
      Q => s_axil_rdata(8),
      R => clear
    );
\s_axil_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => p_1_in(9),
      Q => s_axil_rdata(9),
      R => clear
    );
\s_axil_rresp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEE"
    )
        port map (
      I0 => s_axil_araddr(4),
      I1 => s_axil_araddr(5),
      I2 => s_axil_araddr(1),
      I3 => s_axil_araddr(2),
      I4 => s_axil_araddr(3),
      O => \s_axil_rresp[1]_i_1_n_0\
    );
\s_axil_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axil_rvalid02_out,
      D => \s_axil_rresp[1]_i_1_n_0\,
      Q => s_axil_rresp(0),
      R => clear
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
      R => clear
    );
\s_conc[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axil_awaddr(1),
      I1 => s_axil_awaddr(2),
      I2 => s_axil_awaddr(0),
      I3 => s_axil_awaddr(3),
      I4 => \s_axil_bresp[1]_i_3_n_0\,
      O => s_conc
    );
\s_conc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(0),
      Q => data0(0),
      R => clear
    );
\s_conc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(10),
      Q => data0(10),
      R => clear
    );
\s_conc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(11),
      Q => data0(11),
      R => clear
    );
\s_conc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(12),
      Q => data0(12),
      R => clear
    );
\s_conc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(13),
      Q => data0(13),
      R => clear
    );
\s_conc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(14),
      Q => data0(14),
      R => clear
    );
\s_conc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(15),
      Q => data0(15),
      R => clear
    );
\s_conc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(1),
      Q => data0(1),
      R => clear
    );
\s_conc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(2),
      Q => data0(2),
      R => clear
    );
\s_conc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(3),
      Q => data0(3),
      R => clear
    );
\s_conc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(4),
      Q => data0(4),
      R => clear
    );
\s_conc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(5),
      Q => data0(5),
      R => clear
    );
\s_conc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(6),
      Q => data0(6),
      R => clear
    );
\s_conc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(7),
      Q => data0(7),
      R => clear
    );
\s_conc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(8),
      Q => data0(8),
      R => clear
    );
\s_conc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_conc(9),
      Q => data0(9),
      R => clear
    );
\s_dec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(0),
      Q => data1(16),
      R => clear
    );
\s_dec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(1),
      Q => data1(17),
      R => clear
    );
\s_dec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(2),
      Q => data1(18),
      R => clear
    );
\s_dec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(3),
      Q => data1(19),
      R => clear
    );
\s_dec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(4),
      Q => data1(20),
      R => clear
    );
\s_dec_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(5),
      Q => data1(21),
      R => clear
    );
\s_dec_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(6),
      Q => data1(22),
      R => clear
    );
\s_dec_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_decimals(7),
      Q => data1(23),
      R => clear
    );
\s_gas_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(0),
      Q => data1(0),
      R => clear
    );
\s_gas_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(1),
      Q => data1(1),
      R => clear
    );
\s_gas_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(2),
      Q => data1(2),
      R => clear
    );
\s_gas_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(3),
      Q => data1(3),
      R => clear
    );
\s_gas_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(4),
      Q => data1(4),
      R => clear
    );
\s_gas_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(5),
      Q => data1(5),
      R => clear
    );
\s_gas_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(6),
      Q => data1(6),
      R => clear
    );
\s_gas_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_gas_type(7),
      Q => data1(7),
      R => clear
    );
\s_pe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(0),
      Q => data6(16),
      R => clear
    );
\s_pe_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(10),
      Q => data6(26),
      R => clear
    );
\s_pe_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(11),
      Q => data6(27),
      R => clear
    );
\s_pe_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(12),
      Q => data6(28),
      R => clear
    );
\s_pe_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(13),
      Q => data6(29),
      R => clear
    );
\s_pe_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(14),
      Q => data6(30),
      R => clear
    );
\s_pe_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(15),
      Q => data6(31),
      R => clear
    );
\s_pe_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(1),
      Q => data6(17),
      R => clear
    );
\s_pe_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(2),
      Q => data6(18),
      R => clear
    );
\s_pe_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(3),
      Q => data6(19),
      R => clear
    );
\s_pe_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(4),
      Q => data6(20),
      R => clear
    );
\s_pe_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(5),
      Q => data6(21),
      R => clear
    );
\s_pe_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(6),
      Q => data6(22),
      R => clear
    );
\s_pe_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(7),
      Q => data6(23),
      R => clear
    );
\s_pe_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(8),
      Q => data6(24),
      R => clear
    );
\s_pe_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ecnt_reg(9),
      Q => data6(25),
      R => clear
    );
\s_pf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(0),
      Q => data6(0),
      R => clear
    );
\s_pf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(10),
      Q => data6(10),
      R => clear
    );
\s_pf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(11),
      Q => data6(11),
      R => clear
    );
\s_pf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(12),
      Q => data6(12),
      R => clear
    );
\s_pf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(13),
      Q => data6(13),
      R => clear
    );
\s_pf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(14),
      Q => data6(14),
      R => clear
    );
\s_pf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(15),
      Q => data6(15),
      R => clear
    );
\s_pf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(1),
      Q => data6(1),
      R => clear
    );
\s_pf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(2),
      Q => data6(2),
      R => clear
    );
\s_pf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(3),
      Q => data6(3),
      R => clear
    );
\s_pf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(4),
      Q => data6(4),
      R => clear
    );
\s_pf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(5),
      Q => data6(5),
      R => clear
    );
\s_pf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(6),
      Q => data6(6),
      R => clear
    );
\s_pf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(7),
      Q => data6(7),
      R => clear
    );
\s_pf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(8),
      Q => data6(8),
      R => clear
    );
\s_pf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_fcnt_reg(9),
      Q => data6(9),
      R => clear
    );
\s_pm10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(0),
      Q => s_pm10(0),
      R => clear
    );
\s_pm10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(10),
      Q => s_pm10(10),
      R => clear
    );
\s_pm10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(11),
      Q => s_pm10(11),
      R => clear
    );
\s_pm10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(12),
      Q => s_pm10(12),
      R => clear
    );
\s_pm10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(13),
      Q => s_pm10(13),
      R => clear
    );
\s_pm10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(14),
      Q => s_pm10(14),
      R => clear
    );
\s_pm10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(15),
      Q => s_pm10(15),
      R => clear
    );
\s_pm10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(1),
      Q => s_pm10(1),
      R => clear
    );
\s_pm10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(2),
      Q => s_pm10(2),
      R => clear
    );
\s_pm10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(3),
      Q => s_pm10(3),
      R => clear
    );
\s_pm10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(4),
      Q => s_pm10(4),
      R => clear
    );
\s_pm10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(5),
      Q => s_pm10(5),
      R => clear
    );
\s_pm10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(6),
      Q => s_pm10(6),
      R => clear
    );
\s_pm10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(7),
      Q => s_pm10(7),
      R => clear
    );
\s_pm10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(8),
      Q => s_pm10(8),
      R => clear
    );
\s_pm10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm10(9),
      Q => s_pm10(9),
      R => clear
    );
\s_pm1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(0),
      Q => data4(0),
      R => clear
    );
\s_pm1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(10),
      Q => data4(10),
      R => clear
    );
\s_pm1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(11),
      Q => data4(11),
      R => clear
    );
\s_pm1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(12),
      Q => data4(12),
      R => clear
    );
\s_pm1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(13),
      Q => data4(13),
      R => clear
    );
\s_pm1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(14),
      Q => data4(14),
      R => clear
    );
\s_pm1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(15),
      Q => data4(15),
      R => clear
    );
\s_pm1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(1),
      Q => data4(1),
      R => clear
    );
\s_pm1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(2),
      Q => data4(2),
      R => clear
    );
\s_pm1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(3),
      Q => data4(3),
      R => clear
    );
\s_pm1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(4),
      Q => data4(4),
      R => clear
    );
\s_pm1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(5),
      Q => data4(5),
      R => clear
    );
\s_pm1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(6),
      Q => data4(6),
      R => clear
    );
\s_pm1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(7),
      Q => data4(7),
      R => clear
    );
\s_pm1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(8),
      Q => data4(8),
      R => clear
    );
\s_pm1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm1_0(9),
      Q => data4(9),
      R => clear
    );
\s_pm2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(0),
      Q => data4(16),
      R => clear
    );
\s_pm2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(10),
      Q => data4(26),
      R => clear
    );
\s_pm2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(11),
      Q => data4(27),
      R => clear
    );
\s_pm2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(12),
      Q => data4(28),
      R => clear
    );
\s_pm2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(13),
      Q => data4(29),
      R => clear
    );
\s_pm2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(14),
      Q => data4(30),
      R => clear
    );
\s_pm2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(15),
      Q => data4(31),
      R => clear
    );
\s_pm2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(1),
      Q => data4(17),
      R => clear
    );
\s_pm2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(2),
      Q => data4(18),
      R => clear
    );
\s_pm2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(3),
      Q => data4(19),
      R => clear
    );
\s_pm2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(4),
      Q => data4(20),
      R => clear
    );
\s_pm2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(5),
      Q => data4(21),
      R => clear
    );
\s_pm2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(6),
      Q => data4(22),
      R => clear
    );
\s_pm2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(7),
      Q => data4(23),
      R => clear
    );
\s_pm2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(8),
      Q => data4(24),
      R => clear
    );
\s_pm2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_pm2_5(9),
      Q => data4(25),
      R => clear
    );
\s_pu_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(0),
      Q => s_pu(0),
      R => clear
    );
\s_pu_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(10),
      Q => s_pu(10),
      R => clear
    );
\s_pu_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(11),
      Q => s_pu(11),
      R => clear
    );
\s_pu_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(12),
      Q => s_pu(12),
      R => clear
    );
\s_pu_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(13),
      Q => s_pu(13),
      R => clear
    );
\s_pu_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(14),
      Q => s_pu(14),
      R => clear
    );
\s_pu_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(15),
      Q => s_pu(15),
      R => clear
    );
\s_pu_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(1),
      Q => s_pu(1),
      R => clear
    );
\s_pu_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(2),
      Q => s_pu(2),
      R => clear
    );
\s_pu_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(3),
      Q => s_pu(3),
      R => clear
    );
\s_pu_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(4),
      Q => s_pu(4),
      R => clear
    );
\s_pu_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(5),
      Q => s_pu(5),
      R => clear
    );
\s_pu_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(6),
      Q => s_pu(6),
      R => clear
    );
\s_pu_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(7),
      Q => s_pu(7),
      R => clear
    );
\s_pu_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(8),
      Q => s_pu(8),
      R => clear
    );
\s_pu_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => pm_ucnt_reg(9),
      Q => s_pu(9),
      R => clear
    );
\s_range_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(0),
      Q => data0(16),
      R => clear
    );
\s_range_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(10),
      Q => data0(26),
      R => clear
    );
\s_range_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(11),
      Q => data0(27),
      R => clear
    );
\s_range_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(12),
      Q => data0(28),
      R => clear
    );
\s_range_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(13),
      Q => data0(29),
      R => clear
    );
\s_range_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(14),
      Q => data0(30),
      R => clear
    );
\s_range_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(15),
      Q => data0(31),
      R => clear
    );
\s_range_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(1),
      Q => data0(17),
      R => clear
    );
\s_range_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(2),
      Q => data0(18),
      R => clear
    );
\s_range_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(3),
      Q => data0(19),
      R => clear
    );
\s_range_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(4),
      Q => data0(20),
      R => clear
    );
\s_range_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(5),
      Q => data0(21),
      R => clear
    );
\s_range_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(6),
      Q => data0(22),
      R => clear
    );
\s_range_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(7),
      Q => data0(23),
      R => clear
    );
\s_range_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(8),
      Q => data0(24),
      R => clear
    );
\s_range_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_range(9),
      Q => data0(25),
      R => clear
    );
\s_unit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(0),
      Q => data1(8),
      R => clear
    );
\s_unit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(1),
      Q => data1(9),
      R => clear
    );
\s_unit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(2),
      Q => data1(10),
      R => clear
    );
\s_unit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(3),
      Q => data1(11),
      R => clear
    );
\s_unit_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(4),
      Q => data1(12),
      R => clear
    );
\s_unit_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(5),
      Q => data1(13),
      R => clear
    );
\s_unit_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(6),
      Q => data1(14),
      R => clear
    );
\s_unit_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_unit(7),
      Q => data1(15),
      R => clear
    );
\s_ze_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(0),
      Q => data2(16),
      R => clear
    );
\s_ze_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(10),
      Q => data2(26),
      R => clear
    );
\s_ze_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(11),
      Q => data2(27),
      R => clear
    );
\s_ze_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(12),
      Q => data2(28),
      R => clear
    );
\s_ze_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(13),
      Q => data2(29),
      R => clear
    );
\s_ze_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(14),
      Q => data2(30),
      R => clear
    );
\s_ze_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(15),
      Q => data2(31),
      R => clear
    );
\s_ze_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(1),
      Q => data2(17),
      R => clear
    );
\s_ze_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(2),
      Q => data2(18),
      R => clear
    );
\s_ze_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(3),
      Q => data2(19),
      R => clear
    );
\s_ze_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(4),
      Q => data2(20),
      R => clear
    );
\s_ze_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(5),
      Q => data2(21),
      R => clear
    );
\s_ze_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(6),
      Q => data2(22),
      R => clear
    );
\s_ze_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(7),
      Q => data2(23),
      R => clear
    );
\s_ze_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(8),
      Q => data2(24),
      R => clear
    );
\s_ze_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ecnt_reg(9),
      Q => data2(25),
      R => clear
    );
\s_zf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(0),
      Q => data2(0),
      R => clear
    );
\s_zf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(10),
      Q => data2(10),
      R => clear
    );
\s_zf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(11),
      Q => data2(11),
      R => clear
    );
\s_zf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(12),
      Q => data2(12),
      R => clear
    );
\s_zf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(13),
      Q => data2(13),
      R => clear
    );
\s_zf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(14),
      Q => data2(14),
      R => clear
    );
\s_zf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(15),
      Q => data2(15),
      R => clear
    );
\s_zf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(1),
      Q => data2(1),
      R => clear
    );
\s_zf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(2),
      Q => data2(2),
      R => clear
    );
\s_zf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(3),
      Q => data2(3),
      R => clear
    );
\s_zf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(4),
      Q => data2(4),
      R => clear
    );
\s_zf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(5),
      Q => data2(5),
      R => clear
    );
\s_zf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(6),
      Q => data2(6),
      R => clear
    );
\s_zf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(7),
      Q => data2(7),
      R => clear
    );
\s_zf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(8),
      Q => data2(8),
      R => clear
    );
\s_zf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_fcnt_reg(9),
      Q => data2(9),
      R => clear
    );
\s_zu_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(0),
      Q => s_zu(0),
      R => clear
    );
\s_zu_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(10),
      Q => s_zu(10),
      R => clear
    );
\s_zu_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(11),
      Q => s_zu(11),
      R => clear
    );
\s_zu_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(12),
      Q => s_zu(12),
      R => clear
    );
\s_zu_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(13),
      Q => s_zu(13),
      R => clear
    );
\s_zu_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(14),
      Q => s_zu(14),
      R => clear
    );
\s_zu_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(15),
      Q => s_zu(15),
      R => clear
    );
\s_zu_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(1),
      Q => s_zu(1),
      R => clear
    );
\s_zu_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(2),
      Q => s_zu(2),
      R => clear
    );
\s_zu_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(3),
      Q => s_zu(3),
      R => clear
    );
\s_zu_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(4),
      Q => s_zu(4),
      R => clear
    );
\s_zu_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(5),
      Q => s_zu(5),
      R => clear
    );
\s_zu_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(6),
      Q => s_zu(6),
      R => clear
    );
\s_zu_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(7),
      Q => s_zu(7),
      R => clear
    );
\s_zu_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(8),
      Q => s_zu(8),
      R => clear
    );
\s_zu_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_conc,
      D => ze_ucnt_reg(9),
      Q => s_zu(9),
      R => clear
    );
\ze_ecnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ze_ecnt_reg(0),
      O => \ze_ecnt[0]_i_2_n_0\
    );
\ze_ecnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[0]_i_1_n_7\,
      Q => ze_ecnt_reg(0),
      R => clear
    );
\ze_ecnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ze_ecnt_reg[0]_i_1_n_0\,
      CO(2) => \ze_ecnt_reg[0]_i_1_n_1\,
      CO(1) => \ze_ecnt_reg[0]_i_1_n_2\,
      CO(0) => \ze_ecnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ze_ecnt_reg[0]_i_1_n_4\,
      O(2) => \ze_ecnt_reg[0]_i_1_n_5\,
      O(1) => \ze_ecnt_reg[0]_i_1_n_6\,
      O(0) => \ze_ecnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => ze_ecnt_reg(3 downto 1),
      S(0) => \ze_ecnt[0]_i_2_n_0\
    );
\ze_ecnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[8]_i_1_n_5\,
      Q => ze_ecnt_reg(10),
      R => clear
    );
\ze_ecnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[8]_i_1_n_4\,
      Q => ze_ecnt_reg(11),
      R => clear
    );
\ze_ecnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[12]_i_1_n_7\,
      Q => ze_ecnt_reg(12),
      R => clear
    );
\ze_ecnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_ecnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ze_ecnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ze_ecnt_reg[12]_i_1_n_1\,
      CO(1) => \ze_ecnt_reg[12]_i_1_n_2\,
      CO(0) => \ze_ecnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_ecnt_reg[12]_i_1_n_4\,
      O(2) => \ze_ecnt_reg[12]_i_1_n_5\,
      O(1) => \ze_ecnt_reg[12]_i_1_n_6\,
      O(0) => \ze_ecnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => ze_ecnt_reg(15 downto 12)
    );
\ze_ecnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[12]_i_1_n_6\,
      Q => ze_ecnt_reg(13),
      R => clear
    );
\ze_ecnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[12]_i_1_n_5\,
      Q => ze_ecnt_reg(14),
      R => clear
    );
\ze_ecnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[12]_i_1_n_4\,
      Q => ze_ecnt_reg(15),
      R => clear
    );
\ze_ecnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[0]_i_1_n_6\,
      Q => ze_ecnt_reg(1),
      R => clear
    );
\ze_ecnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[0]_i_1_n_5\,
      Q => ze_ecnt_reg(2),
      R => clear
    );
\ze_ecnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[0]_i_1_n_4\,
      Q => ze_ecnt_reg(3),
      R => clear
    );
\ze_ecnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[4]_i_1_n_7\,
      Q => ze_ecnt_reg(4),
      R => clear
    );
\ze_ecnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_ecnt_reg[0]_i_1_n_0\,
      CO(3) => \ze_ecnt_reg[4]_i_1_n_0\,
      CO(2) => \ze_ecnt_reg[4]_i_1_n_1\,
      CO(1) => \ze_ecnt_reg[4]_i_1_n_2\,
      CO(0) => \ze_ecnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_ecnt_reg[4]_i_1_n_4\,
      O(2) => \ze_ecnt_reg[4]_i_1_n_5\,
      O(1) => \ze_ecnt_reg[4]_i_1_n_6\,
      O(0) => \ze_ecnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => ze_ecnt_reg(7 downto 4)
    );
\ze_ecnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[4]_i_1_n_6\,
      Q => ze_ecnt_reg(5),
      R => clear
    );
\ze_ecnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[4]_i_1_n_5\,
      Q => ze_ecnt_reg(6),
      R => clear
    );
\ze_ecnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[4]_i_1_n_4\,
      Q => ze_ecnt_reg(7),
      R => clear
    );
\ze_ecnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[8]_i_1_n_7\,
      Q => ze_ecnt_reg(8),
      R => clear
    );
\ze_ecnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_ecnt_reg[4]_i_1_n_0\,
      CO(3) => \ze_ecnt_reg[8]_i_1_n_0\,
      CO(2) => \ze_ecnt_reg[8]_i_1_n_1\,
      CO(1) => \ze_ecnt_reg[8]_i_1_n_2\,
      CO(0) => \ze_ecnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_ecnt_reg[8]_i_1_n_4\,
      O(2) => \ze_ecnt_reg[8]_i_1_n_5\,
      O(1) => \ze_ecnt_reg[8]_i_1_n_6\,
      O(0) => \ze_ecnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => ze_ecnt_reg(11 downto 8)
    );
\ze_ecnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_csum_err,
      D => \ze_ecnt_reg[8]_i_1_n_6\,
      Q => ze_ecnt_reg(9),
      R => clear
    );
\ze_fcnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ze_fcnt_reg(0),
      O => \ze_fcnt[0]_i_2_n_0\
    );
\ze_fcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[0]_i_1_n_7\,
      Q => ze_fcnt_reg(0),
      R => clear
    );
\ze_fcnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ze_fcnt_reg[0]_i_1_n_0\,
      CO(2) => \ze_fcnt_reg[0]_i_1_n_1\,
      CO(1) => \ze_fcnt_reg[0]_i_1_n_2\,
      CO(0) => \ze_fcnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ze_fcnt_reg[0]_i_1_n_4\,
      O(2) => \ze_fcnt_reg[0]_i_1_n_5\,
      O(1) => \ze_fcnt_reg[0]_i_1_n_6\,
      O(0) => \ze_fcnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => ze_fcnt_reg(3 downto 1),
      S(0) => \ze_fcnt[0]_i_2_n_0\
    );
\ze_fcnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[8]_i_1_n_5\,
      Q => ze_fcnt_reg(10),
      R => clear
    );
\ze_fcnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[8]_i_1_n_4\,
      Q => ze_fcnt_reg(11),
      R => clear
    );
\ze_fcnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[12]_i_1_n_7\,
      Q => ze_fcnt_reg(12),
      R => clear
    );
\ze_fcnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_fcnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ze_fcnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ze_fcnt_reg[12]_i_1_n_1\,
      CO(1) => \ze_fcnt_reg[12]_i_1_n_2\,
      CO(0) => \ze_fcnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_fcnt_reg[12]_i_1_n_4\,
      O(2) => \ze_fcnt_reg[12]_i_1_n_5\,
      O(1) => \ze_fcnt_reg[12]_i_1_n_6\,
      O(0) => \ze_fcnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => ze_fcnt_reg(15 downto 12)
    );
\ze_fcnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[12]_i_1_n_6\,
      Q => ze_fcnt_reg(13),
      R => clear
    );
\ze_fcnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[12]_i_1_n_5\,
      Q => ze_fcnt_reg(14),
      R => clear
    );
\ze_fcnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[12]_i_1_n_4\,
      Q => ze_fcnt_reg(15),
      R => clear
    );
\ze_fcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[0]_i_1_n_6\,
      Q => ze_fcnt_reg(1),
      R => clear
    );
\ze_fcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[0]_i_1_n_5\,
      Q => ze_fcnt_reg(2),
      R => clear
    );
\ze_fcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[0]_i_1_n_4\,
      Q => ze_fcnt_reg(3),
      R => clear
    );
\ze_fcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[4]_i_1_n_7\,
      Q => ze_fcnt_reg(4),
      R => clear
    );
\ze_fcnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_fcnt_reg[0]_i_1_n_0\,
      CO(3) => \ze_fcnt_reg[4]_i_1_n_0\,
      CO(2) => \ze_fcnt_reg[4]_i_1_n_1\,
      CO(1) => \ze_fcnt_reg[4]_i_1_n_2\,
      CO(0) => \ze_fcnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_fcnt_reg[4]_i_1_n_4\,
      O(2) => \ze_fcnt_reg[4]_i_1_n_5\,
      O(1) => \ze_fcnt_reg[4]_i_1_n_6\,
      O(0) => \ze_fcnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => ze_fcnt_reg(7 downto 4)
    );
\ze_fcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[4]_i_1_n_6\,
      Q => ze_fcnt_reg(5),
      R => clear
    );
\ze_fcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[4]_i_1_n_5\,
      Q => ze_fcnt_reg(6),
      R => clear
    );
\ze_fcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[4]_i_1_n_4\,
      Q => ze_fcnt_reg(7),
      R => clear
    );
\ze_fcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[8]_i_1_n_7\,
      Q => ze_fcnt_reg(8),
      R => clear
    );
\ze_fcnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_fcnt_reg[4]_i_1_n_0\,
      CO(3) => \ze_fcnt_reg[8]_i_1_n_0\,
      CO(2) => \ze_fcnt_reg[8]_i_1_n_1\,
      CO(1) => \ze_fcnt_reg[8]_i_1_n_2\,
      CO(0) => \ze_fcnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_fcnt_reg[8]_i_1_n_4\,
      O(2) => \ze_fcnt_reg[8]_i_1_n_5\,
      O(1) => \ze_fcnt_reg[8]_i_1_n_6\,
      O(0) => \ze_fcnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => ze_fcnt_reg(11 downto 8)
    );
\ze_fcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_frame_valid,
      D => \ze_fcnt_reg[8]_i_1_n_6\,
      Q => ze_fcnt_reg(9),
      R => clear
    );
\ze_ucnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ze_ucnt_reg(0),
      O => \ze_ucnt[0]_i_2_n_0\
    );
\ze_ucnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[0]_i_1_n_7\,
      Q => ze_ucnt_reg(0),
      R => clear
    );
\ze_ucnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ze_ucnt_reg[0]_i_1_n_0\,
      CO(2) => \ze_ucnt_reg[0]_i_1_n_1\,
      CO(1) => \ze_ucnt_reg[0]_i_1_n_2\,
      CO(0) => \ze_ucnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ze_ucnt_reg[0]_i_1_n_4\,
      O(2) => \ze_ucnt_reg[0]_i_1_n_5\,
      O(1) => \ze_ucnt_reg[0]_i_1_n_6\,
      O(0) => \ze_ucnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => ze_ucnt_reg(3 downto 1),
      S(0) => \ze_ucnt[0]_i_2_n_0\
    );
\ze_ucnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[8]_i_1_n_5\,
      Q => ze_ucnt_reg(10),
      R => clear
    );
\ze_ucnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[8]_i_1_n_4\,
      Q => ze_ucnt_reg(11),
      R => clear
    );
\ze_ucnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[12]_i_1_n_7\,
      Q => ze_ucnt_reg(12),
      R => clear
    );
\ze_ucnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_ucnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ze_ucnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ze_ucnt_reg[12]_i_1_n_1\,
      CO(1) => \ze_ucnt_reg[12]_i_1_n_2\,
      CO(0) => \ze_ucnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_ucnt_reg[12]_i_1_n_4\,
      O(2) => \ze_ucnt_reg[12]_i_1_n_5\,
      O(1) => \ze_ucnt_reg[12]_i_1_n_6\,
      O(0) => \ze_ucnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => ze_ucnt_reg(15 downto 12)
    );
\ze_ucnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[12]_i_1_n_6\,
      Q => ze_ucnt_reg(13),
      R => clear
    );
\ze_ucnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[12]_i_1_n_5\,
      Q => ze_ucnt_reg(14),
      R => clear
    );
\ze_ucnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[12]_i_1_n_4\,
      Q => ze_ucnt_reg(15),
      R => clear
    );
\ze_ucnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[0]_i_1_n_6\,
      Q => ze_ucnt_reg(1),
      R => clear
    );
\ze_ucnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[0]_i_1_n_5\,
      Q => ze_ucnt_reg(2),
      R => clear
    );
\ze_ucnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[0]_i_1_n_4\,
      Q => ze_ucnt_reg(3),
      R => clear
    );
\ze_ucnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[4]_i_1_n_7\,
      Q => ze_ucnt_reg(4),
      R => clear
    );
\ze_ucnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_ucnt_reg[0]_i_1_n_0\,
      CO(3) => \ze_ucnt_reg[4]_i_1_n_0\,
      CO(2) => \ze_ucnt_reg[4]_i_1_n_1\,
      CO(1) => \ze_ucnt_reg[4]_i_1_n_2\,
      CO(0) => \ze_ucnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_ucnt_reg[4]_i_1_n_4\,
      O(2) => \ze_ucnt_reg[4]_i_1_n_5\,
      O(1) => \ze_ucnt_reg[4]_i_1_n_6\,
      O(0) => \ze_ucnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => ze_ucnt_reg(7 downto 4)
    );
\ze_ucnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[4]_i_1_n_6\,
      Q => ze_ucnt_reg(5),
      R => clear
    );
\ze_ucnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[4]_i_1_n_5\,
      Q => ze_ucnt_reg(6),
      R => clear
    );
\ze_ucnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[4]_i_1_n_4\,
      Q => ze_ucnt_reg(7),
      R => clear
    );
\ze_ucnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[8]_i_1_n_7\,
      Q => ze_ucnt_reg(8),
      R => clear
    );
\ze_ucnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ze_ucnt_reg[4]_i_1_n_0\,
      CO(3) => \ze_ucnt_reg[8]_i_1_n_0\,
      CO(2) => \ze_ucnt_reg[8]_i_1_n_1\,
      CO(1) => \ze_ucnt_reg[8]_i_1_n_2\,
      CO(0) => \ze_ucnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ze_ucnt_reg[8]_i_1_n_4\,
      O(2) => \ze_ucnt_reg[8]_i_1_n_5\,
      O(1) => \ze_ucnt_reg[8]_i_1_n_6\,
      O(0) => \ze_ucnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => ze_ucnt_reg(11 downto 8)
    );
\ze_ucnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ze_uart_frame_err,
      D => \ze_ucnt_reg[8]_i_1_n_6\,
      Q => ze_ucnt_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_block_u_sensor_regs_0 is
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
    ze_conc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ze_range : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ze_gas_type : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ze_unit : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ze_decimals : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ze_frame_valid : in STD_LOGIC;
    ze_csum_err : in STD_LOGIC;
    ze_uart_frame_err : in STD_LOGIC;
    pm_pm1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_pm2_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_pm10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_frame_valid : in STD_LOGIC;
    pm_csum_err : in STD_LOGIC;
    pm_uart_frame_err : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of image_block_u_sensor_regs_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_u_sensor_regs_0 : entity is "image_block_u_sensor_regs_0,axil_sensor_regs,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_u_sensor_regs_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_u_sensor_regs_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of image_block_u_sensor_regs_0 : entity is "axil_sensor_regs,Vivado 2025.2";
end image_block_u_sensor_regs_0;

architecture STRUCTURE of image_block_u_sensor_regs_0 is
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
inst: entity work.image_block_u_sensor_regs_0_axil_sensor_regs
     port map (
      aclk => aclk,
      aresetn => aresetn,
      pm_csum_err => pm_csum_err,
      pm_frame_valid => pm_frame_valid,
      pm_pm10(15 downto 0) => pm_pm10(15 downto 0),
      pm_pm1_0(15 downto 0) => pm_pm1_0(15 downto 0),
      pm_pm2_5(15 downto 0) => pm_pm2_5(15 downto 0),
      pm_uart_frame_err => pm_uart_frame_err,
      s_axil_araddr(5 downto 0) => s_axil_araddr(7 downto 2),
      s_axil_arready => s_axil_arready,
      s_axil_arvalid => s_axil_arvalid,
      s_axil_awaddr(5 downto 0) => s_axil_awaddr(7 downto 2),
      s_axil_awvalid => s_axil_awvalid,
      s_axil_bready => s_axil_bready,
      s_axil_bresp(0) => \^s_axil_bresp\(1),
      s_axil_bvalid_reg_0 => s_axil_bvalid,
      s_axil_rdata(31 downto 0) => s_axil_rdata(31 downto 0),
      s_axil_rready => s_axil_rready,
      s_axil_rresp(0) => \^s_axil_rresp\(1),
      s_axil_rvalid => s_axil_rvalid,
      s_axil_wready => \^s_axil_wready\,
      s_axil_wvalid => s_axil_wvalid,
      ze_conc(15 downto 0) => ze_conc(15 downto 0),
      ze_csum_err => ze_csum_err,
      ze_decimals(7 downto 0) => ze_decimals(7 downto 0),
      ze_frame_valid => ze_frame_valid,
      ze_gas_type(7 downto 0) => ze_gas_type(7 downto 0),
      ze_range(15 downto 0) => ze_range(15 downto 0),
      ze_uart_frame_err => ze_uart_frame_err,
      ze_unit(7 downto 0) => ze_unit(7 downto 0)
    );
end STRUCTURE;
