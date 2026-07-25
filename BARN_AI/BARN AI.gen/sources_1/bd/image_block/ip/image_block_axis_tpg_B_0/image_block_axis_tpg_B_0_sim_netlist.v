// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jul 25 13:37:03 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axis_tpg_B_0/image_block_axis_tpg_B_0_sim_netlist.v}
// Design      : image_block_axis_tpg_B_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axis_tpg_B_0,axis_tpg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_tpg,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axis_tpg_B_0
   (aclk,
    aresetn,
    enable,
    pattern_sel,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tuser,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input enable;
  input [1:0]pattern_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [23:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire enable;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [1:0]pattern_sel;

  image_block_axis_tpg_B_0_axis_tpg inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .enable(enable),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .pattern_sel(pattern_sel));
endmodule

(* ORIG_REF_NAME = "axis_tpg" *) 
module image_block_axis_tpg_B_0_axis_tpg
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tready,
    aresetn,
    aclk,
    pattern_sel,
    enable);
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input m_axis_tready;
  input aresetn;
  input aclk;
  input [1:0]pattern_sel;
  input enable;

  wire aclk;
  wire aresetn;
  wire [2:0]bar_index;
  wire \bar_index[0]_i_1_n_0 ;
  wire \bar_index[1]_i_1_n_0 ;
  wire \bar_index[2]_i_1_n_0 ;
  wire [11:0]bar_pos;
  wire \bar_pos[11]_i_1_n_0 ;
  wire \bar_pos[11]_i_5_n_0 ;
  wire \bar_pos[11]_i_6_n_0 ;
  wire \bar_pos[11]_i_7_n_0 ;
  wire [11:0]bar_pos_nxt;
  wire \bar_pos_reg[11]_i_4_n_2 ;
  wire \bar_pos_reg[11]_i_4_n_3 ;
  wire \bar_pos_reg[4]_i_2_n_0 ;
  wire \bar_pos_reg[4]_i_2_n_1 ;
  wire \bar_pos_reg[4]_i_2_n_2 ;
  wire \bar_pos_reg[4]_i_2_n_3 ;
  wire \bar_pos_reg[8]_i_2_n_0 ;
  wire \bar_pos_reg[8]_i_2_n_1 ;
  wire \bar_pos_reg[8]_i_2_n_2 ;
  wire \bar_pos_reg[8]_i_2_n_3 ;
  wire [11:1]data0;
  wire enable;
  wire enable_reg;
  wire enable_reg_i_1_n_0;
  wire line_end;
  wire load;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[6]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tuser0;
  wire m_axis_tuser_i_2_n_0;
  wire m_axis_tuser_i_3_n_0;
  wire m_axis_tuser_i_4_n_0;
  wire m_axis_tuser_i_5_n_0;
  wire m_axis_tuser_i_6_n_0;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [23:0]p_1_in;
  wire [1:0]pattern_reg;
  wire \pattern_reg[0]_i_1_n_0 ;
  wire \pattern_reg[1]_i_1_n_0 ;
  wire \pattern_reg[1]_i_2_n_0 ;
  wire \pattern_reg[1]_i_3_n_0 ;
  wire \pattern_reg[1]_i_4_n_0 ;
  wire [1:0]pattern_sel;
  wire step;
  wire \x[0]_i_2_n_0 ;
  wire [0:0]x_nxt;
  wire [11:0]x_reg;
  wire \x_reg[0]_i_1_n_0 ;
  wire \x_reg[0]_i_1_n_1 ;
  wire \x_reg[0]_i_1_n_2 ;
  wire \x_reg[0]_i_1_n_3 ;
  wire \x_reg[0]_i_1_n_4 ;
  wire \x_reg[0]_i_1_n_5 ;
  wire \x_reg[0]_i_1_n_6 ;
  wire \x_reg[0]_i_1_n_7 ;
  wire \x_reg[4]_i_1_n_0 ;
  wire \x_reg[4]_i_1_n_1 ;
  wire \x_reg[4]_i_1_n_2 ;
  wire \x_reg[4]_i_1_n_3 ;
  wire \x_reg[4]_i_1_n_4 ;
  wire \x_reg[4]_i_1_n_5 ;
  wire \x_reg[4]_i_1_n_6 ;
  wire \x_reg[4]_i_1_n_7 ;
  wire \x_reg[8]_i_1_n_1 ;
  wire \x_reg[8]_i_1_n_2 ;
  wire \x_reg[8]_i_1_n_3 ;
  wire \x_reg[8]_i_1_n_4 ;
  wire \x_reg[8]_i_1_n_5 ;
  wire \x_reg[8]_i_1_n_6 ;
  wire \x_reg[8]_i_1_n_7 ;
  wire \y[0]_i_1_n_0 ;
  wire \y[0]_i_4_n_0 ;
  wire [11:0]y_reg;
  wire \y_reg[0]_i_3_n_0 ;
  wire \y_reg[0]_i_3_n_1 ;
  wire \y_reg[0]_i_3_n_2 ;
  wire \y_reg[0]_i_3_n_3 ;
  wire \y_reg[0]_i_3_n_4 ;
  wire \y_reg[0]_i_3_n_5 ;
  wire \y_reg[0]_i_3_n_6 ;
  wire \y_reg[0]_i_3_n_7 ;
  wire \y_reg[4]_i_1_n_0 ;
  wire \y_reg[4]_i_1_n_1 ;
  wire \y_reg[4]_i_1_n_2 ;
  wire \y_reg[4]_i_1_n_3 ;
  wire \y_reg[4]_i_1_n_4 ;
  wire \y_reg[4]_i_1_n_5 ;
  wire \y_reg[4]_i_1_n_6 ;
  wire \y_reg[4]_i_1_n_7 ;
  wire \y_reg[8]_i_1_n_1 ;
  wire \y_reg[8]_i_1_n_2 ;
  wire \y_reg[8]_i_1_n_3 ;
  wire \y_reg[8]_i_1_n_4 ;
  wire \y_reg[8]_i_1_n_5 ;
  wire \y_reg[8]_i_1_n_6 ;
  wire \y_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_bar_pos_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_bar_pos_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000059AAAAAA)) 
    \bar_index[0]_i_1 
       (.I0(bar_index[0]),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(enable_reg),
        .I4(\bar_pos[11]_i_5_n_0 ),
        .I5(\bar_pos[11]_i_1_n_0 ),
        .O(\bar_index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \bar_index[1]_i_1 
       (.I0(bar_index[1]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .I2(step),
        .I3(bar_index[0]),
        .I4(\bar_pos[11]_i_1_n_0 ),
        .O(\bar_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \bar_index[2]_i_1 
       (.I0(bar_index[2]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .I2(step),
        .I3(bar_index[1]),
        .I4(bar_index[0]),
        .I5(\bar_pos[11]_i_1_n_0 ),
        .O(\bar_index[2]_i_1_n_0 ));
  FDRE \bar_index_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bar_index[0]_i_1_n_0 ),
        .Q(bar_index[0]),
        .R(1'b0));
  FDRE \bar_index_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bar_index[1]_i_1_n_0 ),
        .Q(bar_index[1]),
        .R(1'b0));
  FDRE \bar_index_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bar_index[2]_i_1_n_0 ),
        .Q(bar_index[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bar_pos[0]_i_1 
       (.I0(bar_pos[0]),
        .O(bar_pos_nxt[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[10]_i_1 
       (.I0(data0[10]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[10]));
  LUT6 #(
    .INIT(64'h10001010FFFFFFFF)) 
    \bar_pos[11]_i_1 
       (.I0(m_axis_tuser_i_6_n_0),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(enable_reg),
        .I3(m_axis_tready),
        .I4(m_axis_tvalid),
        .I5(aresetn),
        .O(\bar_pos[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \bar_pos[11]_i_2 
       (.I0(enable_reg),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .O(step));
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[11]_i_3 
       (.I0(data0[11]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[11]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bar_pos[11]_i_5 
       (.I0(bar_pos[11]),
        .I1(bar_pos[3]),
        .I2(bar_pos[4]),
        .I3(bar_pos[6]),
        .I4(\bar_pos[11]_i_6_n_0 ),
        .I5(\bar_pos[11]_i_7_n_0 ),
        .O(\bar_pos[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \bar_pos[11]_i_6 
       (.I0(bar_pos[2]),
        .I1(bar_pos[9]),
        .I2(bar_pos[1]),
        .I3(bar_pos[8]),
        .O(\bar_pos[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \bar_pos[11]_i_7 
       (.I0(bar_pos[0]),
        .I1(bar_pos[7]),
        .I2(bar_pos[10]),
        .I3(bar_pos[5]),
        .O(\bar_pos[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[1]_i_1 
       (.I0(data0[1]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[2]_i_1 
       (.I0(data0[2]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[3]_i_1 
       (.I0(data0[3]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[4]_i_1 
       (.I0(data0[4]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[5]_i_1 
       (.I0(data0[5]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[6]_i_1 
       (.I0(data0[6]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[7]_i_1 
       (.I0(data0[7]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[8]_i_1 
       (.I0(data0[8]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bar_pos[9]_i_1 
       (.I0(data0[9]),
        .I1(\bar_pos[11]_i_5_n_0 ),
        .O(bar_pos_nxt[9]));
  FDRE \bar_pos_reg[0] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[0]),
        .Q(bar_pos[0]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[10] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[10]),
        .Q(bar_pos[10]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[11] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[11]),
        .Q(bar_pos[11]),
        .R(\bar_pos[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bar_pos_reg[11]_i_4 
       (.CI(\bar_pos_reg[8]_i_2_n_0 ),
        .CO({\NLW_bar_pos_reg[11]_i_4_CO_UNCONNECTED [3:2],\bar_pos_reg[11]_i_4_n_2 ,\bar_pos_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bar_pos_reg[11]_i_4_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,bar_pos[11:9]}));
  FDRE \bar_pos_reg[1] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[1]),
        .Q(bar_pos[1]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[2] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[2]),
        .Q(bar_pos[2]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[3] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[3]),
        .Q(bar_pos[3]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[4] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[4]),
        .Q(bar_pos[4]),
        .R(\bar_pos[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bar_pos_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bar_pos_reg[4]_i_2_n_0 ,\bar_pos_reg[4]_i_2_n_1 ,\bar_pos_reg[4]_i_2_n_2 ,\bar_pos_reg[4]_i_2_n_3 }),
        .CYINIT(bar_pos[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(bar_pos[4:1]));
  FDRE \bar_pos_reg[5] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[5]),
        .Q(bar_pos[5]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[6] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[6]),
        .Q(bar_pos[6]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[7] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[7]),
        .Q(bar_pos[7]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \bar_pos_reg[8] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[8]),
        .Q(bar_pos[8]),
        .R(\bar_pos[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bar_pos_reg[8]_i_2 
       (.CI(\bar_pos_reg[4]_i_2_n_0 ),
        .CO({\bar_pos_reg[8]_i_2_n_0 ,\bar_pos_reg[8]_i_2_n_1 ,\bar_pos_reg[8]_i_2_n_2 ,\bar_pos_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(bar_pos[8:5]));
  FDRE \bar_pos_reg[9] 
       (.C(aclk),
        .CE(step),
        .D(bar_pos_nxt[9]),
        .Q(bar_pos[9]),
        .R(\bar_pos[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF200)) 
    enable_reg_i_1
       (.I0(enable_reg),
        .I1(\pattern_reg[1]_i_2_n_0 ),
        .I2(enable),
        .I3(aresetn),
        .O(enable_reg_i_1_n_0));
  FDRE enable_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(enable_reg_i_1_n_0),
        .Q(enable_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[0]_i_1 
       (.I0(x_reg[0]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[10]_i_1 
       (.I0(x_reg[2]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[11]_i_1 
       (.I0(x_reg[3]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[12]_i_1 
       (.I0(x_reg[4]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[13]_i_1 
       (.I0(x_reg[5]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[14]_i_1 
       (.I0(x_reg[6]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF0A3)) 
    \m_axis_tdata[15]_i_1 
       (.I0(x_reg[7]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[16]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[17]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[1]),
        .I3(pattern_reg[1]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[18]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[2]),
        .I3(pattern_reg[1]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[19]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[3]),
        .I3(pattern_reg[1]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[1]_i_1 
       (.I0(x_reg[1]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[20]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[4]),
        .I3(pattern_reg[1]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[21]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[5]),
        .I3(pattern_reg[1]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \m_axis_tdata[22]_i_1 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[6]),
        .I3(pattern_reg[1]),
        .O(p_1_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tdata[23]_i_2 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(load));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hCCD1)) 
    \m_axis_tdata[23]_i_3 
       (.I0(bar_index[1]),
        .I1(pattern_reg[0]),
        .I2(x_reg[7]),
        .I3(pattern_reg[1]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[2]_i_1 
       (.I0(x_reg[2]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[3]_i_1 
       (.I0(x_reg[3]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[4]_i_1 
       (.I0(x_reg[4]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[5]_i_1 
       (.I0(x_reg[5]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[6]_i_1 
       (.I0(x_reg[6]),
        .I1(pattern_reg[1]),
        .I2(pattern_reg[0]),
        .I3(\m_axis_tdata[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h013D0000C1FDFFFF)) 
    \m_axis_tdata[6]_i_2 
       (.I0(bar_index[1]),
        .I1(x_reg[0]),
        .I2(y_reg[0]),
        .I3(bar_index[2]),
        .I4(pattern_reg[1]),
        .I5(bar_index[0]),
        .O(\m_axis_tdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF8BCC8B)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(pattern_reg[1]),
        .I2(bar_index[0]),
        .I3(pattern_reg[0]),
        .I4(x_reg[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h50035FF3)) 
    \m_axis_tdata[7]_i_2 
       (.I0(bar_index[0]),
        .I1(bar_index[1]),
        .I2(x_reg[0]),
        .I3(y_reg[0]),
        .I4(bar_index[2]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[8]_i_1 
       (.I0(x_reg[0]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00A3)) 
    \m_axis_tdata[9]_i_1 
       (.I0(x_reg[1]),
        .I1(bar_index[2]),
        .I2(pattern_reg[0]),
        .I3(pattern_reg[1]),
        .O(p_1_in[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[10]),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[11]),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[12]),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[13]),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[14]),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[15]),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[16]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[17]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[18]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[19]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[20]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[21]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[22]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[23]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[8]),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(load),
        .D(p_1_in[9]),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h1)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tuser_i_6_n_0),
        .I1(m_axis_tlast_i_2_n_0),
        .O(line_end));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    m_axis_tlast_i_2
       (.I0(x_reg[3]),
        .I1(x_reg[0]),
        .I2(x_reg[1]),
        .I3(x_reg[2]),
        .I4(x_reg[4]),
        .I5(x_reg[5]),
        .O(m_axis_tlast_i_2_n_0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(load),
        .D(line_end),
        .Q(m_axis_tlast),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000010)) 
    m_axis_tuser_i_1
       (.I0(m_axis_tuser_i_2_n_0),
        .I1(m_axis_tuser_i_3_n_0),
        .I2(m_axis_tuser_i_4_n_0),
        .I3(m_axis_tuser_i_5_n_0),
        .I4(m_axis_tuser_i_6_n_0),
        .O(m_axis_tuser0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tuser_i_2
       (.I0(y_reg[1]),
        .I1(y_reg[2]),
        .I2(x_reg[3]),
        .I3(x_reg[1]),
        .O(m_axis_tuser_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tuser_i_3
       (.I0(x_reg[5]),
        .I1(x_reg[4]),
        .I2(y_reg[3]),
        .I3(y_reg[4]),
        .O(m_axis_tuser_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    m_axis_tuser_i_4
       (.I0(y_reg[10]),
        .I1(y_reg[8]),
        .I2(y_reg[11]),
        .I3(y_reg[9]),
        .O(m_axis_tuser_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tuser_i_5
       (.I0(y_reg[7]),
        .I1(y_reg[6]),
        .I2(y_reg[5]),
        .I3(x_reg[2]),
        .I4(x_reg[0]),
        .I5(y_reg[0]),
        .O(m_axis_tuser_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tuser_i_6
       (.I0(x_reg[6]),
        .I1(x_reg[7]),
        .I2(x_reg[8]),
        .I3(x_reg[9]),
        .I4(x_reg[11]),
        .I5(x_reg[10]),
        .O(m_axis_tuser_i_6_n_0));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(load),
        .D(m_axis_tuser0),
        .Q(m_axis_tuser),
        .R(p_0_in));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(load),
        .D(enable_reg),
        .Q(m_axis_tvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFB080000)) 
    \pattern_reg[0]_i_1 
       (.I0(pattern_reg[0]),
        .I1(enable_reg),
        .I2(\pattern_reg[1]_i_2_n_0 ),
        .I3(pattern_sel[0]),
        .I4(aresetn),
        .O(\pattern_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB080000)) 
    \pattern_reg[1]_i_1 
       (.I0(pattern_reg[1]),
        .I1(enable_reg),
        .I2(\pattern_reg[1]_i_2_n_0 ),
        .I3(pattern_sel[1]),
        .I4(aresetn),
        .O(\pattern_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \pattern_reg[1]_i_2 
       (.I0(m_axis_tuser_i_6_n_0),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(step),
        .I3(\pattern_reg[1]_i_3_n_0 ),
        .I4(\pattern_reg[1]_i_4_n_0 ),
        .I5(m_axis_tuser_i_4_n_0),
        .O(\pattern_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pattern_reg[1]_i_3 
       (.I0(y_reg[1]),
        .I1(y_reg[0]),
        .I2(y_reg[2]),
        .I3(y_reg[5]),
        .O(\pattern_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pattern_reg[1]_i_4 
       (.I0(y_reg[7]),
        .I1(y_reg[6]),
        .I2(y_reg[3]),
        .I3(y_reg[4]),
        .O(\pattern_reg[1]_i_4_n_0 ));
  FDRE \pattern_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pattern_reg[0]_i_1_n_0 ),
        .Q(pattern_reg[0]),
        .R(1'b0));
  FDRE \pattern_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pattern_reg[1]_i_1_n_0 ),
        .Q(pattern_reg[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_2 
       (.I0(x_reg[0]),
        .O(\x[0]_i_2_n_0 ));
  FDRE \x_reg[0] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[0]_i_1_n_7 ),
        .Q(x_reg[0]),
        .R(\bar_pos[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[0]_i_1_n_0 ,\x_reg[0]_i_1_n_1 ,\x_reg[0]_i_1_n_2 ,\x_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\x_reg[0]_i_1_n_4 ,\x_reg[0]_i_1_n_5 ,\x_reg[0]_i_1_n_6 ,\x_reg[0]_i_1_n_7 }),
        .S({x_reg[3:1],\x[0]_i_2_n_0 }));
  FDRE \x_reg[10] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[8]_i_1_n_5 ),
        .Q(x_reg[10]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[11] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[8]_i_1_n_4 ),
        .Q(x_reg[11]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[1] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[0]_i_1_n_6 ),
        .Q(x_reg[1]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[2] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[0]_i_1_n_5 ),
        .Q(x_reg[2]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[3] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[0]_i_1_n_4 ),
        .Q(x_reg[3]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[4] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[4]_i_1_n_7 ),
        .Q(x_reg[4]),
        .R(\bar_pos[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[4]_i_1 
       (.CI(\x_reg[0]_i_1_n_0 ),
        .CO({\x_reg[4]_i_1_n_0 ,\x_reg[4]_i_1_n_1 ,\x_reg[4]_i_1_n_2 ,\x_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[4]_i_1_n_4 ,\x_reg[4]_i_1_n_5 ,\x_reg[4]_i_1_n_6 ,\x_reg[4]_i_1_n_7 }),
        .S(x_reg[7:4]));
  FDRE \x_reg[5] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[4]_i_1_n_6 ),
        .Q(x_reg[5]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[6] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[4]_i_1_n_5 ),
        .Q(x_reg[6]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[7] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[4]_i_1_n_4 ),
        .Q(x_reg[7]),
        .R(\bar_pos[11]_i_1_n_0 ));
  FDRE \x_reg[8] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[8]_i_1_n_7 ),
        .Q(x_reg[8]),
        .R(\bar_pos[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[8]_i_1 
       (.CI(\x_reg[4]_i_1_n_0 ),
        .CO({\NLW_x_reg[8]_i_1_CO_UNCONNECTED [3],\x_reg[8]_i_1_n_1 ,\x_reg[8]_i_1_n_2 ,\x_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[8]_i_1_n_4 ,\x_reg[8]_i_1_n_5 ,\x_reg[8]_i_1_n_6 ,\x_reg[8]_i_1_n_7 }),
        .S(x_reg[11:8]));
  FDRE \x_reg[9] 
       (.C(aclk),
        .CE(step),
        .D(\x_reg[8]_i_1_n_6 ),
        .Q(x_reg[9]),
        .R(\bar_pos[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \y[0]_i_1 
       (.I0(\pattern_reg[1]_i_2_n_0 ),
        .I1(aresetn),
        .O(\y[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000D0)) 
    \y[0]_i_2 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(enable_reg),
        .I3(m_axis_tlast_i_2_n_0),
        .I4(m_axis_tuser_i_6_n_0),
        .O(x_nxt));
  LUT1 #(
    .INIT(2'h1)) 
    \y[0]_i_4 
       (.I0(y_reg[0]),
        .O(\y[0]_i_4_n_0 ));
  FDRE \y_reg[0] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[0]_i_3_n_7 ),
        .Q(y_reg[0]),
        .R(\y[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\y_reg[0]_i_3_n_0 ,\y_reg[0]_i_3_n_1 ,\y_reg[0]_i_3_n_2 ,\y_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\y_reg[0]_i_3_n_4 ,\y_reg[0]_i_3_n_5 ,\y_reg[0]_i_3_n_6 ,\y_reg[0]_i_3_n_7 }),
        .S({y_reg[3:1],\y[0]_i_4_n_0 }));
  FDRE \y_reg[10] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[8]_i_1_n_5 ),
        .Q(y_reg[10]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[11] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[8]_i_1_n_4 ),
        .Q(y_reg[11]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[1] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[0]_i_3_n_6 ),
        .Q(y_reg[1]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[2] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[0]_i_3_n_5 ),
        .Q(y_reg[2]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[3] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[0]_i_3_n_4 ),
        .Q(y_reg[3]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[4] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[4]_i_1_n_7 ),
        .Q(y_reg[4]),
        .R(\y[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[4]_i_1 
       (.CI(\y_reg[0]_i_3_n_0 ),
        .CO({\y_reg[4]_i_1_n_0 ,\y_reg[4]_i_1_n_1 ,\y_reg[4]_i_1_n_2 ,\y_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[4]_i_1_n_4 ,\y_reg[4]_i_1_n_5 ,\y_reg[4]_i_1_n_6 ,\y_reg[4]_i_1_n_7 }),
        .S(y_reg[7:4]));
  FDRE \y_reg[5] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[4]_i_1_n_6 ),
        .Q(y_reg[5]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[6] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[4]_i_1_n_5 ),
        .Q(y_reg[6]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[7] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[4]_i_1_n_4 ),
        .Q(y_reg[7]),
        .R(\y[0]_i_1_n_0 ));
  FDRE \y_reg[8] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[8]_i_1_n_7 ),
        .Q(y_reg[8]),
        .R(\y[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[8]_i_1 
       (.CI(\y_reg[4]_i_1_n_0 ),
        .CO({\NLW_y_reg[8]_i_1_CO_UNCONNECTED [3],\y_reg[8]_i_1_n_1 ,\y_reg[8]_i_1_n_2 ,\y_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[8]_i_1_n_4 ,\y_reg[8]_i_1_n_5 ,\y_reg[8]_i_1_n_6 ,\y_reg[8]_i_1_n_7 }),
        .S(y_reg[11:8]));
  FDRE \y_reg[9] 
       (.C(aclk),
        .CE(x_nxt),
        .D(\y_reg[8]_i_1_n_6 ),
        .Q(y_reg[9]),
        .R(\y[0]_i_1_n_0 ));
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
