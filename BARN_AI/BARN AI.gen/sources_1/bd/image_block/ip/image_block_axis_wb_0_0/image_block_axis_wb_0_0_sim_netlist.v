// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Jul 26 20:46:13 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axis_wb_0_0/image_block_axis_wb_0_0_sim_netlist.v}
// Design      : image_block_axis_wb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axis_wb_0_0,axis_whitebalance,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_whitebalance,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axis_wb_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tuser,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tuser,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [23:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire n_0_452;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  LUT1 #(
    .INIT(2'h1)) 
    i_452
       (.I0(aresetn),
        .O(n_0_452));
  image_block_axis_wb_0_0_axis_whitebalance inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_whitebalance" *) 
module image_block_axis_wb_0_0_axis_whitebalance
   (m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tvalid_reg_0,
    s_axis_tready,
    aclk,
    s_axis_tdata,
    aresetn,
    s_axis_tuser,
    s_axis_tlast,
    m_axis_tready,
    s_axis_tvalid);
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  output m_axis_tvalid_reg_0;
  output s_axis_tready;
  input aclk;
  input [23:0]s_axis_tdata;
  input aresetn;
  input s_axis_tuser;
  input s_axis_tlast;
  input m_axis_tready;
  input s_axis_tvalid;

  wire [9:0]A;
  wire \FSM_onehot_dstate[0]_i_1_n_0 ;
  wire \FSM_onehot_dstate[1]_i_1_n_0 ;
  wire \FSM_onehot_dstate[2]_i_1_n_0 ;
  wire \FSM_onehot_dstate[2]_i_2_n_0 ;
  wire \FSM_onehot_dstate[2]_i_3_n_0 ;
  wire \FSM_onehot_dstate_reg_n_0_[0] ;
  wire \FSM_onehot_dstate_reg_n_0_[1] ;
  wire \FSM_onehot_dstate_reg_n_0_[2] ;
  wire [31:0]acc_B;
  wire \acc_B[11]_i_2_n_0 ;
  wire \acc_B[11]_i_3_n_0 ;
  wire \acc_B[11]_i_4_n_0 ;
  wire \acc_B[11]_i_5_n_0 ;
  wire \acc_B[15]_i_2_n_0 ;
  wire \acc_B[15]_i_3_n_0 ;
  wire \acc_B[15]_i_4_n_0 ;
  wire \acc_B[15]_i_5_n_0 ;
  wire \acc_B[19]_i_2_n_0 ;
  wire \acc_B[19]_i_3_n_0 ;
  wire \acc_B[19]_i_4_n_0 ;
  wire \acc_B[19]_i_5_n_0 ;
  wire \acc_B[23]_i_2_n_0 ;
  wire \acc_B[23]_i_3_n_0 ;
  wire \acc_B[23]_i_4_n_0 ;
  wire \acc_B[23]_i_5_n_0 ;
  wire \acc_B[27]_i_2_n_0 ;
  wire \acc_B[27]_i_3_n_0 ;
  wire \acc_B[27]_i_4_n_0 ;
  wire \acc_B[27]_i_5_n_0 ;
  wire \acc_B[31]_i_2_n_0 ;
  wire \acc_B[31]_i_3_n_0 ;
  wire \acc_B[31]_i_4_n_0 ;
  wire \acc_B[31]_i_5_n_0 ;
  wire \acc_B[3]_i_2_n_0 ;
  wire \acc_B[3]_i_3_n_0 ;
  wire \acc_B[3]_i_4_n_0 ;
  wire \acc_B[3]_i_5_n_0 ;
  wire \acc_B[7]_i_2_n_0 ;
  wire \acc_B[7]_i_3_n_0 ;
  wire \acc_B[7]_i_4_n_0 ;
  wire \acc_B[7]_i_5_n_0 ;
  wire \acc_B_reg[11]_i_1_n_0 ;
  wire \acc_B_reg[11]_i_1_n_1 ;
  wire \acc_B_reg[11]_i_1_n_2 ;
  wire \acc_B_reg[11]_i_1_n_3 ;
  wire \acc_B_reg[15]_i_1_n_0 ;
  wire \acc_B_reg[15]_i_1_n_1 ;
  wire \acc_B_reg[15]_i_1_n_2 ;
  wire \acc_B_reg[15]_i_1_n_3 ;
  wire \acc_B_reg[19]_i_1_n_0 ;
  wire \acc_B_reg[19]_i_1_n_1 ;
  wire \acc_B_reg[19]_i_1_n_2 ;
  wire \acc_B_reg[19]_i_1_n_3 ;
  wire \acc_B_reg[23]_i_1_n_0 ;
  wire \acc_B_reg[23]_i_1_n_1 ;
  wire \acc_B_reg[23]_i_1_n_2 ;
  wire \acc_B_reg[23]_i_1_n_3 ;
  wire \acc_B_reg[27]_i_1_n_0 ;
  wire \acc_B_reg[27]_i_1_n_1 ;
  wire \acc_B_reg[27]_i_1_n_2 ;
  wire \acc_B_reg[27]_i_1_n_3 ;
  wire \acc_B_reg[31]_i_1_n_1 ;
  wire \acc_B_reg[31]_i_1_n_2 ;
  wire \acc_B_reg[31]_i_1_n_3 ;
  wire \acc_B_reg[3]_i_1_n_0 ;
  wire \acc_B_reg[3]_i_1_n_1 ;
  wire \acc_B_reg[3]_i_1_n_2 ;
  wire \acc_B_reg[3]_i_1_n_3 ;
  wire \acc_B_reg[7]_i_1_n_0 ;
  wire \acc_B_reg[7]_i_1_n_1 ;
  wire \acc_B_reg[7]_i_1_n_2 ;
  wire \acc_B_reg[7]_i_1_n_3 ;
  wire \acc_B_reg_n_0_[0] ;
  wire \acc_B_reg_n_0_[10] ;
  wire \acc_B_reg_n_0_[11] ;
  wire \acc_B_reg_n_0_[12] ;
  wire \acc_B_reg_n_0_[13] ;
  wire \acc_B_reg_n_0_[14] ;
  wire \acc_B_reg_n_0_[15] ;
  wire \acc_B_reg_n_0_[16] ;
  wire \acc_B_reg_n_0_[17] ;
  wire \acc_B_reg_n_0_[18] ;
  wire \acc_B_reg_n_0_[19] ;
  wire \acc_B_reg_n_0_[1] ;
  wire \acc_B_reg_n_0_[20] ;
  wire \acc_B_reg_n_0_[21] ;
  wire \acc_B_reg_n_0_[22] ;
  wire \acc_B_reg_n_0_[23] ;
  wire \acc_B_reg_n_0_[24] ;
  wire \acc_B_reg_n_0_[25] ;
  wire \acc_B_reg_n_0_[26] ;
  wire \acc_B_reg_n_0_[27] ;
  wire \acc_B_reg_n_0_[28] ;
  wire \acc_B_reg_n_0_[29] ;
  wire \acc_B_reg_n_0_[2] ;
  wire \acc_B_reg_n_0_[30] ;
  wire \acc_B_reg_n_0_[31] ;
  wire \acc_B_reg_n_0_[3] ;
  wire \acc_B_reg_n_0_[4] ;
  wire \acc_B_reg_n_0_[5] ;
  wire \acc_B_reg_n_0_[6] ;
  wire \acc_B_reg_n_0_[7] ;
  wire \acc_B_reg_n_0_[8] ;
  wire \acc_B_reg_n_0_[9] ;
  wire [31:0]acc_G;
  wire \acc_G[11]_i_2_n_0 ;
  wire \acc_G[11]_i_3_n_0 ;
  wire \acc_G[11]_i_4_n_0 ;
  wire \acc_G[11]_i_5_n_0 ;
  wire \acc_G[15]_i_2_n_0 ;
  wire \acc_G[15]_i_3_n_0 ;
  wire \acc_G[15]_i_4_n_0 ;
  wire \acc_G[15]_i_5_n_0 ;
  wire \acc_G[19]_i_2_n_0 ;
  wire \acc_G[19]_i_3_n_0 ;
  wire \acc_G[19]_i_4_n_0 ;
  wire \acc_G[19]_i_5_n_0 ;
  wire \acc_G[23]_i_2_n_0 ;
  wire \acc_G[23]_i_3_n_0 ;
  wire \acc_G[23]_i_4_n_0 ;
  wire \acc_G[23]_i_5_n_0 ;
  wire \acc_G[27]_i_2_n_0 ;
  wire \acc_G[27]_i_3_n_0 ;
  wire \acc_G[27]_i_4_n_0 ;
  wire \acc_G[27]_i_5_n_0 ;
  wire \acc_G[31]_i_2_n_0 ;
  wire \acc_G[31]_i_3_n_0 ;
  wire \acc_G[31]_i_4_n_0 ;
  wire \acc_G[31]_i_5_n_0 ;
  wire \acc_G[3]_i_2_n_0 ;
  wire \acc_G[3]_i_3_n_0 ;
  wire \acc_G[3]_i_4_n_0 ;
  wire \acc_G[3]_i_5_n_0 ;
  wire \acc_G[7]_i_2_n_0 ;
  wire \acc_G[7]_i_3_n_0 ;
  wire \acc_G[7]_i_4_n_0 ;
  wire \acc_G[7]_i_5_n_0 ;
  wire \acc_G_reg[11]_i_1_n_0 ;
  wire \acc_G_reg[11]_i_1_n_1 ;
  wire \acc_G_reg[11]_i_1_n_2 ;
  wire \acc_G_reg[11]_i_1_n_3 ;
  wire \acc_G_reg[15]_i_1_n_0 ;
  wire \acc_G_reg[15]_i_1_n_1 ;
  wire \acc_G_reg[15]_i_1_n_2 ;
  wire \acc_G_reg[15]_i_1_n_3 ;
  wire \acc_G_reg[19]_i_1_n_0 ;
  wire \acc_G_reg[19]_i_1_n_1 ;
  wire \acc_G_reg[19]_i_1_n_2 ;
  wire \acc_G_reg[19]_i_1_n_3 ;
  wire \acc_G_reg[23]_i_1_n_0 ;
  wire \acc_G_reg[23]_i_1_n_1 ;
  wire \acc_G_reg[23]_i_1_n_2 ;
  wire \acc_G_reg[23]_i_1_n_3 ;
  wire \acc_G_reg[27]_i_1_n_0 ;
  wire \acc_G_reg[27]_i_1_n_1 ;
  wire \acc_G_reg[27]_i_1_n_2 ;
  wire \acc_G_reg[27]_i_1_n_3 ;
  wire \acc_G_reg[31]_i_1_n_1 ;
  wire \acc_G_reg[31]_i_1_n_2 ;
  wire \acc_G_reg[31]_i_1_n_3 ;
  wire \acc_G_reg[3]_i_1_n_0 ;
  wire \acc_G_reg[3]_i_1_n_1 ;
  wire \acc_G_reg[3]_i_1_n_2 ;
  wire \acc_G_reg[3]_i_1_n_3 ;
  wire \acc_G_reg[7]_i_1_n_0 ;
  wire \acc_G_reg[7]_i_1_n_1 ;
  wire \acc_G_reg[7]_i_1_n_2 ;
  wire \acc_G_reg[7]_i_1_n_3 ;
  wire \acc_G_reg_n_0_[0] ;
  wire \acc_G_reg_n_0_[10] ;
  wire \acc_G_reg_n_0_[11] ;
  wire \acc_G_reg_n_0_[12] ;
  wire \acc_G_reg_n_0_[13] ;
  wire \acc_G_reg_n_0_[14] ;
  wire \acc_G_reg_n_0_[15] ;
  wire \acc_G_reg_n_0_[16] ;
  wire \acc_G_reg_n_0_[17] ;
  wire \acc_G_reg_n_0_[18] ;
  wire \acc_G_reg_n_0_[19] ;
  wire \acc_G_reg_n_0_[1] ;
  wire \acc_G_reg_n_0_[20] ;
  wire \acc_G_reg_n_0_[21] ;
  wire \acc_G_reg_n_0_[22] ;
  wire \acc_G_reg_n_0_[23] ;
  wire \acc_G_reg_n_0_[24] ;
  wire \acc_G_reg_n_0_[25] ;
  wire \acc_G_reg_n_0_[26] ;
  wire \acc_G_reg_n_0_[27] ;
  wire \acc_G_reg_n_0_[28] ;
  wire \acc_G_reg_n_0_[29] ;
  wire \acc_G_reg_n_0_[2] ;
  wire \acc_G_reg_n_0_[30] ;
  wire \acc_G_reg_n_0_[31] ;
  wire \acc_G_reg_n_0_[3] ;
  wire \acc_G_reg_n_0_[4] ;
  wire \acc_G_reg_n_0_[5] ;
  wire \acc_G_reg_n_0_[6] ;
  wire \acc_G_reg_n_0_[7] ;
  wire \acc_G_reg_n_0_[8] ;
  wire \acc_G_reg_n_0_[9] ;
  wire [31:0]acc_R0_in;
  wire \acc_R[31]_i_1_n_0 ;
  wire \acc_R[3]_i_2_n_0 ;
  wire \acc_R[3]_i_3_n_0 ;
  wire \acc_R[3]_i_4_n_0 ;
  wire \acc_R[3]_i_5_n_0 ;
  wire \acc_R[7]_i_2_n_0 ;
  wire \acc_R[7]_i_3_n_0 ;
  wire \acc_R[7]_i_4_n_0 ;
  wire \acc_R[7]_i_5_n_0 ;
  wire \acc_R_reg[11]_i_1_n_0 ;
  wire \acc_R_reg[11]_i_1_n_1 ;
  wire \acc_R_reg[11]_i_1_n_2 ;
  wire \acc_R_reg[11]_i_1_n_3 ;
  wire \acc_R_reg[15]_i_1_n_0 ;
  wire \acc_R_reg[15]_i_1_n_1 ;
  wire \acc_R_reg[15]_i_1_n_2 ;
  wire \acc_R_reg[15]_i_1_n_3 ;
  wire \acc_R_reg[19]_i_1_n_0 ;
  wire \acc_R_reg[19]_i_1_n_1 ;
  wire \acc_R_reg[19]_i_1_n_2 ;
  wire \acc_R_reg[19]_i_1_n_3 ;
  wire \acc_R_reg[23]_i_1_n_0 ;
  wire \acc_R_reg[23]_i_1_n_1 ;
  wire \acc_R_reg[23]_i_1_n_2 ;
  wire \acc_R_reg[23]_i_1_n_3 ;
  wire \acc_R_reg[27]_i_1_n_0 ;
  wire \acc_R_reg[27]_i_1_n_1 ;
  wire \acc_R_reg[27]_i_1_n_2 ;
  wire \acc_R_reg[27]_i_1_n_3 ;
  wire \acc_R_reg[31]_i_2_n_1 ;
  wire \acc_R_reg[31]_i_2_n_2 ;
  wire \acc_R_reg[31]_i_2_n_3 ;
  wire \acc_R_reg[3]_i_1_n_0 ;
  wire \acc_R_reg[3]_i_1_n_1 ;
  wire \acc_R_reg[3]_i_1_n_2 ;
  wire \acc_R_reg[3]_i_1_n_3 ;
  wire \acc_R_reg[7]_i_1_n_0 ;
  wire \acc_R_reg[7]_i_1_n_1 ;
  wire \acc_R_reg[7]_i_1_n_2 ;
  wire \acc_R_reg[7]_i_1_n_3 ;
  wire \acc_R_reg_n_0_[0] ;
  wire \acc_R_reg_n_0_[10] ;
  wire \acc_R_reg_n_0_[11] ;
  wire \acc_R_reg_n_0_[12] ;
  wire \acc_R_reg_n_0_[13] ;
  wire \acc_R_reg_n_0_[14] ;
  wire \acc_R_reg_n_0_[15] ;
  wire \acc_R_reg_n_0_[16] ;
  wire \acc_R_reg_n_0_[17] ;
  wire \acc_R_reg_n_0_[18] ;
  wire \acc_R_reg_n_0_[19] ;
  wire \acc_R_reg_n_0_[1] ;
  wire \acc_R_reg_n_0_[20] ;
  wire \acc_R_reg_n_0_[21] ;
  wire \acc_R_reg_n_0_[22] ;
  wire \acc_R_reg_n_0_[23] ;
  wire \acc_R_reg_n_0_[24] ;
  wire \acc_R_reg_n_0_[25] ;
  wire \acc_R_reg_n_0_[26] ;
  wire \acc_R_reg_n_0_[27] ;
  wire \acc_R_reg_n_0_[28] ;
  wire \acc_R_reg_n_0_[29] ;
  wire \acc_R_reg_n_0_[2] ;
  wire \acc_R_reg_n_0_[30] ;
  wire \acc_R_reg_n_0_[31] ;
  wire \acc_R_reg_n_0_[3] ;
  wire \acc_R_reg_n_0_[4] ;
  wire \acc_R_reg_n_0_[5] ;
  wire \acc_R_reg_n_0_[6] ;
  wire \acc_R_reg_n_0_[7] ;
  wire \acc_R_reg_n_0_[8] ;
  wire \acc_R_reg_n_0_[9] ;
  wire aclk;
  wire [9:0]active_gB;
  wire [9:0]active_gR;
  wire \active_gR[0]_i_1_n_0 ;
  wire \active_gR[1]_i_1_n_0 ;
  wire \active_gR[2]_i_1_n_0 ;
  wire \active_gR[3]_i_1_n_0 ;
  wire \active_gR[4]_i_1_n_0 ;
  wire \active_gR[5]_i_1_n_0 ;
  wire \active_gR[6]_i_1_n_0 ;
  wire \active_gR[7]_i_1_n_0 ;
  wire \active_gR[8]_i_1_n_0 ;
  wire \active_gR[9]_i_1_n_0 ;
  wire aresetn;
  wire dchan;
  wire dchan_reg_n_0;
  wire [5:1]dcnt;
  wire \dcnt[0]_i_1_n_0 ;
  wire \dcnt[3]_i_2_n_0 ;
  wire \dcnt[5]_i_3_n_0 ;
  wire \dcnt_reg_n_0_[0] ;
  wire \dcnt_reg_n_0_[1] ;
  wire \dcnt_reg_n_0_[2] ;
  wire \dcnt_reg_n_0_[3] ;
  wire \dcnt_reg_n_0_[4] ;
  wire \dcnt_reg_n_0_[5] ;
  wire [31:0]dden;
  wire \dden[0]_i_1_n_0 ;
  wire \dden[10]_i_1_n_0 ;
  wire \dden[11]_i_1_n_0 ;
  wire \dden[12]_i_1_n_0 ;
  wire \dden[13]_i_1_n_0 ;
  wire \dden[14]_i_1_n_0 ;
  wire \dden[15]_i_1_n_0 ;
  wire \dden[16]_i_1_n_0 ;
  wire \dden[17]_i_1_n_0 ;
  wire \dden[18]_i_1_n_0 ;
  wire \dden[19]_i_1_n_0 ;
  wire \dden[1]_i_1_n_0 ;
  wire \dden[20]_i_1_n_0 ;
  wire \dden[21]_i_1_n_0 ;
  wire \dden[22]_i_1_n_0 ;
  wire \dden[23]_i_1_n_0 ;
  wire \dden[24]_i_1_n_0 ;
  wire \dden[25]_i_1_n_0 ;
  wire \dden[26]_i_1_n_0 ;
  wire \dden[27]_i_1_n_0 ;
  wire \dden[28]_i_1_n_0 ;
  wire \dden[29]_i_1_n_0 ;
  wire \dden[2]_i_1_n_0 ;
  wire \dden[30]_i_1_n_0 ;
  wire \dden[31]_i_1_n_0 ;
  wire \dden[3]_i_1_n_0 ;
  wire \dden[4]_i_1_n_0 ;
  wire \dden[5]_i_1_n_0 ;
  wire \dden[6]_i_1_n_0 ;
  wire \dden[7]_i_1_n_0 ;
  wire \dden[8]_i_1_n_0 ;
  wire \dden[9]_i_1_n_0 ;
  wire div_go;
  wire [39:8]dnum;
  wire \dquot[0]_i_1_n_0 ;
  wire \dquot[10]_i_1_n_0 ;
  wire \dquot[11]_i_1_n_0 ;
  wire \dquot[12]_i_1_n_0 ;
  wire \dquot[13]_i_1_n_0 ;
  wire \dquot[14]_i_1_n_0 ;
  wire \dquot[15]_i_1_n_0 ;
  wire \dquot[16]_i_1_n_0 ;
  wire \dquot[17]_i_1_n_0 ;
  wire \dquot[18]_i_1_n_0 ;
  wire \dquot[19]_i_1_n_0 ;
  wire \dquot[1]_i_1_n_0 ;
  wire \dquot[20]_i_1_n_0 ;
  wire \dquot[21]_i_1_n_0 ;
  wire \dquot[22]_i_1_n_0 ;
  wire \dquot[23]_i_1_n_0 ;
  wire \dquot[24]_i_1_n_0 ;
  wire \dquot[25]_i_1_n_0 ;
  wire \dquot[26]_i_1_n_0 ;
  wire \dquot[27]_i_1_n_0 ;
  wire \dquot[28]_i_1_n_0 ;
  wire \dquot[29]_i_1_n_0 ;
  wire \dquot[2]_i_1_n_0 ;
  wire \dquot[30]_i_1_n_0 ;
  wire \dquot[31]_i_1_n_0 ;
  wire \dquot[32]_i_1_n_0 ;
  wire \dquot[33]_i_1_n_0 ;
  wire \dquot[34]_i_1_n_0 ;
  wire \dquot[35]_i_1_n_0 ;
  wire \dquot[36]_i_1_n_0 ;
  wire \dquot[37]_i_1_n_0 ;
  wire \dquot[38]_i_1_n_0 ;
  wire \dquot[39]_i_1_n_0 ;
  wire \dquot[3]_i_1_n_0 ;
  wire \dquot[4]_i_1_n_0 ;
  wire \dquot[5]_i_1_n_0 ;
  wire \dquot[6]_i_1_n_0 ;
  wire \dquot[7]_i_1_n_0 ;
  wire \dquot[8]_i_1_n_0 ;
  wire \dquot[9]_i_1_n_0 ;
  wire \dquot_reg_n_0_[0] ;
  wire \dquot_reg_n_0_[10] ;
  wire \dquot_reg_n_0_[11] ;
  wire \dquot_reg_n_0_[12] ;
  wire \dquot_reg_n_0_[13] ;
  wire \dquot_reg_n_0_[14] ;
  wire \dquot_reg_n_0_[15] ;
  wire \dquot_reg_n_0_[16] ;
  wire \dquot_reg_n_0_[17] ;
  wire \dquot_reg_n_0_[18] ;
  wire \dquot_reg_n_0_[19] ;
  wire \dquot_reg_n_0_[1] ;
  wire \dquot_reg_n_0_[20] ;
  wire \dquot_reg_n_0_[21] ;
  wire \dquot_reg_n_0_[22] ;
  wire \dquot_reg_n_0_[23] ;
  wire \dquot_reg_n_0_[24] ;
  wire \dquot_reg_n_0_[25] ;
  wire \dquot_reg_n_0_[26] ;
  wire \dquot_reg_n_0_[27] ;
  wire \dquot_reg_n_0_[28] ;
  wire \dquot_reg_n_0_[29] ;
  wire \dquot_reg_n_0_[2] ;
  wire \dquot_reg_n_0_[30] ;
  wire \dquot_reg_n_0_[31] ;
  wire \dquot_reg_n_0_[32] ;
  wire \dquot_reg_n_0_[33] ;
  wire \dquot_reg_n_0_[34] ;
  wire \dquot_reg_n_0_[35] ;
  wire \dquot_reg_n_0_[36] ;
  wire \dquot_reg_n_0_[37] ;
  wire \dquot_reg_n_0_[38] ;
  wire \dquot_reg_n_0_[39] ;
  wire \dquot_reg_n_0_[3] ;
  wire \dquot_reg_n_0_[4] ;
  wire \dquot_reg_n_0_[5] ;
  wire \dquot_reg_n_0_[6] ;
  wire \dquot_reg_n_0_[7] ;
  wire \dquot_reg_n_0_[8] ;
  wire \dquot_reg_n_0_[9] ;
  wire [39:0]drem;
  wire \drem[0]_i_1_n_0 ;
  wire \drem[10]_i_1_n_0 ;
  wire \drem[10]_i_3_n_0 ;
  wire \drem[10]_i_4_n_0 ;
  wire \drem[10]_i_5_n_0 ;
  wire \drem[10]_i_6_n_0 ;
  wire \drem[11]_i_1_n_0 ;
  wire \drem[12]_i_1_n_0 ;
  wire \drem[13]_i_1_n_0 ;
  wire \drem[14]_i_1_n_0 ;
  wire \drem[14]_i_3_n_0 ;
  wire \drem[14]_i_4_n_0 ;
  wire \drem[14]_i_5_n_0 ;
  wire \drem[14]_i_6_n_0 ;
  wire \drem[15]_i_1_n_0 ;
  wire \drem[16]_i_1_n_0 ;
  wire \drem[17]_i_1_n_0 ;
  wire \drem[18]_i_1_n_0 ;
  wire \drem[18]_i_3_n_0 ;
  wire \drem[18]_i_4_n_0 ;
  wire \drem[18]_i_5_n_0 ;
  wire \drem[18]_i_6_n_0 ;
  wire \drem[19]_i_1_n_0 ;
  wire \drem[1]_i_1_n_0 ;
  wire \drem[20]_i_1_n_0 ;
  wire \drem[21]_i_1_n_0 ;
  wire \drem[22]_i_1_n_0 ;
  wire \drem[22]_i_3_n_0 ;
  wire \drem[22]_i_4_n_0 ;
  wire \drem[22]_i_5_n_0 ;
  wire \drem[22]_i_6_n_0 ;
  wire \drem[23]_i_1_n_0 ;
  wire \drem[24]_i_1_n_0 ;
  wire \drem[25]_i_1_n_0 ;
  wire \drem[26]_i_1_n_0 ;
  wire \drem[26]_i_3_n_0 ;
  wire \drem[26]_i_4_n_0 ;
  wire \drem[26]_i_5_n_0 ;
  wire \drem[26]_i_6_n_0 ;
  wire \drem[27]_i_1_n_0 ;
  wire \drem[28]_i_1_n_0 ;
  wire \drem[29]_i_1_n_0 ;
  wire \drem[2]_i_1_n_0 ;
  wire \drem[2]_i_3_n_0 ;
  wire \drem[2]_i_4_n_0 ;
  wire \drem[2]_i_5_n_0 ;
  wire \drem[30]_i_1_n_0 ;
  wire \drem[30]_i_3_n_0 ;
  wire \drem[30]_i_4_n_0 ;
  wire \drem[30]_i_5_n_0 ;
  wire \drem[30]_i_6_n_0 ;
  wire \drem[31]_i_1_n_0 ;
  wire \drem[32]_i_1_n_0 ;
  wire \drem[33]_i_1_n_0 ;
  wire \drem[34]_i_1_n_0 ;
  wire \drem[34]_i_3_n_0 ;
  wire \drem[34]_i_4_n_0 ;
  wire \drem[34]_i_5_n_0 ;
  wire \drem[34]_i_6_n_0 ;
  wire \drem[34]_i_7_n_0 ;
  wire \drem[35]_i_1_n_0 ;
  wire \drem[36]_i_1_n_0 ;
  wire \drem[37]_i_1_n_0 ;
  wire \drem[38]_i_1_n_0 ;
  wire \drem[38]_i_3_n_0 ;
  wire \drem[38]_i_4_n_0 ;
  wire \drem[38]_i_5_n_0 ;
  wire \drem[38]_i_6_n_0 ;
  wire \drem[39]_i_1_n_0 ;
  wire \drem[39]_i_3_n_0 ;
  wire \drem[3]_i_1_n_0 ;
  wire \drem[4]_i_1_n_0 ;
  wire \drem[5]_i_1_n_0 ;
  wire \drem[6]_i_1_n_0 ;
  wire \drem[6]_i_3_n_0 ;
  wire \drem[6]_i_4_n_0 ;
  wire \drem[6]_i_5_n_0 ;
  wire \drem[6]_i_6_n_0 ;
  wire \drem[7]_i_1_n_0 ;
  wire \drem[8]_i_1_n_0 ;
  wire \drem[9]_i_1_n_0 ;
  wire [0:0]drem_2;
  wire \drem_reg[10]_i_2_n_0 ;
  wire \drem_reg[10]_i_2_n_1 ;
  wire \drem_reg[10]_i_2_n_2 ;
  wire \drem_reg[10]_i_2_n_3 ;
  wire \drem_reg[10]_i_2_n_4 ;
  wire \drem_reg[10]_i_2_n_5 ;
  wire \drem_reg[10]_i_2_n_6 ;
  wire \drem_reg[10]_i_2_n_7 ;
  wire \drem_reg[14]_i_2_n_0 ;
  wire \drem_reg[14]_i_2_n_1 ;
  wire \drem_reg[14]_i_2_n_2 ;
  wire \drem_reg[14]_i_2_n_3 ;
  wire \drem_reg[14]_i_2_n_4 ;
  wire \drem_reg[14]_i_2_n_5 ;
  wire \drem_reg[14]_i_2_n_6 ;
  wire \drem_reg[14]_i_2_n_7 ;
  wire \drem_reg[18]_i_2_n_0 ;
  wire \drem_reg[18]_i_2_n_1 ;
  wire \drem_reg[18]_i_2_n_2 ;
  wire \drem_reg[18]_i_2_n_3 ;
  wire \drem_reg[18]_i_2_n_4 ;
  wire \drem_reg[18]_i_2_n_5 ;
  wire \drem_reg[18]_i_2_n_6 ;
  wire \drem_reg[18]_i_2_n_7 ;
  wire \drem_reg[22]_i_2_n_0 ;
  wire \drem_reg[22]_i_2_n_1 ;
  wire \drem_reg[22]_i_2_n_2 ;
  wire \drem_reg[22]_i_2_n_3 ;
  wire \drem_reg[22]_i_2_n_4 ;
  wire \drem_reg[22]_i_2_n_5 ;
  wire \drem_reg[22]_i_2_n_6 ;
  wire \drem_reg[22]_i_2_n_7 ;
  wire \drem_reg[26]_i_2_n_0 ;
  wire \drem_reg[26]_i_2_n_1 ;
  wire \drem_reg[26]_i_2_n_2 ;
  wire \drem_reg[26]_i_2_n_3 ;
  wire \drem_reg[26]_i_2_n_4 ;
  wire \drem_reg[26]_i_2_n_5 ;
  wire \drem_reg[26]_i_2_n_6 ;
  wire \drem_reg[26]_i_2_n_7 ;
  wire \drem_reg[2]_i_2_n_0 ;
  wire \drem_reg[2]_i_2_n_1 ;
  wire \drem_reg[2]_i_2_n_2 ;
  wire \drem_reg[2]_i_2_n_3 ;
  wire \drem_reg[2]_i_2_n_4 ;
  wire \drem_reg[2]_i_2_n_5 ;
  wire \drem_reg[2]_i_2_n_6 ;
  wire \drem_reg[30]_i_2_n_0 ;
  wire \drem_reg[30]_i_2_n_1 ;
  wire \drem_reg[30]_i_2_n_2 ;
  wire \drem_reg[30]_i_2_n_3 ;
  wire \drem_reg[30]_i_2_n_4 ;
  wire \drem_reg[30]_i_2_n_5 ;
  wire \drem_reg[30]_i_2_n_6 ;
  wire \drem_reg[30]_i_2_n_7 ;
  wire \drem_reg[34]_i_2_n_0 ;
  wire \drem_reg[34]_i_2_n_1 ;
  wire \drem_reg[34]_i_2_n_2 ;
  wire \drem_reg[34]_i_2_n_3 ;
  wire \drem_reg[34]_i_2_n_4 ;
  wire \drem_reg[34]_i_2_n_5 ;
  wire \drem_reg[34]_i_2_n_6 ;
  wire \drem_reg[34]_i_2_n_7 ;
  wire \drem_reg[38]_i_2_n_0 ;
  wire \drem_reg[38]_i_2_n_1 ;
  wire \drem_reg[38]_i_2_n_2 ;
  wire \drem_reg[38]_i_2_n_3 ;
  wire \drem_reg[38]_i_2_n_4 ;
  wire \drem_reg[38]_i_2_n_5 ;
  wire \drem_reg[38]_i_2_n_6 ;
  wire \drem_reg[38]_i_2_n_7 ;
  wire \drem_reg[39]_i_2_n_7 ;
  wire \drem_reg[6]_i_2_n_0 ;
  wire \drem_reg[6]_i_2_n_1 ;
  wire \drem_reg[6]_i_2_n_2 ;
  wire \drem_reg[6]_i_2_n_3 ;
  wire \drem_reg[6]_i_2_n_4 ;
  wire \drem_reg[6]_i_2_n_5 ;
  wire \drem_reg[6]_i_2_n_6 ;
  wire \drem_reg[6]_i_2_n_7 ;
  wire dzero;
  wire dzero_4;
  wire dzero_i_10_n_0;
  wire dzero_i_11_n_0;
  wire dzero_i_12_n_0;
  wire dzero_i_13_n_0;
  wire dzero_i_14_n_0;
  wire dzero_i_2_n_0;
  wire dzero_i_3_n_0;
  wire dzero_i_4_n_0;
  wire dzero_i_5_n_0;
  wire dzero_i_6_n_0;
  wire dzero_i_7_n_0;
  wire dzero_i_8_n_0;
  wire dzero_i_9_n_0;
  wire ge;
  wire ge_carry__0_i_1_n_0;
  wire ge_carry__0_i_2_n_0;
  wire ge_carry__0_i_3_n_0;
  wire ge_carry__0_i_4_n_0;
  wire ge_carry__0_i_5_n_0;
  wire ge_carry__0_i_6_n_0;
  wire ge_carry__0_i_7_n_0;
  wire ge_carry__0_i_8_n_0;
  wire ge_carry__0_n_0;
  wire ge_carry__0_n_1;
  wire ge_carry__0_n_2;
  wire ge_carry__0_n_3;
  wire ge_carry__1_i_1_n_0;
  wire ge_carry__1_i_2_n_0;
  wire ge_carry__1_i_3_n_0;
  wire ge_carry__1_i_4_n_0;
  wire ge_carry__1_i_5_n_0;
  wire ge_carry__1_i_6_n_0;
  wire ge_carry__1_i_7_n_0;
  wire ge_carry__1_i_8_n_0;
  wire ge_carry__1_n_0;
  wire ge_carry__1_n_1;
  wire ge_carry__1_n_2;
  wire ge_carry__1_n_3;
  wire ge_carry__2_i_1_n_0;
  wire ge_carry__2_i_2_n_0;
  wire ge_carry__2_i_3_n_0;
  wire ge_carry__2_i_4_n_0;
  wire ge_carry__2_i_5_n_0;
  wire ge_carry__2_i_6_n_0;
  wire ge_carry__2_i_7_n_0;
  wire ge_carry__2_i_8_n_0;
  wire ge_carry__2_n_0;
  wire ge_carry__2_n_1;
  wire ge_carry__2_n_2;
  wire ge_carry__2_n_3;
  wire ge_carry__3_i_1_n_0;
  wire ge_carry__3_i_2_n_0;
  wire ge_carry__3_i_3_n_0;
  wire ge_carry__3_i_4_n_0;
  wire ge_carry__3_i_5_n_0;
  wire ge_carry__3_i_6_n_0;
  wire ge_carry__3_i_7_n_0;
  wire ge_carry__3_i_8_n_0;
  wire ge_carry__3_n_0;
  wire ge_carry__3_n_1;
  wire ge_carry__3_n_2;
  wire ge_carry__3_n_3;
  wire ge_carry__4_i_1_n_0;
  wire ge_carry_i_1_n_0;
  wire ge_carry_i_2_n_0;
  wire ge_carry_i_3_n_0;
  wire ge_carry_i_4_n_0;
  wire ge_carry_i_5_n_0;
  wire ge_carry_i_6_n_0;
  wire ge_carry_i_7_n_0;
  wire ge_carry_i_8_n_0;
  wire ge_carry_n_0;
  wire ge_carry_n_1;
  wire ge_carry_n_2;
  wire ge_carry_n_3;
  wire [39:8]in12;
  wire [39:9]in13;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[16]_i_1_n_0 ;
  wire \m_axis_tdata[17]_i_1_n_0 ;
  wire \m_axis_tdata[18]_i_1_n_0 ;
  wire \m_axis_tdata[19]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[20]_i_1_n_0 ;
  wire \m_axis_tdata[21]_i_1_n_0 ;
  wire \m_axis_tdata[22]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_2_n_0 ;
  wire \m_axis_tdata[23]_i_3_n_0 ;
  wire \m_axis_tdata[23]_i_4_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_reg_0;
  wire [23:8]mulB__0;
  wire mulB_n_100;
  wire mulB_n_101;
  wire mulB_n_102;
  wire mulB_n_103;
  wire mulB_n_104;
  wire mulB_n_105;
  wire mulB_n_98;
  wire mulB_n_99;
  wire [23:8]mulR__0;
  wire mulR_n_100;
  wire mulR_n_101;
  wire mulR_n_102;
  wire mulR_n_103;
  wire mulR_n_104;
  wire mulR_n_105;
  wire mulR_n_98;
  wire mulR_n_99;
  wire [31:8]p_0_in;
  wire p_0_in0;
  wire p_0_in_0;
  wire [9:0]p_1_in;
  wire [9:0]pending_gB;
  wire \pending_gB[5]_i_2_n_0 ;
  wire \pending_gB[9]_i_10_n_0 ;
  wire \pending_gB[9]_i_3_n_0 ;
  wire \pending_gB[9]_i_4_n_0 ;
  wire \pending_gB[9]_i_5_n_0 ;
  wire \pending_gB[9]_i_6_n_0 ;
  wire \pending_gB[9]_i_7_n_0 ;
  wire \pending_gB[9]_i_8_n_0 ;
  wire \pending_gB[9]_i_9_n_0 ;
  wire [0:0]pending_gB_1;
  wire [9:0]pending_gR;
  wire [0:0]pending_gR_3;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [31:0]snap_B;
  wire [31:0]snap_R;
  wire sof;
  wire [3:3]\NLW_acc_B_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_G_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_R_reg[31]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_drem_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_drem_reg[39]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_drem_reg[39]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_ge_carry_O_UNCONNECTED;
  wire [3:0]NLW_ge_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ge_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ge_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ge_carry__3_O_UNCONNECTED;
  wire [3:1]NLW_ge_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_ge_carry__4_O_UNCONNECTED;
  wire NLW_mulB_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mulB_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mulB_OVERFLOW_UNCONNECTED;
  wire NLW_mulB_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mulB_PATTERNDETECT_UNCONNECTED;
  wire NLW_mulB_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mulB_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mulB_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mulB_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_mulB_P_UNCONNECTED;
  wire [47:0]NLW_mulB_PCOUT_UNCONNECTED;
  wire NLW_mulR_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mulR_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mulR_OVERFLOW_UNCONNECTED;
  wire NLW_mulR_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mulR_PATTERNDETECT_UNCONNECTED;
  wire NLW_mulR_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mulR_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mulR_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mulR_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_mulR_P_UNCONNECTED;
  wire [47:0]NLW_mulR_PCOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_dstate[0]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I1(dchan_reg_n_0),
        .I2(\FSM_onehot_dstate[2]_i_2_n_0 ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .O(\FSM_onehot_dstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \FSM_onehot_dstate[1]_i_1 
       (.I0(dchan_reg_n_0),
        .I1(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I2(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I3(\FSM_onehot_dstate[2]_i_2_n_0 ),
        .I4(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(\FSM_onehot_dstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_dstate[2]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\FSM_onehot_dstate[2]_i_2_n_0 ),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\FSM_onehot_dstate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FSM_onehot_dstate[2]_i_2 
       (.I0(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I1(div_go),
        .I2(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I3(\dcnt_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate[2]_i_3_n_0 ),
        .O(\FSM_onehot_dstate[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_dstate[2]_i_3 
       (.I0(\dcnt_reg_n_0_[3] ),
        .I1(\dcnt_reg_n_0_[4] ),
        .I2(\dcnt_reg_n_0_[1] ),
        .I3(\dcnt_reg_n_0_[2] ),
        .I4(\dcnt_reg_n_0_[5] ),
        .I5(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(\FSM_onehot_dstate[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "D_FIN:100,D_IDLE:001,D_RUN:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_dstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_dstate[0]_i_1_n_0 ),
        .Q(\FSM_onehot_dstate_reg_n_0_[0] ),
        .S(\m_axis_tdata[23]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "D_FIN:100,D_IDLE:001,D_RUN:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_dstate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_dstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_dstate_reg_n_0_[1] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "D_FIN:100,D_IDLE:001,D_RUN:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_dstate_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_dstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_dstate_reg_n_0_[2] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[11]_i_2 
       (.I0(\acc_B_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(\acc_B[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[11]_i_3 
       (.I0(\acc_B_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(\acc_B[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[11]_i_4 
       (.I0(\acc_B_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(\acc_B[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[11]_i_5 
       (.I0(\acc_B_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(\acc_B[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[15]_i_2 
       (.I0(\acc_B_reg_n_0_[15] ),
        .I1(s_axis_tuser),
        .O(\acc_B[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[15]_i_3 
       (.I0(\acc_B_reg_n_0_[14] ),
        .I1(s_axis_tuser),
        .O(\acc_B[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[15]_i_4 
       (.I0(\acc_B_reg_n_0_[13] ),
        .I1(s_axis_tuser),
        .O(\acc_B[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[15]_i_5 
       (.I0(\acc_B_reg_n_0_[12] ),
        .I1(s_axis_tuser),
        .O(\acc_B[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[19]_i_2 
       (.I0(\acc_B_reg_n_0_[19] ),
        .I1(s_axis_tuser),
        .O(\acc_B[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[19]_i_3 
       (.I0(\acc_B_reg_n_0_[18] ),
        .I1(s_axis_tuser),
        .O(\acc_B[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[19]_i_4 
       (.I0(\acc_B_reg_n_0_[17] ),
        .I1(s_axis_tuser),
        .O(\acc_B[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[19]_i_5 
       (.I0(\acc_B_reg_n_0_[16] ),
        .I1(s_axis_tuser),
        .O(\acc_B[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[23]_i_2 
       (.I0(\acc_B_reg_n_0_[23] ),
        .I1(s_axis_tuser),
        .O(\acc_B[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[23]_i_3 
       (.I0(\acc_B_reg_n_0_[22] ),
        .I1(s_axis_tuser),
        .O(\acc_B[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[23]_i_4 
       (.I0(\acc_B_reg_n_0_[21] ),
        .I1(s_axis_tuser),
        .O(\acc_B[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[23]_i_5 
       (.I0(\acc_B_reg_n_0_[20] ),
        .I1(s_axis_tuser),
        .O(\acc_B[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[27]_i_2 
       (.I0(\acc_B_reg_n_0_[27] ),
        .I1(s_axis_tuser),
        .O(\acc_B[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[27]_i_3 
       (.I0(\acc_B_reg_n_0_[26] ),
        .I1(s_axis_tuser),
        .O(\acc_B[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[27]_i_4 
       (.I0(\acc_B_reg_n_0_[25] ),
        .I1(s_axis_tuser),
        .O(\acc_B[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[27]_i_5 
       (.I0(\acc_B_reg_n_0_[24] ),
        .I1(s_axis_tuser),
        .O(\acc_B[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[31]_i_2 
       (.I0(\acc_B_reg_n_0_[31] ),
        .I1(s_axis_tuser),
        .O(\acc_B[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[31]_i_3 
       (.I0(\acc_B_reg_n_0_[30] ),
        .I1(s_axis_tuser),
        .O(\acc_B[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[31]_i_4 
       (.I0(\acc_B_reg_n_0_[29] ),
        .I1(s_axis_tuser),
        .O(\acc_B[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_B[31]_i_5 
       (.I0(\acc_B_reg_n_0_[28] ),
        .I1(s_axis_tuser),
        .O(\acc_B[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[3]_i_2 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[3] ),
        .I2(s_axis_tdata[3]),
        .O(\acc_B[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[3]_i_3 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[2] ),
        .I2(s_axis_tdata[2]),
        .O(\acc_B[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[3]_i_4 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[1] ),
        .I2(s_axis_tdata[1]),
        .O(\acc_B[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[3]_i_5 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[0] ),
        .I2(s_axis_tdata[0]),
        .O(\acc_B[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[7]_i_2 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[7] ),
        .I2(s_axis_tdata[7]),
        .O(\acc_B[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[7]_i_3 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[6] ),
        .I2(s_axis_tdata[6]),
        .O(\acc_B[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[7]_i_4 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[5] ),
        .I2(s_axis_tdata[5]),
        .O(\acc_B[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_B[7]_i_5 
       (.I0(s_axis_tuser),
        .I1(\acc_B_reg_n_0_[4] ),
        .I2(s_axis_tdata[4]),
        .O(\acc_B[7]_i_5_n_0 ));
  FDRE \acc_B_reg[0] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[0]),
        .Q(\acc_B_reg_n_0_[0] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_B_reg[10] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[10]),
        .Q(\acc_B_reg_n_0_[10] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[11] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[11]),
        .Q(\acc_B_reg_n_0_[11] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[11]_i_1 
       (.CI(\acc_B_reg[7]_i_1_n_0 ),
        .CO({\acc_B_reg[11]_i_1_n_0 ,\acc_B_reg[11]_i_1_n_1 ,\acc_B_reg[11]_i_1_n_2 ,\acc_B_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_B[11:8]),
        .S({\acc_B[11]_i_2_n_0 ,\acc_B[11]_i_3_n_0 ,\acc_B[11]_i_4_n_0 ,\acc_B[11]_i_5_n_0 }));
  FDRE \acc_B_reg[12] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[12]),
        .Q(\acc_B_reg_n_0_[12] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[13] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[13]),
        .Q(\acc_B_reg_n_0_[13] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[14] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[14]),
        .Q(\acc_B_reg_n_0_[14] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[15] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[15]),
        .Q(\acc_B_reg_n_0_[15] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[15]_i_1 
       (.CI(\acc_B_reg[11]_i_1_n_0 ),
        .CO({\acc_B_reg[15]_i_1_n_0 ,\acc_B_reg[15]_i_1_n_1 ,\acc_B_reg[15]_i_1_n_2 ,\acc_B_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_B[15:12]),
        .S({\acc_B[15]_i_2_n_0 ,\acc_B[15]_i_3_n_0 ,\acc_B[15]_i_4_n_0 ,\acc_B[15]_i_5_n_0 }));
  FDRE \acc_B_reg[16] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[16]),
        .Q(\acc_B_reg_n_0_[16] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[17] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[17]),
        .Q(\acc_B_reg_n_0_[17] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[18] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[18]),
        .Q(\acc_B_reg_n_0_[18] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[19] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[19]),
        .Q(\acc_B_reg_n_0_[19] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[19]_i_1 
       (.CI(\acc_B_reg[15]_i_1_n_0 ),
        .CO({\acc_B_reg[19]_i_1_n_0 ,\acc_B_reg[19]_i_1_n_1 ,\acc_B_reg[19]_i_1_n_2 ,\acc_B_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_B[19:16]),
        .S({\acc_B[19]_i_2_n_0 ,\acc_B[19]_i_3_n_0 ,\acc_B[19]_i_4_n_0 ,\acc_B[19]_i_5_n_0 }));
  FDRE \acc_B_reg[1] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[1]),
        .Q(\acc_B_reg_n_0_[1] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_B_reg[20] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[20]),
        .Q(\acc_B_reg_n_0_[20] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[21] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[21]),
        .Q(\acc_B_reg_n_0_[21] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[22] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[22]),
        .Q(\acc_B_reg_n_0_[22] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[23] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[23]),
        .Q(\acc_B_reg_n_0_[23] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[23]_i_1 
       (.CI(\acc_B_reg[19]_i_1_n_0 ),
        .CO({\acc_B_reg[23]_i_1_n_0 ,\acc_B_reg[23]_i_1_n_1 ,\acc_B_reg[23]_i_1_n_2 ,\acc_B_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_B[23:20]),
        .S({\acc_B[23]_i_2_n_0 ,\acc_B[23]_i_3_n_0 ,\acc_B[23]_i_4_n_0 ,\acc_B[23]_i_5_n_0 }));
  FDRE \acc_B_reg[24] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[24]),
        .Q(\acc_B_reg_n_0_[24] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[25] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[25]),
        .Q(\acc_B_reg_n_0_[25] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[26] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[26]),
        .Q(\acc_B_reg_n_0_[26] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[27] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[27]),
        .Q(\acc_B_reg_n_0_[27] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[27]_i_1 
       (.CI(\acc_B_reg[23]_i_1_n_0 ),
        .CO({\acc_B_reg[27]_i_1_n_0 ,\acc_B_reg[27]_i_1_n_1 ,\acc_B_reg[27]_i_1_n_2 ,\acc_B_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_B[27:24]),
        .S({\acc_B[27]_i_2_n_0 ,\acc_B[27]_i_3_n_0 ,\acc_B[27]_i_4_n_0 ,\acc_B[27]_i_5_n_0 }));
  FDRE \acc_B_reg[28] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[28]),
        .Q(\acc_B_reg_n_0_[28] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[29] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[29]),
        .Q(\acc_B_reg_n_0_[29] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[2] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[2]),
        .Q(\acc_B_reg_n_0_[2] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_B_reg[30] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[30]),
        .Q(\acc_B_reg_n_0_[30] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[31] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[31]),
        .Q(\acc_B_reg_n_0_[31] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[31]_i_1 
       (.CI(\acc_B_reg[27]_i_1_n_0 ),
        .CO({\NLW_acc_B_reg[31]_i_1_CO_UNCONNECTED [3],\acc_B_reg[31]_i_1_n_1 ,\acc_B_reg[31]_i_1_n_2 ,\acc_B_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_B[31:28]),
        .S({\acc_B[31]_i_2_n_0 ,\acc_B[31]_i_3_n_0 ,\acc_B[31]_i_4_n_0 ,\acc_B[31]_i_5_n_0 }));
  FDRE \acc_B_reg[3] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[3]),
        .Q(\acc_B_reg_n_0_[3] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\acc_B_reg[3]_i_1_n_0 ,\acc_B_reg[3]_i_1_n_1 ,\acc_B_reg[3]_i_1_n_2 ,\acc_B_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[3:0]),
        .O(acc_B[3:0]),
        .S({\acc_B[3]_i_2_n_0 ,\acc_B[3]_i_3_n_0 ,\acc_B[3]_i_4_n_0 ,\acc_B[3]_i_5_n_0 }));
  FDRE \acc_B_reg[4] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[4]),
        .Q(\acc_B_reg_n_0_[4] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_B_reg[5] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[5]),
        .Q(\acc_B_reg_n_0_[5] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_B_reg[6] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[6]),
        .Q(\acc_B_reg_n_0_[6] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_B_reg[7] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[7]),
        .Q(\acc_B_reg_n_0_[7] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_B_reg[7]_i_1 
       (.CI(\acc_B_reg[3]_i_1_n_0 ),
        .CO({\acc_B_reg[7]_i_1_n_0 ,\acc_B_reg[7]_i_1_n_1 ,\acc_B_reg[7]_i_1_n_2 ,\acc_B_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[7:4]),
        .O(acc_B[7:4]),
        .S({\acc_B[7]_i_2_n_0 ,\acc_B[7]_i_3_n_0 ,\acc_B[7]_i_4_n_0 ,\acc_B[7]_i_5_n_0 }));
  FDRE \acc_B_reg[8] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[8]),
        .Q(\acc_B_reg_n_0_[8] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_B_reg[9] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_B[9]),
        .Q(\acc_B_reg_n_0_[9] ),
        .R(\acc_R[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[11]_i_2 
       (.I0(\acc_G_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(\acc_G[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[11]_i_3 
       (.I0(\acc_G_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(\acc_G[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[11]_i_4 
       (.I0(\acc_G_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(\acc_G[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[11]_i_5 
       (.I0(\acc_G_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(\acc_G[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[15]_i_2 
       (.I0(\acc_G_reg_n_0_[15] ),
        .I1(s_axis_tuser),
        .O(\acc_G[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[15]_i_3 
       (.I0(\acc_G_reg_n_0_[14] ),
        .I1(s_axis_tuser),
        .O(\acc_G[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[15]_i_4 
       (.I0(\acc_G_reg_n_0_[13] ),
        .I1(s_axis_tuser),
        .O(\acc_G[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[15]_i_5 
       (.I0(\acc_G_reg_n_0_[12] ),
        .I1(s_axis_tuser),
        .O(\acc_G[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[19]_i_2 
       (.I0(\acc_G_reg_n_0_[19] ),
        .I1(s_axis_tuser),
        .O(\acc_G[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[19]_i_3 
       (.I0(\acc_G_reg_n_0_[18] ),
        .I1(s_axis_tuser),
        .O(\acc_G[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[19]_i_4 
       (.I0(\acc_G_reg_n_0_[17] ),
        .I1(s_axis_tuser),
        .O(\acc_G[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[19]_i_5 
       (.I0(\acc_G_reg_n_0_[16] ),
        .I1(s_axis_tuser),
        .O(\acc_G[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[23]_i_2 
       (.I0(\acc_G_reg_n_0_[23] ),
        .I1(s_axis_tuser),
        .O(\acc_G[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[23]_i_3 
       (.I0(\acc_G_reg_n_0_[22] ),
        .I1(s_axis_tuser),
        .O(\acc_G[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[23]_i_4 
       (.I0(\acc_G_reg_n_0_[21] ),
        .I1(s_axis_tuser),
        .O(\acc_G[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[23]_i_5 
       (.I0(\acc_G_reg_n_0_[20] ),
        .I1(s_axis_tuser),
        .O(\acc_G[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[27]_i_2 
       (.I0(\acc_G_reg_n_0_[27] ),
        .I1(s_axis_tuser),
        .O(\acc_G[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[27]_i_3 
       (.I0(\acc_G_reg_n_0_[26] ),
        .I1(s_axis_tuser),
        .O(\acc_G[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[27]_i_4 
       (.I0(\acc_G_reg_n_0_[25] ),
        .I1(s_axis_tuser),
        .O(\acc_G[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[27]_i_5 
       (.I0(\acc_G_reg_n_0_[24] ),
        .I1(s_axis_tuser),
        .O(\acc_G[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[31]_i_2 
       (.I0(\acc_G_reg_n_0_[31] ),
        .I1(s_axis_tuser),
        .O(\acc_G[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[31]_i_3 
       (.I0(\acc_G_reg_n_0_[30] ),
        .I1(s_axis_tuser),
        .O(\acc_G[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[31]_i_4 
       (.I0(\acc_G_reg_n_0_[29] ),
        .I1(s_axis_tuser),
        .O(\acc_G[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_G[31]_i_5 
       (.I0(\acc_G_reg_n_0_[28] ),
        .I1(s_axis_tuser),
        .O(\acc_G[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[3]_i_2 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[3] ),
        .I2(s_axis_tdata[11]),
        .O(\acc_G[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[3]_i_3 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[2] ),
        .I2(s_axis_tdata[10]),
        .O(\acc_G[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[3]_i_4 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[1] ),
        .I2(s_axis_tdata[9]),
        .O(\acc_G[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[3]_i_5 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[0] ),
        .I2(s_axis_tdata[8]),
        .O(\acc_G[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[7]_i_2 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[7] ),
        .I2(s_axis_tdata[15]),
        .O(\acc_G[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[7]_i_3 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[6] ),
        .I2(s_axis_tdata[14]),
        .O(\acc_G[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[7]_i_4 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[5] ),
        .I2(s_axis_tdata[13]),
        .O(\acc_G[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_G[7]_i_5 
       (.I0(s_axis_tuser),
        .I1(\acc_G_reg_n_0_[4] ),
        .I2(s_axis_tdata[12]),
        .O(\acc_G[7]_i_5_n_0 ));
  FDRE \acc_G_reg[0] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[0]),
        .Q(\acc_G_reg_n_0_[0] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_G_reg[10] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[10]),
        .Q(\acc_G_reg_n_0_[10] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[11] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[11]),
        .Q(\acc_G_reg_n_0_[11] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[11]_i_1 
       (.CI(\acc_G_reg[7]_i_1_n_0 ),
        .CO({\acc_G_reg[11]_i_1_n_0 ,\acc_G_reg[11]_i_1_n_1 ,\acc_G_reg[11]_i_1_n_2 ,\acc_G_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_G[11:8]),
        .S({\acc_G[11]_i_2_n_0 ,\acc_G[11]_i_3_n_0 ,\acc_G[11]_i_4_n_0 ,\acc_G[11]_i_5_n_0 }));
  FDRE \acc_G_reg[12] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[12]),
        .Q(\acc_G_reg_n_0_[12] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[13] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[13]),
        .Q(\acc_G_reg_n_0_[13] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[14] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[14]),
        .Q(\acc_G_reg_n_0_[14] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[15] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[15]),
        .Q(\acc_G_reg_n_0_[15] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[15]_i_1 
       (.CI(\acc_G_reg[11]_i_1_n_0 ),
        .CO({\acc_G_reg[15]_i_1_n_0 ,\acc_G_reg[15]_i_1_n_1 ,\acc_G_reg[15]_i_1_n_2 ,\acc_G_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_G[15:12]),
        .S({\acc_G[15]_i_2_n_0 ,\acc_G[15]_i_3_n_0 ,\acc_G[15]_i_4_n_0 ,\acc_G[15]_i_5_n_0 }));
  FDRE \acc_G_reg[16] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[16]),
        .Q(\acc_G_reg_n_0_[16] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[17] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[17]),
        .Q(\acc_G_reg_n_0_[17] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[18] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[18]),
        .Q(\acc_G_reg_n_0_[18] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[19] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[19]),
        .Q(\acc_G_reg_n_0_[19] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[19]_i_1 
       (.CI(\acc_G_reg[15]_i_1_n_0 ),
        .CO({\acc_G_reg[19]_i_1_n_0 ,\acc_G_reg[19]_i_1_n_1 ,\acc_G_reg[19]_i_1_n_2 ,\acc_G_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_G[19:16]),
        .S({\acc_G[19]_i_2_n_0 ,\acc_G[19]_i_3_n_0 ,\acc_G[19]_i_4_n_0 ,\acc_G[19]_i_5_n_0 }));
  FDRE \acc_G_reg[1] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[1]),
        .Q(\acc_G_reg_n_0_[1] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_G_reg[20] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[20]),
        .Q(\acc_G_reg_n_0_[20] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[21] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[21]),
        .Q(\acc_G_reg_n_0_[21] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[22] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[22]),
        .Q(\acc_G_reg_n_0_[22] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[23] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[23]),
        .Q(\acc_G_reg_n_0_[23] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[23]_i_1 
       (.CI(\acc_G_reg[19]_i_1_n_0 ),
        .CO({\acc_G_reg[23]_i_1_n_0 ,\acc_G_reg[23]_i_1_n_1 ,\acc_G_reg[23]_i_1_n_2 ,\acc_G_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_G[23:20]),
        .S({\acc_G[23]_i_2_n_0 ,\acc_G[23]_i_3_n_0 ,\acc_G[23]_i_4_n_0 ,\acc_G[23]_i_5_n_0 }));
  FDRE \acc_G_reg[24] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[24]),
        .Q(\acc_G_reg_n_0_[24] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[25] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[25]),
        .Q(\acc_G_reg_n_0_[25] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[26] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[26]),
        .Q(\acc_G_reg_n_0_[26] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[27] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[27]),
        .Q(\acc_G_reg_n_0_[27] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[27]_i_1 
       (.CI(\acc_G_reg[23]_i_1_n_0 ),
        .CO({\acc_G_reg[27]_i_1_n_0 ,\acc_G_reg[27]_i_1_n_1 ,\acc_G_reg[27]_i_1_n_2 ,\acc_G_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_G[27:24]),
        .S({\acc_G[27]_i_2_n_0 ,\acc_G[27]_i_3_n_0 ,\acc_G[27]_i_4_n_0 ,\acc_G[27]_i_5_n_0 }));
  FDRE \acc_G_reg[28] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[28]),
        .Q(\acc_G_reg_n_0_[28] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[29] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[29]),
        .Q(\acc_G_reg_n_0_[29] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[2] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[2]),
        .Q(\acc_G_reg_n_0_[2] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_G_reg[30] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[30]),
        .Q(\acc_G_reg_n_0_[30] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[31] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[31]),
        .Q(\acc_G_reg_n_0_[31] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[31]_i_1 
       (.CI(\acc_G_reg[27]_i_1_n_0 ),
        .CO({\NLW_acc_G_reg[31]_i_1_CO_UNCONNECTED [3],\acc_G_reg[31]_i_1_n_1 ,\acc_G_reg[31]_i_1_n_2 ,\acc_G_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_G[31:28]),
        .S({\acc_G[31]_i_2_n_0 ,\acc_G[31]_i_3_n_0 ,\acc_G[31]_i_4_n_0 ,\acc_G[31]_i_5_n_0 }));
  FDRE \acc_G_reg[3] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[3]),
        .Q(\acc_G_reg_n_0_[3] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\acc_G_reg[3]_i_1_n_0 ,\acc_G_reg[3]_i_1_n_1 ,\acc_G_reg[3]_i_1_n_2 ,\acc_G_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[11:8]),
        .O(acc_G[3:0]),
        .S({\acc_G[3]_i_2_n_0 ,\acc_G[3]_i_3_n_0 ,\acc_G[3]_i_4_n_0 ,\acc_G[3]_i_5_n_0 }));
  FDRE \acc_G_reg[4] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[4]),
        .Q(\acc_G_reg_n_0_[4] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_G_reg[5] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[5]),
        .Q(\acc_G_reg_n_0_[5] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_G_reg[6] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[6]),
        .Q(\acc_G_reg_n_0_[6] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_G_reg[7] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[7]),
        .Q(\acc_G_reg_n_0_[7] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_G_reg[7]_i_1 
       (.CI(\acc_G_reg[3]_i_1_n_0 ),
        .CO({\acc_G_reg[7]_i_1_n_0 ,\acc_G_reg[7]_i_1_n_1 ,\acc_G_reg[7]_i_1_n_2 ,\acc_G_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[15:12]),
        .O(acc_G[7:4]),
        .S({\acc_G[7]_i_2_n_0 ,\acc_G[7]_i_3_n_0 ,\acc_G[7]_i_4_n_0 ,\acc_G[7]_i_5_n_0 }));
  FDRE \acc_G_reg[8] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[8]),
        .Q(\acc_G_reg_n_0_[8] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_G_reg[9] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_G[9]),
        .Q(\acc_G_reg_n_0_[9] ),
        .R(\acc_R[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[11]_i_2 
       (.I0(\acc_R_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(p_0_in[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[11]_i_3 
       (.I0(\acc_R_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(p_0_in[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[11]_i_4 
       (.I0(\acc_R_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(p_0_in[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[11]_i_5 
       (.I0(\acc_R_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[15]_i_2 
       (.I0(\acc_R_reg_n_0_[15] ),
        .I1(s_axis_tuser),
        .O(p_0_in[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[15]_i_3 
       (.I0(\acc_R_reg_n_0_[14] ),
        .I1(s_axis_tuser),
        .O(p_0_in[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[15]_i_4 
       (.I0(\acc_R_reg_n_0_[13] ),
        .I1(s_axis_tuser),
        .O(p_0_in[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[15]_i_5 
       (.I0(\acc_R_reg_n_0_[12] ),
        .I1(s_axis_tuser),
        .O(p_0_in[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[19]_i_2 
       (.I0(\acc_R_reg_n_0_[19] ),
        .I1(s_axis_tuser),
        .O(p_0_in[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[19]_i_3 
       (.I0(\acc_R_reg_n_0_[18] ),
        .I1(s_axis_tuser),
        .O(p_0_in[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[19]_i_4 
       (.I0(\acc_R_reg_n_0_[17] ),
        .I1(s_axis_tuser),
        .O(p_0_in[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[19]_i_5 
       (.I0(\acc_R_reg_n_0_[16] ),
        .I1(s_axis_tuser),
        .O(p_0_in[16]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[23]_i_2 
       (.I0(\acc_R_reg_n_0_[23] ),
        .I1(s_axis_tuser),
        .O(p_0_in[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[23]_i_3 
       (.I0(\acc_R_reg_n_0_[22] ),
        .I1(s_axis_tuser),
        .O(p_0_in[22]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[23]_i_4 
       (.I0(\acc_R_reg_n_0_[21] ),
        .I1(s_axis_tuser),
        .O(p_0_in[21]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[23]_i_5 
       (.I0(\acc_R_reg_n_0_[20] ),
        .I1(s_axis_tuser),
        .O(p_0_in[20]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[27]_i_2 
       (.I0(\acc_R_reg_n_0_[27] ),
        .I1(s_axis_tuser),
        .O(p_0_in[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[27]_i_3 
       (.I0(\acc_R_reg_n_0_[26] ),
        .I1(s_axis_tuser),
        .O(p_0_in[26]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[27]_i_4 
       (.I0(\acc_R_reg_n_0_[25] ),
        .I1(s_axis_tuser),
        .O(p_0_in[25]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[27]_i_5 
       (.I0(\acc_R_reg_n_0_[24] ),
        .I1(s_axis_tuser),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'hB000FFFF)) 
    \acc_R[31]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .I2(s_axis_tvalid),
        .I3(s_axis_tuser),
        .I4(aresetn),
        .O(\acc_R[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[31]_i_3 
       (.I0(\acc_R_reg_n_0_[31] ),
        .I1(s_axis_tuser),
        .O(p_0_in[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[31]_i_4 
       (.I0(\acc_R_reg_n_0_[30] ),
        .I1(s_axis_tuser),
        .O(p_0_in[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[31]_i_5 
       (.I0(\acc_R_reg_n_0_[29] ),
        .I1(s_axis_tuser),
        .O(p_0_in[29]));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_R[31]_i_6 
       (.I0(\acc_R_reg_n_0_[28] ),
        .I1(s_axis_tuser),
        .O(p_0_in[28]));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[3]_i_2 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[3] ),
        .I2(s_axis_tdata[19]),
        .O(\acc_R[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[3]_i_3 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[2] ),
        .I2(s_axis_tdata[18]),
        .O(\acc_R[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[3]_i_4 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[1] ),
        .I2(s_axis_tdata[17]),
        .O(\acc_R[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[3]_i_5 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[0] ),
        .I2(s_axis_tdata[16]),
        .O(\acc_R[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[7]_i_2 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[7] ),
        .I2(s_axis_tdata[23]),
        .O(\acc_R[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[7]_i_3 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[6] ),
        .I2(s_axis_tdata[22]),
        .O(\acc_R[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[7]_i_4 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[5] ),
        .I2(s_axis_tdata[21]),
        .O(\acc_R[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \acc_R[7]_i_5 
       (.I0(s_axis_tuser),
        .I1(\acc_R_reg_n_0_[4] ),
        .I2(s_axis_tdata[20]),
        .O(\acc_R[7]_i_5_n_0 ));
  FDRE \acc_R_reg[0] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[0]),
        .Q(\acc_R_reg_n_0_[0] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_R_reg[10] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[10]),
        .Q(\acc_R_reg_n_0_[10] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[11] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[11]),
        .Q(\acc_R_reg_n_0_[11] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[11]_i_1 
       (.CI(\acc_R_reg[7]_i_1_n_0 ),
        .CO({\acc_R_reg[11]_i_1_n_0 ,\acc_R_reg[11]_i_1_n_1 ,\acc_R_reg[11]_i_1_n_2 ,\acc_R_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_R0_in[11:8]),
        .S(p_0_in[11:8]));
  FDRE \acc_R_reg[12] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[12]),
        .Q(\acc_R_reg_n_0_[12] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[13] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[13]),
        .Q(\acc_R_reg_n_0_[13] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[14] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[14]),
        .Q(\acc_R_reg_n_0_[14] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[15] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[15]),
        .Q(\acc_R_reg_n_0_[15] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[15]_i_1 
       (.CI(\acc_R_reg[11]_i_1_n_0 ),
        .CO({\acc_R_reg[15]_i_1_n_0 ,\acc_R_reg[15]_i_1_n_1 ,\acc_R_reg[15]_i_1_n_2 ,\acc_R_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_R0_in[15:12]),
        .S(p_0_in[15:12]));
  FDRE \acc_R_reg[16] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[16]),
        .Q(\acc_R_reg_n_0_[16] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[17] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[17]),
        .Q(\acc_R_reg_n_0_[17] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[18] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[18]),
        .Q(\acc_R_reg_n_0_[18] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[19] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[19]),
        .Q(\acc_R_reg_n_0_[19] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[19]_i_1 
       (.CI(\acc_R_reg[15]_i_1_n_0 ),
        .CO({\acc_R_reg[19]_i_1_n_0 ,\acc_R_reg[19]_i_1_n_1 ,\acc_R_reg[19]_i_1_n_2 ,\acc_R_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_R0_in[19:16]),
        .S(p_0_in[19:16]));
  FDRE \acc_R_reg[1] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[1]),
        .Q(\acc_R_reg_n_0_[1] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_R_reg[20] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[20]),
        .Q(\acc_R_reg_n_0_[20] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[21] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[21]),
        .Q(\acc_R_reg_n_0_[21] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[22] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[22]),
        .Q(\acc_R_reg_n_0_[22] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[23] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[23]),
        .Q(\acc_R_reg_n_0_[23] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[23]_i_1 
       (.CI(\acc_R_reg[19]_i_1_n_0 ),
        .CO({\acc_R_reg[23]_i_1_n_0 ,\acc_R_reg[23]_i_1_n_1 ,\acc_R_reg[23]_i_1_n_2 ,\acc_R_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_R0_in[23:20]),
        .S(p_0_in[23:20]));
  FDRE \acc_R_reg[24] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[24]),
        .Q(\acc_R_reg_n_0_[24] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[25] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[25]),
        .Q(\acc_R_reg_n_0_[25] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[26] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[26]),
        .Q(\acc_R_reg_n_0_[26] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[27] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[27]),
        .Q(\acc_R_reg_n_0_[27] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[27]_i_1 
       (.CI(\acc_R_reg[23]_i_1_n_0 ),
        .CO({\acc_R_reg[27]_i_1_n_0 ,\acc_R_reg[27]_i_1_n_1 ,\acc_R_reg[27]_i_1_n_2 ,\acc_R_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_R0_in[27:24]),
        .S(p_0_in[27:24]));
  FDRE \acc_R_reg[28] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[28]),
        .Q(\acc_R_reg_n_0_[28] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[29] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[29]),
        .Q(\acc_R_reg_n_0_[29] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[2] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[2]),
        .Q(\acc_R_reg_n_0_[2] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_R_reg[30] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[30]),
        .Q(\acc_R_reg_n_0_[30] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[31] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[31]),
        .Q(\acc_R_reg_n_0_[31] ),
        .R(\acc_R[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[31]_i_2 
       (.CI(\acc_R_reg[27]_i_1_n_0 ),
        .CO({\NLW_acc_R_reg[31]_i_2_CO_UNCONNECTED [3],\acc_R_reg[31]_i_2_n_1 ,\acc_R_reg[31]_i_2_n_2 ,\acc_R_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_R0_in[31:28]),
        .S(p_0_in[31:28]));
  FDRE \acc_R_reg[3] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[3]),
        .Q(\acc_R_reg_n_0_[3] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\acc_R_reg[3]_i_1_n_0 ,\acc_R_reg[3]_i_1_n_1 ,\acc_R_reg[3]_i_1_n_2 ,\acc_R_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[19:16]),
        .O(acc_R0_in[3:0]),
        .S({\acc_R[3]_i_2_n_0 ,\acc_R[3]_i_3_n_0 ,\acc_R[3]_i_4_n_0 ,\acc_R[3]_i_5_n_0 }));
  FDRE \acc_R_reg[4] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[4]),
        .Q(\acc_R_reg_n_0_[4] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_R_reg[5] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[5]),
        .Q(\acc_R_reg_n_0_[5] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_R_reg[6] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[6]),
        .Q(\acc_R_reg_n_0_[6] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \acc_R_reg[7] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[7]),
        .Q(\acc_R_reg_n_0_[7] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_R_reg[7]_i_1 
       (.CI(\acc_R_reg[3]_i_1_n_0 ),
        .CO({\acc_R_reg[7]_i_1_n_0 ,\acc_R_reg[7]_i_1_n_1 ,\acc_R_reg[7]_i_1_n_2 ,\acc_R_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[23:20]),
        .O(acc_R0_in[7:4]),
        .S({\acc_R[7]_i_2_n_0 ,\acc_R[7]_i_3_n_0 ,\acc_R[7]_i_4_n_0 ,\acc_R[7]_i_5_n_0 }));
  FDRE \acc_R_reg[8] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[8]),
        .Q(\acc_R_reg_n_0_[8] ),
        .R(\acc_R[31]_i_1_n_0 ));
  FDRE \acc_R_reg[9] 
       (.C(aclk),
        .CE(p_0_in_0),
        .D(acc_R0_in[9]),
        .Q(\acc_R_reg_n_0_[9] ),
        .R(\acc_R[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[0]_i_1 
       (.I0(pending_gB[0]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[0]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[1]_i_1 
       (.I0(pending_gB[1]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[2]_i_1 
       (.I0(pending_gB[2]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[3]_i_1 
       (.I0(pending_gB[3]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[4]_i_1 
       (.I0(pending_gB[4]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[4]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[5]_i_1 
       (.I0(pending_gB[5]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[6]_i_1 
       (.I0(pending_gB[6]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[7]_i_1 
       (.I0(pending_gB[7]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[8]_i_1 
       (.I0(pending_gB[8]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[8]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gB[9]_i_1 
       (.I0(pending_gB[9]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gB[9]),
        .O(A[9]));
  FDRE \active_gB_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[0]),
        .Q(active_gB[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[1]),
        .Q(active_gB[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[2]),
        .Q(active_gB[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[3]),
        .Q(active_gB[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[4]),
        .Q(active_gB[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[5]),
        .Q(active_gB[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[6]),
        .Q(active_gB[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[7]),
        .Q(active_gB[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDSE \active_gB_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[8]),
        .Q(active_gB[8]),
        .S(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gB_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(A[9]),
        .Q(active_gB[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[0]_i_1 
       (.I0(pending_gR[0]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[0]),
        .O(\active_gR[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[1]_i_1 
       (.I0(pending_gR[1]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[1]),
        .O(\active_gR[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[2]_i_1 
       (.I0(pending_gR[2]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[2]),
        .O(\active_gR[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[3]_i_1 
       (.I0(pending_gR[3]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[3]),
        .O(\active_gR[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[4]_i_1 
       (.I0(pending_gR[4]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[4]),
        .O(\active_gR[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[5]_i_1 
       (.I0(pending_gR[5]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[5]),
        .O(\active_gR[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[6]_i_1 
       (.I0(pending_gR[6]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[6]),
        .O(\active_gR[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[7]_i_1 
       (.I0(pending_gR[7]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[7]),
        .O(\active_gR[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[8]_i_1 
       (.I0(pending_gR[8]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[8]),
        .O(\active_gR[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \active_gR[9]_i_1 
       (.I0(pending_gR[9]),
        .I1(s_axis_tuser),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(active_gR[9]),
        .O(\active_gR[9]_i_1_n_0 ));
  FDRE \active_gR_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[0]_i_1_n_0 ),
        .Q(active_gR[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[1]_i_1_n_0 ),
        .Q(active_gR[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[2]_i_1_n_0 ),
        .Q(active_gR[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[3]_i_1_n_0 ),
        .Q(active_gR[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[4]_i_1_n_0 ),
        .Q(active_gR[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[5]_i_1_n_0 ),
        .Q(active_gR[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[6]_i_1_n_0 ),
        .Q(active_gR[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[7]_i_1_n_0 ),
        .Q(active_gR[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDSE \active_gR_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[8]_i_1_n_0 ),
        .Q(active_gR[8]),
        .S(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \active_gR_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_gR[9]_i_1_n_0 ),
        .Q(active_gR[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    dchan_i_1
       (.I0(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I1(div_go),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dchan));
  FDRE dchan_reg
       (.C(aclk),
        .CE(dchan),
        .D(\FSM_onehot_dstate_reg_n_0_[2] ),
        .Q(dchan_reg_n_0),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dcnt[0]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dcnt_reg_n_0_[0] ),
        .O(\dcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \dcnt[1]_i_1 
       (.I0(\dcnt_reg_n_0_[0] ),
        .I1(\dcnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(dcnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \dcnt[2]_i_1 
       (.I0(\dcnt_reg_n_0_[1] ),
        .I1(\dcnt_reg_n_0_[0] ),
        .I2(\dcnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(dcnt[2]));
  LUT6 #(
    .INIT(64'hFFFEAAABAAAAAAAA)) 
    \dcnt[3]_i_1 
       (.I0(\dcnt[3]_i_2_n_0 ),
        .I1(\dcnt_reg_n_0_[2] ),
        .I2(\dcnt_reg_n_0_[0] ),
        .I3(\dcnt_reg_n_0_[1] ),
        .I4(\dcnt_reg_n_0_[3] ),
        .I5(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(dcnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dcnt[3]_i_2 
       (.I0(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I1(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dcnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \dcnt[4]_i_1 
       (.I0(\dcnt_reg_n_0_[3] ),
        .I1(\dcnt_reg_n_0_[1] ),
        .I2(\dcnt_reg_n_0_[0] ),
        .I3(\dcnt_reg_n_0_[2] ),
        .I4(\dcnt_reg_n_0_[4] ),
        .I5(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(dcnt[4]));
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \dcnt[5]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I1(dchan_reg_n_0),
        .I2(div_go),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(drem_2));
  LUT5 #(
    .INIT(32'hFEEFEEEE)) 
    \dcnt[5]_i_2 
       (.I0(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I1(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I2(\dcnt[5]_i_3_n_0 ),
        .I3(\dcnt_reg_n_0_[5] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(dcnt[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dcnt[5]_i_3 
       (.I0(\dcnt_reg_n_0_[3] ),
        .I1(\dcnt_reg_n_0_[1] ),
        .I2(\dcnt_reg_n_0_[0] ),
        .I3(\dcnt_reg_n_0_[2] ),
        .I4(\dcnt_reg_n_0_[4] ),
        .O(\dcnt[5]_i_3_n_0 ));
  FDRE \dcnt_reg[0] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dcnt[0]_i_1_n_0 ),
        .Q(\dcnt_reg_n_0_[0] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dcnt_reg[1] 
       (.C(aclk),
        .CE(drem_2),
        .D(dcnt[1]),
        .Q(\dcnt_reg_n_0_[1] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dcnt_reg[2] 
       (.C(aclk),
        .CE(drem_2),
        .D(dcnt[2]),
        .Q(\dcnt_reg_n_0_[2] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dcnt_reg[3] 
       (.C(aclk),
        .CE(drem_2),
        .D(dcnt[3]),
        .Q(\dcnt_reg_n_0_[3] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dcnt_reg[4] 
       (.C(aclk),
        .CE(drem_2),
        .D(dcnt[4]),
        .Q(\dcnt_reg_n_0_[4] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dcnt_reg[5] 
       (.C(aclk),
        .CE(drem_2),
        .D(dcnt[5]),
        .Q(\dcnt_reg_n_0_[5] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[0]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[0]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[0]),
        .O(\dden[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[10]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[10]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[10]),
        .O(\dden[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[11]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[11]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[11]),
        .O(\dden[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[12]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[12]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[12]),
        .O(\dden[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[13]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[13]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[13]),
        .O(\dden[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[14]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[14]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[14]),
        .O(\dden[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[15]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[15]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[15]),
        .O(\dden[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[16]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[16]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[16]),
        .O(\dden[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[17]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[17]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[17]),
        .O(\dden[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[18]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[18]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[18]),
        .O(\dden[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[19]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[19]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[19]),
        .O(\dden[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[1]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[1]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[1]),
        .O(\dden[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[20]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[20]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[20]),
        .O(\dden[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[21]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[21]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[21]),
        .O(\dden[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[22]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[22]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[22]),
        .O(\dden[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[23]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[23]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[23]),
        .O(\dden[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[24]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[24]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[24]),
        .O(\dden[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[25]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[25]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[25]),
        .O(\dden[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[26]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[26]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[26]),
        .O(\dden[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[27]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[27]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[27]),
        .O(\dden[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[28]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[28]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[28]),
        .O(\dden[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[29]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[29]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[29]),
        .O(\dden[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[2]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[2]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[2]),
        .O(\dden[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[30]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[30]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[30]),
        .O(\dden[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[31]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[31]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[31]),
        .O(\dden[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[3]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[3]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[3]),
        .O(\dden[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[4]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[4]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[4]),
        .O(\dden[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[5]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[5]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[5]),
        .O(\dden[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[6]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[6]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[6]),
        .O(\dden[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[7]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[7]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[7]),
        .O(\dden[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[8]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[8]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[8]),
        .O(\dden[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \dden[9]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(snap_B[9]),
        .I2(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(snap_R[9]),
        .O(\dden[9]_i_1_n_0 ));
  FDRE \dden_reg[0] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[0]_i_1_n_0 ),
        .Q(dden[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[10] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[10]_i_1_n_0 ),
        .Q(dden[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[11] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[11]_i_1_n_0 ),
        .Q(dden[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[12] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[12]_i_1_n_0 ),
        .Q(dden[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[13] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[13]_i_1_n_0 ),
        .Q(dden[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[14] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[14]_i_1_n_0 ),
        .Q(dden[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[15] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[15]_i_1_n_0 ),
        .Q(dden[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[16] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[16]_i_1_n_0 ),
        .Q(dden[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[17] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[17]_i_1_n_0 ),
        .Q(dden[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[18] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[18]_i_1_n_0 ),
        .Q(dden[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[19] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[19]_i_1_n_0 ),
        .Q(dden[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[1] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[1]_i_1_n_0 ),
        .Q(dden[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[20] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[20]_i_1_n_0 ),
        .Q(dden[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[21] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[21]_i_1_n_0 ),
        .Q(dden[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[22] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[22]_i_1_n_0 ),
        .Q(dden[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[23] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[23]_i_1_n_0 ),
        .Q(dden[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[24] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[24]_i_1_n_0 ),
        .Q(dden[24]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[25] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[25]_i_1_n_0 ),
        .Q(dden[25]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[26] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[26]_i_1_n_0 ),
        .Q(dden[26]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[27] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[27]_i_1_n_0 ),
        .Q(dden[27]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[28] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[28]_i_1_n_0 ),
        .Q(dden[28]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[29] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[29]_i_1_n_0 ),
        .Q(dden[29]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[2] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[2]_i_1_n_0 ),
        .Q(dden[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[30] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[30]_i_1_n_0 ),
        .Q(dden[30]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[31] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[31]_i_1_n_0 ),
        .Q(dden[31]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[3] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[3]_i_1_n_0 ),
        .Q(dden[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[4] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[4]_i_1_n_0 ),
        .Q(dden[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[5] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[5]_i_1_n_0 ),
        .Q(dden[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[6] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[6]_i_1_n_0 ),
        .Q(dden[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[7] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[7]_i_1_n_0 ),
        .Q(dden[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[8] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[8]_i_1_n_0 ),
        .Q(dden[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dden_reg[9] 
       (.C(aclk),
        .CE(dchan),
        .D(\dden[9]_i_1_n_0 ),
        .Q(dden[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE div_go_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sof),
        .Q(div_go),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[10]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[10]),
        .I2(in12[10]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[10]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[11]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[11]),
        .I2(in12[11]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[11]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[12]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[12]),
        .I2(in12[12]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[12]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[13]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[13]),
        .I2(in12[13]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[13]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[14]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[14]),
        .I2(in12[14]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[14]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[15]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[15]),
        .I2(in12[15]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[15]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[16]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[16]),
        .I2(in12[16]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[16]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[17]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[17]),
        .I2(in12[17]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[17]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[18]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[18]),
        .I2(in12[18]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[18]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[19]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[19]),
        .I2(in12[19]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[19]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[20]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[20]),
        .I2(in12[20]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[20]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[21]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[21]),
        .I2(in12[21]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[21]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[22]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[22]),
        .I2(in12[22]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[22]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[23]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[23]),
        .I2(in12[23]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[23]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[24]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[24]),
        .I2(in12[24]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[24]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[25]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[25]),
        .I2(in12[25]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[25]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[26]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[26]),
        .I2(in12[26]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[26]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[27]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[27]),
        .I2(in12[27]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[27]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[28]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[28]),
        .I2(in12[28]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[28]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[29]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[29]),
        .I2(in12[29]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[29]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[30]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[30]),
        .I2(in12[30]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[30]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[31]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[31]),
        .I2(in12[31]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[31]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[32]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[32]),
        .I2(in12[32]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[32]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[33]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[33]),
        .I2(in12[33]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[33]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[34]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[34]),
        .I2(in12[34]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[34]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[35]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[35]),
        .I2(in12[35]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[35]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[36]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[36]),
        .I2(in12[36]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[36]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[37]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[37]),
        .I2(in12[37]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[37]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[38]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[38]),
        .I2(in12[38]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[38]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[39]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[39]),
        .I2(in12[39]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[39]));
  LUT3 #(
    .INIT(8'hE0)) 
    \dnum[8]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I1(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I2(in12[8]),
        .O(dnum[8]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \dnum[9]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(in13[9]),
        .I2(in12[9]),
        .I3(\FSM_onehot_dstate_reg_n_0_[0] ),
        .I4(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dnum[9]));
  FDRE \dnum_reg[10] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[10]),
        .Q(in13[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[11] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[11]),
        .Q(in13[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[12] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[12]),
        .Q(in13[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[13] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[13]),
        .Q(in13[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[14] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[14]),
        .Q(in13[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[15] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[15]),
        .Q(in13[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[16] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[16]),
        .Q(in13[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[17] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[17]),
        .Q(in13[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[18] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[18]),
        .Q(in13[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[19] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[19]),
        .Q(in13[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[20] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[20]),
        .Q(in13[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[21] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[21]),
        .Q(in13[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[22] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[22]),
        .Q(in13[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[23] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[23]),
        .Q(in13[24]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[24] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[24]),
        .Q(in13[25]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[25] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[25]),
        .Q(in13[26]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[26] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[26]),
        .Q(in13[27]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[27] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[27]),
        .Q(in13[28]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[28] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[28]),
        .Q(in13[29]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[29] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[29]),
        .Q(in13[30]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[30] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[30]),
        .Q(in13[31]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[31] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[31]),
        .Q(in13[32]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[32] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[32]),
        .Q(in13[33]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[33] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[33]),
        .Q(in13[34]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[34] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[34]),
        .Q(in13[35]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[35] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[35]),
        .Q(in13[36]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[36] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[36]),
        .Q(in13[37]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[37] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[37]),
        .Q(in13[38]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[38] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[38]),
        .Q(in13[39]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[39] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[39]),
        .Q(p_0_in0),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[8] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[8]),
        .Q(in13[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dnum_reg[9] 
       (.C(aclk),
        .CE(drem_2),
        .D(dnum[9]),
        .Q(in13[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[0]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(ge),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[10]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[9] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[11]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[10] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[12]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[11] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[13]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[12] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[14]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[13] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[15]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[14] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[16]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[15] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[17]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[16] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[18]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[17] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[19]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[18] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[1]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[0] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[20]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[19] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[21]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[20] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[22]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[21] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[23]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[22] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[24]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[23] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[25]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[24] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[26]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[25] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[27]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[26] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[28]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[27] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[29]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[28] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[2]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[1] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[30]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[29] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[31]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[30] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[32]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[31] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[33]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[32] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[34]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[33] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[35]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[34] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[36]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[35] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[37]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[36] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[38]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[37] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[39]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[38] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[3]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[2] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[4]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[3] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[5]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[4] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[6]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[5] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[7]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[6] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[8]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[7] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dquot[9]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\dquot_reg_n_0_[8] ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\dquot[9]_i_1_n_0 ));
  FDRE \dquot_reg[0] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[0]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[0] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[10] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[10]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[10] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[11] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[11]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[11] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[12] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[12]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[12] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[13] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[13]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[13] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[14] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[14]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[14] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[15] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[15]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[15] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[16] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[16]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[16] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[17] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[17]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[17] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[18] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[18]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[18] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[19] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[19]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[19] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[1] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[1]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[1] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[20] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[20]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[20] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[21] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[21]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[21] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[22] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[22]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[22] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[23] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[23]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[23] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[24] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[24]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[24] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[25] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[25]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[25] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[26] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[26]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[26] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[27] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[27]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[27] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[28] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[28]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[28] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[29] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[29]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[29] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[2] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[2]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[2] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[30] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[30]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[30] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[31] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[31]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[31] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[32] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[32]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[32] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[33] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[33]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[33] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[34] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[34]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[34] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[35] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[35]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[35] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[36] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[36]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[36] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[37] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[37]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[37] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[38] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[38]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[38] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[39] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[39]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[39] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[3] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[3]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[3] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[4] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[4]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[4] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[5] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[5]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[5] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[6] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[6]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[6] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[7] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[7]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[7] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[8] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[8]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[8] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \dquot_reg[9] 
       (.C(aclk),
        .CE(drem_2),
        .D(\dquot[9]_i_1_n_0 ),
        .Q(\dquot_reg_n_0_[9] ),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[0]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[2]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[10]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[10]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[10]_i_3 
       (.I0(drem[9]),
        .I1(dden[10]),
        .I2(ge),
        .O(\drem[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[10]_i_4 
       (.I0(drem[8]),
        .I1(dden[9]),
        .I2(ge),
        .O(\drem[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[10]_i_5 
       (.I0(drem[7]),
        .I1(dden[8]),
        .I2(ge),
        .O(\drem[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[10]_i_6 
       (.I0(drem[6]),
        .I1(dden[7]),
        .I2(ge),
        .O(\drem[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[11]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[14]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[12]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[14]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[13]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[14]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[14]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[14]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[14]_i_3 
       (.I0(drem[13]),
        .I1(dden[14]),
        .I2(ge),
        .O(\drem[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[14]_i_4 
       (.I0(drem[12]),
        .I1(dden[13]),
        .I2(ge),
        .O(\drem[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[14]_i_5 
       (.I0(drem[11]),
        .I1(dden[12]),
        .I2(ge),
        .O(\drem[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[14]_i_6 
       (.I0(drem[10]),
        .I1(dden[11]),
        .I2(ge),
        .O(\drem[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[15]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[18]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[16]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[18]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[17]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[18]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[18]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[18]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[18]_i_3 
       (.I0(drem[17]),
        .I1(dden[18]),
        .I2(ge),
        .O(\drem[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[18]_i_4 
       (.I0(drem[16]),
        .I1(dden[17]),
        .I2(ge),
        .O(\drem[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[18]_i_5 
       (.I0(drem[15]),
        .I1(dden[16]),
        .I2(ge),
        .O(\drem[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[18]_i_6 
       (.I0(drem[14]),
        .I1(dden[15]),
        .I2(ge),
        .O(\drem[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[19]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[22]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[1]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[2]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[20]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[22]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[21]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[22]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[22]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[22]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[22]_i_3 
       (.I0(drem[21]),
        .I1(dden[22]),
        .I2(ge),
        .O(\drem[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[22]_i_4 
       (.I0(drem[20]),
        .I1(dden[21]),
        .I2(ge),
        .O(\drem[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[22]_i_5 
       (.I0(drem[19]),
        .I1(dden[20]),
        .I2(ge),
        .O(\drem[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[22]_i_6 
       (.I0(drem[18]),
        .I1(dden[19]),
        .I2(ge),
        .O(\drem[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[23]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[26]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[24]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[26]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[25]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[26]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[26]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[26]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[26]_i_3 
       (.I0(drem[25]),
        .I1(dden[26]),
        .I2(ge),
        .O(\drem[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[26]_i_4 
       (.I0(drem[24]),
        .I1(dden[25]),
        .I2(ge),
        .O(\drem[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[26]_i_5 
       (.I0(drem[23]),
        .I1(dden[24]),
        .I2(ge),
        .O(\drem[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[26]_i_6 
       (.I0(drem[22]),
        .I1(dden[23]),
        .I2(ge),
        .O(\drem[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[27]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[30]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[28]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[30]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[29]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[30]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[2]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[2]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[2]_i_3 
       (.I0(drem[1]),
        .I1(dden[2]),
        .I2(ge),
        .O(\drem[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[2]_i_4 
       (.I0(drem[0]),
        .I1(dden[1]),
        .I2(ge),
        .O(\drem[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[2]_i_5 
       (.I0(p_0_in0),
        .I1(dden[0]),
        .I2(ge),
        .O(\drem[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[30]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[30]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[30]_i_3 
       (.I0(drem[29]),
        .I1(dden[30]),
        .I2(ge),
        .O(\drem[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[30]_i_4 
       (.I0(drem[28]),
        .I1(dden[29]),
        .I2(ge),
        .O(\drem[30]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[30]_i_5 
       (.I0(drem[27]),
        .I1(dden[28]),
        .I2(ge),
        .O(\drem[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[30]_i_6 
       (.I0(drem[26]),
        .I1(dden[27]),
        .I2(ge),
        .O(\drem[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[31]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[34]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[32]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[34]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[33]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[34]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[34]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[34]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[34]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \drem[34]_i_3 
       (.I0(drem[32]),
        .O(\drem[34]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \drem[34]_i_4 
       (.I0(drem[32]),
        .I1(drem[33]),
        .O(\drem[34]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \drem[34]_i_5 
       (.I0(ge),
        .I1(drem[32]),
        .O(\drem[34]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \drem[34]_i_6 
       (.I0(ge),
        .I1(drem[31]),
        .O(\drem[34]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[34]_i_7 
       (.I0(drem[30]),
        .I1(dden[31]),
        .I2(ge),
        .O(\drem[34]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[35]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[38]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[36]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[38]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[37]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[38]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[38]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[38]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[38]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \drem[38]_i_3 
       (.I0(drem[36]),
        .I1(drem[37]),
        .O(\drem[38]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \drem[38]_i_4 
       (.I0(drem[35]),
        .I1(drem[36]),
        .O(\drem[38]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \drem[38]_i_5 
       (.I0(drem[34]),
        .I1(drem[35]),
        .O(\drem[38]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \drem[38]_i_6 
       (.I0(drem[33]),
        .I1(drem[34]),
        .O(\drem[38]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[39]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[39]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \drem[39]_i_3 
       (.I0(drem[38]),
        .I1(drem[37]),
        .O(\drem[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[3]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[6]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[4]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[6]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[5]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[6]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[6]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[6]_i_2_n_4 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[6]_i_3 
       (.I0(drem[5]),
        .I1(dden[6]),
        .I2(ge),
        .O(\drem[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[6]_i_4 
       (.I0(drem[4]),
        .I1(dden[5]),
        .I2(ge),
        .O(\drem[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[6]_i_5 
       (.I0(drem[3]),
        .I1(dden[4]),
        .I2(ge),
        .O(\drem[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \drem[6]_i_6 
       (.I0(drem[2]),
        .I1(dden[3]),
        .I2(ge),
        .O(\drem[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[7]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[10]_i_2_n_7 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[8]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[10]_i_2_n_6 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \drem[9]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[1] ),
        .I1(\drem_reg[10]_i_2_n_5 ),
        .I2(dchan_reg_n_0),
        .I3(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(\drem[9]_i_1_n_0 ));
  FDRE \drem_reg[0] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[0]_i_1_n_0 ),
        .Q(drem[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[10] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[10]_i_1_n_0 ),
        .Q(drem[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[10]_i_2 
       (.CI(\drem_reg[6]_i_2_n_0 ),
        .CO({\drem_reg[10]_i_2_n_0 ,\drem_reg[10]_i_2_n_1 ,\drem_reg[10]_i_2_n_2 ,\drem_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[9:6]),
        .O({\drem_reg[10]_i_2_n_4 ,\drem_reg[10]_i_2_n_5 ,\drem_reg[10]_i_2_n_6 ,\drem_reg[10]_i_2_n_7 }),
        .S({\drem[10]_i_3_n_0 ,\drem[10]_i_4_n_0 ,\drem[10]_i_5_n_0 ,\drem[10]_i_6_n_0 }));
  FDRE \drem_reg[11] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[11]_i_1_n_0 ),
        .Q(drem[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[12] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[12]_i_1_n_0 ),
        .Q(drem[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[13] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[13]_i_1_n_0 ),
        .Q(drem[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[14] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[14]_i_1_n_0 ),
        .Q(drem[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[14]_i_2 
       (.CI(\drem_reg[10]_i_2_n_0 ),
        .CO({\drem_reg[14]_i_2_n_0 ,\drem_reg[14]_i_2_n_1 ,\drem_reg[14]_i_2_n_2 ,\drem_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[13:10]),
        .O({\drem_reg[14]_i_2_n_4 ,\drem_reg[14]_i_2_n_5 ,\drem_reg[14]_i_2_n_6 ,\drem_reg[14]_i_2_n_7 }),
        .S({\drem[14]_i_3_n_0 ,\drem[14]_i_4_n_0 ,\drem[14]_i_5_n_0 ,\drem[14]_i_6_n_0 }));
  FDRE \drem_reg[15] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[15]_i_1_n_0 ),
        .Q(drem[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[16] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[16]_i_1_n_0 ),
        .Q(drem[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[17] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[17]_i_1_n_0 ),
        .Q(drem[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[18] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[18]_i_1_n_0 ),
        .Q(drem[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[18]_i_2 
       (.CI(\drem_reg[14]_i_2_n_0 ),
        .CO({\drem_reg[18]_i_2_n_0 ,\drem_reg[18]_i_2_n_1 ,\drem_reg[18]_i_2_n_2 ,\drem_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[17:14]),
        .O({\drem_reg[18]_i_2_n_4 ,\drem_reg[18]_i_2_n_5 ,\drem_reg[18]_i_2_n_6 ,\drem_reg[18]_i_2_n_7 }),
        .S({\drem[18]_i_3_n_0 ,\drem[18]_i_4_n_0 ,\drem[18]_i_5_n_0 ,\drem[18]_i_6_n_0 }));
  FDRE \drem_reg[19] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[19]_i_1_n_0 ),
        .Q(drem[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[1] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[1]_i_1_n_0 ),
        .Q(drem[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[20] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[20]_i_1_n_0 ),
        .Q(drem[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[21] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[21]_i_1_n_0 ),
        .Q(drem[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[22] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[22]_i_1_n_0 ),
        .Q(drem[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[22]_i_2 
       (.CI(\drem_reg[18]_i_2_n_0 ),
        .CO({\drem_reg[22]_i_2_n_0 ,\drem_reg[22]_i_2_n_1 ,\drem_reg[22]_i_2_n_2 ,\drem_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[21:18]),
        .O({\drem_reg[22]_i_2_n_4 ,\drem_reg[22]_i_2_n_5 ,\drem_reg[22]_i_2_n_6 ,\drem_reg[22]_i_2_n_7 }),
        .S({\drem[22]_i_3_n_0 ,\drem[22]_i_4_n_0 ,\drem[22]_i_5_n_0 ,\drem[22]_i_6_n_0 }));
  FDRE \drem_reg[23] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[23]_i_1_n_0 ),
        .Q(drem[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[24] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[24]_i_1_n_0 ),
        .Q(drem[24]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[25] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[25]_i_1_n_0 ),
        .Q(drem[25]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[26] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[26]_i_1_n_0 ),
        .Q(drem[26]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[26]_i_2 
       (.CI(\drem_reg[22]_i_2_n_0 ),
        .CO({\drem_reg[26]_i_2_n_0 ,\drem_reg[26]_i_2_n_1 ,\drem_reg[26]_i_2_n_2 ,\drem_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[25:22]),
        .O({\drem_reg[26]_i_2_n_4 ,\drem_reg[26]_i_2_n_5 ,\drem_reg[26]_i_2_n_6 ,\drem_reg[26]_i_2_n_7 }),
        .S({\drem[26]_i_3_n_0 ,\drem[26]_i_4_n_0 ,\drem[26]_i_5_n_0 ,\drem[26]_i_6_n_0 }));
  FDRE \drem_reg[27] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[27]_i_1_n_0 ),
        .Q(drem[27]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[28] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[28]_i_1_n_0 ),
        .Q(drem[28]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[29] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[29]_i_1_n_0 ),
        .Q(drem[29]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[2] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[2]_i_1_n_0 ),
        .Q(drem[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\drem_reg[2]_i_2_n_0 ,\drem_reg[2]_i_2_n_1 ,\drem_reg[2]_i_2_n_2 ,\drem_reg[2]_i_2_n_3 }),
        .CYINIT(ge),
        .DI({drem[1:0],p_0_in0,1'b0}),
        .O({\drem_reg[2]_i_2_n_4 ,\drem_reg[2]_i_2_n_5 ,\drem_reg[2]_i_2_n_6 ,\NLW_drem_reg[2]_i_2_O_UNCONNECTED [0]}),
        .S({\drem[2]_i_3_n_0 ,\drem[2]_i_4_n_0 ,\drem[2]_i_5_n_0 ,1'b1}));
  FDRE \drem_reg[30] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[30]_i_1_n_0 ),
        .Q(drem[30]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[30]_i_2 
       (.CI(\drem_reg[26]_i_2_n_0 ),
        .CO({\drem_reg[30]_i_2_n_0 ,\drem_reg[30]_i_2_n_1 ,\drem_reg[30]_i_2_n_2 ,\drem_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[29:26]),
        .O({\drem_reg[30]_i_2_n_4 ,\drem_reg[30]_i_2_n_5 ,\drem_reg[30]_i_2_n_6 ,\drem_reg[30]_i_2_n_7 }),
        .S({\drem[30]_i_3_n_0 ,\drem[30]_i_4_n_0 ,\drem[30]_i_5_n_0 ,\drem[30]_i_6_n_0 }));
  FDRE \drem_reg[31] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[31]_i_1_n_0 ),
        .Q(drem[31]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[32] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[32]_i_1_n_0 ),
        .Q(drem[32]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[33] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[33]_i_1_n_0 ),
        .Q(drem[33]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[34] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[34]_i_1_n_0 ),
        .Q(drem[34]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[34]_i_2 
       (.CI(\drem_reg[30]_i_2_n_0 ),
        .CO({\drem_reg[34]_i_2_n_0 ,\drem_reg[34]_i_2_n_1 ,\drem_reg[34]_i_2_n_2 ,\drem_reg[34]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({drem[32],\drem[34]_i_3_n_0 ,ge,drem[30]}),
        .O({\drem_reg[34]_i_2_n_4 ,\drem_reg[34]_i_2_n_5 ,\drem_reg[34]_i_2_n_6 ,\drem_reg[34]_i_2_n_7 }),
        .S({\drem[34]_i_4_n_0 ,\drem[34]_i_5_n_0 ,\drem[34]_i_6_n_0 ,\drem[34]_i_7_n_0 }));
  FDRE \drem_reg[35] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[35]_i_1_n_0 ),
        .Q(drem[35]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[36] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[36]_i_1_n_0 ),
        .Q(drem[36]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[37] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[37]_i_1_n_0 ),
        .Q(drem[37]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[38] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[38]_i_1_n_0 ),
        .Q(drem[38]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[38]_i_2 
       (.CI(\drem_reg[34]_i_2_n_0 ),
        .CO({\drem_reg[38]_i_2_n_0 ,\drem_reg[38]_i_2_n_1 ,\drem_reg[38]_i_2_n_2 ,\drem_reg[38]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[36:33]),
        .O({\drem_reg[38]_i_2_n_4 ,\drem_reg[38]_i_2_n_5 ,\drem_reg[38]_i_2_n_6 ,\drem_reg[38]_i_2_n_7 }),
        .S({\drem[38]_i_3_n_0 ,\drem[38]_i_4_n_0 ,\drem[38]_i_5_n_0 ,\drem[38]_i_6_n_0 }));
  FDRE \drem_reg[39] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[39]_i_1_n_0 ),
        .Q(drem[39]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[39]_i_2 
       (.CI(\drem_reg[38]_i_2_n_0 ),
        .CO(\NLW_drem_reg[39]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_drem_reg[39]_i_2_O_UNCONNECTED [3:1],\drem_reg[39]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\drem[39]_i_3_n_0 }));
  FDRE \drem_reg[3] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[3]_i_1_n_0 ),
        .Q(drem[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[4] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[4]_i_1_n_0 ),
        .Q(drem[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[5] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[5]_i_1_n_0 ),
        .Q(drem[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[6] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[6]_i_1_n_0 ),
        .Q(drem[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \drem_reg[6]_i_2 
       (.CI(\drem_reg[2]_i_2_n_0 ),
        .CO({\drem_reg[6]_i_2_n_0 ,\drem_reg[6]_i_2_n_1 ,\drem_reg[6]_i_2_n_2 ,\drem_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(drem[5:2]),
        .O({\drem_reg[6]_i_2_n_4 ,\drem_reg[6]_i_2_n_5 ,\drem_reg[6]_i_2_n_6 ,\drem_reg[6]_i_2_n_7 }),
        .S({\drem[6]_i_3_n_0 ,\drem[6]_i_4_n_0 ,\drem[6]_i_5_n_0 ,\drem[6]_i_6_n_0 }));
  FDRE \drem_reg[7] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[7]_i_1_n_0 ),
        .Q(drem[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[8] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[8]_i_1_n_0 ),
        .Q(drem[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \drem_reg[9] 
       (.C(aclk),
        .CE(drem_2),
        .D(\drem[9]_i_1_n_0 ),
        .Q(drem[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    dzero_i_1
       (.I0(dzero_i_2_n_0),
        .I1(dzero_i_3_n_0),
        .I2(dzero_i_4_n_0),
        .I3(dzero_i_5_n_0),
        .I4(\FSM_onehot_dstate_reg_n_0_[1] ),
        .O(dzero_4));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_10
       (.I0(snap_B[17]),
        .I1(snap_B[18]),
        .I2(snap_B[15]),
        .I3(snap_B[16]),
        .I4(snap_B[20]),
        .I5(snap_B[19]),
        .O(dzero_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_11
       (.I0(snap_B[11]),
        .I1(snap_B[12]),
        .I2(snap_B[9]),
        .I3(snap_B[10]),
        .I4(snap_B[14]),
        .I5(snap_B[13]),
        .O(dzero_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_12
       (.I0(snap_R[11]),
        .I1(snap_R[12]),
        .I2(snap_R[9]),
        .I3(snap_R[10]),
        .I4(snap_R[14]),
        .I5(snap_R[13]),
        .O(dzero_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_13
       (.I0(snap_R[17]),
        .I1(snap_R[18]),
        .I2(snap_R[15]),
        .I3(snap_R[16]),
        .I4(snap_R[20]),
        .I5(snap_R[19]),
        .O(dzero_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_14
       (.I0(snap_R[5]),
        .I1(snap_R[6]),
        .I2(snap_R[3]),
        .I3(snap_R[4]),
        .I4(snap_R[8]),
        .I5(snap_R[7]),
        .O(dzero_i_14_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    dzero_i_2
       (.I0(dzero_i_6_n_0),
        .I1(dzero_i_7_n_0),
        .I2(dzero_i_8_n_0),
        .I3(dzero_i_9_n_0),
        .I4(dzero_i_10_n_0),
        .I5(dzero_i_11_n_0),
        .O(dzero_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_3
       (.I0(snap_R[23]),
        .I1(snap_R[24]),
        .I2(snap_R[21]),
        .I3(snap_R[22]),
        .I4(snap_R[26]),
        .I5(snap_R[25]),
        .O(dzero_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    dzero_i_4
       (.I0(snap_R[29]),
        .I1(snap_R[30]),
        .I2(snap_R[27]),
        .I3(snap_R[28]),
        .I4(snap_R[31]),
        .I5(\FSM_onehot_dstate_reg_n_0_[0] ),
        .O(dzero_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    dzero_i_5
       (.I0(dzero_i_12_n_0),
        .I1(dzero_i_13_n_0),
        .I2(dzero_i_14_n_0),
        .I3(snap_R[2]),
        .I4(snap_R[1]),
        .I5(snap_R[0]),
        .O(dzero_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_6
       (.I0(snap_B[23]),
        .I1(snap_B[24]),
        .I2(snap_B[21]),
        .I3(snap_B[22]),
        .I4(snap_B[26]),
        .I5(snap_B[25]),
        .O(dzero_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    dzero_i_7
       (.I0(snap_B[29]),
        .I1(snap_B[30]),
        .I2(snap_B[27]),
        .I3(snap_B[28]),
        .I4(snap_B[31]),
        .I5(\FSM_onehot_dstate_reg_n_0_[2] ),
        .O(dzero_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    dzero_i_8
       (.I0(snap_B[2]),
        .I1(snap_B[1]),
        .I2(snap_B[0]),
        .O(dzero_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dzero_i_9
       (.I0(snap_B[5]),
        .I1(snap_B[6]),
        .I2(snap_B[3]),
        .I3(snap_B[4]),
        .I4(snap_B[8]),
        .I5(snap_B[7]),
        .O(dzero_i_9_n_0));
  FDRE dzero_reg
       (.C(aclk),
        .CE(dchan),
        .D(dzero_4),
        .Q(dzero),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ge_carry
       (.CI(1'b0),
        .CO({ge_carry_n_0,ge_carry_n_1,ge_carry_n_2,ge_carry_n_3}),
        .CYINIT(1'b1),
        .DI({ge_carry_i_1_n_0,ge_carry_i_2_n_0,ge_carry_i_3_n_0,ge_carry_i_4_n_0}),
        .O(NLW_ge_carry_O_UNCONNECTED[3:0]),
        .S({ge_carry_i_5_n_0,ge_carry_i_6_n_0,ge_carry_i_7_n_0,ge_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ge_carry__0
       (.CI(ge_carry_n_0),
        .CO({ge_carry__0_n_0,ge_carry__0_n_1,ge_carry__0_n_2,ge_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ge_carry__0_i_1_n_0,ge_carry__0_i_2_n_0,ge_carry__0_i_3_n_0,ge_carry__0_i_4_n_0}),
        .O(NLW_ge_carry__0_O_UNCONNECTED[3:0]),
        .S({ge_carry__0_i_5_n_0,ge_carry__0_i_6_n_0,ge_carry__0_i_7_n_0,ge_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__0_i_1
       (.I0(drem[14]),
        .I1(dden[15]),
        .I2(drem[13]),
        .I3(dden[14]),
        .O(ge_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__0_i_2
       (.I0(drem[12]),
        .I1(dden[13]),
        .I2(drem[11]),
        .I3(dden[12]),
        .O(ge_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__0_i_3
       (.I0(drem[10]),
        .I1(dden[11]),
        .I2(drem[9]),
        .I3(dden[10]),
        .O(ge_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__0_i_4
       (.I0(drem[8]),
        .I1(dden[9]),
        .I2(drem[7]),
        .I3(dden[8]),
        .O(ge_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__0_i_5
       (.I0(dden[15]),
        .I1(drem[14]),
        .I2(dden[14]),
        .I3(drem[13]),
        .O(ge_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__0_i_6
       (.I0(dden[13]),
        .I1(drem[12]),
        .I2(dden[12]),
        .I3(drem[11]),
        .O(ge_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__0_i_7
       (.I0(dden[11]),
        .I1(drem[10]),
        .I2(dden[10]),
        .I3(drem[9]),
        .O(ge_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__0_i_8
       (.I0(dden[9]),
        .I1(drem[8]),
        .I2(dden[8]),
        .I3(drem[7]),
        .O(ge_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ge_carry__1
       (.CI(ge_carry__0_n_0),
        .CO({ge_carry__1_n_0,ge_carry__1_n_1,ge_carry__1_n_2,ge_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ge_carry__1_i_1_n_0,ge_carry__1_i_2_n_0,ge_carry__1_i_3_n_0,ge_carry__1_i_4_n_0}),
        .O(NLW_ge_carry__1_O_UNCONNECTED[3:0]),
        .S({ge_carry__1_i_5_n_0,ge_carry__1_i_6_n_0,ge_carry__1_i_7_n_0,ge_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__1_i_1
       (.I0(drem[22]),
        .I1(dden[23]),
        .I2(drem[21]),
        .I3(dden[22]),
        .O(ge_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__1_i_2
       (.I0(drem[20]),
        .I1(dden[21]),
        .I2(drem[19]),
        .I3(dden[20]),
        .O(ge_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__1_i_3
       (.I0(drem[18]),
        .I1(dden[19]),
        .I2(drem[17]),
        .I3(dden[18]),
        .O(ge_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__1_i_4
       (.I0(drem[16]),
        .I1(dden[17]),
        .I2(drem[15]),
        .I3(dden[16]),
        .O(ge_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__1_i_5
       (.I0(dden[23]),
        .I1(drem[22]),
        .I2(dden[22]),
        .I3(drem[21]),
        .O(ge_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__1_i_6
       (.I0(dden[21]),
        .I1(drem[20]),
        .I2(dden[20]),
        .I3(drem[19]),
        .O(ge_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__1_i_7
       (.I0(dden[19]),
        .I1(drem[18]),
        .I2(dden[18]),
        .I3(drem[17]),
        .O(ge_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__1_i_8
       (.I0(dden[17]),
        .I1(drem[16]),
        .I2(dden[16]),
        .I3(drem[15]),
        .O(ge_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ge_carry__2
       (.CI(ge_carry__1_n_0),
        .CO({ge_carry__2_n_0,ge_carry__2_n_1,ge_carry__2_n_2,ge_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ge_carry__2_i_1_n_0,ge_carry__2_i_2_n_0,ge_carry__2_i_3_n_0,ge_carry__2_i_4_n_0}),
        .O(NLW_ge_carry__2_O_UNCONNECTED[3:0]),
        .S({ge_carry__2_i_5_n_0,ge_carry__2_i_6_n_0,ge_carry__2_i_7_n_0,ge_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__2_i_1
       (.I0(drem[30]),
        .I1(dden[31]),
        .I2(drem[29]),
        .I3(dden[30]),
        .O(ge_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__2_i_2
       (.I0(drem[28]),
        .I1(dden[29]),
        .I2(drem[27]),
        .I3(dden[28]),
        .O(ge_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__2_i_3
       (.I0(drem[26]),
        .I1(dden[27]),
        .I2(drem[25]),
        .I3(dden[26]),
        .O(ge_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry__2_i_4
       (.I0(drem[24]),
        .I1(dden[25]),
        .I2(drem[23]),
        .I3(dden[24]),
        .O(ge_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__2_i_5
       (.I0(dden[31]),
        .I1(drem[30]),
        .I2(dden[30]),
        .I3(drem[29]),
        .O(ge_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__2_i_6
       (.I0(dden[29]),
        .I1(drem[28]),
        .I2(dden[28]),
        .I3(drem[27]),
        .O(ge_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__2_i_7
       (.I0(dden[27]),
        .I1(drem[26]),
        .I2(dden[26]),
        .I3(drem[25]),
        .O(ge_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry__2_i_8
       (.I0(dden[25]),
        .I1(drem[24]),
        .I2(dden[24]),
        .I3(drem[23]),
        .O(ge_carry__2_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ge_carry__3
       (.CI(ge_carry__2_n_0),
        .CO({ge_carry__3_n_0,ge_carry__3_n_1,ge_carry__3_n_2,ge_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({ge_carry__3_i_1_n_0,ge_carry__3_i_2_n_0,ge_carry__3_i_3_n_0,ge_carry__3_i_4_n_0}),
        .O(NLW_ge_carry__3_O_UNCONNECTED[3:0]),
        .S({ge_carry__3_i_5_n_0,ge_carry__3_i_6_n_0,ge_carry__3_i_7_n_0,ge_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    ge_carry__3_i_1
       (.I0(drem[37]),
        .I1(drem[38]),
        .O(ge_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ge_carry__3_i_2
       (.I0(drem[35]),
        .I1(drem[36]),
        .O(ge_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ge_carry__3_i_3
       (.I0(drem[33]),
        .I1(drem[34]),
        .O(ge_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ge_carry__3_i_4
       (.I0(drem[31]),
        .I1(drem[32]),
        .O(ge_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ge_carry__3_i_5
       (.I0(drem[38]),
        .I1(drem[37]),
        .O(ge_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ge_carry__3_i_6
       (.I0(drem[35]),
        .I1(drem[36]),
        .O(ge_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ge_carry__3_i_7
       (.I0(drem[33]),
        .I1(drem[34]),
        .O(ge_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ge_carry__3_i_8
       (.I0(drem[31]),
        .I1(drem[32]),
        .O(ge_carry__3_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ge_carry__4
       (.CI(ge_carry__3_n_0),
        .CO({NLW_ge_carry__4_CO_UNCONNECTED[3:1],ge}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,drem[39]}),
        .O(NLW_ge_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,ge_carry__4_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ge_carry__4_i_1
       (.I0(drem[39]),
        .O(ge_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry_i_1
       (.I0(drem[6]),
        .I1(dden[7]),
        .I2(drem[5]),
        .I3(dden[6]),
        .O(ge_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry_i_2
       (.I0(drem[4]),
        .I1(dden[5]),
        .I2(drem[3]),
        .I3(dden[4]),
        .O(ge_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry_i_3
       (.I0(drem[2]),
        .I1(dden[3]),
        .I2(drem[1]),
        .I3(dden[2]),
        .O(ge_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ge_carry_i_4
       (.I0(drem[0]),
        .I1(dden[1]),
        .I2(p_0_in0),
        .I3(dden[0]),
        .O(ge_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry_i_5
       (.I0(dden[7]),
        .I1(drem[6]),
        .I2(dden[6]),
        .I3(drem[5]),
        .O(ge_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry_i_6
       (.I0(dden[5]),
        .I1(drem[4]),
        .I2(dden[4]),
        .I3(drem[3]),
        .O(ge_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry_i_7
       (.I0(dden[3]),
        .I1(drem[2]),
        .I2(dden[2]),
        .I3(drem[1]),
        .O(ge_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ge_carry_i_8
       (.I0(dden[1]),
        .I1(drem[0]),
        .I2(dden[0]),
        .I3(p_0_in0),
        .O(ge_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[0]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[8]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[16]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[8]),
        .O(\m_axis_tdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[17]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[9]),
        .O(\m_axis_tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[18]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[10]),
        .O(\m_axis_tdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[19]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[11]),
        .O(\m_axis_tdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[1]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[9]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[20]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[12]),
        .O(\m_axis_tdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[21]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[13]),
        .O(\m_axis_tdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[22]_i_1 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[14]),
        .O(\m_axis_tdata[22]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .O(\m_axis_tdata[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \m_axis_tdata[23]_i_2 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .I2(s_axis_tvalid),
        .O(\m_axis_tdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[23]_i_3 
       (.I0(mulR__0[22]),
        .I1(\m_axis_tdata[23]_i_4_n_0 ),
        .I2(mulR__0[23]),
        .I3(mulR__0[15]),
        .O(\m_axis_tdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[23]_i_4 
       (.I0(mulR__0[21]),
        .I1(mulR__0[19]),
        .I2(mulR__0[17]),
        .I3(mulR__0[16]),
        .I4(mulR__0[18]),
        .I5(mulR__0[20]),
        .O(\m_axis_tdata[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[2]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[10]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[3]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[11]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[4]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[12]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[5]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[13]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[6]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[14]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[7]_i_1 
       (.I0(mulB__0[22]),
        .I1(\m_axis_tdata[7]_i_2_n_0 ),
        .I2(mulB__0[23]),
        .I3(mulB__0[15]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[7]_i_2 
       (.I0(mulB__0[21]),
        .I1(mulB__0[19]),
        .I2(mulB__0[17]),
        .I3(mulB__0[16]),
        .I4(mulB__0[18]),
        .I5(mulB__0[20]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[16]_i_1_n_0 ),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[17]_i_1_n_0 ),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[18]_i_1_n_0 ),
        .Q(m_axis_tdata[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[19]_i_1_n_0 ),
        .Q(m_axis_tdata[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[20]_i_1_n_0 ),
        .Q(m_axis_tdata[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[21]_i_1_n_0 ),
        .Q(m_axis_tdata[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[22]_i_1_n_0 ),
        .Q(m_axis_tdata[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[23]_i_3_n_0 ),
        .Q(m_axis_tdata[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(p_0_in_0),
        .D(s_axis_tlast),
        .Q(m_axis_tlast),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    m_axis_tuser_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .I2(s_axis_tvalid),
        .O(p_0_in_0));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(p_0_in_0),
        .D(s_axis_tuser),
        .Q(m_axis_tuser),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    m_axis_tvalid_i_1
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mulB
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mulB_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mulB_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mulB_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mulB_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mulB_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mulB_OVERFLOW_UNCONNECTED),
        .P({NLW_mulB_P_UNCONNECTED[47:24],mulB__0,mulB_n_98,mulB_n_99,mulB_n_100,mulB_n_101,mulB_n_102,mulB_n_103,mulB_n_104,mulB_n_105}),
        .PATTERNBDETECT(NLW_mulB_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mulB_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mulB_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mulB_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mulR
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\active_gR[9]_i_1_n_0 ,\active_gR[8]_i_1_n_0 ,\active_gR[7]_i_1_n_0 ,\active_gR[6]_i_1_n_0 ,\active_gR[5]_i_1_n_0 ,\active_gR[4]_i_1_n_0 ,\active_gR[3]_i_1_n_0 ,\active_gR[2]_i_1_n_0 ,\active_gR[1]_i_1_n_0 ,\active_gR[0]_i_1_n_0 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mulR_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[23:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mulR_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mulR_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mulR_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mulR_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mulR_OVERFLOW_UNCONNECTED),
        .P({NLW_mulR_P_UNCONNECTED[47:24],mulR__0,mulR_n_98,mulR_n_99,mulR_n_100,mulR_n_101,mulR_n_102,mulR_n_103,mulR_n_104,mulR_n_105}),
        .PATTERNBDETECT(NLW_mulR_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mulR_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mulR_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mulR_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pending_gB[0]_i_1 
       (.I0(\dquot_reg_n_0_[0] ),
        .I1(\pending_gB[5]_i_2_n_0 ),
        .I2(dzero),
        .I3(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pending_gB[1]_i_1 
       (.I0(\dquot_reg_n_0_[1] ),
        .I1(\pending_gB[5]_i_2_n_0 ),
        .I2(dzero),
        .I3(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pending_gB[2]_i_1 
       (.I0(\dquot_reg_n_0_[2] ),
        .I1(\pending_gB[5]_i_2_n_0 ),
        .I2(dzero),
        .I3(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pending_gB[3]_i_1 
       (.I0(\dquot_reg_n_0_[3] ),
        .I1(\pending_gB[5]_i_2_n_0 ),
        .I2(dzero),
        .I3(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pending_gB[4]_i_1 
       (.I0(\dquot_reg_n_0_[4] ),
        .I1(\pending_gB[5]_i_2_n_0 ),
        .I2(dzero),
        .I3(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pending_gB[5]_i_1 
       (.I0(\dquot_reg_n_0_[5] ),
        .I1(\pending_gB[5]_i_2_n_0 ),
        .I2(dzero),
        .I3(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \pending_gB[5]_i_2 
       (.I0(\dquot_reg_n_0_[6] ),
        .I1(\dquot_reg_n_0_[9] ),
        .I2(\dquot_reg_n_0_[8] ),
        .I3(\dquot_reg_n_0_[7] ),
        .I4(dzero),
        .O(\pending_gB[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000AAAB)) 
    \pending_gB[6]_i_1 
       (.I0(\pending_gB[9]_i_3_n_0 ),
        .I1(\dquot_reg_n_0_[7] ),
        .I2(\dquot_reg_n_0_[8] ),
        .I3(\dquot_reg_n_0_[9] ),
        .I4(dzero),
        .I5(\dquot_reg_n_0_[6] ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \pending_gB[7]_i_1 
       (.I0(\dquot_reg_n_0_[7] ),
        .I1(dzero),
        .I2(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pending_gB[8]_i_1 
       (.I0(\pending_gB[9]_i_3_n_0 ),
        .I1(\dquot_reg_n_0_[8] ),
        .I2(dzero),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \pending_gB[9]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I1(dchan_reg_n_0),
        .O(pending_gB_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pending_gB[9]_i_10 
       (.I0(\dquot_reg_n_0_[37] ),
        .I1(\dquot_reg_n_0_[38] ),
        .I2(\dquot_reg_n_0_[35] ),
        .I3(\dquot_reg_n_0_[36] ),
        .I4(\dquot_reg_n_0_[10] ),
        .I5(\dquot_reg_n_0_[39] ),
        .O(\pending_gB[9]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \pending_gB[9]_i_2 
       (.I0(\dquot_reg_n_0_[9] ),
        .I1(dzero),
        .I2(\pending_gB[9]_i_3_n_0 ),
        .O(p_1_in[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    \pending_gB[9]_i_3 
       (.I0(\pending_gB[9]_i_4_n_0 ),
        .I1(\pending_gB[9]_i_5_n_0 ),
        .I2(\pending_gB[9]_i_6_n_0 ),
        .O(\pending_gB[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pending_gB[9]_i_4 
       (.I0(\dquot_reg_n_0_[21] ),
        .I1(\dquot_reg_n_0_[22] ),
        .I2(\dquot_reg_n_0_[19] ),
        .I3(\dquot_reg_n_0_[20] ),
        .I4(\pending_gB[9]_i_7_n_0 ),
        .O(\pending_gB[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pending_gB[9]_i_5 
       (.I0(\dquot_reg_n_0_[13] ),
        .I1(\dquot_reg_n_0_[14] ),
        .I2(\dquot_reg_n_0_[11] ),
        .I3(\dquot_reg_n_0_[12] ),
        .I4(\pending_gB[9]_i_8_n_0 ),
        .O(\pending_gB[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pending_gB[9]_i_6 
       (.I0(\pending_gB[9]_i_9_n_0 ),
        .I1(\dquot_reg_n_0_[28] ),
        .I2(\dquot_reg_n_0_[27] ),
        .I3(\dquot_reg_n_0_[30] ),
        .I4(\dquot_reg_n_0_[29] ),
        .I5(\pending_gB[9]_i_10_n_0 ),
        .O(\pending_gB[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pending_gB[9]_i_7 
       (.I0(\dquot_reg_n_0_[24] ),
        .I1(\dquot_reg_n_0_[23] ),
        .I2(\dquot_reg_n_0_[26] ),
        .I3(\dquot_reg_n_0_[25] ),
        .O(\pending_gB[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pending_gB[9]_i_8 
       (.I0(\dquot_reg_n_0_[16] ),
        .I1(\dquot_reg_n_0_[15] ),
        .I2(\dquot_reg_n_0_[18] ),
        .I3(\dquot_reg_n_0_[17] ),
        .O(\pending_gB[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pending_gB[9]_i_9 
       (.I0(\dquot_reg_n_0_[32] ),
        .I1(\dquot_reg_n_0_[31] ),
        .I2(\dquot_reg_n_0_[34] ),
        .I3(\dquot_reg_n_0_[33] ),
        .O(\pending_gB[9]_i_9_n_0 ));
  FDRE \pending_gB_reg[0] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[0]),
        .Q(pending_gB[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[1] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[1]),
        .Q(pending_gB[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[2] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[2]),
        .Q(pending_gB[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[3] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[3]),
        .Q(pending_gB[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[4] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[4]),
        .Q(pending_gB[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[5] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[5]),
        .Q(pending_gB[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[6] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[6]),
        .Q(pending_gB[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[7] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[7]),
        .Q(pending_gB[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDSE \pending_gB_reg[8] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[8]),
        .Q(pending_gB[8]),
        .S(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gB_reg[9] 
       (.C(aclk),
        .CE(pending_gB_1),
        .D(p_1_in[9]),
        .Q(pending_gB[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pending_gR[9]_i_1 
       (.I0(\FSM_onehot_dstate_reg_n_0_[2] ),
        .I1(dchan_reg_n_0),
        .O(pending_gR_3));
  FDRE \pending_gR_reg[0] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[0]),
        .Q(pending_gR[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[1] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[1]),
        .Q(pending_gR[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[2] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[2]),
        .Q(pending_gR[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[3] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[3]),
        .Q(pending_gR[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[4] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[4]),
        .Q(pending_gR[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[5] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[5]),
        .Q(pending_gR[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[6] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[6]),
        .Q(pending_gR[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[7] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[7]),
        .Q(pending_gR[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDSE \pending_gR_reg[8] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[8]),
        .Q(pending_gR[8]),
        .S(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \pending_gR_reg[9] 
       (.C(aclk),
        .CE(pending_gR_3),
        .D(p_1_in[9]),
        .Q(pending_gR[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .O(s_axis_tready));
  FDRE \snap_B_reg[0] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[0] ),
        .Q(snap_B[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[10] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[10] ),
        .Q(snap_B[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[11] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[11] ),
        .Q(snap_B[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[12] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[12] ),
        .Q(snap_B[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[13] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[13] ),
        .Q(snap_B[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[14] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[14] ),
        .Q(snap_B[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[15] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[15] ),
        .Q(snap_B[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[16] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[16] ),
        .Q(snap_B[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[17] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[17] ),
        .Q(snap_B[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[18] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[18] ),
        .Q(snap_B[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[19] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[19] ),
        .Q(snap_B[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[1] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[1] ),
        .Q(snap_B[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[20] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[20] ),
        .Q(snap_B[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[21] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[21] ),
        .Q(snap_B[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[22] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[22] ),
        .Q(snap_B[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[23] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[23] ),
        .Q(snap_B[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[24] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[24] ),
        .Q(snap_B[24]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[25] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[25] ),
        .Q(snap_B[25]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[26] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[26] ),
        .Q(snap_B[26]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[27] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[27] ),
        .Q(snap_B[27]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[28] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[28] ),
        .Q(snap_B[28]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[29] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[29] ),
        .Q(snap_B[29]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[2] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[2] ),
        .Q(snap_B[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[30] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[30] ),
        .Q(snap_B[30]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[31] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[31] ),
        .Q(snap_B[31]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[3] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[3] ),
        .Q(snap_B[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[4] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[4] ),
        .Q(snap_B[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[5] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[5] ),
        .Q(snap_B[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[6] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[6] ),
        .Q(snap_B[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[7] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[7] ),
        .Q(snap_B[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[8] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[8] ),
        .Q(snap_B[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_B_reg[9] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_B_reg_n_0_[9] ),
        .Q(snap_B[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[0] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[0] ),
        .Q(in12[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[10] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[10] ),
        .Q(in12[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[11] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[11] ),
        .Q(in12[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[12] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[12] ),
        .Q(in12[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[13] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[13] ),
        .Q(in12[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[14] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[14] ),
        .Q(in12[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[15] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[15] ),
        .Q(in12[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[16] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[16] ),
        .Q(in12[24]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[17] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[17] ),
        .Q(in12[25]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[18] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[18] ),
        .Q(in12[26]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[19] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[19] ),
        .Q(in12[27]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[1] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[1] ),
        .Q(in12[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[20] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[20] ),
        .Q(in12[28]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[21] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[21] ),
        .Q(in12[29]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[22] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[22] ),
        .Q(in12[30]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[23] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[23] ),
        .Q(in12[31]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[24] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[24] ),
        .Q(in12[32]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[25] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[25] ),
        .Q(in12[33]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[26] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[26] ),
        .Q(in12[34]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[27] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[27] ),
        .Q(in12[35]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[28] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[28] ),
        .Q(in12[36]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[29] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[29] ),
        .Q(in12[37]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[2] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[2] ),
        .Q(in12[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[30] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[30] ),
        .Q(in12[38]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[31] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[31] ),
        .Q(in12[39]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[3] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[3] ),
        .Q(in12[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[4] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[4] ),
        .Q(in12[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[5] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[5] ),
        .Q(in12[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[6] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[6] ),
        .Q(in12[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[7] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[7] ),
        .Q(in12[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[8] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[8] ),
        .Q(in12[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_G_reg[9] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_G_reg_n_0_[9] ),
        .Q(in12[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB000)) 
    \snap_R[31]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .I2(s_axis_tuser),
        .I3(s_axis_tvalid),
        .O(sof));
  FDRE \snap_R_reg[0] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[0] ),
        .Q(snap_R[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[10] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[10] ),
        .Q(snap_R[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[11] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[11] ),
        .Q(snap_R[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[12] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[12] ),
        .Q(snap_R[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[13] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[13] ),
        .Q(snap_R[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[14] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[14] ),
        .Q(snap_R[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[15] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[15] ),
        .Q(snap_R[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[16] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[16] ),
        .Q(snap_R[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[17] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[17] ),
        .Q(snap_R[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[18] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[18] ),
        .Q(snap_R[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[19] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[19] ),
        .Q(snap_R[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[1] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[1] ),
        .Q(snap_R[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[20] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[20] ),
        .Q(snap_R[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[21] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[21] ),
        .Q(snap_R[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[22] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[22] ),
        .Q(snap_R[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[23] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[23] ),
        .Q(snap_R[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[24] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[24] ),
        .Q(snap_R[24]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[25] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[25] ),
        .Q(snap_R[25]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[26] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[26] ),
        .Q(snap_R[26]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[27] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[27] ),
        .Q(snap_R[27]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[28] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[28] ),
        .Q(snap_R[28]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[29] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[29] ),
        .Q(snap_R[29]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[2] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[2] ),
        .Q(snap_R[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[30] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[30] ),
        .Q(snap_R[30]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[31] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[31] ),
        .Q(snap_R[31]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[3] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[3] ),
        .Q(snap_R[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[4] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[4] ),
        .Q(snap_R[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[5] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[5] ),
        .Q(snap_R[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[6] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[6] ),
        .Q(snap_R[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[7] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[7] ),
        .Q(snap_R[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[8] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[8] ),
        .Q(snap_R[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \snap_R_reg[9] 
       (.C(aclk),
        .CE(sof),
        .D(\acc_R_reg_n_0_[9] ),
        .Q(snap_R[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
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
