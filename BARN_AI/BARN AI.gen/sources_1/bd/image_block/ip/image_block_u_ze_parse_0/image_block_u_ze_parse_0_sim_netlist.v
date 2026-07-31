// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Jul 29 22:12:37 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_u_ze_parse_0/image_block_u_ze_parse_0_sim_netlist.v}
// Design      : image_block_u_ze_parse_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_u_ze_parse_0,ze03_parser,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ze03_parser,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_u_ze_parse_0
   (aclk,
    aresetn,
    s_data,
    s_valid,
    conc,
    gas_type,
    unit,
    decimals,
    range,
    frame_valid,
    csum_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [7:0]s_data;
  input s_valid;
  output [15:0]conc;
  output [7:0]gas_type;
  output [7:0]unit;
  output [7:0]decimals;
  output [15:0]range;
  output frame_valid;
  output csum_err;

  wire aclk;
  wire aresetn;
  wire [15:0]conc;
  wire csum_err;
  wire [7:0]decimals;
  wire frame_valid;
  wire [7:0]gas_type;
  wire [15:0]range;
  wire [7:0]s_data;
  wire s_valid;
  wire [7:0]unit;

  image_block_u_ze_parse_0_ze03_parser inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .conc(conc),
        .csum_err(csum_err),
        .decimals(decimals),
        .frame_valid(frame_valid),
        .gas_type(gas_type),
        .range(range),
        .s_data(s_data),
        .s_valid(s_valid),
        .unit(unit));
endmodule

