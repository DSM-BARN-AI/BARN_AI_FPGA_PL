// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Jul 29 22:12:37 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_u_pm_parse_0/image_block_u_pm_parse_0_sim_netlist.v}
// Design      : image_block_u_pm_parse_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_u_pm_parse_0,pms7003_parser,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pms7003_parser,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_u_pm_parse_0
   (aclk,
    aresetn,
    s_data,
    s_valid,
    pm1_0,
    pm2_5,
    pm10,
    frame_valid,
    csum_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [7:0]s_data;
  input s_valid;
  output [15:0]pm1_0;
  output [15:0]pm2_5;
  output [15:0]pm10;
  output frame_valid;
  output csum_err;

  wire aclk;
  wire aresetn;
  wire csum_err;
  wire frame_valid;
  wire [15:0]pm10;
  wire [15:0]pm1_0;
  wire [15:0]pm2_5;
  wire [7:0]s_data;
  wire s_valid;

  image_block_u_pm_parse_0_pms7003_parser inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .csum_err(csum_err),
        .frame_valid(frame_valid),
        .pm10(pm10),
        .pm1_0(pm1_0),
        .pm2_5(pm2_5),
        .s_data(s_data),
        .s_valid(s_valid));
endmodule

(* ORIG_REF_NAME = "pms7003_parser" *) 
module image_block_u_pm_parse_0_pms7003_parser
   (pm1_0,
    pm2_5,
    pm10,
    frame_valid,
    csum_err,
    aresetn,
    aclk,
    s_data,
    s_valid);
  output [15:0]pm1_0;
  output [15:0]pm2_5;
  output [15:0]pm10;
  output frame_valid;
  output csum_err;
  input aresetn;
  input aclk;
  input [7:0]s_data;
  input s_valid;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire aclk;
  wire aresetn;
  wire csum_err;
  wire csum_err_i_1_n_0;
  wire [7:0]csum_hi;
  wire \csum_hi[7]_i_1_n_0 ;
  wire \csum_hi[7]_i_2_n_0 ;
  wire [15:1]data0;
  wire frame_valid;
  wire frame_valid_i_1_n_0;
  wire [4:1]idx;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[4]_i_1_n_0 ;
  wire \idx_reg_n_0_[0] ;
  wire \idx_reg_n_0_[1] ;
  wire \idx_reg_n_0_[2] ;
  wire \idx_reg_n_0_[3] ;
  wire \idx_reg_n_0_[4] ;
  wire [15:0]in10;
  wire [15:0]p_1_in;
  wire [15:0]pm10;
  wire [15:0]pm1_0;
  wire pm1_00_carry__0_n_2;
  wire pm1_00_carry__0_n_3;
  wire pm1_00_carry_i_1__0_n_0;
  wire pm1_00_carry_i_1_n_0;
  wire pm1_00_carry_i_2__0_n_0;
  wire pm1_00_carry_i_2_n_0;
  wire pm1_00_carry_i_3_n_0;
  wire pm1_00_carry_i_4_n_0;
  wire pm1_00_carry_n_0;
  wire pm1_00_carry_n_1;
  wire pm1_00_carry_n_2;
  wire pm1_00_carry_n_3;
  wire \pm1_0[15]_i_1_n_0 ;
  wire \pm1_0[15]_i_2_n_0 ;
  wire \pm1_0[15]_i_3_n_0 ;
  wire [15:0]pm2_5;
  wire [7:0]s_data;
  wire s_valid;
  wire [1:0]state__0;
  wire [1:1]state__1;
  wire [15:0]sum;
  wire sum0_carry__0_i_1_n_0;
  wire sum0_carry__0_n_0;
  wire sum0_carry__0_n_1;
  wire sum0_carry__0_n_2;
  wire sum0_carry__0_n_3;
  wire sum0_carry__1_n_0;
  wire sum0_carry__1_n_1;
  wire sum0_carry__1_n_2;
  wire sum0_carry__1_n_3;
  wire sum0_carry__2_n_2;
  wire sum0_carry__2_n_3;
  wire sum0_carry_i_1_n_0;
  wire sum0_carry_i_2_n_0;
  wire sum0_carry_n_0;
  wire sum0_carry_n_1;
  wire sum0_carry_n_2;
  wire sum0_carry_n_3;
  wire \sum[0]_i_1_n_0 ;
  wire \sum[10]_i_1_n_0 ;
  wire \sum[11]_i_1_n_0 ;
  wire \sum[12]_i_1_n_0 ;
  wire \sum[13]_i_1_n_0 ;
  wire \sum[14]_i_1_n_0 ;
  wire \sum[15]_i_1_n_0 ;
  wire \sum[15]_i_2_n_0 ;
  wire \sum[15]_i_3_n_0 ;
  wire \sum[1]_i_1_n_0 ;
  wire \sum[2]_i_1_n_0 ;
  wire \sum[3]_i_1_n_0 ;
  wire \sum[3]_i_3_n_0 ;
  wire \sum[3]_i_4_n_0 ;
  wire \sum[3]_i_5_n_0 ;
  wire \sum[3]_i_6_n_0 ;
  wire \sum[4]_i_1_n_0 ;
  wire \sum[5]_i_1_n_0 ;
  wire \sum[6]_i_1_n_0 ;
  wire \sum[6]_i_2_n_0 ;
  wire \sum[7]_i_1_n_0 ;
  wire \sum[7]_i_3_n_0 ;
  wire \sum[7]_i_4_n_0 ;
  wire \sum[7]_i_5_n_0 ;
  wire \sum[7]_i_6_n_0 ;
  wire \sum[8]_i_1_n_0 ;
  wire \sum[9]_i_1_n_0 ;
  wire \sum_reg[11]_i_2_n_0 ;
  wire \sum_reg[11]_i_2_n_1 ;
  wire \sum_reg[11]_i_2_n_2 ;
  wire \sum_reg[11]_i_2_n_3 ;
  wire \sum_reg[15]_i_4_n_1 ;
  wire \sum_reg[15]_i_4_n_2 ;
  wire \sum_reg[15]_i_4_n_3 ;
  wire \sum_reg[3]_i_2_n_0 ;
  wire \sum_reg[3]_i_2_n_1 ;
  wire \sum_reg[3]_i_2_n_2 ;
  wire \sum_reg[3]_i_2_n_3 ;
  wire \sum_reg[7]_i_2_n_0 ;
  wire \sum_reg[7]_i_2_n_1 ;
  wire \sum_reg[7]_i_2_n_2 ;
  wire \sum_reg[7]_i_2_n_3 ;
  wire [7:0]t_10h;
  wire \t_10h[7]_i_1_n_0 ;
  wire [7:0]t_10l;
  wire \t_10l[7]_i_1_n_0 ;
  wire \t_10l[7]_i_2_n_0 ;
  wire \t_1h[7]_i_1_n_0 ;
  wire \t_1l[7]_i_1_n_0 ;
  wire \t_1l[7]_i_2_n_0 ;
  wire [7:0]t_2h;
  wire \t_2h[7]_i_1_n_0 ;
  wire [7:0]t_2l;
  wire \t_2l[7]_i_1_n_0 ;
  wire [3:0]NLW_pm1_00_carry_O_UNCONNECTED;
  wire [3:2]NLW_pm1_00_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pm1_00_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_sum0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_sum0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_sum_reg[15]_i_4_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hE2E60000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(aresetn),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(s_data[3]),
        .I1(state__0[1]),
        .I2(s_data[2]),
        .I3(s_data[1]),
        .I4(s_data[0]),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state__1),
        .I3(aresetn),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55550000FF300000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\pm1_0[15]_i_3_n_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(state__0[0]),
        .I4(s_valid),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_6_n_0 ),
        .I1(s_data[2]),
        .I2(state__0[0]),
        .I3(s_data[3]),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(state__0[1]),
        .O(state__1));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(s_data[5]),
        .I1(s_data[4]),
        .I2(s_data[6]),
        .I3(s_data[7]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(s_data[0]),
        .I1(s_data[1]),
        .I2(s_data[3]),
        .I3(s_data[2]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(s_data[1]),
        .I1(s_data[0]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,S_H0:00,S_H1:01" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:10,S_H0:00,S_H1:01" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    csum_err_i_1
       (.I0(\pm1_0[15]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(pm1_00_carry__0_n_2),
        .I3(s_valid),
        .I4(aresetn),
        .O(csum_err_i_1_n_0));
  FDRE csum_err_reg
       (.C(aclk),
        .CE(1'b1),
        .D(csum_err_i_1_n_0),
        .Q(csum_err),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \csum_hi[7]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\csum_hi[7]_i_2_n_0 ),
        .I2(\idx_reg_n_0_[4] ),
        .I3(\idx_reg_n_0_[3] ),
        .I4(\idx_reg_n_0_[2] ),
        .I5(\idx_reg_n_0_[1] ),
        .O(\csum_hi[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \csum_hi[7]_i_2 
       (.I0(state__0[1]),
        .I1(s_valid),
        .O(\csum_hi[7]_i_2_n_0 ));
  FDRE \csum_hi_reg[0] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(csum_hi[0]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[1] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(csum_hi[1]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[2] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(csum_hi[2]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[3] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(csum_hi[3]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[4] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(csum_hi[4]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[5] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(csum_hi[5]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[6] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(csum_hi[6]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \csum_hi_reg[7] 
       (.C(aclk),
        .CE(\csum_hi[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(csum_hi[7]),
        .R(\pm1_0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    frame_valid_i_1
       (.I0(\pm1_0[15]_i_3_n_0 ),
        .I1(pm1_00_carry__0_n_2),
        .I2(state__0[1]),
        .I3(s_valid),
        .I4(aresetn),
        .O(frame_valid_i_1_n_0));
  FDRE frame_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(frame_valid_i_1_n_0),
        .Q(frame_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \idx[0]_i_1 
       (.I0(state__0[1]),
        .I1(\idx_reg_n_0_[0] ),
        .O(\idx[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \idx[1]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(\idx_reg_n_0_[1] ),
        .O(idx[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \idx[2]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(state__0[1]),
        .I3(\idx_reg_n_0_[2] ),
        .O(idx[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \idx[3]_i_1 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(state__0[1]),
        .I4(\idx_reg_n_0_[3] ),
        .O(idx[3]));
  LUT4 #(
    .INIT(16'hF080)) 
    \idx[4]_i_1 
       (.I0(state__0[1]),
        .I1(\pm1_0[15]_i_3_n_0 ),
        .I2(s_valid),
        .I3(state__1),
        .O(\idx[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \idx[4]_i_2 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[3] ),
        .I3(\idx_reg_n_0_[2] ),
        .I4(state__0[1]),
        .I5(\idx_reg_n_0_[4] ),
        .O(idx[4]));
  FDRE \idx_reg[0] 
       (.C(aclk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(\idx[0]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[0] ),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \idx_reg[1] 
       (.C(aclk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(idx[1]),
        .Q(\idx_reg_n_0_[1] ),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \idx_reg[2] 
       (.C(aclk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(idx[2]),
        .Q(\idx_reg_n_0_[2] ),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \idx_reg[3] 
       (.C(aclk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(idx[3]),
        .Q(\idx_reg_n_0_[3] ),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \idx_reg[4] 
       (.C(aclk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(idx[4]),
        .Q(\idx_reg_n_0_[4] ),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[0] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[0]),
        .Q(pm10[0]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[10] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[2]),
        .Q(pm10[10]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[11] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[3]),
        .Q(pm10[11]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[12] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[4]),
        .Q(pm10[12]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[13] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[5]),
        .Q(pm10[13]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[14] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[6]),
        .Q(pm10[14]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[15] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[7]),
        .Q(pm10[15]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[1] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[1]),
        .Q(pm10[1]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[2] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[2]),
        .Q(pm10[2]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[3] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[3]),
        .Q(pm10[3]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[4] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[4]),
        .Q(pm10[4]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[5] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[5]),
        .Q(pm10[5]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[6] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[6]),
        .Q(pm10[6]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[7] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10l[7]),
        .Q(pm10[7]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[8] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[0]),
        .Q(pm10[8]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm10_reg[9] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_10h[1]),
        .Q(pm10[9]),
        .R(\pm1_0[15]_i_1_n_0 ));
  CARRY4 pm1_00_carry
       (.CI(1'b0),
        .CO({pm1_00_carry_n_0,pm1_00_carry_n_1,pm1_00_carry_n_2,pm1_00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pm1_00_carry_O_UNCONNECTED[3:0]),
        .S({pm1_00_carry_i_1_n_0,pm1_00_carry_i_2_n_0,pm1_00_carry_i_3_n_0,pm1_00_carry_i_4_n_0}));
  CARRY4 pm1_00_carry__0
       (.CI(pm1_00_carry_n_0),
        .CO({NLW_pm1_00_carry__0_CO_UNCONNECTED[3:2],pm1_00_carry__0_n_2,pm1_00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pm1_00_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pm1_00_carry_i_1__0_n_0,pm1_00_carry_i_2__0_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pm1_00_carry_i_1
       (.I0(csum_hi[3]),
        .I1(sum[11]),
        .I2(csum_hi[2]),
        .I3(sum[10]),
        .I4(sum[9]),
        .I5(csum_hi[1]),
        .O(pm1_00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pm1_00_carry_i_1__0
       (.I0(csum_hi[7]),
        .I1(sum[15]),
        .O(pm1_00_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pm1_00_carry_i_2
       (.I0(csum_hi[0]),
        .I1(sum[8]),
        .I2(s_data[6]),
        .I3(sum[6]),
        .I4(sum[7]),
        .I5(s_data[7]),
        .O(pm1_00_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pm1_00_carry_i_2__0
       (.I0(csum_hi[6]),
        .I1(sum[14]),
        .I2(csum_hi[5]),
        .I3(sum[13]),
        .I4(sum[12]),
        .I5(csum_hi[4]),
        .O(pm1_00_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8400008421000021)) 
    pm1_00_carry_i_3
       (.I0(sum[5]),
        .I1(s_data[4]),
        .I2(s_data[5]),
        .I3(sum[3]),
        .I4(s_data[3]),
        .I5(sum[4]),
        .O(pm1_00_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pm1_00_carry_i_4
       (.I0(s_data[2]),
        .I1(sum[2]),
        .I2(s_data[0]),
        .I3(sum[0]),
        .I4(sum[1]),
        .I5(s_data[1]),
        .O(pm1_00_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pm1_0[15]_i_1 
       (.I0(aresetn),
        .O(\pm1_0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \pm1_0[15]_i_2 
       (.I0(pm1_00_carry__0_n_2),
        .I1(state__0[1]),
        .I2(s_valid),
        .I3(\pm1_0[15]_i_3_n_0 ),
        .O(\pm1_0[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \pm1_0[15]_i_3 
       (.I0(\idx_reg_n_0_[4] ),
        .I1(\idx_reg_n_0_[3] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(\idx_reg_n_0_[1] ),
        .I4(\idx_reg_n_0_[0] ),
        .O(\pm1_0[15]_i_3_n_0 ));
  FDRE \pm1_0_reg[0] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(pm1_0[0]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[10] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(pm1_0[10]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[11] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(pm1_0[11]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[12] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(pm1_0[12]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[13] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(pm1_0[13]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[14] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(pm1_0[14]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[15] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(pm1_0[15]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[1] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(pm1_0[1]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[2] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(pm1_0[2]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[3] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(pm1_0[3]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[4] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(pm1_0[4]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[5] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(pm1_0[5]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[6] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(pm1_0[6]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[7] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(pm1_0[7]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[8] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(pm1_0[8]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm1_0_reg[9] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(pm1_0[9]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[0] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[0]),
        .Q(pm2_5[0]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[10] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[2]),
        .Q(pm2_5[10]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[11] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[3]),
        .Q(pm2_5[11]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[12] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[4]),
        .Q(pm2_5[12]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[13] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[5]),
        .Q(pm2_5[13]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[14] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[6]),
        .Q(pm2_5[14]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[15] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[7]),
        .Q(pm2_5[15]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[1] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[1]),
        .Q(pm2_5[1]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[2] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[2]),
        .Q(pm2_5[2]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[3] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[3]),
        .Q(pm2_5[3]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[4] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[4]),
        .Q(pm2_5[4]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[5] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[5]),
        .Q(pm2_5[5]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[6] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[6]),
        .Q(pm2_5[6]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[7] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2l[7]),
        .Q(pm2_5[7]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[8] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[0]),
        .Q(pm2_5[8]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \pm2_5_reg[9] 
       (.C(aclk),
        .CE(\pm1_0[15]_i_2_n_0 ),
        .D(t_2h[1]),
        .Q(pm2_5[9]),
        .R(\pm1_0[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry
       (.CI(1'b0),
        .CO({sum0_carry_n_0,sum0_carry_n_1,sum0_carry_n_2,sum0_carry_n_3}),
        .CYINIT(sum[0]),
        .DI({1'b0,sum[3:2],1'b0}),
        .O(data0[4:1]),
        .S({sum[4],sum0_carry_i_1_n_0,sum0_carry_i_2_n_0,sum[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__0
       (.CI(sum0_carry_n_0),
        .CO({sum0_carry__0_n_0,sum0_carry__0_n_1,sum0_carry__0_n_2,sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sum[6],1'b0}),
        .O(data0[8:5]),
        .S({sum[8:7],sum0_carry__0_i_1_n_0,sum[5]}));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__0_i_1
       (.I0(sum[6]),
        .O(sum0_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__1
       (.CI(sum0_carry__0_n_0),
        .CO({sum0_carry__1_n_0,sum0_carry__1_n_1,sum0_carry__1_n_2,sum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sum[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__2
       (.CI(sum0_carry__1_n_0),
        .CO({NLW_sum0_carry__2_CO_UNCONNECTED[3:2],sum0_carry__2_n_2,sum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,sum[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_1
       (.I0(sum[3]),
        .O(sum0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_2
       (.I0(sum[2]),
        .O(sum0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sum[0]_i_1 
       (.I0(state__0[1]),
        .I1(in10[0]),
        .I2(sum[0]),
        .I3(state__1),
        .O(\sum[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[10]_i_1 
       (.I0(state__0[1]),
        .I1(in10[10]),
        .I2(data0[10]),
        .I3(state__1),
        .O(\sum[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[11]_i_1 
       (.I0(state__0[1]),
        .I1(in10[11]),
        .I2(data0[11]),
        .I3(state__1),
        .O(\sum[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[12]_i_1 
       (.I0(state__0[1]),
        .I1(in10[12]),
        .I2(data0[12]),
        .I3(state__1),
        .O(\sum[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[13]_i_1 
       (.I0(state__0[1]),
        .I1(in10[13]),
        .I2(data0[13]),
        .I3(state__1),
        .O(\sum[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[14]_i_1 
       (.I0(state__0[1]),
        .I1(in10[14]),
        .I2(data0[14]),
        .I3(state__1),
        .O(\sum[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00EA00)) 
    \sum[15]_i_1 
       (.I0(state__1),
        .I1(\sum[15]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(s_valid),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\sum[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[15]_i_2 
       (.I0(state__0[1]),
        .I1(in10[15]),
        .I2(data0[15]),
        .I3(state__1),
        .O(\sum[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \sum[15]_i_3 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[2] ),
        .I2(\idx_reg_n_0_[3] ),
        .I3(\idx_reg_n_0_[4] ),
        .O(\sum[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \sum[1]_i_1 
       (.I0(\sum[6]_i_2_n_0 ),
        .I1(data0[1]),
        .I2(state__0[1]),
        .I3(in10[1]),
        .O(\sum[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[2]_i_1 
       (.I0(state__0[1]),
        .I1(in10[2]),
        .I2(data0[2]),
        .I3(state__1),
        .O(\sum[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[3]_i_1 
       (.I0(state__0[1]),
        .I1(in10[3]),
        .I2(data0[3]),
        .I3(state__1),
        .O(\sum[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_3 
       (.I0(sum[3]),
        .I1(s_data[3]),
        .O(\sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_4 
       (.I0(sum[2]),
        .I1(s_data[2]),
        .O(\sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_5 
       (.I0(sum[1]),
        .I1(s_data[1]),
        .O(\sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_6 
       (.I0(sum[0]),
        .I1(s_data[0]),
        .O(\sum[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[4]_i_1 
       (.I0(state__0[1]),
        .I1(in10[4]),
        .I2(data0[4]),
        .I3(state__1),
        .O(\sum[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[5]_i_1 
       (.I0(state__0[1]),
        .I1(in10[5]),
        .I2(data0[5]),
        .I3(state__1),
        .O(\sum[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \sum[6]_i_1 
       (.I0(\sum[6]_i_2_n_0 ),
        .I1(data0[6]),
        .I2(state__0[1]),
        .I3(in10[6]),
        .O(\sum[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \sum[6]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(s_data[3]),
        .I2(state__0[0]),
        .I3(s_data[2]),
        .I4(s_data[1]),
        .I5(s_data[0]),
        .O(\sum[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[7]_i_1 
       (.I0(state__0[1]),
        .I1(in10[7]),
        .I2(data0[7]),
        .I3(state__1),
        .O(\sum[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_3 
       (.I0(sum[7]),
        .I1(s_data[7]),
        .O(\sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_4 
       (.I0(sum[6]),
        .I1(s_data[6]),
        .O(\sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_5 
       (.I0(sum[5]),
        .I1(s_data[5]),
        .O(\sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_6 
       (.I0(sum[4]),
        .I1(s_data[4]),
        .O(\sum[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[8]_i_1 
       (.I0(state__0[1]),
        .I1(in10[8]),
        .I2(data0[8]),
        .I3(state__1),
        .O(\sum[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sum[9]_i_1 
       (.I0(state__0[1]),
        .I1(in10[9]),
        .I2(data0[9]),
        .I3(state__1),
        .O(\sum[9]_i_1_n_0 ));
  FDRE \sum_reg[0] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[0]_i_1_n_0 ),
        .Q(sum[0]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[10] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[10]_i_1_n_0 ),
        .Q(sum[10]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[11] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[11]_i_1_n_0 ),
        .Q(sum[11]),
        .R(\pm1_0[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[11]_i_2 
       (.CI(\sum_reg[7]_i_2_n_0 ),
        .CO({\sum_reg[11]_i_2_n_0 ,\sum_reg[11]_i_2_n_1 ,\sum_reg[11]_i_2_n_2 ,\sum_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[11:8]),
        .S(sum[11:8]));
  FDRE \sum_reg[12] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[12]_i_1_n_0 ),
        .Q(sum[12]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[13] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[13]_i_1_n_0 ),
        .Q(sum[13]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[14] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[14]_i_1_n_0 ),
        .Q(sum[14]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[15] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[15]_i_2_n_0 ),
        .Q(sum[15]),
        .R(\pm1_0[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[15]_i_4 
       (.CI(\sum_reg[11]_i_2_n_0 ),
        .CO({\NLW_sum_reg[15]_i_4_CO_UNCONNECTED [3],\sum_reg[15]_i_4_n_1 ,\sum_reg[15]_i_4_n_2 ,\sum_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[15:12]),
        .S(sum[15:12]));
  FDRE \sum_reg[1] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[1]_i_1_n_0 ),
        .Q(sum[1]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[2] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[2]_i_1_n_0 ),
        .Q(sum[2]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[3] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[3]_i_1_n_0 ),
        .Q(sum[3]),
        .R(\pm1_0[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\sum_reg[3]_i_2_n_0 ,\sum_reg[3]_i_2_n_1 ,\sum_reg[3]_i_2_n_2 ,\sum_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sum[3:0]),
        .O(in10[3:0]),
        .S({\sum[3]_i_3_n_0 ,\sum[3]_i_4_n_0 ,\sum[3]_i_5_n_0 ,\sum[3]_i_6_n_0 }));
  FDRE \sum_reg[4] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[4]_i_1_n_0 ),
        .Q(sum[4]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[5] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[5]_i_1_n_0 ),
        .Q(sum[5]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[6] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[6]_i_1_n_0 ),
        .Q(sum[6]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[7] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[7]_i_1_n_0 ),
        .Q(sum[7]),
        .R(\pm1_0[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[7]_i_2 
       (.CI(\sum_reg[3]_i_2_n_0 ),
        .CO({\sum_reg[7]_i_2_n_0 ,\sum_reg[7]_i_2_n_1 ,\sum_reg[7]_i_2_n_2 ,\sum_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sum[7:4]),
        .O(in10[7:4]),
        .S({\sum[7]_i_3_n_0 ,\sum[7]_i_4_n_0 ,\sum[7]_i_5_n_0 ,\sum[7]_i_6_n_0 }));
  FDRE \sum_reg[8] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[8]_i_1_n_0 ),
        .Q(sum[8]),
        .R(\pm1_0[15]_i_1_n_0 ));
  FDRE \sum_reg[9] 
       (.C(aclk),
        .CE(\sum[15]_i_1_n_0 ),
        .D(\sum[9]_i_1_n_0 ),
        .Q(sum[9]),
        .R(\pm1_0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \t_10h[7]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[3] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(\idx_reg_n_0_[1] ),
        .I4(\t_10l[7]_i_2_n_0 ),
        .O(\t_10h[7]_i_1_n_0 ));
  FDRE \t_10h_reg[0] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(t_10h[0]),
        .R(1'b0));
  FDRE \t_10h_reg[1] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(t_10h[1]),
        .R(1'b0));
  FDRE \t_10h_reg[2] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(t_10h[2]),
        .R(1'b0));
  FDRE \t_10h_reg[3] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(t_10h[3]),
        .R(1'b0));
  FDRE \t_10h_reg[4] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(t_10h[4]),
        .R(1'b0));
  FDRE \t_10h_reg[5] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(t_10h[5]),
        .R(1'b0));
  FDRE \t_10h_reg[6] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(t_10h[6]),
        .R(1'b0));
  FDRE \t_10h_reg[7] 
       (.C(aclk),
        .CE(\t_10h[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(t_10h[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \t_10l[7]_i_1 
       (.I0(\idx_reg_n_0_[3] ),
        .I1(\idx_reg_n_0_[2] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(\idx_reg_n_0_[0] ),
        .I4(\t_10l[7]_i_2_n_0 ),
        .O(\t_10l[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \t_10l[7]_i_2 
       (.I0(\idx_reg_n_0_[4] ),
        .I1(aresetn),
        .I2(s_valid),
        .I3(state__0[1]),
        .O(\t_10l[7]_i_2_n_0 ));
  FDRE \t_10l_reg[0] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(t_10l[0]),
        .R(1'b0));
  FDRE \t_10l_reg[1] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(t_10l[1]),
        .R(1'b0));
  FDRE \t_10l_reg[2] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(t_10l[2]),
        .R(1'b0));
  FDRE \t_10l_reg[3] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(t_10l[3]),
        .R(1'b0));
  FDRE \t_10l_reg[4] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(t_10l[4]),
        .R(1'b0));
  FDRE \t_10l_reg[5] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(t_10l[5]),
        .R(1'b0));
  FDRE \t_10l_reg[6] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(t_10l[6]),
        .R(1'b0));
  FDRE \t_10l_reg[7] 
       (.C(aclk),
        .CE(\t_10l[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(t_10l[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    \t_1h[7]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\t_1l[7]_i_2_n_0 ),
        .O(\t_1h[7]_i_1_n_0 ));
  FDRE \t_1h_reg[0] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \t_1h_reg[1] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \t_1h_reg[2] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \t_1h_reg[3] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \t_1h_reg[4] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \t_1h_reg[5] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \t_1h_reg[6] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \t_1h_reg[7] 
       (.C(aclk),
        .CE(\t_1h[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(p_1_in[15]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \t_1l[7]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\t_1l[7]_i_2_n_0 ),
        .O(\t_1l[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \t_1l[7]_i_2 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(\idx_reg_n_0_[3] ),
        .I2(state__0[1]),
        .I3(s_valid),
        .I4(aresetn),
        .I5(\idx_reg_n_0_[4] ),
        .O(\t_1l[7]_i_2_n_0 ));
  FDRE \t_1l_reg[0] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \t_1l_reg[1] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \t_1l_reg[2] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \t_1l_reg[3] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \t_1l_reg[4] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \t_1l_reg[5] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \t_1l_reg[6] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \t_1l_reg[7] 
       (.C(aclk),
        .CE(\t_1l[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \t_2h[7]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\t_1l[7]_i_2_n_0 ),
        .O(\t_2h[7]_i_1_n_0 ));
  FDRE \t_2h_reg[0] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(t_2h[0]),
        .R(1'b0));
  FDRE \t_2h_reg[1] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(t_2h[1]),
        .R(1'b0));
  FDRE \t_2h_reg[2] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(t_2h[2]),
        .R(1'b0));
  FDRE \t_2h_reg[3] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(t_2h[3]),
        .R(1'b0));
  FDRE \t_2h_reg[4] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(t_2h[4]),
        .R(1'b0));
  FDRE \t_2h_reg[5] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(t_2h[5]),
        .R(1'b0));
  FDRE \t_2h_reg[6] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(t_2h[6]),
        .R(1'b0));
  FDRE \t_2h_reg[7] 
       (.C(aclk),
        .CE(\t_2h[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(t_2h[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \t_2l[7]_i_1 
       (.I0(\t_1l[7]_i_2_n_0 ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\idx_reg_n_0_[0] ),
        .O(\t_2l[7]_i_1_n_0 ));
  FDRE \t_2l_reg[0] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(t_2l[0]),
        .R(1'b0));
  FDRE \t_2l_reg[1] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(t_2l[1]),
        .R(1'b0));
  FDRE \t_2l_reg[2] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(t_2l[2]),
        .R(1'b0));
  FDRE \t_2l_reg[3] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(t_2l[3]),
        .R(1'b0));
  FDRE \t_2l_reg[4] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(t_2l[4]),
        .R(1'b0));
  FDRE \t_2l_reg[5] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[5]),
        .Q(t_2l[5]),
        .R(1'b0));
  FDRE \t_2l_reg[6] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[6]),
        .Q(t_2l[6]),
        .R(1'b0));
  FDRE \t_2l_reg[7] 
       (.C(aclk),
        .CE(\t_2l[7]_i_1_n_0 ),
        .D(s_data[7]),
        .Q(t_2l[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
