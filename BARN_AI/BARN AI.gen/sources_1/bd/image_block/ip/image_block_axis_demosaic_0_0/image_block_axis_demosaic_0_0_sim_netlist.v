// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jul 25 13:36:50 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axis_demosaic_0_0/image_block_axis_demosaic_0_0_sim_netlist.v}
// Design      : image_block_axis_demosaic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axis_demosaic_0_0,axis_demosaic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_demosaic,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axis_demosaic_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
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
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  image_block_axis_demosaic_0_0_axis_demosaic inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_demosaic" *) 
module image_block_axis_demosaic_0_0_axis_demosaic
   (m_axis_tvalid_reg_0,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tready,
    m_axis_tready,
    s_axis_tvalid,
    aclk,
    s_axis_tdata,
    aresetn);
  output m_axis_tvalid_reg_0;
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  output s_axis_tready;
  input m_axis_tready;
  input s_axis_tvalid;
  input aclk;
  input [7:0]s_axis_tdata;
  input aresetn;

  wire [1:1]L0;
  wire [7:2]L0__0;
  wire [7:0]L2;
  wire aclk;
  wire aresetn;
  wire buf0_reg_0_63_0_2_i_8_n_0;
  wire [11:1]ccx_f;
  wire ccx_f_carry__0_i_1_n_0;
  wire ccx_f_carry__0_i_2_n_0;
  wire ccx_f_carry__0_i_3_n_0;
  wire ccx_f_carry__0_i_4_n_0;
  wire ccx_f_carry__0_n_0;
  wire ccx_f_carry__0_n_1;
  wire ccx_f_carry__0_n_2;
  wire ccx_f_carry__0_n_3;
  wire ccx_f_carry__1_i_1_n_0;
  wire ccx_f_carry__1_i_2_n_0;
  wire ccx_f_carry__1_i_3_n_0;
  wire ccx_f_carry__1_n_2;
  wire ccx_f_carry__1_n_3;
  wire ccx_f_carry_i_1_n_0;
  wire ccx_f_carry_i_2_n_0;
  wire ccx_f_carry_i_3_n_0;
  wire ccx_f_carry_i_4_n_0;
  wire ccx_f_carry_n_0;
  wire ccx_f_carry_n_1;
  wire ccx_f_carry_n_2;
  wire ccx_f_carry_n_3;
  wire [7:0]cross;
  wire cvalid_f;
  wire \cy[0]_i_1_n_0 ;
  wire \cy[10]_i_1_n_0 ;
  wire \cy[11]_i_1_n_0 ;
  wire \cy[11]_i_2_n_0 ;
  wire \cy[11]_i_3_n_0 ;
  wire \cy[11]_i_5_n_0 ;
  wire \cy[1]_i_1_n_0 ;
  wire \cy[2]_i_1_n_0 ;
  wire \cy[3]_i_1_n_0 ;
  wire \cy[4]_i_1_n_0 ;
  wire \cy[5]_i_1_n_0 ;
  wire \cy[6]_i_1_n_0 ;
  wire \cy[7]_i_1_n_0 ;
  wire \cy[8]_i_1_n_0 ;
  wire \cy[9]_i_1_n_0 ;
  wire \cy_reg[11]_i_4_n_2 ;
  wire \cy_reg[11]_i_4_n_3 ;
  wire \cy_reg[11]_i_4_n_5 ;
  wire \cy_reg[11]_i_4_n_6 ;
  wire \cy_reg[11]_i_4_n_7 ;
  wire \cy_reg[4]_i_2_n_0 ;
  wire \cy_reg[4]_i_2_n_1 ;
  wire \cy_reg[4]_i_2_n_2 ;
  wire \cy_reg[4]_i_2_n_3 ;
  wire \cy_reg[4]_i_2_n_4 ;
  wire \cy_reg[4]_i_2_n_5 ;
  wire \cy_reg[4]_i_2_n_6 ;
  wire \cy_reg[4]_i_2_n_7 ;
  wire \cy_reg[8]_i_2_n_0 ;
  wire \cy_reg[8]_i_2_n_1 ;
  wire \cy_reg[8]_i_2_n_2 ;
  wire \cy_reg[8]_i_2_n_3 ;
  wire \cy_reg[8]_i_2_n_4 ;
  wire \cy_reg[8]_i_2_n_5 ;
  wire \cy_reg[8]_i_2_n_6 ;
  wire \cy_reg[8]_i_2_n_7 ;
  wire \cy_reg_n_0_[0] ;
  wire \cy_reg_n_0_[10] ;
  wire \cy_reg_n_0_[11] ;
  wire \cy_reg_n_0_[1] ;
  wire \cy_reg_n_0_[2] ;
  wire \cy_reg_n_0_[3] ;
  wire \cy_reg_n_0_[4] ;
  wire \cy_reg_n_0_[5] ;
  wire \cy_reg_n_0_[6] ;
  wire \cy_reg_n_0_[7] ;
  wire \cy_reg_n_0_[8] ;
  wire \cy_reg_n_0_[9] ;
  wire [11:1]data0;
  wire [7:0]diag;
  wire fc0_carry__0_n_0;
  wire fc0_carry__0_n_1;
  wire fc0_carry__0_n_2;
  wire fc0_carry__0_n_3;
  wire fc0_carry__0_n_4;
  wire fc0_carry__0_n_5;
  wire fc0_carry__0_n_6;
  wire fc0_carry__0_n_7;
  wire fc0_carry__1_n_2;
  wire fc0_carry__1_n_3;
  wire fc0_carry__1_n_5;
  wire fc0_carry__1_n_6;
  wire fc0_carry__1_n_7;
  wire fc0_carry_n_0;
  wire fc0_carry_n_1;
  wire fc0_carry_n_2;
  wire fc0_carry_n_3;
  wire fc0_carry_n_4;
  wire fc0_carry_n_5;
  wire fc0_carry_n_6;
  wire fc0_carry_n_7;
  wire \fc[0]_i_1_n_0 ;
  wire \fc[11]_i_1_n_0 ;
  wire \fc_reg_n_0_[0] ;
  wire \fc_reg_n_0_[10] ;
  wire \fc_reg_n_0_[11] ;
  wire \fc_reg_n_0_[1] ;
  wire \fc_reg_n_0_[2] ;
  wire \fc_reg_n_0_[3] ;
  wire \fc_reg_n_0_[4] ;
  wire \fc_reg_n_0_[5] ;
  wire \fc_reg_n_0_[6] ;
  wire \fc_reg_n_0_[7] ;
  wire \fc_reg_n_0_[8] ;
  wire \fc_reg_n_0_[9] ;
  wire [1:0]flush_cnt;
  wire \flush_cnt[0]_i_1_n_0 ;
  wire \flush_cnt[1]_i_1_n_0 ;
  wire lc__5;
  wire [7:0]lr;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[18]_i_10_n_0 ;
  wire \m_axis_tdata[18]_i_11_n_0 ;
  wire \m_axis_tdata[18]_i_4_n_0 ;
  wire \m_axis_tdata[18]_i_5_n_0 ;
  wire \m_axis_tdata[18]_i_6_n_0 ;
  wire \m_axis_tdata[18]_i_7_n_0 ;
  wire \m_axis_tdata[18]_i_8_n_0 ;
  wire \m_axis_tdata[18]_i_9_n_0 ;
  wire \m_axis_tdata[22]_i_10_n_0 ;
  wire \m_axis_tdata[22]_i_11_n_0 ;
  wire \m_axis_tdata[22]_i_4_n_0 ;
  wire \m_axis_tdata[22]_i_5_n_0 ;
  wire \m_axis_tdata[22]_i_6_n_0 ;
  wire \m_axis_tdata[22]_i_7_n_0 ;
  wire \m_axis_tdata[22]_i_8_n_0 ;
  wire \m_axis_tdata[22]_i_9_n_0 ;
  wire \m_axis_tdata[23]_i_2_n_0 ;
  wire \m_axis_tdata_reg[18]_i_2_n_0 ;
  wire \m_axis_tdata_reg[18]_i_2_n_1 ;
  wire \m_axis_tdata_reg[18]_i_2_n_2 ;
  wire \m_axis_tdata_reg[18]_i_2_n_3 ;
  wire \m_axis_tdata_reg[18]_i_2_n_7 ;
  wire \m_axis_tdata_reg[18]_i_3_n_0 ;
  wire \m_axis_tdata_reg[18]_i_3_n_1 ;
  wire \m_axis_tdata_reg[18]_i_3_n_2 ;
  wire \m_axis_tdata_reg[18]_i_3_n_3 ;
  wire \m_axis_tdata_reg[22]_i_2_n_0 ;
  wire \m_axis_tdata_reg[22]_i_2_n_1 ;
  wire \m_axis_tdata_reg[22]_i_2_n_2 ;
  wire \m_axis_tdata_reg[22]_i_2_n_3 ;
  wire \m_axis_tdata_reg[22]_i_3_n_0 ;
  wire \m_axis_tdata_reg[22]_i_3_n_1 ;
  wire \m_axis_tdata_reg[22]_i_3_n_2 ;
  wire \m_axis_tdata_reg[22]_i_3_n_3 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tuser0;
  wire m_axis_tuser_i_3_n_0;
  wire m_axis_tuser_i_4_n_0;
  wire m_axis_tuser_i_5_n_0;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_reg_0;
  wire need_input;
  wire [11:0]p1_ccx;
  wire \p1_ccx[0]_i_1_n_0 ;
  wire [11:1]p1_ccy;
  wire p1_cvalid;
  wire p1_cvalid_i_2_n_0;
  wire p1_rpar;
  wire p1_t0cur;
  wire p1_t0cur_i_2_n_0;
  wire p1_t2buf;
  wire \p2_ccx_reg_n_0_[10] ;
  wire \p2_ccx_reg_n_0_[11] ;
  wire \p2_ccx_reg_n_0_[1] ;
  wire \p2_ccx_reg_n_0_[2] ;
  wire \p2_ccx_reg_n_0_[3] ;
  wire \p2_ccx_reg_n_0_[4] ;
  wire \p2_ccx_reg_n_0_[5] ;
  wire \p2_ccx_reg_n_0_[6] ;
  wire \p2_ccx_reg_n_0_[7] ;
  wire \p2_ccx_reg_n_0_[8] ;
  wire \p2_ccx_reg_n_0_[9] ;
  wire \p2_ccy_reg_n_0_[10] ;
  wire \p2_ccy_reg_n_0_[11] ;
  wire \p2_ccy_reg_n_0_[1] ;
  wire \p2_ccy_reg_n_0_[2] ;
  wire \p2_ccy_reg_n_0_[3] ;
  wire \p2_ccy_reg_n_0_[4] ;
  wire \p2_ccy_reg_n_0_[5] ;
  wire \p2_ccy_reg_n_0_[6] ;
  wire \p2_ccy_reg_n_0_[7] ;
  wire \p2_ccy_reg_n_0_[8] ;
  wire \p2_ccy_reg_n_0_[9] ;
  wire p2_cvalid;
  wire p_0_in;
  wire [1:1]p_0_in_1;
  wire [0:0]p_0_in__0;
  wire p_0_in__1;
  wire p_0_in__2;
  wire [11:1]p_1_in;
  wire [23:0]p_2_out;
  wire [7:0]q0;
  wire [7:0]q00;
  wire [7:0]q1;
  wire [7:0]q10;
  wire [5:0]rd_addr;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_1_n_0;
  wire s_axis_tready_INST_0_i_2_n_0;
  wire s_axis_tready_INST_0_i_3_n_0;
  wire s_axis_tready_INST_0_i_4_n_0;
  wire s_axis_tready_INST_0_i_5_n_0;
  wire s_axis_tvalid;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire sum_cross__0_carry__0_i_1_n_0;
  wire sum_cross__0_carry__0_i_2_n_0;
  wire sum_cross__0_carry__0_i_3_n_0;
  wire sum_cross__0_carry__0_i_4_n_0;
  wire sum_cross__0_carry__0_i_5_n_0;
  wire sum_cross__0_carry__0_i_6_n_0;
  wire sum_cross__0_carry__0_i_7_n_0;
  wire sum_cross__0_carry__0_i_8_n_0;
  wire sum_cross__0_carry__0_n_0;
  wire sum_cross__0_carry__0_n_1;
  wire sum_cross__0_carry__0_n_2;
  wire sum_cross__0_carry__0_n_3;
  wire sum_cross__0_carry__1_i_2_n_0;
  wire sum_cross__0_carry_i_1_n_0;
  wire sum_cross__0_carry_i_2_n_0;
  wire sum_cross__0_carry_i_3_n_0;
  wire sum_cross__0_carry_i_4_n_0;
  wire sum_cross__0_carry_i_5_n_0;
  wire sum_cross__0_carry_i_6_n_0;
  wire sum_cross__0_carry_i_7_n_0;
  wire sum_cross__0_carry_n_0;
  wire sum_cross__0_carry_n_1;
  wire sum_cross__0_carry_n_2;
  wire sum_cross__0_carry_n_3;
  wire sum_diag__2_carry__0_i_10_n_0;
  wire sum_diag__2_carry__0_i_11_n_0;
  wire sum_diag__2_carry__0_i_12_n_0;
  wire sum_diag__2_carry__0_i_13_n_0;
  wire sum_diag__2_carry__0_i_14_n_0;
  wire sum_diag__2_carry__0_i_15_n_0;
  wire sum_diag__2_carry__0_i_16_n_0;
  wire sum_diag__2_carry__0_i_1_n_0;
  wire sum_diag__2_carry__0_i_2_n_0;
  wire sum_diag__2_carry__0_i_3_n_0;
  wire sum_diag__2_carry__0_i_4_n_0;
  wire sum_diag__2_carry__0_i_5_n_0;
  wire sum_diag__2_carry__0_i_6_n_0;
  wire sum_diag__2_carry__0_i_7_n_0;
  wire sum_diag__2_carry__0_i_8_n_0;
  wire sum_diag__2_carry__0_i_9_n_0;
  wire sum_diag__2_carry__0_n_0;
  wire sum_diag__2_carry__0_n_1;
  wire sum_diag__2_carry__0_n_2;
  wire sum_diag__2_carry__0_n_3;
  wire sum_diag__2_carry__1_i_1_n_0;
  wire sum_diag__2_carry__1_i_2_n_0;
  wire sum_diag__2_carry_i_10_n_0;
  wire sum_diag__2_carry_i_12_n_0;
  wire sum_diag__2_carry_i_13_n_0;
  wire sum_diag__2_carry_i_16_n_0;
  wire sum_diag__2_carry_i_1_n_0;
  wire sum_diag__2_carry_i_2_n_0;
  wire sum_diag__2_carry_i_3_n_0;
  wire sum_diag__2_carry_i_4_n_0;
  wire sum_diag__2_carry_i_5_n_0;
  wire sum_diag__2_carry_i_6_n_0;
  wire sum_diag__2_carry_i_7_n_0;
  wire sum_diag__2_carry_i_8_n_0;
  wire sum_diag__2_carry_i_9_n_0;
  wire sum_diag__2_carry_n_0;
  wire sum_diag__2_carry_n_1;
  wire sum_diag__2_carry_n_2;
  wire sum_diag__2_carry_n_3;
  wire t0_from_cur_f;
  wire [7:0]t0_val;
  wire [7:0]t1_val;
  wire [7:0]t2_d;
  wire [0:0]t2_d_0;
  wire t2_from_buf_f;
  wire [7:0]t2_val;
  wire [7:0]ud;
  wire [7:0]\w0_reg[0] ;
  wire [7:0]\w0_reg[1] ;
  wire [7:0]\w0_reg[2] ;
  wire [7:0]\w1_reg[0] ;
  wire [7:0]\w1_reg[1] ;
  wire [7:0]\w1_reg[2] ;
  wire [7:0]\w2_reg[0] ;
  wire [7:0]\w2_reg[1] ;
  wire [7:0]\w2_reg[2] ;
  wire [5:0]wp0_a;
  wire [7:0]wp0_d;
  wire wp0_s;
  wire wp0_s_i_1_n_0;
  wire wp0_v;
  wire [5:0]wp1_a;
  wire [7:0]wp1_d;
  wire wp1_s;
  wire wp1_v;
  wire [5:0]wr_addr_now;
  wire [11:0]x_in;
  wire \x_in[11]_i_1_n_0 ;
  wire \x_in_reg[11]_i_3_n_2 ;
  wire \x_in_reg[11]_i_3_n_3 ;
  wire \x_in_reg[4]_i_2_n_0 ;
  wire \x_in_reg[4]_i_2_n_1 ;
  wire \x_in_reg[4]_i_2_n_2 ;
  wire \x_in_reg[4]_i_2_n_3 ;
  wire \x_in_reg[8]_i_2_n_0 ;
  wire \x_in_reg[8]_i_2_n_1 ;
  wire \x_in_reg[8]_i_2_n_2 ;
  wire \x_in_reg[8]_i_2_n_3 ;
  wire \x_in_reg_n_0_[0] ;
  wire \x_in_reg_n_0_[10] ;
  wire \x_in_reg_n_0_[11] ;
  wire \x_in_reg_n_0_[1] ;
  wire \x_in_reg_n_0_[2] ;
  wire \x_in_reg_n_0_[3] ;
  wire \x_in_reg_n_0_[4] ;
  wire \x_in_reg_n_0_[5] ;
  wire \x_in_reg_n_0_[6] ;
  wire \x_in_reg_n_0_[7] ;
  wire \x_in_reg_n_0_[8] ;
  wire \x_in_reg_n_0_[9] ;
  wire NLW_buf0_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_buf0_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_buf0_reg_0_63_6_7_DOC_UNCONNECTED;
  wire NLW_buf0_reg_0_63_6_7_DOD_UNCONNECTED;
  wire NLW_buf1_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_buf1_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_buf1_reg_0_63_6_7_DOC_UNCONNECTED;
  wire NLW_buf1_reg_0_63_6_7_DOD_UNCONNECTED;
  wire [3:2]NLW_ccx_f_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_ccx_f_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_cy_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_cy_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:2]NLW_fc0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_fc0_carry__1_O_UNCONNECTED;
  wire [0:0]\NLW_m_axis_tdata_reg[18]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_m_axis_tdata_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_m_axis_tdata_reg[23]_i_4_O_UNCONNECTED ;
  wire [1:0]NLW_sum_cross__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_sum_cross__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_sum_cross__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_sum_cross__0_carry__1_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_sum_cross__0_carry__1_i_1_O_UNCONNECTED;
  wire [1:0]NLW_sum_diag__2_carry_O_UNCONNECTED;
  wire [3:0]NLW_sum_diag__2_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_sum_diag__2_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_x_in_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_in_reg[11]_i_3_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "image_block_axis_demosaic_0_0/inst/buf0_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M buf0_reg_0_63_0_2
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wp1_a),
        .DIA(wp1_d[0]),
        .DIB(wp1_d[1]),
        .DIC(wp1_d[2]),
        .DID(1'b0),
        .DOA(q00[0]),
        .DOB(q00[1]),
        .DOC(q00[2]),
        .DOD(NLW_buf0_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in__1));
  LUT3 #(
    .INIT(8'h40)) 
    buf0_reg_0_63_0_2_i_1
       (.I0(wp1_s),
        .I1(\m_axis_tdata[23]_i_2_n_0 ),
        .I2(wp1_v),
        .O(p_0_in__1));
  LUT3 #(
    .INIT(8'hFE)) 
    buf0_reg_0_63_0_2_i_2
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(buf0_reg_0_63_0_2_i_8_n_0),
        .I2(\fc_reg_n_0_[5] ),
        .O(rd_addr[5]));
  LUT2 #(
    .INIT(4'hE)) 
    buf0_reg_0_63_0_2_i_3
       (.I0(\fc_reg_n_0_[4] ),
        .I1(s_axis_tready_INST_0_i_2_n_0),
        .O(rd_addr[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    buf0_reg_0_63_0_2_i_4
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(buf0_reg_0_63_0_2_i_8_n_0),
        .I2(\fc_reg_n_0_[3] ),
        .O(rd_addr[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    buf0_reg_0_63_0_2_i_5
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(buf0_reg_0_63_0_2_i_8_n_0),
        .I2(\fc_reg_n_0_[2] ),
        .O(rd_addr[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    buf0_reg_0_63_0_2_i_6
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(buf0_reg_0_63_0_2_i_8_n_0),
        .I2(\fc_reg_n_0_[1] ),
        .O(rd_addr[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    buf0_reg_0_63_0_2_i_7
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(buf0_reg_0_63_0_2_i_8_n_0),
        .I2(\fc_reg_n_0_[0] ),
        .O(rd_addr[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    buf0_reg_0_63_0_2_i_8
       (.I0(\fc_reg_n_0_[2] ),
        .I1(\fc_reg_n_0_[3] ),
        .I2(\fc_reg_n_0_[4] ),
        .I3(\fc_reg_n_0_[5] ),
        .I4(\fc_reg_n_0_[0] ),
        .I5(\fc_reg_n_0_[1] ),
        .O(buf0_reg_0_63_0_2_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "image_block_axis_demosaic_0_0/inst/buf0_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M buf0_reg_0_63_3_5
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wp1_a),
        .DIA(wp1_d[3]),
        .DIB(wp1_d[4]),
        .DIC(wp1_d[5]),
        .DID(1'b0),
        .DOA(q00[3]),
        .DOB(q00[4]),
        .DOC(q00[5]),
        .DOD(NLW_buf0_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in__1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "image_block_axis_demosaic_0_0/inst/buf0_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M buf0_reg_0_63_6_7
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wp1_a),
        .DIA(wp1_d[6]),
        .DIB(wp1_d[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(q00[6]),
        .DOB(q00[7]),
        .DOC(NLW_buf0_reg_0_63_6_7_DOC_UNCONNECTED),
        .DOD(NLW_buf0_reg_0_63_6_7_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in__1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "image_block_axis_demosaic_0_0/inst/buf1_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M buf1_reg_0_63_0_2
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wp1_a),
        .DIA(wp1_d[0]),
        .DIB(wp1_d[1]),
        .DIC(wp1_d[2]),
        .DID(1'b0),
        .DOA(q10[0]),
        .DOB(q10[1]),
        .DOC(q10[2]),
        .DOD(NLW_buf1_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in__2));
  LUT3 #(
    .INIT(8'h80)) 
    buf1_reg_0_63_0_2_i_1
       (.I0(wp1_s),
        .I1(\m_axis_tdata[23]_i_2_n_0 ),
        .I2(wp1_v),
        .O(p_0_in__2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "image_block_axis_demosaic_0_0/inst/buf1_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M buf1_reg_0_63_3_5
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wp1_a),
        .DIA(wp1_d[3]),
        .DIB(wp1_d[4]),
        .DIC(wp1_d[5]),
        .DID(1'b0),
        .DOA(q10[3]),
        .DOB(q10[4]),
        .DOC(q10[5]),
        .DOD(NLW_buf1_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in__2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "image_block_axis_demosaic_0_0/inst/buf1_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M buf1_reg_0_63_6_7
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wp1_a),
        .DIA(wp1_d[6]),
        .DIB(wp1_d[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(q10[6]),
        .DOB(q10[7]),
        .DOC(NLW_buf1_reg_0_63_6_7_DOC_UNCONNECTED),
        .DOD(NLW_buf1_reg_0_63_6_7_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in__2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ccx_f_carry
       (.CI(1'b0),
        .CO({ccx_f_carry_n_0,ccx_f_carry_n_1,ccx_f_carry_n_2,ccx_f_carry_n_3}),
        .CYINIT(\fc_reg_n_0_[0] ),
        .DI({\fc_reg_n_0_[4] ,\fc_reg_n_0_[3] ,\fc_reg_n_0_[2] ,\fc_reg_n_0_[1] }),
        .O(ccx_f[4:1]),
        .S({ccx_f_carry_i_1_n_0,ccx_f_carry_i_2_n_0,ccx_f_carry_i_3_n_0,ccx_f_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ccx_f_carry__0
       (.CI(ccx_f_carry_n_0),
        .CO({ccx_f_carry__0_n_0,ccx_f_carry__0_n_1,ccx_f_carry__0_n_2,ccx_f_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\fc_reg_n_0_[8] ,\fc_reg_n_0_[7] ,\fc_reg_n_0_[6] ,\fc_reg_n_0_[5] }),
        .O(ccx_f[8:5]),
        .S({ccx_f_carry__0_i_1_n_0,ccx_f_carry__0_i_2_n_0,ccx_f_carry__0_i_3_n_0,ccx_f_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__0_i_1
       (.I0(\fc_reg_n_0_[8] ),
        .O(ccx_f_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__0_i_2
       (.I0(\fc_reg_n_0_[7] ),
        .O(ccx_f_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__0_i_3
       (.I0(\fc_reg_n_0_[6] ),
        .O(ccx_f_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__0_i_4
       (.I0(\fc_reg_n_0_[5] ),
        .O(ccx_f_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ccx_f_carry__1
       (.CI(ccx_f_carry__0_n_0),
        .CO({NLW_ccx_f_carry__1_CO_UNCONNECTED[3:2],ccx_f_carry__1_n_2,ccx_f_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\fc_reg_n_0_[10] ,\fc_reg_n_0_[9] }),
        .O({NLW_ccx_f_carry__1_O_UNCONNECTED[3],ccx_f[11:9]}),
        .S({1'b0,ccx_f_carry__1_i_1_n_0,ccx_f_carry__1_i_2_n_0,ccx_f_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__1_i_1
       (.I0(\fc_reg_n_0_[11] ),
        .O(ccx_f_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__1_i_2
       (.I0(\fc_reg_n_0_[10] ),
        .O(ccx_f_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry__1_i_3
       (.I0(\fc_reg_n_0_[9] ),
        .O(ccx_f_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry_i_1
       (.I0(\fc_reg_n_0_[4] ),
        .O(ccx_f_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry_i_2
       (.I0(\fc_reg_n_0_[3] ),
        .O(ccx_f_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry_i_3
       (.I0(\fc_reg_n_0_[2] ),
        .O(ccx_f_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ccx_f_carry_i_4
       (.I0(\fc_reg_n_0_[1] ),
        .O(ccx_f_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cy[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\cy_reg_n_0_[0] ),
        .O(\cy[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[10]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[11]_i_4_n_6 ),
        .O(\cy[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0B080000)) 
    \cy[11]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[0]_i_2_n_0 ),
        .I4(\m_axis_tdata[23]_i_2_n_0 ),
        .O(\cy[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[11]_i_2 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[11]_i_4_n_5 ),
        .O(\cy[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \cy[11]_i_3 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(\fc_reg_n_0_[4] ),
        .I2(\fc_reg_n_0_[0] ),
        .I3(\fc_reg_n_0_[6] ),
        .I4(\fc_reg_n_0_[7] ),
        .I5(p1_cvalid_i_2_n_0),
        .O(\cy[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cy[11]_i_5 
       (.I0(\fc_reg_n_0_[9] ),
        .I1(\fc_reg_n_0_[8] ),
        .I2(\fc_reg_n_0_[11] ),
        .I3(\fc_reg_n_0_[10] ),
        .O(\cy[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[1]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_7 ),
        .O(\cy[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[2]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_6 ),
        .O(\cy[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[3]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_5 ),
        .O(\cy[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[4]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_4 ),
        .O(\cy[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[5]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_7 ),
        .O(\cy[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[6]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_6 ),
        .O(\cy[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[7]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_5 ),
        .O(\cy[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[8]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_4 ),
        .O(\cy[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7000000)) 
    \cy[9]_i_1 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[11]_i_4_n_7 ),
        .O(\cy[9]_i_1_n_0 ));
  FDRE \cy_reg[0] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[0]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \cy_reg[10] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[10]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \cy_reg[11] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[11]_i_2_n_0 ),
        .Q(\cy_reg_n_0_[11] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cy_reg[11]_i_4 
       (.CI(\cy_reg[8]_i_2_n_0 ),
        .CO({\NLW_cy_reg[11]_i_4_CO_UNCONNECTED [3:2],\cy_reg[11]_i_4_n_2 ,\cy_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cy_reg[11]_i_4_O_UNCONNECTED [3],\cy_reg[11]_i_4_n_5 ,\cy_reg[11]_i_4_n_6 ,\cy_reg[11]_i_4_n_7 }),
        .S({1'b0,\cy_reg_n_0_[11] ,\cy_reg_n_0_[10] ,\cy_reg_n_0_[9] }));
  FDRE \cy_reg[1] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[1]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \cy_reg[2] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[2]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \cy_reg[3] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[3]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \cy_reg[4] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[4]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[4] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cy_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cy_reg[4]_i_2_n_0 ,\cy_reg[4]_i_2_n_1 ,\cy_reg[4]_i_2_n_2 ,\cy_reg[4]_i_2_n_3 }),
        .CYINIT(\cy_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cy_reg[4]_i_2_n_4 ,\cy_reg[4]_i_2_n_5 ,\cy_reg[4]_i_2_n_6 ,\cy_reg[4]_i_2_n_7 }),
        .S({\cy_reg_n_0_[4] ,\cy_reg_n_0_[3] ,\cy_reg_n_0_[2] ,\cy_reg_n_0_[1] }));
  FDRE \cy_reg[5] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[5]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \cy_reg[6] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[6]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \cy_reg[7] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[7]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \cy_reg[8] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[8]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[8] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cy_reg[8]_i_2 
       (.CI(\cy_reg[4]_i_2_n_0 ),
        .CO({\cy_reg[8]_i_2_n_0 ,\cy_reg[8]_i_2_n_1 ,\cy_reg[8]_i_2_n_2 ,\cy_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cy_reg[8]_i_2_n_4 ,\cy_reg[8]_i_2_n_5 ,\cy_reg[8]_i_2_n_6 ,\cy_reg[8]_i_2_n_7 }),
        .S({\cy_reg_n_0_[8] ,\cy_reg_n_0_[7] ,\cy_reg_n_0_[6] ,\cy_reg_n_0_[5] }));
  FDRE \cy_reg[9] 
       (.C(aclk),
        .CE(\cy[11]_i_1_n_0 ),
        .D(\cy[9]_i_1_n_0 ),
        .Q(\cy_reg_n_0_[9] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fc0_carry
       (.CI(1'b0),
        .CO({fc0_carry_n_0,fc0_carry_n_1,fc0_carry_n_2,fc0_carry_n_3}),
        .CYINIT(\fc_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fc0_carry_n_4,fc0_carry_n_5,fc0_carry_n_6,fc0_carry_n_7}),
        .S({\fc_reg_n_0_[4] ,\fc_reg_n_0_[3] ,\fc_reg_n_0_[2] ,\fc_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fc0_carry__0
       (.CI(fc0_carry_n_0),
        .CO({fc0_carry__0_n_0,fc0_carry__0_n_1,fc0_carry__0_n_2,fc0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({fc0_carry__0_n_4,fc0_carry__0_n_5,fc0_carry__0_n_6,fc0_carry__0_n_7}),
        .S({\fc_reg_n_0_[8] ,\fc_reg_n_0_[7] ,\fc_reg_n_0_[6] ,\fc_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fc0_carry__1
       (.CI(fc0_carry__0_n_0),
        .CO({NLW_fc0_carry__1_CO_UNCONNECTED[3:2],fc0_carry__1_n_2,fc0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fc0_carry__1_O_UNCONNECTED[3],fc0_carry__1_n_5,fc0_carry__1_n_6,fc0_carry__1_n_7}),
        .S({1'b0,\fc_reg_n_0_[11] ,\fc_reg_n_0_[10] ,\fc_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \fc[0]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\fc_reg_n_0_[0] ),
        .O(\fc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[10]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__1_n_6),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'h00A8)) 
    \fc[11]_i_1 
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state[0]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .O(\fc[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[11]_i_2 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__1_n_5),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[1]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry_n_7),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[2]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry_n_6),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[3]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry_n_5),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[4]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry_n_4),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[5]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__0_n_7),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[6]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__0_n_6),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[7]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__0_n_5),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[8]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__0_n_4),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[9]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(fc0_carry__1_n_7),
        .O(p_1_in[9]));
  FDRE \fc_reg[0] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(\fc[0]_i_1_n_0 ),
        .Q(\fc_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \fc_reg[10] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\fc_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \fc_reg[11] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\fc_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \fc_reg[1] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\fc_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \fc_reg[2] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\fc_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \fc_reg[3] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\fc_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \fc_reg[4] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\fc_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \fc_reg[5] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\fc_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \fc_reg[6] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\fc_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \fc_reg[7] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\fc_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \fc_reg[8] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\fc_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \fc_reg[9] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\fc_reg_n_0_[9] ),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h77085508)) 
    \flush_cnt[0]_i_1 
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(flush_cnt[1]),
        .I3(flush_cnt[0]),
        .I4(\state[1]_i_3_n_0 ),
        .O(\flush_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h78F058D0)) 
    \flush_cnt[1]_i_1 
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(flush_cnt[1]),
        .I3(flush_cnt[0]),
        .I4(\state[1]_i_3_n_0 ),
        .O(\flush_cnt[1]_i_1_n_0 ));
  FDRE \flush_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\flush_cnt[0]_i_1_n_0 ),
        .Q(flush_cnt[0]),
        .R(p_0_in));
  FDRE \flush_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\flush_cnt[1]_i_1_n_0 ),
        .Q(flush_cnt[1]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[0]_i_1 
       (.I0(ud[0]),
        .I1(diag[0]),
        .I2(\w1_reg[1] [0]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[0]),
        .O(p_2_out[0]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[10]_i_1 
       (.I0(cross[2]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [2]),
        .O(p_2_out[10]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[11]_i_1 
       (.I0(cross[3]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [3]),
        .O(p_2_out[11]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[12]_i_1 
       (.I0(cross[4]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [4]),
        .O(p_2_out[12]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[13]_i_1 
       (.I0(cross[5]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [5]),
        .O(p_2_out[13]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[14]_i_1 
       (.I0(cross[6]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [6]),
        .O(p_2_out[14]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[15]_i_1 
       (.I0(cross[7]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [7]),
        .O(p_2_out[15]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[16]_i_1 
       (.I0(lr[0]),
        .I1(\w1_reg[1] [0]),
        .I2(diag[0]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[0]),
        .O(p_2_out[16]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[17]_i_1 
       (.I0(lr[1]),
        .I1(\w1_reg[1] [1]),
        .I2(diag[1]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[1]),
        .O(p_2_out[17]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[18]_i_1 
       (.I0(lr[2]),
        .I1(\w1_reg[1] [2]),
        .I2(diag[2]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[2]),
        .O(p_2_out[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[18]_i_10 
       (.I0(\w0_reg[1] [1]),
        .I1(\w2_reg[1] [1]),
        .O(\m_axis_tdata[18]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[18]_i_11 
       (.I0(\w0_reg[1] [0]),
        .I1(\w2_reg[1] [0]),
        .O(\m_axis_tdata[18]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[18]_i_4 
       (.I0(lc__5),
        .I1(\w1_reg[0] [3]),
        .I2(\w1_reg[1] [3]),
        .I3(\w1_reg[2] [3]),
        .O(\m_axis_tdata[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[18]_i_5 
       (.I0(lc__5),
        .I1(\w1_reg[0] [2]),
        .I2(\w1_reg[1] [2]),
        .I3(\w1_reg[2] [2]),
        .O(\m_axis_tdata[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[18]_i_6 
       (.I0(lc__5),
        .I1(\w1_reg[0] [1]),
        .I2(\w1_reg[1] [1]),
        .I3(\w1_reg[2] [1]),
        .O(\m_axis_tdata[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[18]_i_7 
       (.I0(lc__5),
        .I1(\w1_reg[0] [0]),
        .I2(\w1_reg[1] [0]),
        .I3(\w1_reg[2] [0]),
        .O(\m_axis_tdata[18]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[18]_i_8 
       (.I0(\w0_reg[1] [3]),
        .I1(\w2_reg[1] [3]),
        .O(\m_axis_tdata[18]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[18]_i_9 
       (.I0(\w0_reg[1] [2]),
        .I1(\w2_reg[1] [2]),
        .O(\m_axis_tdata[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[19]_i_1 
       (.I0(lr[3]),
        .I1(\w1_reg[1] [3]),
        .I2(diag[3]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[3]),
        .O(p_2_out[19]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[1]_i_1 
       (.I0(ud[1]),
        .I1(diag[1]),
        .I2(\w1_reg[1] [1]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[1]),
        .O(p_2_out[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[20]_i_1 
       (.I0(lr[4]),
        .I1(\w1_reg[1] [4]),
        .I2(diag[4]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[4]),
        .O(p_2_out[20]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[21]_i_1 
       (.I0(lr[5]),
        .I1(\w1_reg[1] [5]),
        .I2(diag[5]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[5]),
        .O(p_2_out[21]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[22]_i_1 
       (.I0(lr[6]),
        .I1(\w1_reg[1] [6]),
        .I2(diag[6]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[6]),
        .O(p_2_out[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[22]_i_10 
       (.I0(\w0_reg[1] [5]),
        .I1(\w2_reg[1] [5]),
        .O(\m_axis_tdata[22]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[22]_i_11 
       (.I0(\w0_reg[1] [4]),
        .I1(\w2_reg[1] [4]),
        .O(\m_axis_tdata[22]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[22]_i_4 
       (.I0(lc__5),
        .I1(\w1_reg[0] [7]),
        .I2(\w1_reg[1] [7]),
        .I3(\w1_reg[2] [7]),
        .O(\m_axis_tdata[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[22]_i_5 
       (.I0(lc__5),
        .I1(\w1_reg[0] [6]),
        .I2(\w1_reg[1] [6]),
        .I3(\w1_reg[2] [6]),
        .O(\m_axis_tdata[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[22]_i_6 
       (.I0(lc__5),
        .I1(\w1_reg[0] [5]),
        .I2(\w1_reg[1] [5]),
        .I3(\w1_reg[2] [5]),
        .O(\m_axis_tdata[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \m_axis_tdata[22]_i_7 
       (.I0(lc__5),
        .I1(\w1_reg[0] [4]),
        .I2(\w1_reg[1] [4]),
        .I3(\w1_reg[2] [4]),
        .O(\m_axis_tdata[22]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[22]_i_8 
       (.I0(\w0_reg[1] [7]),
        .I1(\w2_reg[1] [7]),
        .O(\m_axis_tdata[22]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[22]_i_9 
       (.I0(\w0_reg[1] [6]),
        .I1(\w2_reg[1] [6]),
        .O(\m_axis_tdata[22]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \m_axis_tdata[23]_i_2 
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid_reg_0),
        .O(\m_axis_tdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[23]_i_3 
       (.I0(lr[7]),
        .I1(\w1_reg[1] [7]),
        .I2(diag[7]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(ud[7]),
        .O(p_2_out[23]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[2]_i_1 
       (.I0(ud[2]),
        .I1(diag[2]),
        .I2(\w1_reg[1] [2]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[2]),
        .O(p_2_out[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[3]_i_1 
       (.I0(ud[3]),
        .I1(diag[3]),
        .I2(\w1_reg[1] [3]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[3]),
        .O(p_2_out[3]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[4]_i_1 
       (.I0(ud[4]),
        .I1(diag[4]),
        .I2(\w1_reg[1] [4]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[4]),
        .O(p_2_out[4]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[5]_i_1 
       (.I0(ud[5]),
        .I1(diag[5]),
        .I2(\w1_reg[1] [5]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[5]),
        .O(p_2_out[5]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[6]_i_1 
       (.I0(ud[6]),
        .I1(diag[6]),
        .I2(\w1_reg[1] [6]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[6]),
        .O(p_2_out[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \m_axis_tdata[7]_i_1 
       (.I0(ud[7]),
        .I1(diag[7]),
        .I2(\w1_reg[1] [7]),
        .I3(p_0_in__0),
        .I4(p_0_in_1),
        .I5(lr[7]),
        .O(p_2_out[7]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[8]_i_1 
       (.I0(cross[0]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [0]),
        .O(p_2_out[8]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \m_axis_tdata[9]_i_1 
       (.I0(cross[1]),
        .I1(p_0_in__0),
        .I2(p_0_in_1),
        .I3(\w1_reg[1] [1]),
        .O(p_2_out[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[10]),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[11]),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[12]),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[13]),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[14]),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[15]),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[16]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[17]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[18]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  CARRY4 \m_axis_tdata_reg[18]_i_2 
       (.CI(1'b0),
        .CO({\m_axis_tdata_reg[18]_i_2_n_0 ,\m_axis_tdata_reg[18]_i_2_n_1 ,\m_axis_tdata_reg[18]_i_2_n_2 ,\m_axis_tdata_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\w1_reg[2] [3:0]),
        .O({lr[2:0],\m_axis_tdata_reg[18]_i_2_n_7 }),
        .S({\m_axis_tdata[18]_i_4_n_0 ,\m_axis_tdata[18]_i_5_n_0 ,\m_axis_tdata[18]_i_6_n_0 ,\m_axis_tdata[18]_i_7_n_0 }));
  CARRY4 \m_axis_tdata_reg[18]_i_3 
       (.CI(1'b0),
        .CO({\m_axis_tdata_reg[18]_i_3_n_0 ,\m_axis_tdata_reg[18]_i_3_n_1 ,\m_axis_tdata_reg[18]_i_3_n_2 ,\m_axis_tdata_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\w0_reg[1] [3:0]),
        .O({ud[2:0],\NLW_m_axis_tdata_reg[18]_i_3_O_UNCONNECTED [0]}),
        .S({\m_axis_tdata[18]_i_8_n_0 ,\m_axis_tdata[18]_i_9_n_0 ,\m_axis_tdata[18]_i_10_n_0 ,\m_axis_tdata[18]_i_11_n_0 }));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[19]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[20]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[21]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[22]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  CARRY4 \m_axis_tdata_reg[22]_i_2 
       (.CI(\m_axis_tdata_reg[18]_i_2_n_0 ),
        .CO({\m_axis_tdata_reg[22]_i_2_n_0 ,\m_axis_tdata_reg[22]_i_2_n_1 ,\m_axis_tdata_reg[22]_i_2_n_2 ,\m_axis_tdata_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\w1_reg[2] [7:4]),
        .O(lr[6:3]),
        .S({\m_axis_tdata[22]_i_4_n_0 ,\m_axis_tdata[22]_i_5_n_0 ,\m_axis_tdata[22]_i_6_n_0 ,\m_axis_tdata[22]_i_7_n_0 }));
  CARRY4 \m_axis_tdata_reg[22]_i_3 
       (.CI(\m_axis_tdata_reg[18]_i_3_n_0 ),
        .CO({\m_axis_tdata_reg[22]_i_3_n_0 ,\m_axis_tdata_reg[22]_i_3_n_1 ,\m_axis_tdata_reg[22]_i_3_n_2 ,\m_axis_tdata_reg[22]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\w0_reg[1] [7:4]),
        .O(ud[6:3]),
        .S({\m_axis_tdata[22]_i_8_n_0 ,\m_axis_tdata[22]_i_9_n_0 ,\m_axis_tdata[22]_i_10_n_0 ,\m_axis_tdata[22]_i_11_n_0 }));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[23]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  CARRY4 \m_axis_tdata_reg[23]_i_4 
       (.CI(\m_axis_tdata_reg[22]_i_3_n_0 ),
        .CO({\NLW_m_axis_tdata_reg[23]_i_4_CO_UNCONNECTED [3:1],ud[7]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axis_tdata_reg[23]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[8]),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p_2_out[9]),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(m_axis_tlast_i_3_n_0),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axis_tlast_i_2
       (.I0(\p2_ccx_reg_n_0_[10] ),
        .I1(\p2_ccx_reg_n_0_[9] ),
        .I2(\p2_ccx_reg_n_0_[11] ),
        .I3(\p2_ccx_reg_n_0_[6] ),
        .I4(\p2_ccx_reg_n_0_[7] ),
        .I5(\p2_ccx_reg_n_0_[8] ),
        .O(m_axis_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    m_axis_tlast_i_3
       (.I0(p_0_in__0),
        .I1(\p2_ccx_reg_n_0_[1] ),
        .I2(\p2_ccx_reg_n_0_[2] ),
        .I3(\p2_ccx_reg_n_0_[3] ),
        .I4(\p2_ccx_reg_n_0_[4] ),
        .I5(\p2_ccx_reg_n_0_[5] ),
        .O(m_axis_tlast_i_3_n_0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    m_axis_tuser_i_1
       (.I0(lc__5),
        .I1(m_axis_tuser_i_3_n_0),
        .I2(\p2_ccy_reg_n_0_[11] ),
        .I3(\p2_ccy_reg_n_0_[10] ),
        .I4(\p2_ccy_reg_n_0_[8] ),
        .I5(\p2_ccy_reg_n_0_[9] ),
        .O(m_axis_tuser0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tuser_i_2
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(m_axis_tuser_i_4_n_0),
        .O(lc__5));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_axis_tuser_i_3
       (.I0(\p2_ccy_reg_n_0_[5] ),
        .I1(\p2_ccy_reg_n_0_[4] ),
        .I2(\p2_ccy_reg_n_0_[7] ),
        .I3(\p2_ccy_reg_n_0_[6] ),
        .I4(m_axis_tuser_i_5_n_0),
        .O(m_axis_tuser_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tuser_i_4
       (.I0(\p2_ccx_reg_n_0_[2] ),
        .I1(p_0_in__0),
        .I2(\p2_ccx_reg_n_0_[1] ),
        .I3(\p2_ccx_reg_n_0_[5] ),
        .I4(\p2_ccx_reg_n_0_[3] ),
        .I5(\p2_ccx_reg_n_0_[4] ),
        .O(m_axis_tuser_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tuser_i_5
       (.I0(\p2_ccy_reg_n_0_[2] ),
        .I1(\p2_ccy_reg_n_0_[3] ),
        .I2(p_0_in_1),
        .I3(\p2_ccy_reg_n_0_[1] ),
        .O(m_axis_tuser_i_5_n_0));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(m_axis_tuser0),
        .Q(m_axis_tuser),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h8F880000)) 
    m_axis_tvalid_i_1
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(p2_cvalid),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid_reg_0),
        .I4(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p1_ccx[0]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .O(\p1_ccx[0]_i_1_n_0 ));
  FDRE \p1_ccx_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\p1_ccx[0]_i_1_n_0 ),
        .Q(p1_ccx[0]),
        .R(1'b0));
  FDRE \p1_ccx_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[10]),
        .Q(p1_ccx[10]),
        .R(1'b0));
  FDRE \p1_ccx_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[11]),
        .Q(p1_ccx[11]),
        .R(1'b0));
  FDRE \p1_ccx_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[1]),
        .Q(p1_ccx[1]),
        .R(1'b0));
  FDRE \p1_ccx_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[2]),
        .Q(p1_ccx[2]),
        .R(1'b0));
  FDRE \p1_ccx_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[3]),
        .Q(p1_ccx[3]),
        .R(1'b0));
  FDRE \p1_ccx_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[4]),
        .Q(p1_ccx[4]),
        .R(1'b0));
  FDRE \p1_ccx_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[5]),
        .Q(p1_ccx[5]),
        .R(1'b0));
  FDRE \p1_ccx_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[6]),
        .Q(p1_ccx[6]),
        .R(1'b0));
  FDRE \p1_ccx_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[7]),
        .Q(p1_ccx[7]),
        .R(1'b0));
  FDRE \p1_ccx_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[8]),
        .Q(p1_ccx[8]),
        .R(1'b0));
  FDRE \p1_ccx_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(ccx_f[9]),
        .Q(p1_ccx[9]),
        .R(1'b0));
  FDRE \p1_ccy_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[10] ),
        .Q(p1_ccy[10]),
        .R(1'b0));
  FDRE \p1_ccy_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[11] ),
        .Q(p1_ccy[11]),
        .R(1'b0));
  FDRE \p1_ccy_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[1] ),
        .Q(p1_ccy[1]),
        .R(1'b0));
  FDRE \p1_ccy_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[2] ),
        .Q(p1_ccy[2]),
        .R(1'b0));
  FDRE \p1_ccy_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[3] ),
        .Q(p1_ccy[3]),
        .R(1'b0));
  FDRE \p1_ccy_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[4] ),
        .Q(p1_ccy[4]),
        .R(1'b0));
  FDRE \p1_ccy_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[5] ),
        .Q(p1_ccy[5]),
        .R(1'b0));
  FDRE \p1_ccy_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[6] ),
        .Q(p1_ccy[6]),
        .R(1'b0));
  FDRE \p1_ccy_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[7] ),
        .Q(p1_ccy[7]),
        .R(1'b0));
  FDRE \p1_ccy_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[8] ),
        .Q(p1_ccy[8]),
        .R(1'b0));
  FDRE \p1_ccy_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[9] ),
        .Q(p1_ccy[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    p1_cvalid_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_axis_tready_INST_0_i_2_n_0),
        .I3(p1_cvalid_i_2_n_0),
        .I4(\fc_reg_n_0_[4] ),
        .I5(\fc_reg_n_0_[0] ),
        .O(cvalid_f));
  LUT4 #(
    .INIT(16'hFFFE)) 
    p1_cvalid_i_2
       (.I0(\fc_reg_n_0_[2] ),
        .I1(\fc_reg_n_0_[3] ),
        .I2(\fc_reg_n_0_[5] ),
        .I3(\fc_reg_n_0_[1] ),
        .O(p1_cvalid_i_2_n_0));
  FDRE p1_cvalid_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(cvalid_f),
        .Q(p1_cvalid),
        .R(p_0_in));
  FDRE p1_rpar_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[0] ),
        .Q(p1_rpar),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    p1_t0cur_i_1
       (.I0(s_axis_tready_INST_0_i_4_n_0),
        .I1(p1_t0cur_i_2_n_0),
        .O(t0_from_cur_f));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    p1_t0cur_i_2
       (.I0(\cy_reg_n_0_[1] ),
        .I1(\cy_reg_n_0_[0] ),
        .I2(\cy_reg_n_0_[2] ),
        .I3(\cy_reg_n_0_[4] ),
        .I4(\cy_reg_n_0_[5] ),
        .I5(\cy_reg_n_0_[3] ),
        .O(p1_t0cur_i_2_n_0));
  FDRE p1_t0cur_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_from_cur_f),
        .Q(p1_t0cur),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    p1_t2buf_i_1
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .O(t2_from_buf_f));
  FDRE p1_t2buf_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_from_buf_f),
        .Q(p1_t2buf),
        .R(1'b0));
  FDRE \p2_ccx_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[0]),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \p2_ccx_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[10]),
        .Q(\p2_ccx_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[11]),
        .Q(\p2_ccx_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[1]),
        .Q(\p2_ccx_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[2]),
        .Q(\p2_ccx_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[3]),
        .Q(\p2_ccx_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[4]),
        .Q(\p2_ccx_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[5]),
        .Q(\p2_ccx_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[6]),
        .Q(\p2_ccx_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[7]),
        .Q(\p2_ccx_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[8]),
        .Q(\p2_ccx_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \p2_ccx_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[9]),
        .Q(\p2_ccx_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_rpar),
        .Q(p_0_in_1),
        .R(1'b0));
  FDRE \p2_ccy_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[10]),
        .Q(\p2_ccy_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[11]),
        .Q(\p2_ccy_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[1]),
        .Q(\p2_ccy_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[2]),
        .Q(\p2_ccy_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[3]),
        .Q(\p2_ccy_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[4]),
        .Q(\p2_ccy_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[5]),
        .Q(\p2_ccy_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[6]),
        .Q(\p2_ccy_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[7]),
        .Q(\p2_ccy_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[8]),
        .Q(\p2_ccy_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \p2_ccy_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[9]),
        .Q(\p2_ccy_reg_n_0_[9] ),
        .R(1'b0));
  FDRE p2_cvalid_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_cvalid),
        .Q(p2_cvalid),
        .R(p_0_in));
  FDRE \q0_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[0]),
        .Q(q0[0]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[1]),
        .Q(q0[1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[2]),
        .Q(q0[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[3]),
        .Q(q0[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[4]),
        .Q(q0[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[5]),
        .Q(q0[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[6]),
        .Q(q0[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q00[7]),
        .Q(q0[7]),
        .R(1'b0));
  FDRE \q1_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[0]),
        .Q(q1[0]),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[1]),
        .Q(q1[1]),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[2]),
        .Q(q1[2]),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[3]),
        .Q(q1[3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[4]),
        .Q(q1[4]),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[5]),
        .Q(q1[5]),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[6]),
        .Q(q1[6]),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(q10[7]),
        .Q(q1[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h45)) 
    s_axis_tready_INST_0
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEE0EEEE)) 
    s_axis_tready_INST_0_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(s_axis_tready_INST_0_i_2_n_0),
        .I3(s_axis_tready_INST_0_i_3_n_0),
        .I4(s_axis_tready_INST_0_i_4_n_0),
        .I5(s_axis_tready_INST_0_i_5_n_0),
        .O(s_axis_tready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axis_tready_INST_0_i_2
       (.I0(\fc_reg_n_0_[6] ),
        .I1(\fc_reg_n_0_[7] ),
        .I2(\fc_reg_n_0_[10] ),
        .I3(\fc_reg_n_0_[11] ),
        .I4(\fc_reg_n_0_[8] ),
        .I5(\fc_reg_n_0_[9] ),
        .O(s_axis_tready_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    s_axis_tready_INST_0_i_3
       (.I0(\cy_reg_n_0_[2] ),
        .I1(\cy_reg_n_0_[0] ),
        .I2(\cy_reg_n_0_[5] ),
        .I3(\cy_reg_n_0_[3] ),
        .I4(\cy_reg_n_0_[1] ),
        .O(s_axis_tready_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axis_tready_INST_0_i_4
       (.I0(\cy_reg_n_0_[7] ),
        .I1(\cy_reg_n_0_[6] ),
        .I2(\cy_reg_n_0_[8] ),
        .I3(\cy_reg_n_0_[11] ),
        .I4(\cy_reg_n_0_[9] ),
        .I5(\cy_reg_n_0_[10] ),
        .O(s_axis_tready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axis_tready_INST_0_i_5
       (.I0(\state_reg_n_0_[1] ),
        .I1(\cy_reg_n_0_[4] ),
        .I2(\cy_reg_n_0_[5] ),
        .O(s_axis_tready_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h770A7708750A750A)) 
    \state[0]_i_1 
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[0]_i_2_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \state[0]_i_2 
       (.I0(\x_in_reg_n_0_[5] ),
        .I1(\x_in_reg_n_0_[3] ),
        .I2(\x_in_reg_n_0_[4] ),
        .I3(\x_in_reg_n_0_[8] ),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\state[0]_i_4_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state[0]_i_3 
       (.I0(\x_in_reg_n_0_[9] ),
        .I1(\x_in_reg_n_0_[11] ),
        .I2(\x_in_reg_n_0_[2] ),
        .I3(\x_in_reg_n_0_[10] ),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \state[0]_i_4 
       (.I0(\x_in_reg_n_0_[1] ),
        .I1(\x_in_reg_n_0_[6] ),
        .I2(\x_in_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[7] ),
        .O(\state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h78707A70)) 
    \state[1]_i_1 
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(flush_cnt[1]),
        .I2(flush_cnt[0]),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \state[1]_i_3 
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy[11]_i_3_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(p_0_in));
  CARRY4 sum_cross__0_carry
       (.CI(1'b0),
        .CO({sum_cross__0_carry_n_0,sum_cross__0_carry_n_1,sum_cross__0_carry_n_2,sum_cross__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_cross__0_carry_i_1_n_0,sum_cross__0_carry_i_2_n_0,sum_cross__0_carry_i_3_n_0,1'b0}),
        .O({cross[1:0],NLW_sum_cross__0_carry_O_UNCONNECTED[1:0]}),
        .S({sum_cross__0_carry_i_4_n_0,sum_cross__0_carry_i_5_n_0,sum_cross__0_carry_i_6_n_0,sum_cross__0_carry_i_7_n_0}));
  CARRY4 sum_cross__0_carry__0
       (.CI(sum_cross__0_carry_n_0),
        .CO({sum_cross__0_carry__0_n_0,sum_cross__0_carry__0_n_1,sum_cross__0_carry__0_n_2,sum_cross__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_cross__0_carry__0_i_1_n_0,sum_cross__0_carry__0_i_2_n_0,sum_cross__0_carry__0_i_3_n_0,sum_cross__0_carry__0_i_4_n_0}),
        .O(cross[5:2]),
        .S({sum_cross__0_carry__0_i_5_n_0,sum_cross__0_carry__0_i_6_n_0,sum_cross__0_carry__0_i_7_n_0,sum_cross__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry__0_i_1
       (.I0(\w0_reg[1] [6]),
        .I1(\w2_reg[1] [6]),
        .I2(lr[5]),
        .O(sum_cross__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry__0_i_2
       (.I0(\w0_reg[1] [5]),
        .I1(\w2_reg[1] [5]),
        .I2(lr[4]),
        .O(sum_cross__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry__0_i_3
       (.I0(\w0_reg[1] [4]),
        .I1(\w2_reg[1] [4]),
        .I2(lr[3]),
        .O(sum_cross__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry__0_i_4
       (.I0(\w0_reg[1] [3]),
        .I1(\w2_reg[1] [3]),
        .I2(lr[2]),
        .O(sum_cross__0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry__0_i_5
       (.I0(sum_cross__0_carry__0_i_1_n_0),
        .I1(\w2_reg[1] [7]),
        .I2(\w0_reg[1] [7]),
        .I3(lr[6]),
        .O(sum_cross__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry__0_i_6
       (.I0(\w0_reg[1] [6]),
        .I1(\w2_reg[1] [6]),
        .I2(lr[5]),
        .I3(sum_cross__0_carry__0_i_2_n_0),
        .O(sum_cross__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry__0_i_7
       (.I0(\w0_reg[1] [5]),
        .I1(\w2_reg[1] [5]),
        .I2(lr[4]),
        .I3(sum_cross__0_carry__0_i_3_n_0),
        .O(sum_cross__0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry__0_i_8
       (.I0(\w0_reg[1] [4]),
        .I1(\w2_reg[1] [4]),
        .I2(lr[3]),
        .I3(sum_cross__0_carry__0_i_4_n_0),
        .O(sum_cross__0_carry__0_i_8_n_0));
  CARRY4 sum_cross__0_carry__1
       (.CI(sum_cross__0_carry__0_n_0),
        .CO({NLW_sum_cross__0_carry__1_CO_UNCONNECTED[3:2],cross[7],NLW_sum_cross__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,lr[7]}),
        .O({NLW_sum_cross__0_carry__1_O_UNCONNECTED[3:1],cross[6]}),
        .S({1'b0,1'b0,1'b1,sum_cross__0_carry__1_i_2_n_0}));
  CARRY4 sum_cross__0_carry__1_i_1
       (.CI(\m_axis_tdata_reg[22]_i_2_n_0 ),
        .CO({NLW_sum_cross__0_carry__1_i_1_CO_UNCONNECTED[3:1],lr[7]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sum_cross__0_carry__1_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h17E8)) 
    sum_cross__0_carry__1_i_2
       (.I0(lr[6]),
        .I1(\w2_reg[1] [7]),
        .I2(\w0_reg[1] [7]),
        .I3(lr[7]),
        .O(sum_cross__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry_i_1
       (.I0(\w0_reg[1] [2]),
        .I1(\w2_reg[1] [2]),
        .I2(lr[1]),
        .O(sum_cross__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry_i_2
       (.I0(\w0_reg[1] [1]),
        .I1(\w2_reg[1] [1]),
        .I2(lr[0]),
        .O(sum_cross__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    sum_cross__0_carry_i_3
       (.I0(\w0_reg[1] [0]),
        .I1(\w2_reg[1] [0]),
        .I2(\m_axis_tdata_reg[18]_i_2_n_7 ),
        .O(sum_cross__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry_i_4
       (.I0(\w0_reg[1] [3]),
        .I1(\w2_reg[1] [3]),
        .I2(lr[2]),
        .I3(sum_cross__0_carry_i_1_n_0),
        .O(sum_cross__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry_i_5
       (.I0(\w0_reg[1] [2]),
        .I1(\w2_reg[1] [2]),
        .I2(lr[1]),
        .I3(sum_cross__0_carry_i_2_n_0),
        .O(sum_cross__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    sum_cross__0_carry_i_6
       (.I0(\w0_reg[1] [1]),
        .I1(\w2_reg[1] [1]),
        .I2(lr[0]),
        .I3(sum_cross__0_carry_i_3_n_0),
        .O(sum_cross__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    sum_cross__0_carry_i_7
       (.I0(\w0_reg[1] [0]),
        .I1(\w2_reg[1] [0]),
        .I2(\m_axis_tdata_reg[18]_i_2_n_7 ),
        .O(sum_cross__0_carry_i_7_n_0));
  CARRY4 sum_diag__2_carry
       (.CI(1'b0),
        .CO({sum_diag__2_carry_n_0,sum_diag__2_carry_n_1,sum_diag__2_carry_n_2,sum_diag__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_diag__2_carry_i_1_n_0,sum_diag__2_carry_i_2_n_0,sum_diag__2_carry_i_3_n_0,sum_diag__2_carry_i_4_n_0}),
        .O({diag[1:0],NLW_sum_diag__2_carry_O_UNCONNECTED[1:0]}),
        .S({sum_diag__2_carry_i_5_n_0,sum_diag__2_carry_i_6_n_0,sum_diag__2_carry_i_7_n_0,sum_diag__2_carry_i_8_n_0}));
  CARRY4 sum_diag__2_carry__0
       (.CI(sum_diag__2_carry_n_0),
        .CO({sum_diag__2_carry__0_n_0,sum_diag__2_carry__0_n_1,sum_diag__2_carry__0_n_2,sum_diag__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_diag__2_carry__0_i_1_n_0,sum_diag__2_carry__0_i_2_n_0,sum_diag__2_carry__0_i_3_n_0,sum_diag__2_carry__0_i_4_n_0}),
        .O(diag[5:2]),
        .S({sum_diag__2_carry__0_i_5_n_0,sum_diag__2_carry__0_i_6_n_0,sum_diag__2_carry__0_i_7_n_0,sum_diag__2_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    sum_diag__2_carry__0_i_1
       (.I0(lc__5),
        .I1(\w0_reg[0] [6]),
        .I2(\w0_reg[1] [6]),
        .I3(sum_diag__2_carry__0_i_9_n_0),
        .I4(sum_diag__2_carry__0_i_10_n_0),
        .O(sum_diag__2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFEBAA820)) 
    sum_diag__2_carry__0_i_10
       (.I0(\w0_reg[2] [5]),
        .I1(lc__5),
        .I2(\w2_reg[0] [5]),
        .I3(\w2_reg[1] [5]),
        .I4(\w2_reg[2] [5]),
        .O(sum_diag__2_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry__0_i_11
       (.I0(\w2_reg[2] [5]),
        .I1(\w0_reg[2] [5]),
        .I2(\w2_reg[1] [5]),
        .I3(\w2_reg[0] [5]),
        .I4(lc__5),
        .O(sum_diag__2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEBAA820)) 
    sum_diag__2_carry__0_i_12
       (.I0(\w0_reg[2] [4]),
        .I1(lc__5),
        .I2(\w2_reg[0] [4]),
        .I3(\w2_reg[1] [4]),
        .I4(\w2_reg[2] [4]),
        .O(sum_diag__2_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry__0_i_13
       (.I0(\w2_reg[2] [4]),
        .I1(\w0_reg[2] [4]),
        .I2(\w2_reg[1] [4]),
        .I3(\w2_reg[0] [4]),
        .I4(lc__5),
        .O(sum_diag__2_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEBAA820)) 
    sum_diag__2_carry__0_i_14
       (.I0(\w0_reg[2] [3]),
        .I1(lc__5),
        .I2(\w2_reg[0] [3]),
        .I3(\w2_reg[1] [3]),
        .I4(\w2_reg[2] [3]),
        .O(sum_diag__2_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry__0_i_15
       (.I0(\w2_reg[2] [7]),
        .I1(\w0_reg[2] [7]),
        .I2(\w2_reg[1] [7]),
        .I3(\w2_reg[0] [7]),
        .I4(lc__5),
        .O(sum_diag__2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFEBAA820)) 
    sum_diag__2_carry__0_i_16
       (.I0(\w0_reg[2] [6]),
        .I1(lc__5),
        .I2(\w2_reg[0] [6]),
        .I3(\w2_reg[1] [6]),
        .I4(\w2_reg[2] [6]),
        .O(sum_diag__2_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    sum_diag__2_carry__0_i_2
       (.I0(lc__5),
        .I1(\w0_reg[0] [5]),
        .I2(\w0_reg[1] [5]),
        .I3(sum_diag__2_carry__0_i_11_n_0),
        .I4(sum_diag__2_carry__0_i_12_n_0),
        .O(sum_diag__2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    sum_diag__2_carry__0_i_3
       (.I0(lc__5),
        .I1(\w0_reg[0] [4]),
        .I2(\w0_reg[1] [4]),
        .I3(sum_diag__2_carry__0_i_13_n_0),
        .I4(sum_diag__2_carry__0_i_14_n_0),
        .O(sum_diag__2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    sum_diag__2_carry__0_i_4
       (.I0(lc__5),
        .I1(\w0_reg[0] [3]),
        .I2(\w0_reg[1] [3]),
        .I3(sum_diag__2_carry_i_12_n_0),
        .I4(sum_diag__2_carry_i_13_n_0),
        .O(sum_diag__2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    sum_diag__2_carry__0_i_5
       (.I0(sum_diag__2_carry__0_i_1_n_0),
        .I1(sum_diag__2_carry__0_i_15_n_0),
        .I2(lc__5),
        .I3(\w0_reg[0] [7]),
        .I4(\w0_reg[1] [7]),
        .I5(sum_diag__2_carry__0_i_16_n_0),
        .O(sum_diag__2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    sum_diag__2_carry__0_i_6
       (.I0(sum_diag__2_carry__0_i_2_n_0),
        .I1(sum_diag__2_carry__0_i_9_n_0),
        .I2(lc__5),
        .I3(\w0_reg[0] [6]),
        .I4(\w0_reg[1] [6]),
        .I5(sum_diag__2_carry__0_i_10_n_0),
        .O(sum_diag__2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    sum_diag__2_carry__0_i_7
       (.I0(sum_diag__2_carry__0_i_3_n_0),
        .I1(sum_diag__2_carry__0_i_11_n_0),
        .I2(lc__5),
        .I3(\w0_reg[0] [5]),
        .I4(\w0_reg[1] [5]),
        .I5(sum_diag__2_carry__0_i_12_n_0),
        .O(sum_diag__2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    sum_diag__2_carry__0_i_8
       (.I0(sum_diag__2_carry__0_i_4_n_0),
        .I1(sum_diag__2_carry__0_i_13_n_0),
        .I2(lc__5),
        .I3(\w0_reg[0] [4]),
        .I4(\w0_reg[1] [4]),
        .I5(sum_diag__2_carry__0_i_14_n_0),
        .O(sum_diag__2_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry__0_i_9
       (.I0(\w2_reg[2] [6]),
        .I1(\w0_reg[2] [6]),
        .I2(\w2_reg[1] [6]),
        .I3(\w2_reg[0] [6]),
        .I4(lc__5),
        .O(sum_diag__2_carry__0_i_9_n_0));
  CARRY4 sum_diag__2_carry__1
       (.CI(sum_diag__2_carry__0_n_0),
        .CO({NLW_sum_diag__2_carry__1_CO_UNCONNECTED[3:2],diag[7],NLW_sum_diag__2_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_diag__2_carry__1_i_1_n_0}),
        .O({NLW_sum_diag__2_carry__1_O_UNCONNECTED[3:1],diag[6]}),
        .S({1'b0,1'b0,1'b1,sum_diag__2_carry__1_i_2_n_0}));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    sum_diag__2_carry__1_i_1
       (.I0(lc__5),
        .I1(\w0_reg[0] [7]),
        .I2(\w0_reg[1] [7]),
        .I3(sum_diag__2_carry__0_i_15_n_0),
        .I4(sum_diag__2_carry__0_i_16_n_0),
        .O(sum_diag__2_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    sum_diag__2_carry__1_i_2
       (.I0(sum_diag__2_carry__0_i_16_n_0),
        .I1(L0__0[7]),
        .I2(\w2_reg[2] [7]),
        .I3(L2[7]),
        .I4(\w0_reg[2] [7]),
        .O(sum_diag__2_carry__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    sum_diag__2_carry__1_i_3
       (.I0(\w0_reg[1] [7]),
        .I1(\w0_reg[0] [7]),
        .I2(lc__5),
        .O(L0__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    sum_diag__2_carry__1_i_4
       (.I0(\w2_reg[1] [7]),
        .I1(\w2_reg[0] [7]),
        .I2(lc__5),
        .O(L2[7]));
  LUT5 #(
    .INIT(32'hFFE4E400)) 
    sum_diag__2_carry_i_1
       (.I0(lc__5),
        .I1(\w0_reg[0] [2]),
        .I2(\w0_reg[1] [2]),
        .I3(sum_diag__2_carry_i_9_n_0),
        .I4(sum_diag__2_carry_i_10_n_0),
        .O(sum_diag__2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEBAA820)) 
    sum_diag__2_carry_i_10
       (.I0(\w0_reg[2] [1]),
        .I1(lc__5),
        .I2(\w2_reg[0] [1]),
        .I3(\w2_reg[1] [1]),
        .I4(\w2_reg[2] [1]),
        .O(sum_diag__2_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_diag__2_carry_i_11
       (.I0(\w2_reg[1] [1]),
        .I1(\w2_reg[0] [1]),
        .I2(lc__5),
        .O(L2[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry_i_12
       (.I0(\w2_reg[2] [3]),
        .I1(\w0_reg[2] [3]),
        .I2(\w2_reg[1] [3]),
        .I3(\w2_reg[0] [3]),
        .I4(lc__5),
        .O(sum_diag__2_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFEBAA820)) 
    sum_diag__2_carry_i_13
       (.I0(\w0_reg[2] [2]),
        .I1(lc__5),
        .I2(\w2_reg[0] [2]),
        .I3(\w2_reg[1] [2]),
        .I4(\w2_reg[2] [2]),
        .O(sum_diag__2_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    sum_diag__2_carry_i_14
       (.I0(\w0_reg[1] [2]),
        .I1(\w0_reg[0] [2]),
        .I2(lc__5),
        .O(L0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    sum_diag__2_carry_i_15
       (.I0(\w0_reg[1] [1]),
        .I1(\w0_reg[0] [1]),
        .I2(lc__5),
        .O(L0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry_i_16
       (.I0(\w2_reg[2] [1]),
        .I1(\w0_reg[2] [1]),
        .I2(\w2_reg[1] [1]),
        .I3(\w2_reg[0] [1]),
        .I4(lc__5),
        .O(sum_diag__2_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    sum_diag__2_carry_i_17
       (.I0(\w2_reg[1] [0]),
        .I1(\w2_reg[0] [0]),
        .I2(lc__5),
        .O(L2[0]));
  LUT5 #(
    .INIT(32'h99A5665A)) 
    sum_diag__2_carry_i_2
       (.I0(sum_diag__2_carry_i_10_n_0),
        .I1(\w0_reg[1] [2]),
        .I2(\w0_reg[0] [2]),
        .I3(lc__5),
        .I4(sum_diag__2_carry_i_9_n_0),
        .O(sum_diag__2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h6969699696699696)) 
    sum_diag__2_carry_i_3
       (.I0(L2[1]),
        .I1(\w0_reg[2] [1]),
        .I2(\w2_reg[2] [1]),
        .I3(lc__5),
        .I4(\w0_reg[0] [1]),
        .I5(\w0_reg[1] [1]),
        .O(sum_diag__2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry_i_4
       (.I0(\w2_reg[2] [0]),
        .I1(\w0_reg[2] [0]),
        .I2(\w2_reg[1] [0]),
        .I3(\w2_reg[0] [0]),
        .I4(lc__5),
        .O(sum_diag__2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6669969999966966)) 
    sum_diag__2_carry_i_5
       (.I0(sum_diag__2_carry_i_1_n_0),
        .I1(sum_diag__2_carry_i_12_n_0),
        .I2(lc__5),
        .I3(\w0_reg[0] [3]),
        .I4(\w0_reg[1] [3]),
        .I5(sum_diag__2_carry_i_13_n_0),
        .O(sum_diag__2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    sum_diag__2_carry_i_6
       (.I0(sum_diag__2_carry_i_9_n_0),
        .I1(L0__0[2]),
        .I2(\w2_reg[2] [1]),
        .I3(\w0_reg[2] [1]),
        .I4(L2[1]),
        .I5(L0),
        .O(sum_diag__2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h99969666)) 
    sum_diag__2_carry_i_7
       (.I0(L0),
        .I1(sum_diag__2_carry_i_16_n_0),
        .I2(\w2_reg[2] [0]),
        .I3(L2[0]),
        .I4(\w0_reg[2] [0]),
        .O(sum_diag__2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6969699696699696)) 
    sum_diag__2_carry_i_8
       (.I0(L2[0]),
        .I1(\w0_reg[2] [0]),
        .I2(\w2_reg[2] [0]),
        .I3(lc__5),
        .I4(\w0_reg[0] [0]),
        .I5(\w0_reg[1] [0]),
        .O(sum_diag__2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96969966)) 
    sum_diag__2_carry_i_9
       (.I0(\w2_reg[2] [2]),
        .I1(\w0_reg[2] [2]),
        .I2(\w2_reg[1] [2]),
        .I3(\w2_reg[0] [2]),
        .I4(lc__5),
        .O(sum_diag__2_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h4500)) 
    \t2_d[7]_i_1 
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .I3(s_axis_tvalid),
        .O(t2_d_0));
  FDRE \t2_d_reg[0] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[0]),
        .Q(t2_d[0]),
        .R(1'b0));
  FDRE \t2_d_reg[1] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[1]),
        .Q(t2_d[1]),
        .R(1'b0));
  FDRE \t2_d_reg[2] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[2]),
        .Q(t2_d[2]),
        .R(1'b0));
  FDRE \t2_d_reg[3] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[3]),
        .Q(t2_d[3]),
        .R(1'b0));
  FDRE \t2_d_reg[4] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[4]),
        .Q(t2_d[4]),
        .R(1'b0));
  FDRE \t2_d_reg[5] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[5]),
        .Q(t2_d[5]),
        .R(1'b0));
  FDRE \t2_d_reg[6] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[6]),
        .Q(t2_d[6]),
        .R(1'b0));
  FDRE \t2_d_reg[7] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[7]),
        .Q(t2_d[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][0]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[0]),
        .I2(p1_rpar),
        .I3(q1[0]),
        .O(t0_val[0]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][1]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[1]),
        .I2(p1_rpar),
        .I3(q1[1]),
        .O(t0_val[1]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][2]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[2]),
        .I2(p1_rpar),
        .I3(q1[2]),
        .O(t0_val[2]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][3]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[3]),
        .I2(p1_rpar),
        .I3(q1[3]),
        .O(t0_val[3]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][4]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[4]),
        .I2(p1_rpar),
        .I3(q1[4]),
        .O(t0_val[4]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][5]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[5]),
        .I2(p1_rpar),
        .I3(q1[5]),
        .O(t0_val[5]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][6]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[6]),
        .I2(p1_rpar),
        .I3(q1[6]),
        .O(t0_val[6]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][7]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[7]),
        .I2(p1_rpar),
        .I3(q1[7]),
        .O(t0_val[7]));
  FDRE \w0_reg[0][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [0]),
        .Q(\w0_reg[0] [0]),
        .R(1'b0));
  FDRE \w0_reg[0][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [1]),
        .Q(\w0_reg[0] [1]),
        .R(1'b0));
  FDRE \w0_reg[0][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [2]),
        .Q(\w0_reg[0] [2]),
        .R(1'b0));
  FDRE \w0_reg[0][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [3]),
        .Q(\w0_reg[0] [3]),
        .R(1'b0));
  FDRE \w0_reg[0][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [4]),
        .Q(\w0_reg[0] [4]),
        .R(1'b0));
  FDRE \w0_reg[0][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [5]),
        .Q(\w0_reg[0] [5]),
        .R(1'b0));
  FDRE \w0_reg[0][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [6]),
        .Q(\w0_reg[0] [6]),
        .R(1'b0));
  FDRE \w0_reg[0][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[1] [7]),
        .Q(\w0_reg[0] [7]),
        .R(1'b0));
  FDRE \w0_reg[1][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [0]),
        .Q(\w0_reg[1] [0]),
        .R(1'b0));
  FDRE \w0_reg[1][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [1]),
        .Q(\w0_reg[1] [1]),
        .R(1'b0));
  FDRE \w0_reg[1][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [2]),
        .Q(\w0_reg[1] [2]),
        .R(1'b0));
  FDRE \w0_reg[1][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [3]),
        .Q(\w0_reg[1] [3]),
        .R(1'b0));
  FDRE \w0_reg[1][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [4]),
        .Q(\w0_reg[1] [4]),
        .R(1'b0));
  FDRE \w0_reg[1][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [5]),
        .Q(\w0_reg[1] [5]),
        .R(1'b0));
  FDRE \w0_reg[1][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [6]),
        .Q(\w0_reg[1] [6]),
        .R(1'b0));
  FDRE \w0_reg[1][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg[2] [7]),
        .Q(\w0_reg[1] [7]),
        .R(1'b0));
  FDRE \w0_reg[2][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[0]),
        .Q(\w0_reg[2] [0]),
        .R(1'b0));
  FDRE \w0_reg[2][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[1]),
        .Q(\w0_reg[2] [1]),
        .R(1'b0));
  FDRE \w0_reg[2][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[2]),
        .Q(\w0_reg[2] [2]),
        .R(1'b0));
  FDRE \w0_reg[2][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[3]),
        .Q(\w0_reg[2] [3]),
        .R(1'b0));
  FDRE \w0_reg[2][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[4]),
        .Q(\w0_reg[2] [4]),
        .R(1'b0));
  FDRE \w0_reg[2][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[5]),
        .Q(\w0_reg[2] [5]),
        .R(1'b0));
  FDRE \w0_reg[2][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[6]),
        .Q(\w0_reg[2] [6]),
        .R(1'b0));
  FDRE \w0_reg[2][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[7]),
        .Q(\w0_reg[2] [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][0]_i_1 
       (.I0(q1[0]),
        .I1(q0[0]),
        .I2(p1_rpar),
        .O(t1_val[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][1]_i_1 
       (.I0(q1[1]),
        .I1(q0[1]),
        .I2(p1_rpar),
        .O(t1_val[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][2]_i_1 
       (.I0(q1[2]),
        .I1(q0[2]),
        .I2(p1_rpar),
        .O(t1_val[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][3]_i_1 
       (.I0(q1[3]),
        .I1(q0[3]),
        .I2(p1_rpar),
        .O(t1_val[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][4]_i_1 
       (.I0(q1[4]),
        .I1(q0[4]),
        .I2(p1_rpar),
        .O(t1_val[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][5]_i_1 
       (.I0(q1[5]),
        .I1(q0[5]),
        .I2(p1_rpar),
        .O(t1_val[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][6]_i_1 
       (.I0(q1[6]),
        .I1(q0[6]),
        .I2(p1_rpar),
        .O(t1_val[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][7]_i_1 
       (.I0(q1[7]),
        .I1(q0[7]),
        .I2(p1_rpar),
        .O(t1_val[7]));
  FDRE \w1_reg[0][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [0]),
        .Q(\w1_reg[0] [0]),
        .R(1'b0));
  FDRE \w1_reg[0][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [1]),
        .Q(\w1_reg[0] [1]),
        .R(1'b0));
  FDRE \w1_reg[0][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [2]),
        .Q(\w1_reg[0] [2]),
        .R(1'b0));
  FDRE \w1_reg[0][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [3]),
        .Q(\w1_reg[0] [3]),
        .R(1'b0));
  FDRE \w1_reg[0][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [4]),
        .Q(\w1_reg[0] [4]),
        .R(1'b0));
  FDRE \w1_reg[0][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [5]),
        .Q(\w1_reg[0] [5]),
        .R(1'b0));
  FDRE \w1_reg[0][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [6]),
        .Q(\w1_reg[0] [6]),
        .R(1'b0));
  FDRE \w1_reg[0][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[1] [7]),
        .Q(\w1_reg[0] [7]),
        .R(1'b0));
  FDRE \w1_reg[1][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [0]),
        .Q(\w1_reg[1] [0]),
        .R(1'b0));
  FDRE \w1_reg[1][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [1]),
        .Q(\w1_reg[1] [1]),
        .R(1'b0));
  FDRE \w1_reg[1][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [2]),
        .Q(\w1_reg[1] [2]),
        .R(1'b0));
  FDRE \w1_reg[1][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [3]),
        .Q(\w1_reg[1] [3]),
        .R(1'b0));
  FDRE \w1_reg[1][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [4]),
        .Q(\w1_reg[1] [4]),
        .R(1'b0));
  FDRE \w1_reg[1][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [5]),
        .Q(\w1_reg[1] [5]),
        .R(1'b0));
  FDRE \w1_reg[1][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [6]),
        .Q(\w1_reg[1] [6]),
        .R(1'b0));
  FDRE \w1_reg[1][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg[2] [7]),
        .Q(\w1_reg[1] [7]),
        .R(1'b0));
  FDRE \w1_reg[2][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[0]),
        .Q(\w1_reg[2] [0]),
        .R(1'b0));
  FDRE \w1_reg[2][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[1]),
        .Q(\w1_reg[2] [1]),
        .R(1'b0));
  FDRE \w1_reg[2][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[2]),
        .Q(\w1_reg[2] [2]),
        .R(1'b0));
  FDRE \w1_reg[2][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[3]),
        .Q(\w1_reg[2] [3]),
        .R(1'b0));
  FDRE \w1_reg[2][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[4]),
        .Q(\w1_reg[2] [4]),
        .R(1'b0));
  FDRE \w1_reg[2][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[5]),
        .Q(\w1_reg[2] [5]),
        .R(1'b0));
  FDRE \w1_reg[2][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[6]),
        .Q(\w1_reg[2] [6]),
        .R(1'b0));
  FDRE \w1_reg[2][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[7]),
        .Q(\w1_reg[2] [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][0]_i_1 
       (.I0(q1[0]),
        .I1(q0[0]),
        .I2(p1_rpar),
        .I3(t2_d[0]),
        .I4(p1_t2buf),
        .O(t2_val[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][1]_i_1 
       (.I0(q1[1]),
        .I1(q0[1]),
        .I2(p1_rpar),
        .I3(t2_d[1]),
        .I4(p1_t2buf),
        .O(t2_val[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][2]_i_1 
       (.I0(q1[2]),
        .I1(q0[2]),
        .I2(p1_rpar),
        .I3(t2_d[2]),
        .I4(p1_t2buf),
        .O(t2_val[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][3]_i_1 
       (.I0(q1[3]),
        .I1(q0[3]),
        .I2(p1_rpar),
        .I3(t2_d[3]),
        .I4(p1_t2buf),
        .O(t2_val[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][4]_i_1 
       (.I0(q1[4]),
        .I1(q0[4]),
        .I2(p1_rpar),
        .I3(t2_d[4]),
        .I4(p1_t2buf),
        .O(t2_val[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][5]_i_1 
       (.I0(q1[5]),
        .I1(q0[5]),
        .I2(p1_rpar),
        .I3(t2_d[5]),
        .I4(p1_t2buf),
        .O(t2_val[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][6]_i_1 
       (.I0(q1[6]),
        .I1(q0[6]),
        .I2(p1_rpar),
        .I3(t2_d[6]),
        .I4(p1_t2buf),
        .O(t2_val[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][7]_i_1 
       (.I0(q1[7]),
        .I1(q0[7]),
        .I2(p1_rpar),
        .I3(t2_d[7]),
        .I4(p1_t2buf),
        .O(t2_val[7]));
  FDRE \w2_reg[0][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [0]),
        .Q(\w2_reg[0] [0]),
        .R(1'b0));
  FDRE \w2_reg[0][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [1]),
        .Q(\w2_reg[0] [1]),
        .R(1'b0));
  FDRE \w2_reg[0][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [2]),
        .Q(\w2_reg[0] [2]),
        .R(1'b0));
  FDRE \w2_reg[0][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [3]),
        .Q(\w2_reg[0] [3]),
        .R(1'b0));
  FDRE \w2_reg[0][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [4]),
        .Q(\w2_reg[0] [4]),
        .R(1'b0));
  FDRE \w2_reg[0][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [5]),
        .Q(\w2_reg[0] [5]),
        .R(1'b0));
  FDRE \w2_reg[0][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [6]),
        .Q(\w2_reg[0] [6]),
        .R(1'b0));
  FDRE \w2_reg[0][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[1] [7]),
        .Q(\w2_reg[0] [7]),
        .R(1'b0));
  FDRE \w2_reg[1][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [0]),
        .Q(\w2_reg[1] [0]),
        .R(1'b0));
  FDRE \w2_reg[1][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [1]),
        .Q(\w2_reg[1] [1]),
        .R(1'b0));
  FDRE \w2_reg[1][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [2]),
        .Q(\w2_reg[1] [2]),
        .R(1'b0));
  FDRE \w2_reg[1][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [3]),
        .Q(\w2_reg[1] [3]),
        .R(1'b0));
  FDRE \w2_reg[1][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [4]),
        .Q(\w2_reg[1] [4]),
        .R(1'b0));
  FDRE \w2_reg[1][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [5]),
        .Q(\w2_reg[1] [5]),
        .R(1'b0));
  FDRE \w2_reg[1][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [6]),
        .Q(\w2_reg[1] [6]),
        .R(1'b0));
  FDRE \w2_reg[1][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg[2] [7]),
        .Q(\w2_reg[1] [7]),
        .R(1'b0));
  FDRE \w2_reg[2][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[0]),
        .Q(\w2_reg[2] [0]),
        .R(1'b0));
  FDRE \w2_reg[2][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[1]),
        .Q(\w2_reg[2] [1]),
        .R(1'b0));
  FDRE \w2_reg[2][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[2]),
        .Q(\w2_reg[2] [2]),
        .R(1'b0));
  FDRE \w2_reg[2][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[3]),
        .Q(\w2_reg[2] [3]),
        .R(1'b0));
  FDRE \w2_reg[2][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[4]),
        .Q(\w2_reg[2] [4]),
        .R(1'b0));
  FDRE \w2_reg[2][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[5]),
        .Q(\w2_reg[2] [5]),
        .R(1'b0));
  FDRE \w2_reg[2][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[6]),
        .Q(\w2_reg[2] [6]),
        .R(1'b0));
  FDRE \w2_reg[2][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[7]),
        .Q(\w2_reg[2] [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[0]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[0] ),
        .O(wr_addr_now[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[1]_i_1 
       (.I0(\fc_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[1] ),
        .O(wr_addr_now[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[2]_i_1 
       (.I0(\fc_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[2] ),
        .O(wr_addr_now[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[3]_i_1 
       (.I0(\fc_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[3] ),
        .O(wr_addr_now[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[4]_i_1 
       (.I0(\fc_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[4] ),
        .O(wr_addr_now[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[5]_i_1 
       (.I0(\fc_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\x_in_reg_n_0_[5] ),
        .O(wr_addr_now[5]));
  FDRE \wp0_a_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wr_addr_now[0]),
        .Q(wp0_a[0]),
        .R(1'b0));
  FDRE \wp0_a_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wr_addr_now[1]),
        .Q(wp0_a[1]),
        .R(1'b0));
  FDRE \wp0_a_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wr_addr_now[2]),
        .Q(wp0_a[2]),
        .R(1'b0));
  FDRE \wp0_a_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wr_addr_now[3]),
        .Q(wp0_a[3]),
        .R(1'b0));
  FDRE \wp0_a_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wr_addr_now[4]),
        .Q(wp0_a[4]),
        .R(1'b0));
  FDRE \wp0_a_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wr_addr_now[5]),
        .Q(wp0_a[5]),
        .R(1'b0));
  FDRE \wp0_d_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(wp0_d[0]),
        .R(1'b0));
  FDRE \wp0_d_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(wp0_d[1]),
        .R(1'b0));
  FDRE \wp0_d_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(wp0_d[2]),
        .R(1'b0));
  FDRE \wp0_d_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(wp0_d[3]),
        .R(1'b0));
  FDRE \wp0_d_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(wp0_d[4]),
        .R(1'b0));
  FDRE \wp0_d_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(wp0_d[5]),
        .R(1'b0));
  FDRE \wp0_d_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(wp0_d[6]),
        .R(1'b0));
  FDRE \wp0_d_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(wp0_d[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h3330AAAA)) 
    wp0_s_i_1
       (.I0(wp0_s),
        .I1(\cy_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\m_axis_tdata[23]_i_2_n_0 ),
        .O(wp0_s_i_1_n_0));
  FDRE wp0_s_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wp0_s_i_1_n_0),
        .Q(wp0_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    wp0_v_i_1
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .O(need_input));
  FDRE wp0_v_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(need_input),
        .Q(wp0_v),
        .R(p_0_in));
  FDRE \wp1_a_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_a[0]),
        .Q(wp1_a[0]),
        .R(1'b0));
  FDRE \wp1_a_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_a[1]),
        .Q(wp1_a[1]),
        .R(1'b0));
  FDRE \wp1_a_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_a[2]),
        .Q(wp1_a[2]),
        .R(1'b0));
  FDRE \wp1_a_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_a[3]),
        .Q(wp1_a[3]),
        .R(1'b0));
  FDRE \wp1_a_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_a[4]),
        .Q(wp1_a[4]),
        .R(1'b0));
  FDRE \wp1_a_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_a[5]),
        .Q(wp1_a[5]),
        .R(1'b0));
  FDRE \wp1_d_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[0]),
        .Q(wp1_d[0]),
        .R(1'b0));
  FDRE \wp1_d_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[1]),
        .Q(wp1_d[1]),
        .R(1'b0));
  FDRE \wp1_d_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[2]),
        .Q(wp1_d[2]),
        .R(1'b0));
  FDRE \wp1_d_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[3]),
        .Q(wp1_d[3]),
        .R(1'b0));
  FDRE \wp1_d_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[4]),
        .Q(wp1_d[4]),
        .R(1'b0));
  FDRE \wp1_d_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[5]),
        .Q(wp1_d[5]),
        .R(1'b0));
  FDRE \wp1_d_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[6]),
        .Q(wp1_d[6]),
        .R(1'b0));
  FDRE \wp1_d_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[7]),
        .Q(wp1_d[7]),
        .R(1'b0));
  FDRE wp1_s_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_s),
        .Q(wp1_s),
        .R(1'b0));
  FDRE wp1_v_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_v),
        .Q(wp1_v),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_in[0]_i_1 
       (.I0(\x_in_reg_n_0_[0] ),
        .O(x_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[10]_i_1 
       (.I0(data0[10]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[10]));
  LUT3 #(
    .INIT(8'h02)) 
    \x_in[11]_i_1 
       (.I0(\m_axis_tdata[23]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\x_in[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[11]_i_2 
       (.I0(data0[11]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[1]_i_1 
       (.I0(data0[1]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[2]_i_1 
       (.I0(data0[2]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[3]_i_1 
       (.I0(data0[3]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[4]_i_1 
       (.I0(data0[4]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[5]_i_1 
       (.I0(data0[5]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[6]_i_1 
       (.I0(data0[6]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[7]_i_1 
       (.I0(data0[7]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[8]_i_1 
       (.I0(data0[8]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_in[9]_i_1 
       (.I0(data0[9]),
        .I1(\state[0]_i_2_n_0 ),
        .O(x_in[9]));
  FDRE \x_in_reg[0] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[0]),
        .Q(\x_in_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \x_in_reg[10] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[10]),
        .Q(\x_in_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \x_in_reg[11] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[11]),
        .Q(\x_in_reg_n_0_[11] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_in_reg[11]_i_3 
       (.CI(\x_in_reg[8]_i_2_n_0 ),
        .CO({\NLW_x_in_reg[11]_i_3_CO_UNCONNECTED [3:2],\x_in_reg[11]_i_3_n_2 ,\x_in_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_in_reg[11]_i_3_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,\x_in_reg_n_0_[11] ,\x_in_reg_n_0_[10] ,\x_in_reg_n_0_[9] }));
  FDRE \x_in_reg[1] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[1]),
        .Q(\x_in_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \x_in_reg[2] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[2]),
        .Q(\x_in_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \x_in_reg[3] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[3]),
        .Q(\x_in_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \x_in_reg[4] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[4]),
        .Q(\x_in_reg_n_0_[4] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_in_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\x_in_reg[4]_i_2_n_0 ,\x_in_reg[4]_i_2_n_1 ,\x_in_reg[4]_i_2_n_2 ,\x_in_reg[4]_i_2_n_3 }),
        .CYINIT(\x_in_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\x_in_reg_n_0_[4] ,\x_in_reg_n_0_[3] ,\x_in_reg_n_0_[2] ,\x_in_reg_n_0_[1] }));
  FDRE \x_in_reg[5] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[5]),
        .Q(\x_in_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \x_in_reg[6] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[6]),
        .Q(\x_in_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \x_in_reg[7] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[7]),
        .Q(\x_in_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \x_in_reg[8] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[8]),
        .Q(\x_in_reg_n_0_[8] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_in_reg[8]_i_2 
       (.CI(\x_in_reg[4]_i_2_n_0 ),
        .CO({\x_in_reg[8]_i_2_n_0 ,\x_in_reg[8]_i_2_n_1 ,\x_in_reg[8]_i_2_n_2 ,\x_in_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\x_in_reg_n_0_[8] ,\x_in_reg_n_0_[7] ,\x_in_reg_n_0_[6] ,\x_in_reg_n_0_[5] }));
  FDRE \x_in_reg[9] 
       (.C(aclk),
        .CE(\x_in[11]_i_1_n_0 ),
        .D(x_in[9]),
        .Q(\x_in_reg_n_0_[9] ),
        .R(p_0_in));
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