(* ORIG_REF_NAME = "ze03_parser" *) 
module image_block_u_ze_parse_0_ze03_parser
   (conc,
    gas_type,
    unit,
    decimals,
    range,
    frame_valid,
    csum_err,
    s_data,
    aresetn,
    aclk,
    s_valid);
  output [15:0]conc;
  output [7:0]gas_type;
  output [7:0]unit;
  output [7:0]decimals;
  output [15:0]range;
  output frame_valid;
  output csum_err;
  input [7:0]s_data;
  input aresetn;
  input aclk;
  input s_valid;

  wire aclk;
  wire aresetn;
  wire [15:0]conc;
  wire \conc[15]_i_10_n_0 ;
  wire \conc[15]_i_11_n_0 ;
  wire \conc[15]_i_12_n_0 ;
  wire \conc[15]_i_13_n_0 ;
  wire \conc[15]_i_14_n_0 ;
  wire \conc[15]_i_1_n_0 ;
  wire \conc[15]_i_2_n_0 ;
  wire \conc[15]_i_3_n_0 ;
  wire \conc[15]_i_4_n_0 ;
  wire \conc[15]_i_7_n_0 ;
  wire \conc[15]_i_8_n_0 ;
  wire \conc[15]_i_9_n_0 ;
  wire \conc_reg[15]_i_5_n_0 ;
  wire \conc_reg[15]_i_5_n_1 ;
  wire \conc_reg[15]_i_5_n_2 ;
  wire \conc_reg[15]_i_5_n_3 ;
  wire \conc_reg[15]_i_5_n_4 ;
  wire \conc_reg[15]_i_5_n_5 ;
  wire \conc_reg[15]_i_5_n_6 ;
  wire \conc_reg[15]_i_6_n_1 ;
  wire \conc_reg[15]_i_6_n_2 ;
  wire \conc_reg[15]_i_6_n_3 ;
  wire \conc_reg[15]_i_6_n_4 ;
  wire \conc_reg[15]_i_6_n_5 ;
  wire \conc_reg[15]_i_6_n_6 ;
  wire \conc_reg[15]_i_6_n_7 ;
  wire csum_err;
  wire csum_err_i_1_n_0;
  wire [7:0]decimals;
  wire frame_valid;
  wire frame_valid_i_1_n_0;
  wire frame_valid_i_2_n_0;
  wire [7:0]gas_type;
  wire [0:0]idx;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx[2]_i_1_n_0 ;
  wire \idx[2]_i_3_n_0 ;
  wire \idx[2]_i_4_n_0 ;
  wire \idx_reg_n_0_[0] ;
  wire \idx_reg_n_0_[1] ;
  wire \idx_reg_n_0_[2] ;
  wire [7:1]p_0_in;
  wire [15:0]p_1_in;
  wire [15:0]range;
  wire [7:0]s_data;
  wire s_valid;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire state_reg_n_0;
  wire sum0_carry__0_n_1;
  wire sum0_carry__0_n_2;
  wire sum0_carry__0_n_3;
  wire sum0_carry_i_1__0_n_0;
  wire sum0_carry_i_1_n_0;
  wire sum0_carry_i_2__0_n_0;
  wire sum0_carry_i_2_n_0;
  wire sum0_carry_i_3__0_n_0;
  wire sum0_carry_i_3_n_0;
  wire sum0_carry_i_4__0_n_0;
  wire sum0_carry_i_4_n_0;
  wire sum0_carry_n_0;
  wire sum0_carry_n_1;
  wire sum0_carry_n_2;
  wire sum0_carry_n_3;
  wire sum0_carry_n_7;
  wire \sum[0]_i_1_n_0 ;
  wire [7:0]sum_reg;
  wire [0:0]t_ch;
  wire [0:0]t_cl;
  wire [7:0]t_dec;
  wire [0:0]t_dec_2;
  wire [7:0]t_gas;
  wire [0:0]t_gas_4;
  wire [7:0]t_rh;
  wire [0:0]t_rh_0;
  wire [7:0]t_rl;
  wire [0:0]t_rl_1;
  wire [7:0]t_unit;
  wire [0:0]t_unit_3;
  wire [7:0]unit;
  wire [0:0]\NLW_conc_reg[15]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_conc_reg[15]_i_6_CO_UNCONNECTED ;
  wire [3:3]NLW_sum0_carry__0_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \conc[15]_i_1 
       (.I0(aresetn),
        .O(\conc[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_10 
       (.I0(sum_reg[0]),
        .I1(s_data[0]),
        .O(\conc[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_11 
       (.I0(s_data[7]),
        .I1(sum_reg[7]),
        .O(\conc[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_12 
       (.I0(sum_reg[6]),
        .I1(s_data[6]),
        .O(\conc[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_13 
       (.I0(sum_reg[5]),
        .I1(s_data[5]),
        .O(\conc[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_14 
       (.I0(sum_reg[4]),
        .I1(s_data[4]),
        .O(\conc[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \conc[15]_i_2 
       (.I0(\conc[15]_i_3_n_0 ),
        .I1(\conc[15]_i_4_n_0 ),
        .I2(sum0_carry_n_7),
        .I3(\conc_reg[15]_i_5_n_5 ),
        .I4(\conc_reg[15]_i_6_n_5 ),
        .I5(\conc_reg[15]_i_6_n_6 ),
        .O(\conc[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \conc[15]_i_3 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(s_valid),
        .I4(state_reg_n_0),
        .O(\conc[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \conc[15]_i_4 
       (.I0(\conc_reg[15]_i_6_n_4 ),
        .I1(\conc_reg[15]_i_6_n_7 ),
        .I2(\conc_reg[15]_i_5_n_6 ),
        .I3(\conc_reg[15]_i_5_n_4 ),
        .O(\conc[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_7 
       (.I0(sum_reg[3]),
        .I1(s_data[3]),
        .O(\conc[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_8 
       (.I0(sum_reg[2]),
        .I1(s_data[2]),
        .O(\conc[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \conc[15]_i_9 
       (.I0(sum_reg[1]),
        .I1(s_data[1]),
        .O(\conc[15]_i_9_n_0 ));
  FDRE \conc_reg[0] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(conc[0]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[10] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(conc[10]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[11] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(conc[11]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[12] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(conc[12]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[13] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(conc[13]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[14] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(conc[14]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[15] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(conc[15]),
        .R(\conc[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \conc_reg[15]_i_5 
       (.CI(1'b0),
        .CO({\conc_reg[15]_i_5_n_0 ,\conc_reg[15]_i_5_n_1 ,\conc_reg[15]_i_5_n_2 ,\conc_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(sum_reg[3:0]),
        .O({\conc_reg[15]_i_5_n_4 ,\conc_reg[15]_i_5_n_5 ,\conc_reg[15]_i_5_n_6 ,\NLW_conc_reg[15]_i_5_O_UNCONNECTED [0]}),
        .S({\conc[15]_i_7_n_0 ,\conc[15]_i_8_n_0 ,\conc[15]_i_9_n_0 ,\conc[15]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \conc_reg[15]_i_6 
       (.CI(\conc_reg[15]_i_5_n_0 ),
        .CO({\NLW_conc_reg[15]_i_6_CO_UNCONNECTED [3],\conc_reg[15]_i_6_n_1 ,\conc_reg[15]_i_6_n_2 ,\conc_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sum_reg[6:4]}),
        .O({\conc_reg[15]_i_6_n_4 ,\conc_reg[15]_i_6_n_5 ,\conc_reg[15]_i_6_n_6 ,\conc_reg[15]_i_6_n_7 }),
        .S({\conc[15]_i_11_n_0 ,\conc[15]_i_12_n_0 ,\conc[15]_i_13_n_0 ,\conc[15]_i_14_n_0 }));
  FDRE \conc_reg[1] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(conc[1]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[2] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(conc[2]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[3] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(conc[3]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[4] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(conc[4]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[5] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(conc[5]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[6] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(conc[6]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[7] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(conc[7]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[8] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(conc[8]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \conc_reg[9] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(conc[9]),
        .R(\conc[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    csum_err_i_1
       (.I0(\conc[15]_i_4_n_0 ),
        .I1(sum0_carry_n_7),
        .I2(\conc_reg[15]_i_5_n_5 ),
        .I3(\conc_reg[15]_i_6_n_5 ),
        .I4(\conc_reg[15]_i_6_n_6 ),
        .I5(frame_valid_i_2_n_0),
        .O(csum_err_i_1_n_0));
  FDRE csum_err_reg
       (.C(aclk),
        .CE(1'b1),
        .D(csum_err_i_1_n_0),
        .Q(csum_err),
        .R(1'b0));
  FDRE \decimals_reg[0] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[0]),
        .Q(decimals[0]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[1] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[1]),
        .Q(decimals[1]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[2] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[2]),
        .Q(decimals[2]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[3] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[3]),
        .Q(decimals[3]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[4] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[4]),
        .Q(decimals[4]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[5] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[5]),
        .Q(decimals[5]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[6] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[6]),
        .Q(decimals[6]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \decimals_reg[7] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_dec[7]),
        .Q(decimals[7]),
        .R(\conc[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    frame_valid_i_1
       (.I0(\conc[15]_i_4_n_0 ),
        .I1(sum0_carry_n_7),
        .I2(\conc_reg[15]_i_5_n_5 ),
        .I3(\conc_reg[15]_i_6_n_5 ),
        .I4(\conc_reg[15]_i_6_n_6 ),
        .I5(frame_valid_i_2_n_0),
        .O(frame_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    frame_valid_i_2
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(state_reg_n_0),
        .I3(\idx_reg_n_0_[2] ),
        .I4(s_valid),
        .I5(aresetn),
        .O(frame_valid_i_2_n_0));
  FDRE frame_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(frame_valid_i_1_n_0),
        .Q(frame_valid),
        .R(1'b0));
  FDRE \gas_type_reg[0] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[0]),
        .Q(gas_type[0]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[1] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[1]),
        .Q(gas_type[1]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[2] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[2]),
        .Q(gas_type[2]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[3] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[3]),
        .Q(gas_type[3]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[4] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[4]),
        .Q(gas_type[4]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[5] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[5]),
        .Q(gas_type[5]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[6] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[6]),
        .Q(gas_type[6]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \gas_type_reg[7] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_gas[7]),
        .Q(gas_type[7]),
        .R(\conc[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \idx[0]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx[1]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .O(\idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \idx[2]_i_1 
       (.I0(\idx[2]_i_4_n_0 ),
        .I1(s_data[3]),
        .I2(s_data[0]),
        .I3(s_data[6]),
        .I4(state_reg_n_0),
        .I5(aresetn),
        .O(\idx[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F000000)) 
    \idx[2]_i_2 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(s_valid),
        .I4(state_reg_n_0),
        .O(idx));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \idx[2]_i_3 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[1] ),
        .O(\idx[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \idx[2]_i_4 
       (.I0(s_data[2]),
        .I1(s_data[7]),
        .I2(s_valid),
        .I3(s_data[5]),
        .I4(s_data[1]),
        .I5(s_data[4]),
        .O(\idx[2]_i_4_n_0 ));
  FDRE \idx_reg[0] 
       (.C(aclk),
        .CE(idx),
        .D(\idx[0]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[0] ),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \idx_reg[1] 
       (.C(aclk),
        .CE(idx),
        .D(\idx[1]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[1] ),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \idx_reg[2] 
       (.C(aclk),
        .CE(idx),
        .D(\idx[2]_i_3_n_0 ),
        .Q(\idx_reg_n_0_[2] ),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \range_reg[0] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[0]),
        .Q(range[0]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[10] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[2]),
        .Q(range[10]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[11] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[3]),
        .Q(range[11]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[12] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[4]),
        .Q(range[12]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[13] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[5]),
        .Q(range[13]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[14] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[6]),
        .Q(range[14]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[15] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[7]),
        .Q(range[15]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[1] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[1]),
        .Q(range[1]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[2] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[2]),
        .Q(range[2]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[3] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[3]),
        .Q(range[3]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[4] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[4]),
        .Q(range[4]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[5] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[5]),
        .Q(range[5]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[6] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[6]),
        .Q(range[6]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[7] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rl[7]),
        .Q(range[7]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[8] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[0]),
        .Q(range[8]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \range_reg[9] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_rh[1]),
        .Q(range[9]),
        .R(\conc[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55552AAA00000000)) 
    state_i_1
       (.I0(state_reg_n_0),
        .I1(s_valid),
        .I2(\idx_reg_n_0_[2] ),
        .I3(state_i_2_n_0),
        .I4(state_i_3_n_0),
        .I5(aresetn),
        .O(state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    state_i_2
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .O(state_i_2_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    state_i_3
       (.I0(state_reg_n_0),
        .I1(s_data[6]),
        .I2(s_data[0]),
        .I3(s_data[3]),
        .I4(\idx[2]_i_4_n_0 ),
        .O(state_i_3_n_0));
  FDRE state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry
       (.CI(1'b0),
        .CO({sum0_carry_n_0,sum0_carry_n_1,sum0_carry_n_2,sum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(sum_reg[3:0]),
        .O({p_0_in[3:1],sum0_carry_n_7}),
        .S({sum0_carry_i_1__0_n_0,sum0_carry_i_2_n_0,sum0_carry_i_3_n_0,sum0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__0
       (.CI(sum0_carry_n_0),
        .CO({NLW_sum0_carry__0_CO_UNCONNECTED[3],sum0_carry__0_n_1,sum0_carry__0_n_2,sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sum_reg[6:4]}),
        .O(p_0_in[7:4]),
        .S({sum0_carry_i_1_n_0,sum0_carry_i_2__0_n_0,sum0_carry_i_3__0_n_0,sum0_carry_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_1
       (.I0(s_data[7]),
        .I1(sum_reg[7]),
        .O(sum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_1__0
       (.I0(sum_reg[3]),
        .I1(s_data[3]),
        .O(sum0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_2
       (.I0(sum_reg[2]),
        .I1(s_data[2]),
        .O(sum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_2__0
       (.I0(sum_reg[6]),
        .I1(s_data[6]),
        .O(sum0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_3
       (.I0(sum_reg[1]),
        .I1(s_data[1]),
        .O(sum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_3__0
       (.I0(sum_reg[5]),
        .I1(s_data[5]),
        .O(sum0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_4
       (.I0(sum_reg[0]),
        .I1(s_data[0]),
        .O(sum0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_4__0
       (.I0(sum_reg[4]),
        .I1(s_data[4]),
        .O(sum0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[0]_i_1 
       (.I0(sum_reg[0]),
        .I1(s_data[0]),
        .O(\sum[0]_i_1_n_0 ));
  FDRE \sum_reg[0] 
       (.C(aclk),
        .CE(idx),
        .D(\sum[0]_i_1_n_0 ),
        .Q(sum_reg[0]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[1] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[1]),
        .Q(sum_reg[1]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[2] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[2]),
        .Q(sum_reg[2]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[3] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[3]),
        .Q(sum_reg[3]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[4] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[4]),
        .Q(sum_reg[4]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[5] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[5]),
        .Q(sum_reg[5]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[6] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[6]),
        .Q(sum_reg[6]),
        .R(\idx[2]_i_1_n_0 ));
  FDRE \sum_reg[7] 
       (.C(aclk),
        .CE(idx),
        .D(p_0_in[7]),
        .Q(sum_reg[7]),
        .R(\idx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \t_ch[7]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(state_reg_n_0),
        .I4(s_valid),
        .I5(aresetn),
        .O(t_ch));
  FDRE \t_ch_reg[0] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[0]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \t_ch_reg[1] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[1]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \t_ch_reg[2] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[2]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \t_ch_reg[3] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[3]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \t_ch_reg[4] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[4]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \t_ch_reg[5] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[5]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \t_ch_reg[6] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[6]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \t_ch_reg[7] 
       (.C(aclk),
        .CE(t_ch),
        .D(s_data[7]),
        .Q(p_1_in[15]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \t_cl[7]_i_1 
       (.I0(state_reg_n_0),
        .I1(\idx_reg_n_0_[2] ),
        .I2(s_valid),
        .I3(aresetn),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\idx_reg_n_0_[1] ),
        .O(t_cl));
  FDRE \t_cl_reg[0] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \t_cl_reg[1] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \t_cl_reg[2] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \t_cl_reg[3] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \t_cl_reg[4] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \t_cl_reg[5] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \t_cl_reg[6] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \t_cl_reg[7] 
       (.C(aclk),
        .CE(t_cl),
        .D(s_data[7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \t_dec[7]_i_1 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(state_reg_n_0),
        .I2(s_valid),
        .I3(aresetn),
        .I4(\idx_reg_n_0_[1] ),
        .I5(\idx_reg_n_0_[0] ),
        .O(t_dec_2));
  FDRE \t_dec_reg[0] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[0]),
        .Q(t_dec[0]),
        .R(1'b0));
  FDRE \t_dec_reg[1] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[1]),
        .Q(t_dec[1]),
        .R(1'b0));
  FDRE \t_dec_reg[2] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[2]),
        .Q(t_dec[2]),
        .R(1'b0));
  FDRE \t_dec_reg[3] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[3]),
        .Q(t_dec[3]),
        .R(1'b0));
  FDRE \t_dec_reg[4] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[4]),
        .Q(t_dec[4]),
        .R(1'b0));
  FDRE \t_dec_reg[5] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[5]),
        .Q(t_dec[5]),
        .R(1'b0));
  FDRE \t_dec_reg[6] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[6]),
        .Q(t_dec[6]),
        .R(1'b0));
  FDRE \t_dec_reg[7] 
       (.C(aclk),
        .CE(t_dec_2),
        .D(s_data[7]),
        .Q(t_dec[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \t_gas[7]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(state_reg_n_0),
        .I4(s_valid),
        .I5(aresetn),
        .O(t_gas_4));
  FDRE \t_gas_reg[0] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[0]),
        .Q(t_gas[0]),
        .R(1'b0));
  FDRE \t_gas_reg[1] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[1]),
        .Q(t_gas[1]),
        .R(1'b0));
  FDRE \t_gas_reg[2] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[2]),
        .Q(t_gas[2]),
        .R(1'b0));
  FDRE \t_gas_reg[3] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[3]),
        .Q(t_gas[3]),
        .R(1'b0));
  FDRE \t_gas_reg[4] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[4]),
        .Q(t_gas[4]),
        .R(1'b0));
  FDRE \t_gas_reg[5] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[5]),
        .Q(t_gas[5]),
        .R(1'b0));
  FDRE \t_gas_reg[6] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[6]),
        .Q(t_gas[6]),
        .R(1'b0));
  FDRE \t_gas_reg[7] 
       (.C(aclk),
        .CE(t_gas_4),
        .D(s_data[7]),
        .Q(t_gas[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \t_rh[7]_i_1 
       (.I0(state_reg_n_0),
        .I1(\idx_reg_n_0_[2] ),
        .I2(s_valid),
        .I3(aresetn),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\idx_reg_n_0_[1] ),
        .O(t_rh_0));
  FDRE \t_rh_reg[0] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[0]),
        .Q(t_rh[0]),
        .R(1'b0));
  FDRE \t_rh_reg[1] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[1]),
        .Q(t_rh[1]),
        .R(1'b0));
  FDRE \t_rh_reg[2] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[2]),
        .Q(t_rh[2]),
        .R(1'b0));
  FDRE \t_rh_reg[3] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[3]),
        .Q(t_rh[3]),
        .R(1'b0));
  FDRE \t_rh_reg[4] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[4]),
        .Q(t_rh[4]),
        .R(1'b0));
  FDRE \t_rh_reg[5] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[5]),
        .Q(t_rh[5]),
        .R(1'b0));
  FDRE \t_rh_reg[6] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[6]),
        .Q(t_rh[6]),
        .R(1'b0));
  FDRE \t_rh_reg[7] 
       (.C(aclk),
        .CE(t_rh_0),
        .D(s_data[7]),
        .Q(t_rh[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \t_rl[7]_i_1 
       (.I0(state_reg_n_0),
        .I1(\idx_reg_n_0_[2] ),
        .I2(s_valid),
        .I3(aresetn),
        .I4(\idx_reg_n_0_[1] ),
        .I5(\idx_reg_n_0_[0] ),
        .O(t_rl_1));
  FDRE \t_rl_reg[0] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[0]),
        .Q(t_rl[0]),
        .R(1'b0));
  FDRE \t_rl_reg[1] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[1]),
        .Q(t_rl[1]),
        .R(1'b0));
  FDRE \t_rl_reg[2] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[2]),
        .Q(t_rl[2]),
        .R(1'b0));
  FDRE \t_rl_reg[3] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[3]),
        .Q(t_rl[3]),
        .R(1'b0));
  FDRE \t_rl_reg[4] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[4]),
        .Q(t_rl[4]),
        .R(1'b0));
  FDRE \t_rl_reg[5] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[5]),
        .Q(t_rl[5]),
        .R(1'b0));
  FDRE \t_rl_reg[6] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[6]),
        .Q(t_rl[6]),
        .R(1'b0));
  FDRE \t_rl_reg[7] 
       (.C(aclk),
        .CE(t_rl_1),
        .D(s_data[7]),
        .Q(t_rl[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \t_unit[7]_i_1 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(state_reg_n_0),
        .I2(s_valid),
        .I3(aresetn),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\idx_reg_n_0_[1] ),
        .O(t_unit_3));
  FDRE \t_unit_reg[0] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[0]),
        .Q(t_unit[0]),
        .R(1'b0));
  FDRE \t_unit_reg[1] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[1]),
        .Q(t_unit[1]),
        .R(1'b0));
  FDRE \t_unit_reg[2] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[2]),
        .Q(t_unit[2]),
        .R(1'b0));
  FDRE \t_unit_reg[3] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[3]),
        .Q(t_unit[3]),
        .R(1'b0));
  FDRE \t_unit_reg[4] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[4]),
        .Q(t_unit[4]),
        .R(1'b0));
  FDRE \t_unit_reg[5] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[5]),
        .Q(t_unit[5]),
        .R(1'b0));
  FDRE \t_unit_reg[6] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[6]),
        .Q(t_unit[6]),
        .R(1'b0));
  FDRE \t_unit_reg[7] 
       (.C(aclk),
        .CE(t_unit_3),
        .D(s_data[7]),
        .Q(t_unit[7]),
        .R(1'b0));
  FDRE \unit_reg[0] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[0]),
        .Q(unit[0]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[1] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[1]),
        .Q(unit[1]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[2] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[2]),
        .Q(unit[2]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[3] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[3]),
        .Q(unit[3]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[4] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[4]),
        .Q(unit[4]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[5] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[5]),
        .Q(unit[5]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[6] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[6]),
        .Q(unit[6]),
        .R(\conc[15]_i_1_n_0 ));
  FDRE \unit_reg[7] 
       (.C(aclk),
        .CE(\conc[15]_i_2_n_0 ),
        .D(t_unit[7]),
        .Q(unit[7]),
        .R(\conc[15]_i_1_n_0 ));
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
