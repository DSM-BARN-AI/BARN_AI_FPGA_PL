// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jul 25 13:37:17 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axis_gamma_0_0/image_block_axis_gamma_0_0_sim_netlist.v}
// Design      : image_block_axis_gamma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axis_gamma_0_0,axis_gamma,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_gamma,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axis_gamma_0_0
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
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  image_block_axis_gamma_0_0_axis_gamma inst
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

(* ORIG_REF_NAME = "axis_gamma" *) 
module image_block_axis_gamma_0_0_axis_gamma
   (m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tvalid_reg_0,
    s_axis_tready,
    s_axis_tdata,
    aclk,
    s_axis_tuser,
    s_axis_tlast,
    m_axis_tready,
    s_axis_tvalid,
    aresetn);
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  output m_axis_tvalid_reg_0;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input aclk;
  input s_axis_tuser;
  input s_axis_tlast;
  input m_axis_tready;
  input s_axis_tvalid;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_4_n_0 ;
  wire \m_axis_tdata[0]_i_5_n_0 ;
  wire \m_axis_tdata[0]_i_6_n_0 ;
  wire \m_axis_tdata[0]_i_7_n_0 ;
  wire \m_axis_tdata[10]_i_4_n_0 ;
  wire \m_axis_tdata[10]_i_5_n_0 ;
  wire \m_axis_tdata[10]_i_6_n_0 ;
  wire \m_axis_tdata[10]_i_7_n_0 ;
  wire \m_axis_tdata[11]_i_4_n_0 ;
  wire \m_axis_tdata[11]_i_5_n_0 ;
  wire \m_axis_tdata[11]_i_6_n_0 ;
  wire \m_axis_tdata[11]_i_7_n_0 ;
  wire \m_axis_tdata[12]_i_4_n_0 ;
  wire \m_axis_tdata[12]_i_5_n_0 ;
  wire \m_axis_tdata[12]_i_6_n_0 ;
  wire \m_axis_tdata[12]_i_7_n_0 ;
  wire \m_axis_tdata[13]_i_1_n_0 ;
  wire \m_axis_tdata[13]_i_2_n_0 ;
  wire \m_axis_tdata[13]_i_3_n_0 ;
  wire \m_axis_tdata[13]_i_4_n_0 ;
  wire \m_axis_tdata[14]_i_1_n_0 ;
  wire \m_axis_tdata[15]_i_1_n_0 ;
  wire \m_axis_tdata[16]_i_4_n_0 ;
  wire \m_axis_tdata[16]_i_5_n_0 ;
  wire \m_axis_tdata[16]_i_6_n_0 ;
  wire \m_axis_tdata[16]_i_7_n_0 ;
  wire \m_axis_tdata[17]_i_4_n_0 ;
  wire \m_axis_tdata[17]_i_5_n_0 ;
  wire \m_axis_tdata[17]_i_6_n_0 ;
  wire \m_axis_tdata[17]_i_7_n_0 ;
  wire \m_axis_tdata[18]_i_4_n_0 ;
  wire \m_axis_tdata[18]_i_5_n_0 ;
  wire \m_axis_tdata[18]_i_6_n_0 ;
  wire \m_axis_tdata[18]_i_7_n_0 ;
  wire \m_axis_tdata[19]_i_4_n_0 ;
  wire \m_axis_tdata[19]_i_5_n_0 ;
  wire \m_axis_tdata[19]_i_6_n_0 ;
  wire \m_axis_tdata[19]_i_7_n_0 ;
  wire \m_axis_tdata[1]_i_4_n_0 ;
  wire \m_axis_tdata[1]_i_5_n_0 ;
  wire \m_axis_tdata[1]_i_6_n_0 ;
  wire \m_axis_tdata[1]_i_7_n_0 ;
  wire \m_axis_tdata[20]_i_4_n_0 ;
  wire \m_axis_tdata[20]_i_5_n_0 ;
  wire \m_axis_tdata[20]_i_6_n_0 ;
  wire \m_axis_tdata[20]_i_7_n_0 ;
  wire \m_axis_tdata[21]_i_1_n_0 ;
  wire \m_axis_tdata[21]_i_2_n_0 ;
  wire \m_axis_tdata[21]_i_3_n_0 ;
  wire \m_axis_tdata[21]_i_4_n_0 ;
  wire \m_axis_tdata[22]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_2_n_0 ;
  wire \m_axis_tdata[23]_i_3_n_0 ;
  wire \m_axis_tdata[2]_i_4_n_0 ;
  wire \m_axis_tdata[2]_i_5_n_0 ;
  wire \m_axis_tdata[2]_i_6_n_0 ;
  wire \m_axis_tdata[2]_i_7_n_0 ;
  wire \m_axis_tdata[3]_i_4_n_0 ;
  wire \m_axis_tdata[3]_i_5_n_0 ;
  wire \m_axis_tdata[3]_i_6_n_0 ;
  wire \m_axis_tdata[3]_i_7_n_0 ;
  wire \m_axis_tdata[4]_i_4_n_0 ;
  wire \m_axis_tdata[4]_i_5_n_0 ;
  wire \m_axis_tdata[4]_i_6_n_0 ;
  wire \m_axis_tdata[4]_i_7_n_0 ;
  wire \m_axis_tdata[5]_i_2_n_0 ;
  wire \m_axis_tdata[5]_i_3_n_0 ;
  wire \m_axis_tdata[5]_i_4_n_0 ;
  wire \m_axis_tdata[8]_i_4_n_0 ;
  wire \m_axis_tdata[8]_i_5_n_0 ;
  wire \m_axis_tdata[8]_i_6_n_0 ;
  wire \m_axis_tdata[8]_i_7_n_0 ;
  wire \m_axis_tdata[9]_i_4_n_0 ;
  wire \m_axis_tdata[9]_i_5_n_0 ;
  wire \m_axis_tdata[9]_i_6_n_0 ;
  wire \m_axis_tdata[9]_i_7_n_0 ;
  wire \m_axis_tdata_reg[0]_i_2_n_0 ;
  wire \m_axis_tdata_reg[0]_i_3_n_0 ;
  wire \m_axis_tdata_reg[10]_i_1_n_0 ;
  wire \m_axis_tdata_reg[10]_i_2_n_0 ;
  wire \m_axis_tdata_reg[10]_i_3_n_0 ;
  wire \m_axis_tdata_reg[11]_i_1_n_0 ;
  wire \m_axis_tdata_reg[11]_i_2_n_0 ;
  wire \m_axis_tdata_reg[11]_i_3_n_0 ;
  wire \m_axis_tdata_reg[12]_i_1_n_0 ;
  wire \m_axis_tdata_reg[12]_i_2_n_0 ;
  wire \m_axis_tdata_reg[12]_i_3_n_0 ;
  wire \m_axis_tdata_reg[16]_i_1_n_0 ;
  wire \m_axis_tdata_reg[16]_i_2_n_0 ;
  wire \m_axis_tdata_reg[16]_i_3_n_0 ;
  wire \m_axis_tdata_reg[17]_i_1_n_0 ;
  wire \m_axis_tdata_reg[17]_i_2_n_0 ;
  wire \m_axis_tdata_reg[17]_i_3_n_0 ;
  wire \m_axis_tdata_reg[18]_i_1_n_0 ;
  wire \m_axis_tdata_reg[18]_i_2_n_0 ;
  wire \m_axis_tdata_reg[18]_i_3_n_0 ;
  wire \m_axis_tdata_reg[19]_i_1_n_0 ;
  wire \m_axis_tdata_reg[19]_i_2_n_0 ;
  wire \m_axis_tdata_reg[19]_i_3_n_0 ;
  wire \m_axis_tdata_reg[1]_i_2_n_0 ;
  wire \m_axis_tdata_reg[1]_i_3_n_0 ;
  wire \m_axis_tdata_reg[20]_i_1_n_0 ;
  wire \m_axis_tdata_reg[20]_i_2_n_0 ;
  wire \m_axis_tdata_reg[20]_i_3_n_0 ;
  wire \m_axis_tdata_reg[2]_i_2_n_0 ;
  wire \m_axis_tdata_reg[2]_i_3_n_0 ;
  wire \m_axis_tdata_reg[3]_i_2_n_0 ;
  wire \m_axis_tdata_reg[3]_i_3_n_0 ;
  wire \m_axis_tdata_reg[4]_i_2_n_0 ;
  wire \m_axis_tdata_reg[4]_i_3_n_0 ;
  wire \m_axis_tdata_reg[8]_i_1_n_0 ;
  wire \m_axis_tdata_reg[8]_i_2_n_0 ;
  wire \m_axis_tdata_reg[8]_i_3_n_0 ;
  wire \m_axis_tdata_reg[9]_i_1_n_0 ;
  wire \m_axis_tdata_reg[9]_i_2_n_0 ;
  wire \m_axis_tdata_reg[9]_i_3_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_reg_0;
  wire p_0_in;
  wire [7:0]p_0_out;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  LUT6 #(
    .INIT(64'h0EA098B0E14B4B58)) 
    \m_axis_tdata[0]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6D99ED8AC633532D)) 
    \m_axis_tdata[0]_i_5 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40EA15FFBF14AA04)) 
    \m_axis_tdata[0]_i_6 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[0]),
        .O(\m_axis_tdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA5EAE0BF1F052A50)) 
    \m_axis_tdata[0]_i_7 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tdata[4]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB6975E0FC2CB0958)) 
    \m_axis_tdata[10]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h75F4F4E4A1A3B39E)) 
    \m_axis_tdata[10]_i_5 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[9]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1BBAF511AEEE0044)) 
    \m_axis_tdata[10]_i_6 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9B64FE11BB11EE15)) 
    \m_axis_tdata[10]_i_7 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8AD68BD7CBD6C286)) 
    \m_axis_tdata[11]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[8]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20A0F5F5A0A5F2CA)) 
    \m_axis_tdata[11]_i_5 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2ABF8000FFFA5555)) 
    \m_axis_tdata[11]_i_6 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFDA5F5A5A5A0A0B0)) 
    \m_axis_tdata[11]_i_7 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[9]),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0706464652535352)) 
    \m_axis_tdata[12]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[9]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FCFCFCCFCF8FCF0)) 
    \m_axis_tdata[12]_i_5 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[15]),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[9]),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8111555555550000)) 
    \m_axis_tdata[12]_i_6 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \m_axis_tdata[12]_i_7 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[15]),
        .O(\m_axis_tdata[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \m_axis_tdata[13]_i_1 
       (.I0(\m_axis_tdata[13]_i_2_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(\m_axis_tdata[13]_i_3_n_0 ),
        .I3(s_axis_tdata[13]),
        .I4(\m_axis_tdata[13]_i_4_n_0 ),
        .O(\m_axis_tdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \m_axis_tdata[13]_i_2 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[15]),
        .O(\m_axis_tdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h800000FF00FF00FF)) 
    \m_axis_tdata[13]_i_3 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[15]),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4303430313121212)) 
    \m_axis_tdata[13]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[8]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1F5F1F5F5E4F4E4)) 
    \m_axis_tdata[14]_i_1 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[13]),
        .I2(s_axis_tdata[15]),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[12]),
        .O(\m_axis_tdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \m_axis_tdata[15]_i_1 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[13]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[12]),
        .I4(s_axis_tdata[14]),
        .O(\m_axis_tdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0EA098B0E14B4B58)) 
    \m_axis_tdata[16]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6D99ED8AC633532D)) 
    \m_axis_tdata[16]_i_5 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40EA15FFBF14AA04)) 
    \m_axis_tdata[16]_i_6 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[18]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[16]),
        .O(\m_axis_tdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA5EAE0BF1F052A50)) 
    \m_axis_tdata[16]_i_7 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD3772329AD86D8C2)) 
    \m_axis_tdata[17]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[16]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7EEFA9985547123F)) 
    \m_axis_tdata[17]_i_5 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[17]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5EB41BB1AB40EE44)) 
    \m_axis_tdata[17]_i_6 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD8BA6750AFAF5014)) 
    \m_axis_tdata[17]_i_7 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB6975E0FC2CB0958)) 
    \m_axis_tdata[18]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h75F4F4E4A1A3B39E)) 
    \m_axis_tdata[18]_i_5 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[17]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1BBAF511AEEE0044)) 
    \m_axis_tdata[18]_i_6 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9B64FE11BB11EE15)) 
    \m_axis_tdata[18]_i_7 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[19]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8AD68BD7CBD6C286)) 
    \m_axis_tdata[19]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[16]),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20A0F5F5A0A5F2CA)) 
    \m_axis_tdata[19]_i_5 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2ABF8000FFFA5555)) 
    \m_axis_tdata[19]_i_6 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[20]),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFDA5F5A5A5A0A0B0)) 
    \m_axis_tdata[19]_i_7 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[17]),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD3772329AD86D8C2)) 
    \m_axis_tdata[1]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7EEFA9985547123F)) 
    \m_axis_tdata[1]_i_5 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[1]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5EB41BB1AB40EE44)) 
    \m_axis_tdata[1]_i_6 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD8BA6750AFAF5014)) 
    \m_axis_tdata[1]_i_7 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0706464652535352)) 
    \m_axis_tdata[20]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[17]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FCFCFCCFCF8FCF0)) 
    \m_axis_tdata[20]_i_5 
       (.I0(s_axis_tdata[16]),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[17]),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8111555555550000)) 
    \m_axis_tdata[20]_i_6 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[20]),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \m_axis_tdata[20]_i_7 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \m_axis_tdata[21]_i_1 
       (.I0(\m_axis_tdata[21]_i_2_n_0 ),
        .I1(s_axis_tdata[22]),
        .I2(\m_axis_tdata[21]_i_3_n_0 ),
        .I3(s_axis_tdata[21]),
        .I4(\m_axis_tdata[21]_i_4_n_0 ),
        .O(\m_axis_tdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \m_axis_tdata[21]_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h800000FF00FF00FF)) 
    \m_axis_tdata[21]_i_3 
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[23]),
        .I4(s_axis_tdata[20]),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4303430313121212)) 
    \m_axis_tdata[21]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[16]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1F5F1F5F5E4F4E4)) 
    \m_axis_tdata[22]_i_1 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[19]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[20]),
        .O(\m_axis_tdata[22]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hD0)) 
    \m_axis_tdata[23]_i_2 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .O(\m_axis_tdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \m_axis_tdata[23]_i_3 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[20]),
        .I4(s_axis_tdata[22]),
        .O(\m_axis_tdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB6975E0FC2CB0958)) 
    \m_axis_tdata[2]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h75F4F4E4A1A3B39E)) 
    \m_axis_tdata[2]_i_5 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[1]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1BBAF511AEEE0044)) 
    \m_axis_tdata[2]_i_6 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9B64FE11BB11EE15)) 
    \m_axis_tdata[2]_i_7 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8AD68BD7CBD6C286)) 
    \m_axis_tdata[3]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[0]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20A0F5F5A0A5F2CA)) 
    \m_axis_tdata[3]_i_5 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[4]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2ABF8000FFFA5555)) 
    \m_axis_tdata[3]_i_6 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFDA5F5A5A5A0A0B0)) 
    \m_axis_tdata[3]_i_7 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[4]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[1]),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0706464652535352)) 
    \m_axis_tdata[4]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[1]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FCFCFCCFCF8FCF0)) 
    \m_axis_tdata[4]_i_5 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[4]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[1]),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8111555555550000)) 
    \m_axis_tdata[4]_i_6 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \m_axis_tdata[4]_i_7 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[7]),
        .O(\m_axis_tdata[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(\m_axis_tdata[5]_i_3_n_0 ),
        .I3(s_axis_tdata[5]),
        .I4(\m_axis_tdata[5]_i_4_n_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \m_axis_tdata[5]_i_2 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[7]),
        .O(\m_axis_tdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h800000FF00FF00FF)) 
    \m_axis_tdata[5]_i_3 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[7]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4303430313121212)) 
    \m_axis_tdata[5]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1F5F1F5F5E4F4E4)) 
    \m_axis_tdata[6]_i_1 
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[2]),
        .I5(s_axis_tdata[4]),
        .O(p_0_out[6]));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \m_axis_tdata[7]_i_1 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[4]),
        .I4(s_axis_tdata[6]),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'h0EA098B0E14B4B58)) 
    \m_axis_tdata[8]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6D99ED8AC633532D)) 
    \m_axis_tdata[8]_i_5 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40EA15FFBF14AA04)) 
    \m_axis_tdata[8]_i_6 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[8]),
        .O(\m_axis_tdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA5EAE0BF1F052A50)) 
    \m_axis_tdata[8]_i_7 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[11]),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD3772329AD86D8C2)) 
    \m_axis_tdata[9]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[8]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7EEFA9985547123F)) 
    \m_axis_tdata[9]_i_5 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[9]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5EB41BB1AB40EE44)) 
    \m_axis_tdata[9]_i_6 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD8BA6750AFAF5014)) 
    \m_axis_tdata[9]_i_7 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[10]),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[9]_i_7_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[0]_i_1 
       (.I0(\m_axis_tdata_reg[0]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[0]_i_3_n_0 ),
        .O(p_0_out[0]),
        .S(s_axis_tdata[6]));
  MUXF7 \m_axis_tdata_reg[0]_i_2 
       (.I0(\m_axis_tdata[0]_i_4_n_0 ),
        .I1(\m_axis_tdata[0]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[0]_i_2_n_0 ),
        .S(s_axis_tdata[5]));
  MUXF7 \m_axis_tdata_reg[0]_i_3 
       (.I0(\m_axis_tdata[0]_i_6_n_0 ),
        .I1(\m_axis_tdata[0]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[0]_i_3_n_0 ),
        .S(s_axis_tdata[5]));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[10]_i_1 
       (.I0(\m_axis_tdata_reg[10]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[10]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[10]_i_1_n_0 ),
        .S(s_axis_tdata[14]));
  MUXF7 \m_axis_tdata_reg[10]_i_2 
       (.I0(\m_axis_tdata[10]_i_4_n_0 ),
        .I1(\m_axis_tdata[10]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[10]_i_2_n_0 ),
        .S(s_axis_tdata[13]));
  MUXF7 \m_axis_tdata_reg[10]_i_3 
       (.I0(\m_axis_tdata[10]_i_6_n_0 ),
        .I1(\m_axis_tdata[10]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[10]_i_3_n_0 ),
        .S(s_axis_tdata[13]));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[11]_i_1 
       (.I0(\m_axis_tdata_reg[11]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[11]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[11]_i_1_n_0 ),
        .S(s_axis_tdata[14]));
  MUXF7 \m_axis_tdata_reg[11]_i_2 
       (.I0(\m_axis_tdata[11]_i_4_n_0 ),
        .I1(\m_axis_tdata[11]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[11]_i_2_n_0 ),
        .S(s_axis_tdata[13]));
  MUXF7 \m_axis_tdata_reg[11]_i_3 
       (.I0(\m_axis_tdata[11]_i_6_n_0 ),
        .I1(\m_axis_tdata[11]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[11]_i_3_n_0 ),
        .S(s_axis_tdata[13]));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[12]_i_1 
       (.I0(\m_axis_tdata_reg[12]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[12]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[12]_i_1_n_0 ),
        .S(s_axis_tdata[14]));
  MUXF7 \m_axis_tdata_reg[12]_i_2 
       (.I0(\m_axis_tdata[12]_i_4_n_0 ),
        .I1(\m_axis_tdata[12]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[12]_i_2_n_0 ),
        .S(s_axis_tdata[13]));
  MUXF7 \m_axis_tdata_reg[12]_i_3 
       (.I0(\m_axis_tdata[12]_i_6_n_0 ),
        .I1(\m_axis_tdata[12]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[12]_i_3_n_0 ),
        .S(s_axis_tdata[13]));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[15]_i_1_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[16]_i_1_n_0 ),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[16]_i_1 
       (.I0(\m_axis_tdata_reg[16]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[16]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[16]_i_1_n_0 ),
        .S(s_axis_tdata[22]));
  MUXF7 \m_axis_tdata_reg[16]_i_2 
       (.I0(\m_axis_tdata[16]_i_4_n_0 ),
        .I1(\m_axis_tdata[16]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[16]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \m_axis_tdata_reg[16]_i_3 
       (.I0(\m_axis_tdata[16]_i_6_n_0 ),
        .I1(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[16]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[17]_i_1_n_0 ),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[17]_i_1 
       (.I0(\m_axis_tdata_reg[17]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[17]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[17]_i_1_n_0 ),
        .S(s_axis_tdata[22]));
  MUXF7 \m_axis_tdata_reg[17]_i_2 
       (.I0(\m_axis_tdata[17]_i_4_n_0 ),
        .I1(\m_axis_tdata[17]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[17]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \m_axis_tdata_reg[17]_i_3 
       (.I0(\m_axis_tdata[17]_i_6_n_0 ),
        .I1(\m_axis_tdata[17]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[17]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[18]_i_1_n_0 ),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[18]_i_1 
       (.I0(\m_axis_tdata_reg[18]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[18]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[18]_i_1_n_0 ),
        .S(s_axis_tdata[22]));
  MUXF7 \m_axis_tdata_reg[18]_i_2 
       (.I0(\m_axis_tdata[18]_i_4_n_0 ),
        .I1(\m_axis_tdata[18]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[18]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \m_axis_tdata_reg[18]_i_3 
       (.I0(\m_axis_tdata[18]_i_6_n_0 ),
        .I1(\m_axis_tdata[18]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[18]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[19]_i_1_n_0 ),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[19]_i_1 
       (.I0(\m_axis_tdata_reg[19]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[19]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[19]_i_1_n_0 ),
        .S(s_axis_tdata[22]));
  MUXF7 \m_axis_tdata_reg[19]_i_2 
       (.I0(\m_axis_tdata[19]_i_4_n_0 ),
        .I1(\m_axis_tdata[19]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[19]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \m_axis_tdata_reg[19]_i_3 
       (.I0(\m_axis_tdata[19]_i_6_n_0 ),
        .I1(\m_axis_tdata[19]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[19]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[1]_i_1 
       (.I0(\m_axis_tdata_reg[1]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[1]_i_3_n_0 ),
        .O(p_0_out[1]),
        .S(s_axis_tdata[6]));
  MUXF7 \m_axis_tdata_reg[1]_i_2 
       (.I0(\m_axis_tdata[1]_i_4_n_0 ),
        .I1(\m_axis_tdata[1]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[1]_i_2_n_0 ),
        .S(s_axis_tdata[5]));
  MUXF7 \m_axis_tdata_reg[1]_i_3 
       (.I0(\m_axis_tdata[1]_i_6_n_0 ),
        .I1(\m_axis_tdata[1]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[1]_i_3_n_0 ),
        .S(s_axis_tdata[5]));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[20]_i_1_n_0 ),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[20]_i_1 
       (.I0(\m_axis_tdata_reg[20]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[20]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[20]_i_1_n_0 ),
        .S(s_axis_tdata[22]));
  MUXF7 \m_axis_tdata_reg[20]_i_2 
       (.I0(\m_axis_tdata[20]_i_4_n_0 ),
        .I1(\m_axis_tdata[20]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[20]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \m_axis_tdata_reg[20]_i_3 
       (.I0(\m_axis_tdata[20]_i_6_n_0 ),
        .I1(\m_axis_tdata[20]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[20]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[21]_i_1_n_0 ),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[22]_i_1_n_0 ),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata[23]_i_3_n_0 ),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[2]_i_1 
       (.I0(\m_axis_tdata_reg[2]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[2]_i_3_n_0 ),
        .O(p_0_out[2]),
        .S(s_axis_tdata[6]));
  MUXF7 \m_axis_tdata_reg[2]_i_2 
       (.I0(\m_axis_tdata[2]_i_4_n_0 ),
        .I1(\m_axis_tdata[2]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[2]_i_2_n_0 ),
        .S(s_axis_tdata[5]));
  MUXF7 \m_axis_tdata_reg[2]_i_3 
       (.I0(\m_axis_tdata[2]_i_6_n_0 ),
        .I1(\m_axis_tdata[2]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[2]_i_3_n_0 ),
        .S(s_axis_tdata[5]));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[3]_i_1 
       (.I0(\m_axis_tdata_reg[3]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[3]_i_3_n_0 ),
        .O(p_0_out[3]),
        .S(s_axis_tdata[6]));
  MUXF7 \m_axis_tdata_reg[3]_i_2 
       (.I0(\m_axis_tdata[3]_i_4_n_0 ),
        .I1(\m_axis_tdata[3]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[3]_i_2_n_0 ),
        .S(s_axis_tdata[5]));
  MUXF7 \m_axis_tdata_reg[3]_i_3 
       (.I0(\m_axis_tdata[3]_i_6_n_0 ),
        .I1(\m_axis_tdata[3]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[3]_i_3_n_0 ),
        .S(s_axis_tdata[5]));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[4]_i_1 
       (.I0(\m_axis_tdata_reg[4]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[4]_i_3_n_0 ),
        .O(p_0_out[4]),
        .S(s_axis_tdata[6]));
  MUXF7 \m_axis_tdata_reg[4]_i_2 
       (.I0(\m_axis_tdata[4]_i_4_n_0 ),
        .I1(\m_axis_tdata[4]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[4]_i_2_n_0 ),
        .S(s_axis_tdata[5]));
  MUXF7 \m_axis_tdata_reg[4]_i_3 
       (.I0(\m_axis_tdata[4]_i_6_n_0 ),
        .I1(\m_axis_tdata[4]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[4]_i_3_n_0 ),
        .S(s_axis_tdata[5]));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_0_out[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[8]_i_1 
       (.I0(\m_axis_tdata_reg[8]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[8]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[8]_i_1_n_0 ),
        .S(s_axis_tdata[14]));
  MUXF7 \m_axis_tdata_reg[8]_i_2 
       (.I0(\m_axis_tdata[8]_i_4_n_0 ),
        .I1(\m_axis_tdata[8]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[8]_i_2_n_0 ),
        .S(s_axis_tdata[13]));
  MUXF7 \m_axis_tdata_reg[8]_i_3 
       (.I0(\m_axis_tdata[8]_i_6_n_0 ),
        .I1(\m_axis_tdata[8]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[8]_i_3_n_0 ),
        .S(s_axis_tdata[13]));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\m_axis_tdata_reg[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  MUXF8 \m_axis_tdata_reg[9]_i_1 
       (.I0(\m_axis_tdata_reg[9]_i_2_n_0 ),
        .I1(\m_axis_tdata_reg[9]_i_3_n_0 ),
        .O(\m_axis_tdata_reg[9]_i_1_n_0 ),
        .S(s_axis_tdata[14]));
  MUXF7 \m_axis_tdata_reg[9]_i_2 
       (.I0(\m_axis_tdata[9]_i_4_n_0 ),
        .I1(\m_axis_tdata[9]_i_5_n_0 ),
        .O(\m_axis_tdata_reg[9]_i_2_n_0 ),
        .S(s_axis_tdata[13]));
  MUXF7 \m_axis_tdata_reg[9]_i_3 
       (.I0(\m_axis_tdata[9]_i_6_n_0 ),
        .I1(\m_axis_tdata[9]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[9]_i_3_n_0 ),
        .S(s_axis_tdata[13]));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tlast),
        .Q(m_axis_tlast),
        .R(p_0_in));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tuser),
        .Q(m_axis_tuser),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .O(s_axis_tready));
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
