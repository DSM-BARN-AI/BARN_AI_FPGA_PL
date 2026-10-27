// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jul 25 13:36:58 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axis_vid_mux_0_0/image_block_axis_vid_mux_0_0_sim_netlist.v}
// Design      : image_block_axis_vid_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axis_vid_mux_0_0,axis_vid_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_vid_mux,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axis_vid_mux_0_0
   (aclk,
    aresetn,
    sel,
    s0_axis_tdata,
    s0_axis_tvalid,
    s0_axis_tready,
    s0_axis_tuser,
    s0_axis_tlast,
    s1_axis_tdata,
    s1_axis_tvalid,
    s1_axis_tready,
    s1_axis_tuser,
    s1_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tuser,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s0_axis:s1_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TUSER" *) input s0_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s1_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TVALID" *) input s1_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TREADY" *) output s1_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TUSER" *) input s1_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TLAST" *) input s1_axis_tlast;
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
  wire [23:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tready;
  wire s0_axis_tuser;
  wire s0_axis_tvalid;
  wire [23:0]s1_axis_tdata;
  wire s1_axis_tlast;
  wire s1_axis_tready;
  wire s1_axis_tuser;
  wire s1_axis_tvalid;
  wire sel;

  image_block_axis_vid_mux_0_0_axis_vid_mux inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .s0_axis_tdata(s0_axis_tdata),
        .s0_axis_tlast(s0_axis_tlast),
        .s0_axis_tready(s0_axis_tready),
        .s0_axis_tuser(s0_axis_tuser),
        .s0_axis_tvalid(s0_axis_tvalid),
        .s1_axis_tdata(s1_axis_tdata),
        .s1_axis_tlast(s1_axis_tlast),
        .s1_axis_tready(s1_axis_tready),
        .s1_axis_tuser(s1_axis_tuser),
        .s1_axis_tvalid(s1_axis_tvalid),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "axis_vid_mux" *) 
