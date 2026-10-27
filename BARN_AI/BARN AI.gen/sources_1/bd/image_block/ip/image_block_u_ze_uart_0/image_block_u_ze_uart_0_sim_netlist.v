// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Jul 29 22:12:35 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_u_ze_uart_0/image_block_u_ze_uart_0_sim_netlist.v}
// Design      : image_block_u_ze_uart_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_u_ze_uart_0,uart_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_rx,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_u_ze_uart_0
   (aclk,
    aresetn,
    rx,
    m_data,
    m_valid,
    frame_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input rx;
  output [7:0]m_data;
  output m_valid;
  output frame_err;

  wire aclk;
  wire aresetn;
  wire frame_err;
  wire [7:0]m_data;
  wire m_valid;
  wire rx;

  image_block_u_ze_uart_0_uart_rx inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .frame_err(frame_err),
        .m_data(m_data),
        .m_valid(m_valid),
        .rx(rx));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module image_block_u_ze_uart_0_uart_rx
   (m_data,
    m_valid,
    frame_err,
    aclk,
    rx,
    aresetn);
  output [7:0]m_data;
  output m_valid;
  output frame_err;
  input aclk;
  input rx;
  input aresetn;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire aclk;
  wire aresetn;
  wire [0:0]bit_idx;
  wire \bit_idx[0]_i_1_n_0 ;
  wire \bit_idx[1]_i_1_n_0 ;
  wire \bit_idx[2]_i_1_n_0 ;
  wire \bit_idx[2]_i_3_n_0 ;
  wire \bit_idx[2]_i_4_n_0 ;
  wire \bit_idx[2]_i_5_n_0 ;
  wire \bit_idx_reg_n_0_[0] ;
  wire \bit_idx_reg_n_0_[1] ;
  wire \bit_idx_reg_n_0_[2] ;
  wire frame_err;
  wire frame_err_i_1_n_0;
  wire [7:0]m_data;
  wire \m_data[7]_i_1_n_0 ;
  wire \m_data[7]_i_2_n_0 ;
  wire \m_data[7]_i_3_n_0 ;
  wire \m_data[7]_i_4_n_0 ;
  wire \m_data[7]_i_5_n_0 ;
  wire m_valid;
  wire \os_cnt[9]_i_1_n_0 ;
  wire \os_cnt[9]_i_3_n_0 ;
  wire \os_cnt[9]_i_4_n_0 ;
  wire [9:0]os_cnt_reg;
  wire [0:0]os_idx;
  wire \os_idx[0]_i_1_n_0 ;
  wire \os_idx[1]_i_1_n_0 ;
  wire \os_idx[2]_i_1_n_0 ;
  wire \os_idx[3]_i_2_n_0 ;
  wire \os_idx[3]_i_3_n_0 ;
  wire \os_idx_reg_n_0_[0] ;
  wire \os_idx_reg_n_0_[1] ;
  wire \os_idx_reg_n_0_[2] ;
  wire \os_idx_reg_n_0_[3] ;
  wire [9:0]p_0_in;
  wire [6:0]p_1_in;
  wire rx;
  wire rx_meta;
  wire rx_sync;
  wire rx_sync_d;
  wire [0:0]shreg;
  wire \shreg_reg_n_0_[0] ;
  wire [1:0]state;

  LUT6 #(
    .INIT(64'h00FFFFFFFF040404)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(rx_sync),
        .I1(rx_sync_d),
        .I2(state[1]),
        .I3(\m_data[7]_i_3_n_0 ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F007F80)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\m_data[7]_i_3_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(rx_sync),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA800055550000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\os_idx_reg_n_0_[3] ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S_START:01,S_DATA:10,S_IDLE:00,iSTATE:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\m_data[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_START:01,S_DATA:10,S_IDLE:00,iSTATE:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\m_data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \bit_idx[0]_i_1 
       (.I0(state[1]),
        .I1(bit_idx),
        .I2(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \bit_idx[1]_i_1 
       (.I0(state[1]),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(bit_idx),
        .I3(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \bit_idx[2]_i_1 
       (.I0(state[1]),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(bit_idx),
        .I4(\bit_idx_reg_n_0_[2] ),
        .O(\bit_idx[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40404000)) 
    \bit_idx[2]_i_2 
       (.I0(\m_data[7]_i_5_n_0 ),
        .I1(\m_data[7]_i_4_n_0 ),
        .I2(\bit_idx[2]_i_3_n_0 ),
        .I3(\bit_idx[2]_i_4_n_0 ),
        .I4(\bit_idx[2]_i_5_n_0 ),
        .O(bit_idx));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bit_idx[2]_i_3 
       (.I0(os_cnt_reg[8]),
        .I1(os_cnt_reg[6]),
        .I2(os_cnt_reg[5]),
        .I3(os_cnt_reg[4]),
        .O(\bit_idx[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \bit_idx[2]_i_4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(rx_sync),
        .I3(\os_idx_reg_n_0_[3] ),
        .O(\bit_idx[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040404040404040)) 
    \bit_idx[2]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\os_idx_reg_n_0_[3] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(\bit_idx_reg_n_0_[0] ),
        .I5(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[2]_i_5_n_0 ));
  FDRE \bit_idx_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bit_idx[0]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[0] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \bit_idx_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bit_idx[1]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[1] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \bit_idx_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bit_idx[2]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[2] ),
        .R(\m_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    frame_err_i_1
       (.I0(\os_idx_reg_n_0_[3] ),
        .I1(rx_sync),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\m_data[7]_i_3_n_0 ),
        .O(frame_err_i_1_n_0));
  FDRE frame_err_reg
       (.C(aclk),
        .CE(1'b1),
        .D(frame_err_i_1_n_0),
        .Q(frame_err),
        .R(\m_data[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_data[7]_i_1 
       (.I0(aresetn),
        .O(\m_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_data[7]_i_2 
       (.I0(\os_idx_reg_n_0_[3] ),
        .I1(rx_sync),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\m_data[7]_i_3_n_0 ),
        .O(\m_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \m_data[7]_i_3 
       (.I0(os_cnt_reg[8]),
        .I1(os_cnt_reg[6]),
        .I2(os_cnt_reg[5]),
        .I3(os_cnt_reg[4]),
        .I4(\m_data[7]_i_4_n_0 ),
        .I5(\m_data[7]_i_5_n_0 ),
        .O(\m_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \m_data[7]_i_4 
       (.I0(os_cnt_reg[9]),
        .I1(os_cnt_reg[3]),
        .I2(os_cnt_reg[1]),
        .I3(os_cnt_reg[7]),
        .I4(os_cnt_reg[2]),
        .I5(os_cnt_reg[0]),
        .O(\m_data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \m_data[7]_i_5 
       (.I0(\os_idx_reg_n_0_[1] ),
        .I1(\os_idx_reg_n_0_[0] ),
        .I2(\os_idx_reg_n_0_[2] ),
        .O(\m_data[7]_i_5_n_0 ));
  FDRE \m_data_reg[0] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(\shreg_reg_n_0_[0] ),
        .Q(m_data[0]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[1] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(m_data[1]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[2] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(m_data[2]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[3] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(m_data[3]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[4] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(m_data[4]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[5] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(m_data[5]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[6] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(m_data[6]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \m_data_reg[7] 
       (.C(aclk),
        .CE(\m_data[7]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(m_data[7]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\m_data[7]_i_2_n_0 ),
        .Q(m_valid),
        .R(\m_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \os_cnt[0]_i_1 
       (.I0(os_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \os_cnt[1]_i_1 
       (.I0(os_cnt_reg[0]),
        .I1(os_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \os_cnt[2]_i_1 
       (.I0(os_cnt_reg[1]),
        .I1(os_cnt_reg[0]),
        .I2(os_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \os_cnt[3]_i_1 
       (.I0(os_cnt_reg[1]),
        .I1(os_cnt_reg[0]),
        .I2(os_cnt_reg[2]),
        .I3(os_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \os_cnt[4]_i_1 
       (.I0(os_cnt_reg[1]),
        .I1(os_cnt_reg[3]),
        .I2(os_cnt_reg[0]),
        .I3(os_cnt_reg[2]),
        .I4(os_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \os_cnt[5]_i_1 
       (.I0(os_cnt_reg[1]),
        .I1(os_cnt_reg[3]),
        .I2(os_cnt_reg[2]),
        .I3(os_cnt_reg[0]),
        .I4(os_cnt_reg[4]),
        .I5(os_cnt_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \os_cnt[6]_i_1 
       (.I0(\os_cnt[9]_i_4_n_0 ),
        .I1(os_cnt_reg[4]),
        .I2(os_cnt_reg[0]),
        .I3(os_cnt_reg[2]),
        .I4(os_cnt_reg[5]),
        .I5(os_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \os_cnt[7]_i_1 
       (.I0(\os_cnt[9]_i_3_n_0 ),
        .I1(os_cnt_reg[3]),
        .I2(os_cnt_reg[1]),
        .I3(os_cnt_reg[6]),
        .I4(os_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \os_cnt[8]_i_1 
       (.I0(\os_cnt[9]_i_3_n_0 ),
        .I1(os_cnt_reg[7]),
        .I2(os_cnt_reg[1]),
        .I3(os_cnt_reg[3]),
        .I4(os_cnt_reg[6]),
        .I5(os_cnt_reg[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFF57)) 
    \os_cnt[9]_i_1 
       (.I0(aresetn),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\os_idx[3]_i_3_n_0 ),
        .O(\os_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \os_cnt[9]_i_2 
       (.I0(\os_cnt[9]_i_3_n_0 ),
        .I1(os_cnt_reg[8]),
        .I2(os_cnt_reg[6]),
        .I3(os_cnt_reg[7]),
        .I4(\os_cnt[9]_i_4_n_0 ),
        .I5(os_cnt_reg[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \os_cnt[9]_i_3 
       (.I0(os_cnt_reg[4]),
        .I1(os_cnt_reg[0]),
        .I2(os_cnt_reg[2]),
        .I3(os_cnt_reg[5]),
        .O(\os_cnt[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \os_cnt[9]_i_4 
       (.I0(os_cnt_reg[1]),
        .I1(os_cnt_reg[3]),
        .O(\os_cnt[9]_i_4_n_0 ));
  FDRE \os_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(os_cnt_reg[0]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(os_cnt_reg[1]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(os_cnt_reg[2]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(os_cnt_reg[3]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(os_cnt_reg[4]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(os_cnt_reg[5]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(os_cnt_reg[6]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(os_cnt_reg[7]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(os_cnt_reg[8]),
        .R(\os_cnt[9]_i_1_n_0 ));
  FDRE \os_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(os_cnt_reg[9]),
        .R(\os_cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \os_idx[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\os_idx_reg_n_0_[0] ),
        .O(\os_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \os_idx[1]_i_1 
       (.I0(\os_idx_reg_n_0_[0] ),
        .I1(\os_idx_reg_n_0_[1] ),
        .I2(state[0]),
        .I3(state[1]),
        .O(\os_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h78787800)) 
    \os_idx[2]_i_1 
       (.I0(\os_idx_reg_n_0_[1] ),
        .I1(\os_idx_reg_n_0_[0] ),
        .I2(\os_idx_reg_n_0_[2] ),
        .I3(state[0]),
        .I4(state[1]),
        .O(\os_idx[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \os_idx[3]_i_1 
       (.I0(\os_idx[3]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .O(os_idx));
  LUT6 #(
    .INIT(64'h7F807F807F000000)) 
    \os_idx[3]_i_2 
       (.I0(\os_idx_reg_n_0_[2] ),
        .I1(\os_idx_reg_n_0_[0] ),
        .I2(\os_idx_reg_n_0_[1] ),
        .I3(\os_idx_reg_n_0_[3] ),
        .I4(state[0]),
        .I5(state[1]),
        .O(\os_idx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \os_idx[3]_i_3 
       (.I0(\m_data[7]_i_4_n_0 ),
        .I1(os_cnt_reg[4]),
        .I2(os_cnt_reg[5]),
        .I3(os_cnt_reg[6]),
        .I4(os_cnt_reg[8]),
        .O(\os_idx[3]_i_3_n_0 ));
  FDRE \os_idx_reg[0] 
       (.C(aclk),
        .CE(os_idx),
        .D(\os_idx[0]_i_1_n_0 ),
        .Q(\os_idx_reg_n_0_[0] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \os_idx_reg[1] 
       (.C(aclk),
        .CE(os_idx),
        .D(\os_idx[1]_i_1_n_0 ),
        .Q(\os_idx_reg_n_0_[1] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \os_idx_reg[2] 
       (.C(aclk),
        .CE(os_idx),
        .D(\os_idx[2]_i_1_n_0 ),
        .Q(\os_idx_reg_n_0_[2] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \os_idx_reg[3] 
       (.C(aclk),
        .CE(os_idx),
        .D(\os_idx[3]_i_2_n_0 ),
        .Q(\os_idx_reg_n_0_[3] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDSE rx_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx),
        .Q(rx_meta),
        .S(\m_data[7]_i_1_n_0 ));
  FDSE rx_sync_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx_sync),
        .Q(rx_sync_d),
        .S(\m_data[7]_i_1_n_0 ));
  FDSE rx_sync_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx_meta),
        .Q(rx_sync),
        .S(\m_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \shreg[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\os_idx_reg_n_0_[3] ),
        .I3(\m_data[7]_i_3_n_0 ),
        .O(shreg));
  FDRE \shreg_reg[0] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[0]),
        .Q(\shreg_reg_n_0_[0] ),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[1] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[2] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[2]),
        .Q(p_1_in[1]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[3] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[3]),
        .Q(p_1_in[2]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[4] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[4]),
        .Q(p_1_in[3]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[5] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[5]),
        .Q(p_1_in[4]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[6] 
       (.C(aclk),
        .CE(shreg),
        .D(p_1_in[6]),
        .Q(p_1_in[5]),
        .R(\m_data[7]_i_1_n_0 ));
  FDRE \shreg_reg[7] 
       (.C(aclk),
        .CE(shreg),
        .D(rx_sync),
        .Q(p_1_in[6]),
        .R(\m_data[7]_i_1_n_0 ));
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