module image_block_axis_vid_mux_0_0_axis_vid_mux
   (m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tvalid_reg_0,
    s1_axis_tready,
    s0_axis_tready,
    aclk,
    m_axis_tready,
    aresetn,
    sel,
    s0_axis_tuser,
    s1_axis_tuser,
    s0_axis_tvalid,
    s1_axis_tvalid,
    s1_axis_tdata,
    s0_axis_tdata,
    s1_axis_tlast,
    s0_axis_tlast);
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  output m_axis_tvalid_reg_0;
  output s1_axis_tready;
  output s0_axis_tready;
  input aclk;
  input m_axis_tready;
  input aresetn;
  input sel;
  input s0_axis_tuser;
  input s1_axis_tuser;
  input s0_axis_tvalid;
  input s1_axis_tvalid;
  input [23:0]s1_axis_tdata;
  input [23:0]s0_axis_tdata;
  input s1_axis_tlast;
  input s0_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [23:0]in_tdata;
  wire in_tlast;
  wire in_tuser;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[23]_i_4_n_0 ;
  wire \m_axis_tdata[23]_i_5_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_reg_0;
  wire p_0_in;
  wire pass_i_1_n_0;
  wire pass_reg_n_0;
  wire [23:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tready;
  wire s0_axis_tready_INST_0_i_1_n_0;
  wire s0_axis_tuser;
  wire s0_axis_tvalid;
  wire [23:0]s1_axis_tdata;
  wire s1_axis_tlast;
  wire s1_axis_tready;
  wire s1_axis_tuser;
  wire s1_axis_tvalid;
  wire sel;
  wire sel_act;
  wire sel_act_i_1_n_0;
  wire take;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[0]_i_1 
       (.I0(s1_axis_tdata[0]),
        .I1(sel_act),
        .I2(s0_axis_tdata[0]),
        .O(in_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[10]_i_1 
       (.I0(s1_axis_tdata[10]),
        .I1(sel_act),
        .I2(s0_axis_tdata[10]),
        .O(in_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[11]_i_1 
       (.I0(s1_axis_tdata[11]),
        .I1(sel_act),
        .I2(s0_axis_tdata[11]),
        .O(in_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[12]_i_1 
       (.I0(s1_axis_tdata[12]),
        .I1(sel_act),
        .I2(s0_axis_tdata[12]),
        .O(in_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[13]_i_1 
       (.I0(s1_axis_tdata[13]),
        .I1(sel_act),
        .I2(s0_axis_tdata[13]),
        .O(in_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_i_1 
       (.I0(s1_axis_tdata[14]),
        .I1(sel_act),
        .I2(s0_axis_tdata[14]),
        .O(in_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_i_1 
       (.I0(s1_axis_tdata[15]),
        .I1(sel_act),
        .I2(s0_axis_tdata[15]),
        .O(in_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[16]_i_1 
       (.I0(s1_axis_tdata[16]),
        .I1(sel_act),
        .I2(s0_axis_tdata[16]),
        .O(in_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_i_1 
       (.I0(s1_axis_tdata[17]),
        .I1(sel_act),
        .I2(s0_axis_tdata[17]),
        .O(in_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_i_1 
       (.I0(s1_axis_tdata[18]),
        .I1(sel_act),
        .I2(s0_axis_tdata[18]),
        .O(in_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_i_1 
       (.I0(s1_axis_tdata[19]),
        .I1(sel_act),
        .I2(s0_axis_tdata[19]),
        .O(in_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_i_1 
       (.I0(s1_axis_tdata[1]),
        .I1(sel_act),
        .I2(s0_axis_tdata[1]),
        .O(in_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_i_1 
       (.I0(s1_axis_tdata[20]),
        .I1(sel_act),
        .I2(s0_axis_tdata[20]),
        .O(in_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_i_1 
       (.I0(s1_axis_tdata[21]),
        .I1(sel_act),
        .I2(s0_axis_tdata[21]),
        .O(in_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[22]_i_1 
       (.I0(s1_axis_tdata[22]),
        .I1(sel_act),
        .I2(s0_axis_tdata[22]),
        .O(in_tdata[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0D0DDD0000000000)) 
    \m_axis_tdata[23]_i_2 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\m_axis_tdata[23]_i_4_n_0 ),
        .I3(pass_reg_n_0),
        .I4(in_tuser),
        .I5(\m_axis_tdata[23]_i_5_n_0 ),
        .O(take));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_i_3 
       (.I0(s1_axis_tdata[23]),
        .I1(sel_act),
        .I2(s0_axis_tdata[23]),
        .O(in_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[23]_i_4 
       (.I0(sel_act),
        .I1(sel),
        .O(\m_axis_tdata[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_i_5 
       (.I0(s1_axis_tvalid),
        .I1(sel_act),
        .I2(s0_axis_tvalid),
        .O(\m_axis_tdata[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_i_1 
       (.I0(s1_axis_tdata[2]),
        .I1(sel_act),
        .I2(s0_axis_tdata[2]),
        .O(in_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_i_1 
       (.I0(s1_axis_tdata[3]),
        .I1(sel_act),
        .I2(s0_axis_tdata[3]),
        .O(in_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_i_1 
       (.I0(s1_axis_tdata[4]),
        .I1(sel_act),
        .I2(s0_axis_tdata[4]),
        .O(in_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_i_1 
       (.I0(s1_axis_tdata[5]),
        .I1(sel_act),
        .I2(s0_axis_tdata[5]),
        .O(in_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_i_1 
       (.I0(s1_axis_tdata[6]),
        .I1(sel_act),
        .I2(s0_axis_tdata[6]),
        .O(in_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_i_1 
       (.I0(s1_axis_tdata[7]),
        .I1(sel_act),
        .I2(s0_axis_tdata[7]),
        .O(in_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[8]_i_1 
       (.I0(s1_axis_tdata[8]),
        .I1(sel_act),
        .I2(s0_axis_tdata[8]),
        .O(in_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[9]_i_1 
       (.I0(s1_axis_tdata[9]),
        .I1(sel_act),
        .I2(s0_axis_tdata[9]),
        .O(in_tdata[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(take),
        .D(in_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tlast_i_1
       (.I0(s1_axis_tlast),
        .I1(sel_act),
        .I2(s0_axis_tlast),
        .O(in_tlast));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(take),
        .D(in_tlast),
        .Q(m_axis_tlast),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tuser_i_1
       (.I0(s1_axis_tuser),
        .I1(sel_act),
        .I2(s0_axis_tuser),
        .O(in_tuser));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(take),
        .D(in_tuser),
        .Q(m_axis_tuser),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBA00)) 
    m_axis_tvalid_i_1
       (.I0(take),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .I3(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FF000B00000000)) 
    pass_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .I2(s0_axis_tready_INST_0_i_1_n_0),
        .I3(\m_axis_tdata[23]_i_4_n_0 ),
        .I4(pass_reg_n_0),
        .I5(aresetn),
        .O(pass_i_1_n_0));
  FDRE pass_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pass_i_1_n_0),
        .Q(pass_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000D0DF00DD)) 
    s0_axis_tready_INST_0
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(pass_reg_n_0),
        .I3(sel),
        .I4(s0_axis_tready_INST_0_i_1_n_0),
        .I5(sel_act),
        .O(s0_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    s0_axis_tready_INST_0_i_1
       (.I0(s0_axis_tuser),
        .I1(s1_axis_tuser),
        .I2(s0_axis_tvalid),
        .I3(sel_act),
        .I4(s1_axis_tvalid),
        .O(s0_axis_tready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hDF00D000DD000000)) 
    s1_axis_tready_INST_0
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(pass_reg_n_0),
        .I3(sel_act),
        .I4(sel),
        .I5(s0_axis_tready_INST_0_i_1_n_0),
        .O(s1_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7800000)) 
    sel_act_i_1
       (.I0(s0_axis_tready_INST_0_i_1_n_0),
        .I1(pass_reg_n_0),
        .I2(sel_act),
        .I3(sel),
        .I4(aresetn),
        .O(sel_act_i_1_n_0));
  FDRE sel_act_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_act_i_1_n_0),
        .Q(sel_act),
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
