// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Jul 26 20:46:12 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axis_gaussian_0_0/image_block_axis_gaussian_0_0_sim_netlist.v}
// Design      : image_block_axis_gaussian_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axis_gaussian_0_0,axis_gaussian,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_gaussian,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axis_gaussian_0_0
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
  wire s_axis_tready;
  wire s_axis_tvalid;

  image_block_axis_gaussian_0_0_axis_gaussian inst
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

(* ORIG_REF_NAME = "axis_gaussian" *) 
module image_block_axis_gaussian_0_0_axis_gaussian
   (m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tvalid_reg_0,
    s_axis_tready,
    aclk,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tready,
    aresetn);
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  output m_axis_tvalid_reg_0;
  output s_axis_tready;
  input aclk;
  input [23:0]s_axis_tdata;
  input s_axis_tvalid;
  input m_axis_tready;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [7:7]bl;
  wire [3:0]bl__0;
  wire [7:0]br;
  wire buf0_reg_i_1_n_0;
  wire buf1_reg_i_1_n_0;
  wire buf1_reg_i_8_n_0;
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
  wire cvalid_f;
  wire \cy[0]_i_1_n_0 ;
  wire \cy[10]_i_1_n_0 ;
  wire \cy[11]_i_1_n_0 ;
  wire \cy[11]_i_2_n_0 ;
  wire \cy[11]_i_3_n_0 ;
  wire \cy[11]_i_5_n_0 ;
  wire \cy[11]_i_7_n_0 ;
  wire \cy[11]_i_8_n_0 ;
  wire \cy[1]_i_1_n_0 ;
  wire \cy[2]_i_1_n_0 ;
  wire \cy[3]_i_1_n_0 ;
  wire \cy[4]_i_1_n_0 ;
  wire \cy[5]_i_1_n_0 ;
  wire \cy[6]_i_1_n_0 ;
  wire \cy[7]_i_1_n_0 ;
  wire \cy[8]_i_1_n_0 ;
  wire \cy[9]_i_1_n_0 ;
  wire \cy_reg[11]_i_6_n_2 ;
  wire \cy_reg[11]_i_6_n_3 ;
  wire \cy_reg[11]_i_6_n_5 ;
  wire \cy_reg[11]_i_6_n_6 ;
  wire \cy_reg[11]_i_6_n_7 ;
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
  wire \fc[11]_i_1_n_0 ;
  wire \fc[11]_i_3_n_0 ;
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
  wire \flush_cnt[0]_i_2_n_0 ;
  wire \flush_cnt[0]_i_3_n_0 ;
  wire \flush_cnt[0]_i_4_n_0 ;
  wire \flush_cnt[1]_i_1_n_0 ;
  wire [11:4]gauss8_return0;
  wire gauss8_return0__1_carry__0_i_1_n_0;
  wire gauss8_return0__1_carry__0_i_2_n_0;
  wire gauss8_return0__1_carry__0_i_3_n_0;
  wire gauss8_return0__1_carry__0_i_4_n_0;
  wire gauss8_return0__1_carry__0_i_5_n_0;
  wire gauss8_return0__1_carry__0_i_6_n_0;
  wire gauss8_return0__1_carry__0_i_7_n_0;
  wire gauss8_return0__1_carry__0_i_8_n_0;
  wire gauss8_return0__1_carry__0_n_0;
  wire gauss8_return0__1_carry__0_n_1;
  wire gauss8_return0__1_carry__0_n_2;
  wire gauss8_return0__1_carry__0_n_3;
  wire gauss8_return0__1_carry__0_n_4;
  wire gauss8_return0__1_carry__0_n_5;
  wire gauss8_return0__1_carry__0_n_6;
  wire gauss8_return0__1_carry__0_n_7;
  wire gauss8_return0__1_carry__1_i_1_n_0;
  wire gauss8_return0__1_carry__1_n_2;
  wire gauss8_return0__1_carry__1_n_7;
  wire gauss8_return0__1_carry_i_1_n_0;
  wire gauss8_return0__1_carry_i_2_n_0;
  wire gauss8_return0__1_carry_i_3_n_0;
  wire gauss8_return0__1_carry_i_4_n_0;
  wire gauss8_return0__1_carry_i_5_n_0;
  wire gauss8_return0__1_carry_i_6_n_0;
  wire gauss8_return0__1_carry_i_7_n_0;
  wire gauss8_return0__1_carry_i_8_n_0;
  wire gauss8_return0__1_carry_n_0;
  wire gauss8_return0__1_carry_n_1;
  wire gauss8_return0__1_carry_n_2;
  wire gauss8_return0__1_carry_n_3;
  wire gauss8_return0__1_carry_n_4;
  wire gauss8_return0__1_carry_n_5;
  wire gauss8_return0__1_carry_n_6;
  wire gauss8_return0__1_carry_n_7;
  wire gauss8_return0__30_carry__0_i_1_n_0;
  wire gauss8_return0__30_carry__0_i_2_n_0;
  wire gauss8_return0__30_carry__0_i_3_n_0;
  wire gauss8_return0__30_carry__0_i_4_n_0;
  wire gauss8_return0__30_carry__0_i_5_n_0;
  wire gauss8_return0__30_carry__0_i_6_n_0;
  wire gauss8_return0__30_carry__0_i_7_n_0;
  wire gauss8_return0__30_carry__0_i_8_n_0;
  wire gauss8_return0__30_carry__0_n_0;
  wire gauss8_return0__30_carry__0_n_1;
  wire gauss8_return0__30_carry__0_n_2;
  wire gauss8_return0__30_carry__0_n_3;
  wire gauss8_return0__30_carry__0_n_4;
  wire gauss8_return0__30_carry__0_n_5;
  wire gauss8_return0__30_carry__0_n_6;
  wire gauss8_return0__30_carry__0_n_7;
  wire gauss8_return0__30_carry__1_i_1_n_0;
  wire gauss8_return0__30_carry__1_i_2_n_0;
  wire gauss8_return0__30_carry__1_i_3_n_0;
  wire gauss8_return0__30_carry__1_i_4_n_0;
  wire gauss8_return0__30_carry__1_n_1;
  wire gauss8_return0__30_carry__1_n_3;
  wire gauss8_return0__30_carry__1_n_6;
  wire gauss8_return0__30_carry__1_n_7;
  wire gauss8_return0__30_carry_i_1_n_0;
  wire gauss8_return0__30_carry_i_2_n_0;
  wire gauss8_return0__30_carry_i_3_n_0;
  wire gauss8_return0__30_carry_i_4_n_0;
  wire gauss8_return0__30_carry_i_5_n_0;
  wire gauss8_return0__30_carry_i_6_n_0;
  wire gauss8_return0__30_carry_i_7_n_0;
  wire gauss8_return0__30_carry_n_0;
  wire gauss8_return0__30_carry_n_1;
  wire gauss8_return0__30_carry_n_2;
  wire gauss8_return0__30_carry_n_3;
  wire gauss8_return0__30_carry_n_4;
  wire gauss8_return0__30_carry_n_5;
  wire gauss8_return0__30_carry_n_6;
  wire gauss8_return0__30_carry_n_7;
  wire gauss8_return0__60_carry__0_i_1_n_0;
  wire gauss8_return0__60_carry__0_i_2_n_0;
  wire gauss8_return0__60_carry__0_i_3_n_0;
  wire gauss8_return0__60_carry__0_i_4_n_0;
  wire gauss8_return0__60_carry__0_i_5_n_0;
  wire gauss8_return0__60_carry__0_i_6_n_0;
  wire gauss8_return0__60_carry__0_i_7_n_0;
  wire gauss8_return0__60_carry__0_i_8_n_0;
  wire gauss8_return0__60_carry__0_n_0;
  wire gauss8_return0__60_carry__0_n_1;
  wire gauss8_return0__60_carry__0_n_2;
  wire gauss8_return0__60_carry__0_n_3;
  wire gauss8_return0__60_carry__0_n_4;
  wire gauss8_return0__60_carry__0_n_5;
  wire gauss8_return0__60_carry__0_n_6;
  wire gauss8_return0__60_carry__0_n_7;
  wire gauss8_return0__60_carry__1_i_1_n_0;
  wire gauss8_return0__60_carry__1_n_2;
  wire gauss8_return0__60_carry__1_n_7;
  wire gauss8_return0__60_carry_i_1_n_0;
  wire gauss8_return0__60_carry_i_2_n_0;
  wire gauss8_return0__60_carry_i_3_n_0;
  wire gauss8_return0__60_carry_i_4_n_0;
  wire gauss8_return0__60_carry_i_5_n_0;
  wire gauss8_return0__60_carry_i_6_n_0;
  wire gauss8_return0__60_carry_i_7_n_0;
  wire gauss8_return0__60_carry_n_0;
  wire gauss8_return0__60_carry_n_1;
  wire gauss8_return0__60_carry_n_2;
  wire gauss8_return0__60_carry_n_3;
  wire gauss8_return0__60_carry_n_4;
  wire gauss8_return0__60_carry_n_5;
  wire gauss8_return0__60_carry_n_6;
  wire gauss8_return0__60_carry_n_7;
  wire gauss8_return0__86_carry__0_i_1_n_0;
  wire gauss8_return0__86_carry__0_i_2_n_0;
  wire gauss8_return0__86_carry__0_i_3_n_0;
  wire gauss8_return0__86_carry__0_i_4_n_0;
  wire gauss8_return0__86_carry__0_i_5_n_0;
  wire gauss8_return0__86_carry__0_i_6_n_0;
  wire gauss8_return0__86_carry__0_i_7_n_0;
  wire gauss8_return0__86_carry__0_i_8_n_0;
  wire gauss8_return0__86_carry__0_n_0;
  wire gauss8_return0__86_carry__0_n_1;
  wire gauss8_return0__86_carry__0_n_2;
  wire gauss8_return0__86_carry__0_n_3;
  wire gauss8_return0__86_carry__0_n_4;
  wire gauss8_return0__86_carry__0_n_5;
  wire gauss8_return0__86_carry__0_n_6;
  wire gauss8_return0__86_carry__0_n_7;
  wire gauss8_return0__86_carry__1_i_1_n_0;
  wire gauss8_return0__86_carry__1_i_2_n_0;
  wire gauss8_return0__86_carry__1_i_3_n_0;
  wire gauss8_return0__86_carry__1_i_4_n_0;
  wire gauss8_return0__86_carry__1_i_5_n_0;
  wire gauss8_return0__86_carry__1_i_6_n_0;
  wire gauss8_return0__86_carry__1_i_7_n_0;
  wire gauss8_return0__86_carry__1_n_1;
  wire gauss8_return0__86_carry__1_n_2;
  wire gauss8_return0__86_carry__1_n_3;
  wire gauss8_return0__86_carry__1_n_4;
  wire gauss8_return0__86_carry__1_n_5;
  wire gauss8_return0__86_carry__1_n_6;
  wire gauss8_return0__86_carry__1_n_7;
  wire gauss8_return0__86_carry_i_1_n_0;
  wire gauss8_return0__86_carry_i_2_n_0;
  wire gauss8_return0__86_carry_i_3_n_0;
  wire gauss8_return0__86_carry_i_4_n_0;
  wire gauss8_return0__86_carry_i_5_n_0;
  wire gauss8_return0__86_carry_i_6_n_0;
  wire gauss8_return0__86_carry_i_7_n_0;
  wire gauss8_return0__86_carry_n_0;
  wire gauss8_return0__86_carry_n_1;
  wire gauss8_return0__86_carry_n_2;
  wire gauss8_return0__86_carry_n_3;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_0 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_1 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_2 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_3 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_4 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_5 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_6 ;
  wire \gauss8_return0_inferred__0/i___1_carry__0_n_7 ;
  wire \gauss8_return0_inferred__0/i___1_carry__1_n_2 ;
  wire \gauss8_return0_inferred__0/i___1_carry__1_n_7 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_0 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_1 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_2 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_3 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_4 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_5 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_6 ;
  wire \gauss8_return0_inferred__0/i___1_carry_n_7 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_0 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_1 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_2 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_3 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_4 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_5 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_6 ;
  wire \gauss8_return0_inferred__0/i___30_carry__0_n_7 ;
  wire \gauss8_return0_inferred__0/i___30_carry__1_n_1 ;
  wire \gauss8_return0_inferred__0/i___30_carry__1_n_3 ;
  wire \gauss8_return0_inferred__0/i___30_carry__1_n_6 ;
  wire \gauss8_return0_inferred__0/i___30_carry__1_n_7 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_0 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_1 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_2 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_3 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_4 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_5 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_6 ;
  wire \gauss8_return0_inferred__0/i___30_carry_n_7 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_0 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_1 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_2 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_3 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_4 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_5 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_6 ;
  wire \gauss8_return0_inferred__0/i___60_carry__0_n_7 ;
  wire \gauss8_return0_inferred__0/i___60_carry__1_n_2 ;
  wire \gauss8_return0_inferred__0/i___60_carry__1_n_7 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_0 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_1 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_2 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_3 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_4 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_5 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_6 ;
  wire \gauss8_return0_inferred__0/i___60_carry_n_7 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_0 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_1 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_2 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_3 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_4 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_5 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_6 ;
  wire \gauss8_return0_inferred__0/i___86_carry__0_n_7 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_1 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_2 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_3 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_4 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_5 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_6 ;
  wire \gauss8_return0_inferred__0/i___86_carry__1_n_7 ;
  wire \gauss8_return0_inferred__0/i___86_carry_n_0 ;
  wire \gauss8_return0_inferred__0/i___86_carry_n_1 ;
  wire \gauss8_return0_inferred__0/i___86_carry_n_2 ;
  wire \gauss8_return0_inferred__0/i___86_carry_n_3 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_0 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_1 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_2 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_3 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_4 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_5 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_6 ;
  wire \gauss8_return0_inferred__1/i___1_carry__0_n_7 ;
  wire \gauss8_return0_inferred__1/i___1_carry__1_n_2 ;
  wire \gauss8_return0_inferred__1/i___1_carry__1_n_7 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_0 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_1 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_2 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_3 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_4 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_5 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_6 ;
  wire \gauss8_return0_inferred__1/i___1_carry_n_7 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_0 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_1 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_2 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_3 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_4 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_5 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_6 ;
  wire \gauss8_return0_inferred__1/i___30_carry__0_n_7 ;
  wire \gauss8_return0_inferred__1/i___30_carry__1_n_1 ;
  wire \gauss8_return0_inferred__1/i___30_carry__1_n_3 ;
  wire \gauss8_return0_inferred__1/i___30_carry__1_n_6 ;
  wire \gauss8_return0_inferred__1/i___30_carry__1_n_7 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_0 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_1 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_2 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_3 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_4 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_5 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_6 ;
  wire \gauss8_return0_inferred__1/i___30_carry_n_7 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_0 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_1 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_2 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_3 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_4 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_5 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_6 ;
  wire \gauss8_return0_inferred__1/i___60_carry__0_n_7 ;
  wire \gauss8_return0_inferred__1/i___60_carry__1_n_2 ;
  wire \gauss8_return0_inferred__1/i___60_carry__1_n_7 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_0 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_1 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_2 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_3 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_4 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_5 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_6 ;
  wire \gauss8_return0_inferred__1/i___60_carry_n_7 ;
  wire \gauss8_return0_inferred__1/i___86_carry__0_n_0 ;
  wire \gauss8_return0_inferred__1/i___86_carry__0_n_1 ;
  wire \gauss8_return0_inferred__1/i___86_carry__0_n_2 ;
  wire \gauss8_return0_inferred__1/i___86_carry__0_n_3 ;
  wire \gauss8_return0_inferred__1/i___86_carry__1_n_1 ;
  wire \gauss8_return0_inferred__1/i___86_carry__1_n_2 ;
  wire \gauss8_return0_inferred__1/i___86_carry__1_n_3 ;
  wire \gauss8_return0_inferred__1/i___86_carry_n_0 ;
  wire \gauss8_return0_inferred__1/i___86_carry_n_1 ;
  wire \gauss8_return0_inferred__1/i___86_carry_n_2 ;
  wire \gauss8_return0_inferred__1/i___86_carry_n_3 ;
  wire [8:1]gauss8_return2;
  wire [8:1]gauss8_return4;
  wire [9:2]gauss8_return5;
  wire [8:1]gauss8_return8;
  wire i___1_carry__0_i_1__0_n_0;
  wire i___1_carry__0_i_1_n_0;
  wire i___1_carry__0_i_2__0_n_0;
  wire i___1_carry__0_i_2_n_0;
  wire i___1_carry__0_i_3__0_n_0;
  wire i___1_carry__0_i_3_n_0;
  wire i___1_carry__0_i_4__0_n_0;
  wire i___1_carry__0_i_4_n_0;
  wire i___1_carry__0_i_5__0_n_0;
  wire i___1_carry__0_i_5_n_0;
  wire i___1_carry__0_i_6__0_n_0;
  wire i___1_carry__0_i_6_n_0;
  wire i___1_carry__0_i_7__0_n_0;
  wire i___1_carry__0_i_7_n_0;
  wire i___1_carry__0_i_8__0_n_0;
  wire i___1_carry__0_i_8_n_0;
  wire i___1_carry__1_i_1__0_n_0;
  wire i___1_carry__1_i_1_n_0;
  wire i___1_carry_i_1__0_n_0;
  wire i___1_carry_i_1_n_0;
  wire i___1_carry_i_2__0_n_0;
  wire i___1_carry_i_2_n_0;
  wire i___1_carry_i_3__0_n_0;
  wire i___1_carry_i_3_n_0;
  wire i___1_carry_i_4__0_n_0;
  wire i___1_carry_i_4_n_0;
  wire i___1_carry_i_5__0_n_0;
  wire i___1_carry_i_5_n_0;
  wire i___1_carry_i_6__0_n_0;
  wire i___1_carry_i_6_n_0;
  wire i___1_carry_i_7__0_n_0;
  wire i___1_carry_i_7_n_0;
  wire i___1_carry_i_8__0_n_0;
  wire i___30_carry__0_i_1__0_n_0;
  wire i___30_carry__0_i_1_n_0;
  wire i___30_carry__0_i_2__0_n_0;
  wire i___30_carry__0_i_2_n_0;
  wire i___30_carry__0_i_3__0_n_0;
  wire i___30_carry__0_i_3_n_0;
  wire i___30_carry__0_i_4__0_n_0;
  wire i___30_carry__0_i_4_n_0;
  wire i___30_carry__0_i_5__0_n_0;
  wire i___30_carry__0_i_5_n_0;
  wire i___30_carry__0_i_6__0_n_0;
  wire i___30_carry__0_i_6_n_0;
  wire i___30_carry__0_i_7__0_n_0;
  wire i___30_carry__0_i_7_n_0;
  wire i___30_carry__0_i_8__0_n_0;
  wire i___30_carry__0_i_8_n_0;
  wire i___30_carry__1_i_1__0_n_0;
  wire i___30_carry__1_i_1_n_0;
  wire i___30_carry__1_i_2__0_n_0;
  wire i___30_carry__1_i_2_n_0;
  wire i___30_carry__1_i_3__0_n_0;
  wire i___30_carry__1_i_3_n_0;
  wire i___30_carry__1_i_4_n_0;
  wire i___30_carry_i_1__0_n_0;
  wire i___30_carry_i_1_n_0;
  wire i___30_carry_i_2__0_n_0;
  wire i___30_carry_i_2_n_0;
  wire i___30_carry_i_3__0_n_0;
  wire i___30_carry_i_3_n_0;
  wire i___30_carry_i_4__0_n_0;
  wire i___30_carry_i_4_n_0;
  wire i___30_carry_i_5__0_n_0;
  wire i___30_carry_i_5_n_0;
  wire i___30_carry_i_6__0_n_0;
  wire i___30_carry_i_7__0_n_0;
  wire i___60_carry__0_i_1__0_n_0;
  wire i___60_carry__0_i_1_n_0;
  wire i___60_carry__0_i_2__0_n_0;
  wire i___60_carry__0_i_2_n_0;
  wire i___60_carry__0_i_3__0_n_0;
  wire i___60_carry__0_i_3_n_0;
  wire i___60_carry__0_i_4__0_n_0;
  wire i___60_carry__0_i_4_n_0;
  wire i___60_carry__0_i_5__0_n_0;
  wire i___60_carry__0_i_5_n_0;
  wire i___60_carry__0_i_6__0_n_0;
  wire i___60_carry__0_i_6_n_0;
  wire i___60_carry__0_i_7__0_n_0;
  wire i___60_carry__0_i_7_n_0;
  wire i___60_carry__0_i_8__0_n_0;
  wire i___60_carry__0_i_8_n_0;
  wire i___60_carry__1_i_1__0_n_0;
  wire i___60_carry__1_i_1_n_0;
  wire i___60_carry_i_1__0_n_0;
  wire i___60_carry_i_1_n_0;
  wire i___60_carry_i_2__0_n_0;
  wire i___60_carry_i_2_n_0;
  wire i___60_carry_i_3__0_n_0;
  wire i___60_carry_i_3_n_0;
  wire i___60_carry_i_4__0_n_0;
  wire i___60_carry_i_4_n_0;
  wire i___60_carry_i_5__0_n_0;
  wire i___60_carry_i_5_n_0;
  wire i___60_carry_i_6__0_n_0;
  wire i___60_carry_i_6_n_0;
  wire i___60_carry_i_7__0_n_0;
  wire i___60_carry_i_7_n_0;
  wire i___86_carry__0_i_1__0_n_0;
  wire i___86_carry__0_i_1_n_0;
  wire i___86_carry__0_i_2__0_n_0;
  wire i___86_carry__0_i_2_n_0;
  wire i___86_carry__0_i_3__0_n_0;
  wire i___86_carry__0_i_3_n_0;
  wire i___86_carry__0_i_4__0_n_0;
  wire i___86_carry__0_i_4_n_0;
  wire i___86_carry__0_i_5__0_n_0;
  wire i___86_carry__0_i_5_n_0;
  wire i___86_carry__0_i_6__0_n_0;
  wire i___86_carry__0_i_6_n_0;
  wire i___86_carry__0_i_7__0_n_0;
  wire i___86_carry__0_i_7_n_0;
  wire i___86_carry__0_i_8__0_n_0;
  wire i___86_carry__0_i_8_n_0;
  wire i___86_carry__1_i_1__0_n_0;
  wire i___86_carry__1_i_1_n_0;
  wire i___86_carry__1_i_2__0_n_0;
  wire i___86_carry__1_i_2_n_0;
  wire i___86_carry__1_i_3__0_n_0;
  wire i___86_carry__1_i_3_n_0;
  wire i___86_carry__1_i_4__0_n_0;
  wire i___86_carry__1_i_4_n_0;
  wire i___86_carry__1_i_5__0_n_0;
  wire i___86_carry__1_i_5_n_0;
  wire i___86_carry__1_i_6__0_n_0;
  wire i___86_carry__1_i_6_n_0;
  wire i___86_carry__1_i_7__0_n_0;
  wire i___86_carry__1_i_7_n_0;
  wire i___86_carry_i_1__0_n_0;
  wire i___86_carry_i_1_n_0;
  wire i___86_carry_i_2__0_n_0;
  wire i___86_carry_i_2_n_0;
  wire i___86_carry_i_3__0_n_0;
  wire i___86_carry_i_3_n_0;
  wire i___86_carry_i_4__0_n_0;
  wire i___86_carry_i_4_n_0;
  wire i___86_carry_i_5__0_n_0;
  wire i___86_carry_i_5_n_0;
  wire i___86_carry_i_6__0_n_0;
  wire i___86_carry_i_6_n_0;
  wire i___86_carry_i_7__0_n_0;
  wire i___86_carry_i_7_n_0;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[23]_i_2_n_0 ;
  wire \m_axis_tdata[23]_i_3_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tuser0;
  wire m_axis_tuser_i_2_n_0;
  wire m_axis_tuser_i_3_n_0;
  wire m_axis_tuser_i_4_n_0;
  wire m_axis_tuser_i_5_n_0;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_reg_0;
  wire need_input;
  wire out_ok;
  wire [11:0]p1_ccx;
  wire \p1_ccx[0]_i_1_n_0 ;
  wire [11:0]p1_ccy;
  wire p1_cvalid;
  wire p1_cvalid_i_2_n_0;
  wire p1_t0cur;
  wire p1_t0cur_i_2_n_0;
  wire p1_t2buf;
  wire [11:0]p2_ccx;
  wire [11:0]p2_ccy;
  wire p2_cvalid;
  wire p_0_in;
  wire [11:0]p_1_in;
  wire [23:0]q0;
  wire [23:0]q1;
  wire [5:0]rd_addr;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_2_n_0;
  wire s_axis_tready_INST_0_i_3_n_0;
  wire s_axis_tready_INST_0_i_4_n_0;
  wire s_axis_tvalid;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire t0_from_cur_f;
  wire [23:0]t0_val;
  wire [23:0]t1_val;
  wire [23:0]t2_d;
  wire [0:0]t2_d_0;
  wire t2_from_buf_f;
  wire [23:0]t2_val;
  wire [2:2]tl;
  wire [7:0]tr;
  wire [23:0]\w0_reg[0] ;
  wire \w0_reg_n_0_[1][0] ;
  wire \w0_reg_n_0_[1][10] ;
  wire \w0_reg_n_0_[1][11] ;
  wire \w0_reg_n_0_[1][12] ;
  wire \w0_reg_n_0_[1][13] ;
  wire \w0_reg_n_0_[1][14] ;
  wire \w0_reg_n_0_[1][15] ;
  wire \w0_reg_n_0_[1][1] ;
  wire \w0_reg_n_0_[1][2] ;
  wire \w0_reg_n_0_[1][3] ;
  wire \w0_reg_n_0_[1][4] ;
  wire \w0_reg_n_0_[1][5] ;
  wire \w0_reg_n_0_[1][6] ;
  wire \w0_reg_n_0_[1][7] ;
  wire \w0_reg_n_0_[1][8] ;
  wire \w0_reg_n_0_[1][9] ;
  wire \w0_reg_n_0_[2][0] ;
  wire \w0_reg_n_0_[2][16] ;
  wire \w0_reg_n_0_[2][17] ;
  wire \w0_reg_n_0_[2][18] ;
  wire \w0_reg_n_0_[2][19] ;
  wire \w0_reg_n_0_[2][1] ;
  wire \w0_reg_n_0_[2][20] ;
  wire \w0_reg_n_0_[2][21] ;
  wire \w0_reg_n_0_[2][22] ;
  wire \w0_reg_n_0_[2][23] ;
  wire \w0_reg_n_0_[2][2] ;
  wire \w0_reg_n_0_[2][3] ;
  wire \w0_reg_n_0_[2][4] ;
  wire \w0_reg_n_0_[2][5] ;
  wire \w0_reg_n_0_[2][6] ;
  wire \w0_reg_n_0_[2][7] ;
  wire [23:0]\w1_reg[0] ;
  wire \w1_reg_n_0_[1][0] ;
  wire \w1_reg_n_0_[1][10] ;
  wire \w1_reg_n_0_[1][11] ;
  wire \w1_reg_n_0_[1][12] ;
  wire \w1_reg_n_0_[1][13] ;
  wire \w1_reg_n_0_[1][14] ;
  wire \w1_reg_n_0_[1][15] ;
  wire \w1_reg_n_0_[1][1] ;
  wire \w1_reg_n_0_[1][2] ;
  wire \w1_reg_n_0_[1][3] ;
  wire \w1_reg_n_0_[1][4] ;
  wire \w1_reg_n_0_[1][5] ;
  wire \w1_reg_n_0_[1][6] ;
  wire \w1_reg_n_0_[1][7] ;
  wire \w1_reg_n_0_[1][8] ;
  wire \w1_reg_n_0_[1][9] ;
  wire \w1_reg_n_0_[2][0] ;
  wire \w1_reg_n_0_[2][10] ;
  wire \w1_reg_n_0_[2][11] ;
  wire \w1_reg_n_0_[2][12] ;
  wire \w1_reg_n_0_[2][13] ;
  wire \w1_reg_n_0_[2][14] ;
  wire \w1_reg_n_0_[2][15] ;
  wire \w1_reg_n_0_[2][1] ;
  wire \w1_reg_n_0_[2][2] ;
  wire \w1_reg_n_0_[2][3] ;
  wire \w1_reg_n_0_[2][4] ;
  wire \w1_reg_n_0_[2][5] ;
  wire \w1_reg_n_0_[2][6] ;
  wire \w1_reg_n_0_[2][7] ;
  wire \w1_reg_n_0_[2][8] ;
  wire \w1_reg_n_0_[2][9] ;
  wire [23:0]\w2_reg[0] ;
  wire \w2_reg_n_0_[1][0] ;
  wire \w2_reg_n_0_[1][10] ;
  wire \w2_reg_n_0_[1][11] ;
  wire \w2_reg_n_0_[1][12] ;
  wire \w2_reg_n_0_[1][13] ;
  wire \w2_reg_n_0_[1][14] ;
  wire \w2_reg_n_0_[1][15] ;
  wire \w2_reg_n_0_[1][1] ;
  wire \w2_reg_n_0_[1][2] ;
  wire \w2_reg_n_0_[1][3] ;
  wire \w2_reg_n_0_[1][4] ;
  wire \w2_reg_n_0_[1][5] ;
  wire \w2_reg_n_0_[1][6] ;
  wire \w2_reg_n_0_[1][7] ;
  wire \w2_reg_n_0_[1][8] ;
  wire \w2_reg_n_0_[1][9] ;
  wire \w2_reg_n_0_[2][0] ;
  wire \w2_reg_n_0_[2][16] ;
  wire \w2_reg_n_0_[2][17] ;
  wire \w2_reg_n_0_[2][18] ;
  wire \w2_reg_n_0_[2][19] ;
  wire \w2_reg_n_0_[2][1] ;
  wire \w2_reg_n_0_[2][20] ;
  wire \w2_reg_n_0_[2][21] ;
  wire \w2_reg_n_0_[2][22] ;
  wire \w2_reg_n_0_[2][23] ;
  wire \w2_reg_n_0_[2][2] ;
  wire \w2_reg_n_0_[2][3] ;
  wire \w2_reg_n_0_[2][4] ;
  wire \w2_reg_n_0_[2][5] ;
  wire \w2_reg_n_0_[2][6] ;
  wire \w2_reg_n_0_[2][7] ;
  wire [5:0]wp0_a;
  wire [23:0]wp0_d;
  wire wp0_s;
  wire wp0_s_i_1_n_0;
  wire wp0_s_i_2_n_0;
  wire wp0_v;
  wire [5:0]wp1_a;
  wire [23:0]wp1_d;
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
  wire [15:8]NLW_buf0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_buf0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_buf0_reg_DOPBDOP_UNCONNECTED;
  wire [15:8]NLW_buf1_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_buf1_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_buf1_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]NLW_ccx_f_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_ccx_f_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_cy_reg[11]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_cy_reg[11]_i_6_O_UNCONNECTED ;
  wire [3:2]NLW_fc0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_fc0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gauss8_return0__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gauss8_return0__1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_gauss8_return0__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_gauss8_return0__30_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gauss8_return0__60_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gauss8_return0__60_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gauss8_return0__86_carry_O_UNCONNECTED;
  wire [3:3]NLW_gauss8_return0__86_carry__1_CO_UNCONNECTED;
  wire [3:0]\NLW_gauss8_return0_inferred__0/i___1_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gauss8_return0_inferred__0/i___1_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_gauss8_return0_inferred__0/i___30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gauss8_return0_inferred__0/i___30_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gauss8_return0_inferred__0/i___60_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gauss8_return0_inferred__0/i___60_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gauss8_return0_inferred__0/i___86_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_gauss8_return0_inferred__0/i___86_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gauss8_return0_inferred__1/i___1_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gauss8_return0_inferred__1/i___1_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_gauss8_return0_inferred__1/i___30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gauss8_return0_inferred__1/i___30_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gauss8_return0_inferred__1/i___60_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gauss8_return0_inferred__1/i___60_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gauss8_return0_inferred__1/i___86_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_gauss8_return0_inferred__1/i___86_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_in_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_in_reg[11]_i_3_O_UNCONNECTED ;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1536" *) 
  (* RTL_RAM_NAME = "image_block_axis_gaussian_0_0/inst/buf0_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "448" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "23" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    buf0_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,rd_addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,wp1_a,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DIADI(wp1_d[15:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,wp1_d[23:16]}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(q0[15:0]),
        .DOBDO({NLW_buf0_reg_DOBDO_UNCONNECTED[15:8],q0[23:16]}),
        .DOPADOP(NLW_buf0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_buf0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(\m_axis_tdata[23]_i_2_n_0 ),
        .ENBWREN(buf0_reg_i_1_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({\m_axis_tdata[23]_i_2_n_0 ,\m_axis_tdata[23]_i_2_n_0 ,\m_axis_tdata[23]_i_2_n_0 ,\m_axis_tdata[23]_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    buf0_reg_i_1
       (.I0(wp1_v),
        .I1(wp1_s),
        .O(buf0_reg_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1536" *) 
  (* RTL_RAM_NAME = "image_block_axis_gaussian_0_0/inst/buf1_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "448" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "23" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    buf1_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,rd_addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,wp1_a,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DIADI(wp1_d[15:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,wp1_d[23:16]}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(q1[15:0]),
        .DOBDO({NLW_buf1_reg_DOBDO_UNCONNECTED[15:8],q1[23:16]}),
        .DOPADOP(NLW_buf1_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_buf1_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(\m_axis_tdata[23]_i_2_n_0 ),
        .ENBWREN(buf1_reg_i_1_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({\m_axis_tdata[23]_i_2_n_0 ,\m_axis_tdata[23]_i_2_n_0 ,\m_axis_tdata[23]_i_2_n_0 ,\m_axis_tdata[23]_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    buf1_reg_i_1
       (.I0(wp1_v),
        .I1(wp1_s),
        .O(buf1_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    buf1_reg_i_2
       (.I0(buf1_reg_i_8_n_0),
        .I1(\fc_reg_n_0_[6] ),
        .O(rd_addr[5]));
  LUT2 #(
    .INIT(4'hE)) 
    buf1_reg_i_3
       (.I0(s_axis_tready_INST_0_i_4_n_0),
        .I1(\fc_reg_n_0_[4] ),
        .O(rd_addr[4]));
  LUT2 #(
    .INIT(4'hE)) 
    buf1_reg_i_4
       (.I0(s_axis_tready_INST_0_i_4_n_0),
        .I1(\fc_reg_n_0_[3] ),
        .O(rd_addr[3]));
  LUT2 #(
    .INIT(4'hE)) 
    buf1_reg_i_5
       (.I0(s_axis_tready_INST_0_i_4_n_0),
        .I1(\fc_reg_n_0_[2] ),
        .O(rd_addr[2]));
  LUT2 #(
    .INIT(4'hE)) 
    buf1_reg_i_6
       (.I0(s_axis_tready_INST_0_i_4_n_0),
        .I1(\fc_reg_n_0_[1] ),
        .O(rd_addr[1]));
  LUT2 #(
    .INIT(4'hE)) 
    buf1_reg_i_7
       (.I0(s_axis_tready_INST_0_i_4_n_0),
        .I1(\fc_reg_n_0_[0] ),
        .O(rd_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    buf1_reg_i_8
       (.I0(\fc_reg_n_0_[8] ),
        .I1(\fc_reg_n_0_[9] ),
        .I2(\fc_reg_n_0_[11] ),
        .I3(\fc_reg_n_0_[10] ),
        .I4(\fc_reg_n_0_[7] ),
        .I5(\fc_reg_n_0_[5] ),
        .O(buf1_reg_i_8_n_0));
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
    .INIT(32'hFE000000)) 
    \cy[10]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[11]_i_6_n_6 ),
        .O(\cy[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000550000003000)) 
    \cy[11]_i_1 
       (.I0(\state[1]_i_4_n_0 ),
        .I1(\cy[11]_i_3_n_0 ),
        .I2(s_axis_tvalid),
        .I3(out_ok),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\cy[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[11]_i_2 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[11]_i_6_n_5 ),
        .O(\cy[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \cy[11]_i_3 
       (.I0(\cy[11]_i_7_n_0 ),
        .I1(\x_in_reg_n_0_[5] ),
        .I2(\x_in_reg_n_0_[4] ),
        .I3(\x_in_reg_n_0_[7] ),
        .I4(\x_in_reg_n_0_[6] ),
        .I5(\cy[11]_i_8_n_0 ),
        .O(\cy[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cy[11]_i_4 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .O(out_ok));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cy[11]_i_5 
       (.I0(\cy_reg_n_0_[2] ),
        .I1(\cy_reg_n_0_[3] ),
        .I2(\cy_reg_n_0_[0] ),
        .I3(\cy_reg_n_0_[1] ),
        .I4(\cy_reg_n_0_[5] ),
        .O(\cy[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cy[11]_i_7 
       (.I0(\x_in_reg_n_0_[9] ),
        .I1(\x_in_reg_n_0_[8] ),
        .I2(\x_in_reg_n_0_[11] ),
        .I3(\x_in_reg_n_0_[10] ),
        .O(\cy[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cy[11]_i_8 
       (.I0(\x_in_reg_n_0_[1] ),
        .I1(\x_in_reg_n_0_[0] ),
        .I2(\x_in_reg_n_0_[3] ),
        .I3(\x_in_reg_n_0_[2] ),
        .O(\cy[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[1]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_7 ),
        .O(\cy[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[2]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_6 ),
        .O(\cy[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[3]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_5 ),
        .O(\cy[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[4]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[4]_i_2_n_4 ),
        .O(\cy[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[5]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_7 ),
        .O(\cy[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[6]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_6 ),
        .O(\cy[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[7]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_5 ),
        .O(\cy[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[8]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[8]_i_2_n_4 ),
        .O(\cy[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \cy[9]_i_1 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_3_n_0),
        .I2(\cy_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy_reg[11]_i_6_n_7 ),
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
  CARRY4 \cy_reg[11]_i_6 
       (.CI(\cy_reg[8]_i_2_n_0 ),
        .CO({\NLW_cy_reg[11]_i_6_CO_UNCONNECTED [3:2],\cy_reg[11]_i_6_n_2 ,\cy_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cy_reg[11]_i_6_O_UNCONNECTED [3],\cy_reg[11]_i_6_n_5 ,\cy_reg[11]_i_6_n_6 ,\cy_reg[11]_i_6_n_7 }),
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \fc[0]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\fc[11]_i_3_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[10]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__1_n_6),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h00000000FA220000)) 
    \fc[11]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\cy[11]_i_3_n_0 ),
        .I2(\m_axis_tdata[23]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(out_ok),
        .I5(\state_reg_n_0_[1] ),
        .O(\fc[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[11]_i_2 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__1_n_5),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \fc[11]_i_3 
       (.I0(buf1_reg_i_8_n_0),
        .I1(\fc_reg_n_0_[2] ),
        .I2(\fc_reg_n_0_[1] ),
        .I3(\fc_reg_n_0_[4] ),
        .I4(\fc_reg_n_0_[3] ),
        .I5(\fc_reg_n_0_[6] ),
        .O(\fc[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[1]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry_n_7),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[2]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry_n_6),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[3]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry_n_5),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[4]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry_n_4),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[5]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__0_n_7),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[6]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__0_n_6),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[7]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__0_n_5),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[8]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__0_n_4),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \fc[9]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\fc[11]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(fc0_carry__1_n_7),
        .O(p_1_in[9]));
  FDRE \fc_reg[0] 
       (.C(aclk),
        .CE(\fc[11]_i_1_n_0 ),
        .D(p_1_in[0]),
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
  LUT6 #(
    .INIT(64'h3333303388888A88)) 
    \flush_cnt[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\flush_cnt[0]_i_2_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(\flush_cnt[0]_i_3_n_0 ),
        .I4(\flush_cnt[0]_i_4_n_0 ),
        .I5(flush_cnt[0]),
        .O(\flush_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8A8A008A)) 
    \flush_cnt[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .I3(flush_cnt[1]),
        .I4(flush_cnt[0]),
        .O(\flush_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \flush_cnt[0]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .I3(\state_reg_n_0_[1] ),
        .O(\flush_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \flush_cnt[0]_i_4 
       (.I0(p1_t0cur_i_2_n_0),
        .I1(\cy_reg_n_0_[5] ),
        .I2(\cy_reg_n_0_[1] ),
        .I3(\cy_reg_n_0_[0] ),
        .I4(\cy_reg_n_0_[3] ),
        .I5(\cy_reg_n_0_[2] ),
        .O(\flush_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6CCC66006CCC6CCC)) 
    \flush_cnt[1]_i_1 
       (.I0(flush_cnt[0]),
        .I1(flush_cnt[1]),
        .I2(out_ok),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
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
  CARRY4 gauss8_return0__1_carry
       (.CI(1'b0),
        .CO({gauss8_return0__1_carry_n_0,gauss8_return0__1_carry_n_1,gauss8_return0__1_carry_n_2,gauss8_return0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__1_carry_i_1_n_0,gauss8_return0__1_carry_i_2_n_0,gauss8_return0__1_carry_i_3_n_0,\w2_reg_n_0_[2][0] }),
        .O({gauss8_return0__1_carry_n_4,gauss8_return0__1_carry_n_5,gauss8_return0__1_carry_n_6,gauss8_return0__1_carry_n_7}),
        .S({gauss8_return0__1_carry_i_4_n_0,gauss8_return0__1_carry_i_5_n_0,gauss8_return0__1_carry_i_6_n_0,gauss8_return0__1_carry_i_7_n_0}));
  CARRY4 gauss8_return0__1_carry__0
       (.CI(gauss8_return0__1_carry_n_0),
        .CO({gauss8_return0__1_carry__0_n_0,gauss8_return0__1_carry__0_n_1,gauss8_return0__1_carry__0_n_2,gauss8_return0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__1_carry__0_i_1_n_0,gauss8_return0__1_carry__0_i_2_n_0,gauss8_return0__1_carry__0_i_3_n_0,gauss8_return0__1_carry__0_i_4_n_0}),
        .O({gauss8_return0__1_carry__0_n_4,gauss8_return0__1_carry__0_n_5,gauss8_return0__1_carry__0_n_6,gauss8_return0__1_carry__0_n_7}),
        .S({gauss8_return0__1_carry__0_i_5_n_0,gauss8_return0__1_carry__0_i_6_n_0,gauss8_return0__1_carry__0_i_7_n_0,gauss8_return0__1_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__1_carry__0_i_1
       (.I0(\w2_reg_n_0_[2][6] ),
        .I1(\w2_reg_n_0_[1][5] ),
        .I2(\w0_reg[0] [6]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][6] ),
        .O(gauss8_return0__1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__1_carry__0_i_2
       (.I0(\w2_reg_n_0_[2][5] ),
        .I1(\w2_reg_n_0_[1][4] ),
        .I2(\w0_reg[0] [5]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][5] ),
        .O(gauss8_return0__1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__1_carry__0_i_3
       (.I0(\w2_reg_n_0_[2][4] ),
        .I1(\w2_reg_n_0_[1][3] ),
        .I2(\w0_reg[0] [4]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][4] ),
        .O(gauss8_return0__1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__1_carry__0_i_4
       (.I0(\w2_reg_n_0_[2][3] ),
        .I1(\w2_reg_n_0_[1][2] ),
        .I2(\w0_reg[0] [3]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][3] ),
        .O(gauss8_return0__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__1_carry__0_i_5
       (.I0(gauss8_return0__1_carry__0_i_1_n_0),
        .I1(\w2_reg_n_0_[2][7] ),
        .I2(\w2_reg_n_0_[1][6] ),
        .I3(\w0_reg[0] [7]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][7] ),
        .O(gauss8_return0__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__1_carry__0_i_6
       (.I0(gauss8_return0__1_carry__0_i_2_n_0),
        .I1(\w2_reg_n_0_[2][6] ),
        .I2(\w2_reg_n_0_[1][5] ),
        .I3(\w0_reg[0] [6]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][6] ),
        .O(gauss8_return0__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__1_carry__0_i_7
       (.I0(gauss8_return0__1_carry__0_i_3_n_0),
        .I1(\w2_reg_n_0_[2][5] ),
        .I2(\w2_reg_n_0_[1][4] ),
        .I3(\w0_reg[0] [5]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][5] ),
        .O(gauss8_return0__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__1_carry__0_i_8
       (.I0(gauss8_return0__1_carry__0_i_4_n_0),
        .I1(\w2_reg_n_0_[2][4] ),
        .I2(\w2_reg_n_0_[1][3] ),
        .I3(\w0_reg[0] [4]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][4] ),
        .O(gauss8_return0__1_carry__0_i_8_n_0));
  CARRY4 gauss8_return0__1_carry__1
       (.CI(gauss8_return0__1_carry__0_n_0),
        .CO({NLW_gauss8_return0__1_carry__1_CO_UNCONNECTED[3:2],gauss8_return0__1_carry__1_n_2,NLW_gauss8_return0__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\w2_reg_n_0_[1][7] }),
        .O({NLW_gauss8_return0__1_carry__1_O_UNCONNECTED[3:1],gauss8_return0__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,gauss8_return0__1_carry__1_i_1_n_0}));
  LUT6 #(
    .INIT(64'h001D1DFFFFE2E200)) 
    gauss8_return0__1_carry__1_i_1
       (.I0(\w0_reg_n_0_[1][7] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [7]),
        .I3(\w2_reg_n_0_[1][6] ),
        .I4(\w2_reg_n_0_[2][7] ),
        .I5(\w2_reg_n_0_[1][7] ),
        .O(gauss8_return0__1_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__1_carry_i_1
       (.I0(\w2_reg_n_0_[2][2] ),
        .I1(\w2_reg_n_0_[1][1] ),
        .I2(\w0_reg[0] [2]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][2] ),
        .O(gauss8_return0__1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    gauss8_return0__1_carry_i_2
       (.I0(\w0_reg_n_0_[1][2] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [2]),
        .I3(\w2_reg_n_0_[1][1] ),
        .I4(\w2_reg_n_0_[2][2] ),
        .O(gauss8_return0__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gauss8_return0__1_carry_i_3
       (.I0(\w2_reg_n_0_[2][1] ),
        .I1(\w2_reg_n_0_[1][0] ),
        .O(gauss8_return0__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__1_carry_i_4
       (.I0(gauss8_return0__1_carry_i_1_n_0),
        .I1(\w2_reg_n_0_[2][3] ),
        .I2(\w2_reg_n_0_[1][2] ),
        .I3(\w0_reg[0] [3]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][3] ),
        .O(gauss8_return0__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    gauss8_return0__1_carry_i_5
       (.I0(\w2_reg_n_0_[2][2] ),
        .I1(\w2_reg_n_0_[1][1] ),
        .I2(gauss8_return0__1_carry_i_8_n_0),
        .I3(\w2_reg_n_0_[1][0] ),
        .I4(\w2_reg_n_0_[2][1] ),
        .O(gauss8_return0__1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    gauss8_return0__1_carry_i_6
       (.I0(\w2_reg_n_0_[1][0] ),
        .I1(\w2_reg_n_0_[2][1] ),
        .I2(\w0_reg_n_0_[1][1] ),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg[0] [1]),
        .O(gauss8_return0__1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    gauss8_return0__1_carry_i_7
       (.I0(\w0_reg_n_0_[1][0] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [0]),
        .I3(\w2_reg_n_0_[2][0] ),
        .O(gauss8_return0__1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gauss8_return0__1_carry_i_8
       (.I0(\w0_reg[0] [2]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg_n_0_[1][2] ),
        .O(gauss8_return0__1_carry_i_8_n_0));
  CARRY4 gauss8_return0__30_carry
       (.CI(1'b0),
        .CO({gauss8_return0__30_carry_n_0,gauss8_return0__30_carry_n_1,gauss8_return0__30_carry_n_2,gauss8_return0__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__30_carry_i_1_n_0,gauss8_return0__30_carry_i_2_n_0,\w1_reg_n_0_[2][0] ,1'b0}),
        .O({gauss8_return0__30_carry_n_4,gauss8_return0__30_carry_n_5,gauss8_return0__30_carry_n_6,gauss8_return0__30_carry_n_7}),
        .S({gauss8_return0__30_carry_i_3_n_0,gauss8_return0__30_carry_i_4_n_0,gauss8_return0__30_carry_i_5_n_0,gauss8_return0__30_carry_i_6_n_0}));
  CARRY4 gauss8_return0__30_carry__0
       (.CI(gauss8_return0__30_carry_n_0),
        .CO({gauss8_return0__30_carry__0_n_0,gauss8_return0__30_carry__0_n_1,gauss8_return0__30_carry__0_n_2,gauss8_return0__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__30_carry__0_i_1_n_0,gauss8_return0__30_carry__0_i_2_n_0,gauss8_return0__30_carry__0_i_3_n_0,gauss8_return0__30_carry__0_i_4_n_0}),
        .O({gauss8_return0__30_carry__0_n_4,gauss8_return0__30_carry__0_n_5,gauss8_return0__30_carry__0_n_6,gauss8_return0__30_carry__0_n_7}),
        .S({gauss8_return0__30_carry__0_i_5_n_0,gauss8_return0__30_carry__0_i_6_n_0,gauss8_return0__30_carry__0_i_7_n_0,gauss8_return0__30_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__30_carry__0_i_1
       (.I0(\w1_reg_n_0_[2][5] ),
        .I1(\w1_reg_n_0_[1][4] ),
        .I2(\w2_reg[0] [6]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][6] ),
        .O(gauss8_return0__30_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__30_carry__0_i_2
       (.I0(\w1_reg_n_0_[2][4] ),
        .I1(\w1_reg_n_0_[1][3] ),
        .I2(\w2_reg[0] [5]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][5] ),
        .O(gauss8_return0__30_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__30_carry__0_i_3
       (.I0(\w1_reg_n_0_[2][3] ),
        .I1(\w1_reg_n_0_[1][2] ),
        .I2(\w2_reg[0] [4]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][4] ),
        .O(gauss8_return0__30_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__30_carry__0_i_4
       (.I0(\w1_reg_n_0_[2][2] ),
        .I1(\w1_reg_n_0_[1][1] ),
        .I2(\w2_reg[0] [3]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][3] ),
        .O(gauss8_return0__30_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__30_carry__0_i_5
       (.I0(gauss8_return0__30_carry__0_i_1_n_0),
        .I1(\w1_reg_n_0_[2][6] ),
        .I2(\w1_reg_n_0_[1][5] ),
        .I3(\w2_reg[0] [7]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][7] ),
        .O(gauss8_return0__30_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__30_carry__0_i_6
       (.I0(gauss8_return0__30_carry__0_i_2_n_0),
        .I1(\w1_reg_n_0_[2][5] ),
        .I2(\w1_reg_n_0_[1][4] ),
        .I3(\w2_reg[0] [6]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][6] ),
        .O(gauss8_return0__30_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__30_carry__0_i_7
       (.I0(gauss8_return0__30_carry__0_i_3_n_0),
        .I1(\w1_reg_n_0_[2][4] ),
        .I2(\w1_reg_n_0_[1][3] ),
        .I3(\w2_reg[0] [5]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][5] ),
        .O(gauss8_return0__30_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__30_carry__0_i_8
       (.I0(gauss8_return0__30_carry__0_i_4_n_0),
        .I1(\w1_reg_n_0_[2][3] ),
        .I2(\w1_reg_n_0_[1][2] ),
        .I3(\w2_reg[0] [4]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][4] ),
        .O(gauss8_return0__30_carry__0_i_8_n_0));
  CARRY4 gauss8_return0__30_carry__1
       (.CI(gauss8_return0__30_carry__0_n_0),
        .CO({NLW_gauss8_return0__30_carry__1_CO_UNCONNECTED[3],gauss8_return0__30_carry__1_n_1,NLW_gauss8_return0__30_carry__1_CO_UNCONNECTED[1],gauss8_return0__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\w1_reg_n_0_[1][7] ,gauss8_return0__30_carry__1_i_1_n_0}),
        .O({NLW_gauss8_return0__30_carry__1_O_UNCONNECTED[3:2],gauss8_return0__30_carry__1_n_6,gauss8_return0__30_carry__1_n_7}),
        .S({1'b0,1'b1,gauss8_return0__30_carry__1_i_2_n_0,gauss8_return0__30_carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__30_carry__1_i_1
       (.I0(\w1_reg_n_0_[2][6] ),
        .I1(\w1_reg_n_0_[1][5] ),
        .I2(\w2_reg[0] [7]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][7] ),
        .O(gauss8_return0__30_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    gauss8_return0__30_carry__1_i_2
       (.I0(\w1_reg_n_0_[1][6] ),
        .I1(\w1_reg_n_0_[2][7] ),
        .I2(\w1_reg_n_0_[1][7] ),
        .O(gauss8_return0__30_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    gauss8_return0__30_carry__1_i_3
       (.I0(gauss8_return0__30_carry__1_i_4_n_0),
        .I1(\w1_reg_n_0_[1][5] ),
        .I2(\w1_reg_n_0_[2][6] ),
        .I3(\w1_reg_n_0_[1][6] ),
        .I4(\w1_reg_n_0_[2][7] ),
        .O(gauss8_return0__30_carry__1_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gauss8_return0__30_carry__1_i_4
       (.I0(\w2_reg[0] [7]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg_n_0_[1][7] ),
        .O(gauss8_return0__30_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    gauss8_return0__30_carry_i_1
       (.I0(\w2_reg_n_0_[1][3] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg[0] [3]),
        .I3(\w1_reg_n_0_[1][1] ),
        .I4(\w1_reg_n_0_[2][2] ),
        .O(gauss8_return0__30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gauss8_return0__30_carry_i_2
       (.I0(\w1_reg_n_0_[2][1] ),
        .I1(\w1_reg_n_0_[1][0] ),
        .O(gauss8_return0__30_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    gauss8_return0__30_carry_i_3
       (.I0(\w1_reg_n_0_[2][2] ),
        .I1(\w1_reg_n_0_[1][1] ),
        .I2(gauss8_return0__30_carry_i_7_n_0),
        .I3(\w1_reg_n_0_[1][0] ),
        .I4(\w1_reg_n_0_[2][1] ),
        .O(gauss8_return0__30_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    gauss8_return0__30_carry_i_4
       (.I0(\w1_reg_n_0_[1][0] ),
        .I1(\w1_reg_n_0_[2][1] ),
        .I2(\w2_reg_n_0_[1][2] ),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg[0] [2]),
        .O(gauss8_return0__30_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    gauss8_return0__30_carry_i_5
       (.I0(\w2_reg_n_0_[1][1] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg[0] [1]),
        .I3(\w1_reg_n_0_[2][0] ),
        .O(gauss8_return0__30_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    gauss8_return0__30_carry_i_6
       (.I0(\w2_reg[0] [0]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg_n_0_[1][0] ),
        .O(gauss8_return0__30_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gauss8_return0__30_carry_i_7
       (.I0(\w2_reg[0] [3]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg_n_0_[1][3] ),
        .O(gauss8_return0__30_carry_i_7_n_0));
  CARRY4 gauss8_return0__60_carry
       (.CI(1'b0),
        .CO({gauss8_return0__60_carry_n_0,gauss8_return0__60_carry_n_1,gauss8_return0__60_carry_n_2,gauss8_return0__60_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__60_carry_i_1_n_0,gauss8_return0__60_carry_i_2_n_0,gauss8_return0__60_carry_i_3_n_0,1'b0}),
        .O({gauss8_return0__60_carry_n_4,gauss8_return0__60_carry_n_5,gauss8_return0__60_carry_n_6,gauss8_return0__60_carry_n_7}),
        .S({gauss8_return0__60_carry_i_4_n_0,gauss8_return0__60_carry_i_5_n_0,gauss8_return0__60_carry_i_6_n_0,gauss8_return0__60_carry_i_7_n_0}));
  CARRY4 gauss8_return0__60_carry__0
       (.CI(gauss8_return0__60_carry_n_0),
        .CO({gauss8_return0__60_carry__0_n_0,gauss8_return0__60_carry__0_n_1,gauss8_return0__60_carry__0_n_2,gauss8_return0__60_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__60_carry__0_i_1_n_0,gauss8_return0__60_carry__0_i_2_n_0,gauss8_return0__60_carry__0_i_3_n_0,gauss8_return0__60_carry__0_i_4_n_0}),
        .O({gauss8_return0__60_carry__0_n_4,gauss8_return0__60_carry__0_n_5,gauss8_return0__60_carry__0_n_6,gauss8_return0__60_carry__0_n_7}),
        .S({gauss8_return0__60_carry__0_i_5_n_0,gauss8_return0__60_carry__0_i_6_n_0,gauss8_return0__60_carry__0_i_7_n_0,gauss8_return0__60_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry__0_i_1
       (.I0(\w0_reg_n_0_[2][7] ),
        .I1(\w0_reg_n_0_[1][6] ),
        .I2(\w1_reg[0] [6]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][6] ),
        .O(gauss8_return0__60_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry__0_i_2
       (.I0(\w0_reg_n_0_[2][6] ),
        .I1(\w0_reg_n_0_[1][5] ),
        .I2(\w1_reg[0] [5]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][5] ),
        .O(gauss8_return0__60_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry__0_i_3
       (.I0(\w0_reg_n_0_[2][5] ),
        .I1(\w0_reg_n_0_[1][4] ),
        .I2(\w1_reg[0] [4]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][4] ),
        .O(gauss8_return0__60_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry__0_i_4
       (.I0(\w0_reg_n_0_[2][4] ),
        .I1(\w0_reg_n_0_[1][3] ),
        .I2(\w1_reg[0] [3]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][3] ),
        .O(gauss8_return0__60_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    gauss8_return0__60_carry__0_i_5
       (.I0(gauss8_return0__60_carry__0_i_1_n_0),
        .I1(\w0_reg_n_0_[1][7] ),
        .I2(\w1_reg[0] [7]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][7] ),
        .O(gauss8_return0__60_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__60_carry__0_i_6
       (.I0(gauss8_return0__60_carry__0_i_2_n_0),
        .I1(\w0_reg_n_0_[2][7] ),
        .I2(\w0_reg_n_0_[1][6] ),
        .I3(\w1_reg[0] [6]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][6] ),
        .O(gauss8_return0__60_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__60_carry__0_i_7
       (.I0(gauss8_return0__60_carry__0_i_3_n_0),
        .I1(\w0_reg_n_0_[2][6] ),
        .I2(\w0_reg_n_0_[1][5] ),
        .I3(\w1_reg[0] [5]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][5] ),
        .O(gauss8_return0__60_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__60_carry__0_i_8
       (.I0(gauss8_return0__60_carry__0_i_4_n_0),
        .I1(\w0_reg_n_0_[2][5] ),
        .I2(\w0_reg_n_0_[1][4] ),
        .I3(\w1_reg[0] [4]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][4] ),
        .O(gauss8_return0__60_carry__0_i_8_n_0));
  CARRY4 gauss8_return0__60_carry__1
       (.CI(gauss8_return0__60_carry__0_n_0),
        .CO({NLW_gauss8_return0__60_carry__1_CO_UNCONNECTED[3:2],gauss8_return0__60_carry__1_n_2,NLW_gauss8_return0__60_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gauss8_return0__60_carry__1_O_UNCONNECTED[3:1],gauss8_return0__60_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,gauss8_return0__60_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'hE200)) 
    gauss8_return0__60_carry__1_i_1
       (.I0(\w1_reg_n_0_[1][7] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w1_reg[0] [7]),
        .I3(\w0_reg_n_0_[1][7] ),
        .O(gauss8_return0__60_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry_i_1
       (.I0(\w0_reg_n_0_[2][3] ),
        .I1(\w0_reg_n_0_[1][2] ),
        .I2(\w1_reg[0] [2]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][2] ),
        .O(gauss8_return0__60_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry_i_2
       (.I0(\w0_reg_n_0_[2][2] ),
        .I1(\w0_reg_n_0_[1][1] ),
        .I2(\w1_reg[0] [1]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][1] ),
        .O(gauss8_return0__60_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    gauss8_return0__60_carry_i_3
       (.I0(\w0_reg_n_0_[2][1] ),
        .I1(\w0_reg_n_0_[1][0] ),
        .I2(\w1_reg[0] [0]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][0] ),
        .O(gauss8_return0__60_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__60_carry_i_4
       (.I0(gauss8_return0__60_carry_i_1_n_0),
        .I1(\w0_reg_n_0_[2][4] ),
        .I2(\w0_reg_n_0_[1][3] ),
        .I3(\w1_reg[0] [3]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][3] ),
        .O(gauss8_return0__60_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__60_carry_i_5
       (.I0(gauss8_return0__60_carry_i_2_n_0),
        .I1(\w0_reg_n_0_[2][3] ),
        .I2(\w0_reg_n_0_[1][2] ),
        .I3(\w1_reg[0] [2]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][2] ),
        .O(gauss8_return0__60_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    gauss8_return0__60_carry_i_6
       (.I0(gauss8_return0__60_carry_i_3_n_0),
        .I1(\w0_reg_n_0_[2][2] ),
        .I2(\w0_reg_n_0_[1][1] ),
        .I3(\w1_reg[0] [1]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][1] ),
        .O(gauss8_return0__60_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h96999666)) 
    gauss8_return0__60_carry_i_7
       (.I0(\w0_reg_n_0_[2][1] ),
        .I1(\w0_reg_n_0_[1][0] ),
        .I2(\w1_reg[0] [0]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][0] ),
        .O(gauss8_return0__60_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gauss8_return0__86_carry
       (.CI(1'b0),
        .CO({gauss8_return0__86_carry_n_0,gauss8_return0__86_carry_n_1,gauss8_return0__86_carry_n_2,gauss8_return0__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__86_carry_i_1_n_0,gauss8_return0__86_carry_i_2_n_0,gauss8_return0__86_carry_i_3_n_0,1'b0}),
        .O(NLW_gauss8_return0__86_carry_O_UNCONNECTED[3:0]),
        .S({gauss8_return0__86_carry_i_4_n_0,gauss8_return0__86_carry_i_5_n_0,gauss8_return0__86_carry_i_6_n_0,gauss8_return0__86_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gauss8_return0__86_carry__0
       (.CI(gauss8_return0__86_carry_n_0),
        .CO({gauss8_return0__86_carry__0_n_0,gauss8_return0__86_carry__0_n_1,gauss8_return0__86_carry__0_n_2,gauss8_return0__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gauss8_return0__86_carry__0_i_1_n_0,gauss8_return0__86_carry__0_i_2_n_0,gauss8_return0__86_carry__0_i_3_n_0,gauss8_return0__86_carry__0_i_4_n_0}),
        .O({gauss8_return0__86_carry__0_n_4,gauss8_return0__86_carry__0_n_5,gauss8_return0__86_carry__0_n_6,gauss8_return0__86_carry__0_n_7}),
        .S({gauss8_return0__86_carry__0_i_5_n_0,gauss8_return0__86_carry__0_i_6_n_0,gauss8_return0__86_carry__0_i_7_n_0,gauss8_return0__86_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__0_i_1
       (.I0(gauss8_return0__1_carry__0_n_5),
        .I1(gauss8_return0__30_carry__0_n_5),
        .I2(gauss8_return0__60_carry__0_n_6),
        .O(gauss8_return0__86_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__0_i_2
       (.I0(gauss8_return0__1_carry__0_n_6),
        .I1(gauss8_return0__30_carry__0_n_6),
        .I2(gauss8_return0__60_carry__0_n_7),
        .O(gauss8_return0__86_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__0_i_3
       (.I0(gauss8_return0__1_carry__0_n_7),
        .I1(gauss8_return0__30_carry__0_n_7),
        .I2(gauss8_return0__60_carry_n_4),
        .O(gauss8_return0__86_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__0_i_4
       (.I0(gauss8_return0__1_carry_n_4),
        .I1(gauss8_return0__30_carry_n_4),
        .I2(gauss8_return0__60_carry_n_5),
        .O(gauss8_return0__86_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry__0_i_5
       (.I0(gauss8_return0__1_carry__0_n_4),
        .I1(gauss8_return0__30_carry__0_n_4),
        .I2(gauss8_return0__60_carry__0_n_5),
        .I3(gauss8_return0__86_carry__0_i_1_n_0),
        .O(gauss8_return0__86_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry__0_i_6
       (.I0(gauss8_return0__1_carry__0_n_5),
        .I1(gauss8_return0__30_carry__0_n_5),
        .I2(gauss8_return0__60_carry__0_n_6),
        .I3(gauss8_return0__86_carry__0_i_2_n_0),
        .O(gauss8_return0__86_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry__0_i_7
       (.I0(gauss8_return0__1_carry__0_n_6),
        .I1(gauss8_return0__30_carry__0_n_6),
        .I2(gauss8_return0__60_carry__0_n_7),
        .I3(gauss8_return0__86_carry__0_i_3_n_0),
        .O(gauss8_return0__86_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry__0_i_8
       (.I0(gauss8_return0__1_carry__0_n_7),
        .I1(gauss8_return0__30_carry__0_n_7),
        .I2(gauss8_return0__60_carry_n_4),
        .I3(gauss8_return0__86_carry__0_i_4_n_0),
        .O(gauss8_return0__86_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gauss8_return0__86_carry__1
       (.CI(gauss8_return0__86_carry__0_n_0),
        .CO({NLW_gauss8_return0__86_carry__1_CO_UNCONNECTED[3],gauss8_return0__86_carry__1_n_1,gauss8_return0__86_carry__1_n_2,gauss8_return0__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,gauss8_return0__86_carry__1_i_1_n_0,gauss8_return0__86_carry__1_i_2_n_0,gauss8_return0__86_carry__1_i_3_n_0}),
        .O({gauss8_return0__86_carry__1_n_4,gauss8_return0__86_carry__1_n_5,gauss8_return0__86_carry__1_n_6,gauss8_return0__86_carry__1_n_7}),
        .S({gauss8_return0__86_carry__1_i_4_n_0,gauss8_return0__86_carry__1_i_5_n_0,gauss8_return0__86_carry__1_i_6_n_0,gauss8_return0__86_carry__1_i_7_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__1_i_1
       (.I0(gauss8_return0__1_carry__1_n_2),
        .I1(gauss8_return0__30_carry__1_n_6),
        .I2(gauss8_return0__60_carry__1_n_7),
        .O(gauss8_return0__86_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__1_i_2
       (.I0(gauss8_return0__1_carry__1_n_7),
        .I1(gauss8_return0__30_carry__1_n_7),
        .I2(gauss8_return0__60_carry__0_n_4),
        .O(gauss8_return0__86_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry__1_i_3
       (.I0(gauss8_return0__1_carry__0_n_4),
        .I1(gauss8_return0__30_carry__0_n_4),
        .I2(gauss8_return0__60_carry__0_n_5),
        .O(gauss8_return0__86_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    gauss8_return0__86_carry__1_i_4
       (.I0(gauss8_return0__30_carry__1_n_1),
        .I1(gauss8_return0__60_carry__1_n_2),
        .O(gauss8_return0__86_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    gauss8_return0__86_carry__1_i_5
       (.I0(gauss8_return0__60_carry__1_n_7),
        .I1(gauss8_return0__30_carry__1_n_6),
        .I2(gauss8_return0__1_carry__1_n_2),
        .I3(gauss8_return0__60_carry__1_n_2),
        .I4(gauss8_return0__30_carry__1_n_1),
        .O(gauss8_return0__86_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry__1_i_6
       (.I0(gauss8_return0__86_carry__1_i_2_n_0),
        .I1(gauss8_return0__30_carry__1_n_6),
        .I2(gauss8_return0__60_carry__1_n_7),
        .I3(gauss8_return0__1_carry__1_n_2),
        .O(gauss8_return0__86_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry__1_i_7
       (.I0(gauss8_return0__1_carry__1_n_7),
        .I1(gauss8_return0__30_carry__1_n_7),
        .I2(gauss8_return0__60_carry__0_n_4),
        .I3(gauss8_return0__86_carry__1_i_3_n_0),
        .O(gauss8_return0__86_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry_i_1
       (.I0(gauss8_return0__1_carry_n_5),
        .I1(gauss8_return0__60_carry_n_6),
        .I2(gauss8_return0__30_carry_n_5),
        .O(gauss8_return0__86_carry_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry_i_2
       (.I0(gauss8_return0__1_carry_n_6),
        .I1(gauss8_return0__60_carry_n_7),
        .I2(gauss8_return0__30_carry_n_6),
        .O(gauss8_return0__86_carry_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gauss8_return0__86_carry_i_3
       (.I0(gauss8_return0__1_carry_n_7),
        .I1(gauss8_return0__30_carry_n_7),
        .I2(\w0_reg_n_0_[2][0] ),
        .O(gauss8_return0__86_carry_i_3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry_i_4
       (.I0(gauss8_return0__1_carry_n_4),
        .I1(gauss8_return0__30_carry_n_4),
        .I2(gauss8_return0__60_carry_n_5),
        .I3(gauss8_return0__86_carry_i_1_n_0),
        .O(gauss8_return0__86_carry_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry_i_5
       (.I0(gauss8_return0__1_carry_n_5),
        .I1(gauss8_return0__60_carry_n_6),
        .I2(gauss8_return0__30_carry_n_5),
        .I3(gauss8_return0__86_carry_i_2_n_0),
        .O(gauss8_return0__86_carry_i_5_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gauss8_return0__86_carry_i_6
       (.I0(gauss8_return0__1_carry_n_6),
        .I1(gauss8_return0__60_carry_n_7),
        .I2(gauss8_return0__30_carry_n_6),
        .I3(gauss8_return0__86_carry_i_3_n_0),
        .O(gauss8_return0__86_carry_i_6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gauss8_return0__86_carry_i_7
       (.I0(gauss8_return0__1_carry_n_7),
        .I1(gauss8_return0__30_carry_n_7),
        .I2(\w0_reg_n_0_[2][0] ),
        .O(gauss8_return0__86_carry_i_7_n_0));
  CARRY4 \gauss8_return0_inferred__0/i___1_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__0/i___1_carry_n_0 ,\gauss8_return0_inferred__0/i___1_carry_n_1 ,\gauss8_return0_inferred__0/i___1_carry_n_2 ,\gauss8_return0_inferred__0/i___1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___1_carry_i_1_n_0,i___1_carry_i_2_n_0,i___1_carry_i_3_n_0,br[0]}),
        .O({\gauss8_return0_inferred__0/i___1_carry_n_4 ,\gauss8_return0_inferred__0/i___1_carry_n_5 ,\gauss8_return0_inferred__0/i___1_carry_n_6 ,\gauss8_return0_inferred__0/i___1_carry_n_7 }),
        .S({i___1_carry_i_4_n_0,i___1_carry_i_5_n_0,i___1_carry_i_6_n_0,i___1_carry_i_7_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___1_carry__0 
       (.CI(\gauss8_return0_inferred__0/i___1_carry_n_0 ),
        .CO({\gauss8_return0_inferred__0/i___1_carry__0_n_0 ,\gauss8_return0_inferred__0/i___1_carry__0_n_1 ,\gauss8_return0_inferred__0/i___1_carry__0_n_2 ,\gauss8_return0_inferred__0/i___1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___1_carry__0_i_1__0_n_0,i___1_carry__0_i_2__0_n_0,i___1_carry__0_i_3__0_n_0,i___1_carry__0_i_4__0_n_0}),
        .O({\gauss8_return0_inferred__0/i___1_carry__0_n_4 ,\gauss8_return0_inferred__0/i___1_carry__0_n_5 ,\gauss8_return0_inferred__0/i___1_carry__0_n_6 ,\gauss8_return0_inferred__0/i___1_carry__0_n_7 }),
        .S({i___1_carry__0_i_5_n_0,i___1_carry__0_i_6_n_0,i___1_carry__0_i_7_n_0,i___1_carry__0_i_8_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___1_carry__1 
       (.CI(\gauss8_return0_inferred__0/i___1_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__0/i___1_carry__1_CO_UNCONNECTED [3:2],\gauss8_return0_inferred__0/i___1_carry__1_n_2 ,\NLW_gauss8_return0_inferred__0/i___1_carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\w2_reg_n_0_[1][15] }),
        .O({\NLW_gauss8_return0_inferred__0/i___1_carry__1_O_UNCONNECTED [3:1],\gauss8_return0_inferred__0/i___1_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,i___1_carry__1_i_1_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___30_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__0/i___30_carry_n_0 ,\gauss8_return0_inferred__0/i___30_carry_n_1 ,\gauss8_return0_inferred__0/i___30_carry_n_2 ,\gauss8_return0_inferred__0/i___30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___30_carry_i_1_n_0,i___30_carry_i_2_n_0,\w1_reg_n_0_[2][8] ,1'b0}),
        .O({\gauss8_return0_inferred__0/i___30_carry_n_4 ,\gauss8_return0_inferred__0/i___30_carry_n_5 ,\gauss8_return0_inferred__0/i___30_carry_n_6 ,\gauss8_return0_inferred__0/i___30_carry_n_7 }),
        .S({i___30_carry_i_3_n_0,i___30_carry_i_4_n_0,i___30_carry_i_5_n_0,bl__0[0]}));
  CARRY4 \gauss8_return0_inferred__0/i___30_carry__0 
       (.CI(\gauss8_return0_inferred__0/i___30_carry_n_0 ),
        .CO({\gauss8_return0_inferred__0/i___30_carry__0_n_0 ,\gauss8_return0_inferred__0/i___30_carry__0_n_1 ,\gauss8_return0_inferred__0/i___30_carry__0_n_2 ,\gauss8_return0_inferred__0/i___30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___30_carry__0_i_1__0_n_0,i___30_carry__0_i_2__0_n_0,i___30_carry__0_i_3__0_n_0,i___30_carry__0_i_4_n_0}),
        .O({\gauss8_return0_inferred__0/i___30_carry__0_n_4 ,\gauss8_return0_inferred__0/i___30_carry__0_n_5 ,\gauss8_return0_inferred__0/i___30_carry__0_n_6 ,\gauss8_return0_inferred__0/i___30_carry__0_n_7 }),
        .S({i___30_carry__0_i_5_n_0,i___30_carry__0_i_6_n_0,i___30_carry__0_i_7_n_0,i___30_carry__0_i_8_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___30_carry__1 
       (.CI(\gauss8_return0_inferred__0/i___30_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__0/i___30_carry__1_CO_UNCONNECTED [3],\gauss8_return0_inferred__0/i___30_carry__1_n_1 ,\NLW_gauss8_return0_inferred__0/i___30_carry__1_CO_UNCONNECTED [1],\gauss8_return0_inferred__0/i___30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\w1_reg_n_0_[1][15] ,i___30_carry__1_i_1__0_n_0}),
        .O({\NLW_gauss8_return0_inferred__0/i___30_carry__1_O_UNCONNECTED [3:2],\gauss8_return0_inferred__0/i___30_carry__1_n_6 ,\gauss8_return0_inferred__0/i___30_carry__1_n_7 }),
        .S({1'b0,1'b1,i___30_carry__1_i_2_n_0,i___30_carry__1_i_3_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___60_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__0/i___60_carry_n_0 ,\gauss8_return0_inferred__0/i___60_carry_n_1 ,\gauss8_return0_inferred__0/i___60_carry_n_2 ,\gauss8_return0_inferred__0/i___60_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___60_carry_i_1__0_n_0,i___60_carry_i_2__0_n_0,i___60_carry_i_3_n_0,1'b0}),
        .O({\gauss8_return0_inferred__0/i___60_carry_n_4 ,\gauss8_return0_inferred__0/i___60_carry_n_5 ,\gauss8_return0_inferred__0/i___60_carry_n_6 ,\gauss8_return0_inferred__0/i___60_carry_n_7 }),
        .S({i___60_carry_i_4_n_0,i___60_carry_i_5_n_0,i___60_carry_i_6_n_0,i___60_carry_i_7_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___60_carry__0 
       (.CI(\gauss8_return0_inferred__0/i___60_carry_n_0 ),
        .CO({\gauss8_return0_inferred__0/i___60_carry__0_n_0 ,\gauss8_return0_inferred__0/i___60_carry__0_n_1 ,\gauss8_return0_inferred__0/i___60_carry__0_n_2 ,\gauss8_return0_inferred__0/i___60_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___60_carry__0_i_1__0_n_0,i___60_carry__0_i_2__0_n_0,i___60_carry__0_i_3__0_n_0,i___60_carry__0_i_4__0_n_0}),
        .O({\gauss8_return0_inferred__0/i___60_carry__0_n_4 ,\gauss8_return0_inferred__0/i___60_carry__0_n_5 ,\gauss8_return0_inferred__0/i___60_carry__0_n_6 ,\gauss8_return0_inferred__0/i___60_carry__0_n_7 }),
        .S({i___60_carry__0_i_5_n_0,i___60_carry__0_i_6_n_0,i___60_carry__0_i_7_n_0,i___60_carry__0_i_8_n_0}));
  CARRY4 \gauss8_return0_inferred__0/i___60_carry__1 
       (.CI(\gauss8_return0_inferred__0/i___60_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__0/i___60_carry__1_CO_UNCONNECTED [3:2],\gauss8_return0_inferred__0/i___60_carry__1_n_2 ,\NLW_gauss8_return0_inferred__0/i___60_carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gauss8_return0_inferred__0/i___60_carry__1_O_UNCONNECTED [3:1],\gauss8_return0_inferred__0/i___60_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,i___60_carry__1_i_1__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gauss8_return0_inferred__0/i___86_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__0/i___86_carry_n_0 ,\gauss8_return0_inferred__0/i___86_carry_n_1 ,\gauss8_return0_inferred__0/i___86_carry_n_2 ,\gauss8_return0_inferred__0/i___86_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___86_carry_i_1_n_0,i___86_carry_i_2_n_0,i___86_carry_i_3_n_0,1'b0}),
        .O(\NLW_gauss8_return0_inferred__0/i___86_carry_O_UNCONNECTED [3:0]),
        .S({i___86_carry_i_4_n_0,i___86_carry_i_5_n_0,i___86_carry_i_6_n_0,i___86_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gauss8_return0_inferred__0/i___86_carry__0 
       (.CI(\gauss8_return0_inferred__0/i___86_carry_n_0 ),
        .CO({\gauss8_return0_inferred__0/i___86_carry__0_n_0 ,\gauss8_return0_inferred__0/i___86_carry__0_n_1 ,\gauss8_return0_inferred__0/i___86_carry__0_n_2 ,\gauss8_return0_inferred__0/i___86_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___86_carry__0_i_1_n_0,i___86_carry__0_i_2_n_0,i___86_carry__0_i_3_n_0,i___86_carry__0_i_4_n_0}),
        .O({\gauss8_return0_inferred__0/i___86_carry__0_n_4 ,\gauss8_return0_inferred__0/i___86_carry__0_n_5 ,\gauss8_return0_inferred__0/i___86_carry__0_n_6 ,\gauss8_return0_inferred__0/i___86_carry__0_n_7 }),
        .S({i___86_carry__0_i_5_n_0,i___86_carry__0_i_6_n_0,i___86_carry__0_i_7_n_0,i___86_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gauss8_return0_inferred__0/i___86_carry__1 
       (.CI(\gauss8_return0_inferred__0/i___86_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__0/i___86_carry__1_CO_UNCONNECTED [3],\gauss8_return0_inferred__0/i___86_carry__1_n_1 ,\gauss8_return0_inferred__0/i___86_carry__1_n_2 ,\gauss8_return0_inferred__0/i___86_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___86_carry__1_i_1_n_0,i___86_carry__1_i_2_n_0,i___86_carry__1_i_3_n_0}),
        .O({\gauss8_return0_inferred__0/i___86_carry__1_n_4 ,\gauss8_return0_inferred__0/i___86_carry__1_n_5 ,\gauss8_return0_inferred__0/i___86_carry__1_n_6 ,\gauss8_return0_inferred__0/i___86_carry__1_n_7 }),
        .S({i___86_carry__1_i_4_n_0,i___86_carry__1_i_5_n_0,i___86_carry__1_i_6_n_0,i___86_carry__1_i_7_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___1_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__1/i___1_carry_n_0 ,\gauss8_return0_inferred__1/i___1_carry_n_1 ,\gauss8_return0_inferred__1/i___1_carry_n_2 ,\gauss8_return0_inferred__1/i___1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___1_carry_i_1__0_n_0,i___1_carry_i_2__0_n_0,i___1_carry_i_3__0_n_0,\w2_reg_n_0_[2][16] }),
        .O({\gauss8_return0_inferred__1/i___1_carry_n_4 ,\gauss8_return0_inferred__1/i___1_carry_n_5 ,\gauss8_return0_inferred__1/i___1_carry_n_6 ,\gauss8_return0_inferred__1/i___1_carry_n_7 }),
        .S({i___1_carry_i_4__0_n_0,i___1_carry_i_5__0_n_0,i___1_carry_i_6__0_n_0,i___1_carry_i_7__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___1_carry__0 
       (.CI(\gauss8_return0_inferred__1/i___1_carry_n_0 ),
        .CO({\gauss8_return0_inferred__1/i___1_carry__0_n_0 ,\gauss8_return0_inferred__1/i___1_carry__0_n_1 ,\gauss8_return0_inferred__1/i___1_carry__0_n_2 ,\gauss8_return0_inferred__1/i___1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___1_carry__0_i_1_n_0,i___1_carry__0_i_2_n_0,i___1_carry__0_i_3_n_0,i___1_carry__0_i_4_n_0}),
        .O({\gauss8_return0_inferred__1/i___1_carry__0_n_4 ,\gauss8_return0_inferred__1/i___1_carry__0_n_5 ,\gauss8_return0_inferred__1/i___1_carry__0_n_6 ,\gauss8_return0_inferred__1/i___1_carry__0_n_7 }),
        .S({i___1_carry__0_i_5__0_n_0,i___1_carry__0_i_6__0_n_0,i___1_carry__0_i_7__0_n_0,i___1_carry__0_i_8__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___1_carry__1 
       (.CI(\gauss8_return0_inferred__1/i___1_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__1/i___1_carry__1_CO_UNCONNECTED [3:2],\gauss8_return0_inferred__1/i___1_carry__1_n_2 ,\NLW_gauss8_return0_inferred__1/i___1_carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gauss8_return2[8]}),
        .O({\NLW_gauss8_return0_inferred__1/i___1_carry__1_O_UNCONNECTED [3:1],\gauss8_return0_inferred__1/i___1_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,i___1_carry__1_i_1__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___30_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__1/i___30_carry_n_0 ,\gauss8_return0_inferred__1/i___30_carry_n_1 ,\gauss8_return0_inferred__1/i___30_carry_n_2 ,\gauss8_return0_inferred__1/i___30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___30_carry_i_1__0_n_0,i___30_carry_i_2__0_n_0,gauss8_return4[1],1'b0}),
        .O({\gauss8_return0_inferred__1/i___30_carry_n_4 ,\gauss8_return0_inferred__1/i___30_carry_n_5 ,\gauss8_return0_inferred__1/i___30_carry_n_6 ,\gauss8_return0_inferred__1/i___30_carry_n_7 }),
        .S({i___30_carry_i_3__0_n_0,i___30_carry_i_4__0_n_0,i___30_carry_i_5__0_n_0,i___30_carry_i_6__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___30_carry__0 
       (.CI(\gauss8_return0_inferred__1/i___30_carry_n_0 ),
        .CO({\gauss8_return0_inferred__1/i___30_carry__0_n_0 ,\gauss8_return0_inferred__1/i___30_carry__0_n_1 ,\gauss8_return0_inferred__1/i___30_carry__0_n_2 ,\gauss8_return0_inferred__1/i___30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___30_carry__0_i_1_n_0,i___30_carry__0_i_2_n_0,i___30_carry__0_i_3_n_0,i___30_carry__0_i_4__0_n_0}),
        .O({\gauss8_return0_inferred__1/i___30_carry__0_n_4 ,\gauss8_return0_inferred__1/i___30_carry__0_n_5 ,\gauss8_return0_inferred__1/i___30_carry__0_n_6 ,\gauss8_return0_inferred__1/i___30_carry__0_n_7 }),
        .S({i___30_carry__0_i_5__0_n_0,i___30_carry__0_i_6__0_n_0,i___30_carry__0_i_7__0_n_0,i___30_carry__0_i_8__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___30_carry__1 
       (.CI(\gauss8_return0_inferred__1/i___30_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__1/i___30_carry__1_CO_UNCONNECTED [3],\gauss8_return0_inferred__1/i___30_carry__1_n_1 ,\NLW_gauss8_return0_inferred__1/i___30_carry__1_CO_UNCONNECTED [1],\gauss8_return0_inferred__1/i___30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gauss8_return5[9],i___30_carry__1_i_1_n_0}),
        .O({\NLW_gauss8_return0_inferred__1/i___30_carry__1_O_UNCONNECTED [3:2],\gauss8_return0_inferred__1/i___30_carry__1_n_6 ,\gauss8_return0_inferred__1/i___30_carry__1_n_7 }),
        .S({1'b0,1'b1,i___30_carry__1_i_2__0_n_0,i___30_carry__1_i_3__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___60_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__1/i___60_carry_n_0 ,\gauss8_return0_inferred__1/i___60_carry_n_1 ,\gauss8_return0_inferred__1/i___60_carry_n_2 ,\gauss8_return0_inferred__1/i___60_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___60_carry_i_1_n_0,i___60_carry_i_2_n_0,i___60_carry_i_3__0_n_0,1'b0}),
        .O({\gauss8_return0_inferred__1/i___60_carry_n_4 ,\gauss8_return0_inferred__1/i___60_carry_n_5 ,\gauss8_return0_inferred__1/i___60_carry_n_6 ,\gauss8_return0_inferred__1/i___60_carry_n_7 }),
        .S({i___60_carry_i_4__0_n_0,i___60_carry_i_5__0_n_0,i___60_carry_i_6__0_n_0,i___60_carry_i_7__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___60_carry__0 
       (.CI(\gauss8_return0_inferred__1/i___60_carry_n_0 ),
        .CO({\gauss8_return0_inferred__1/i___60_carry__0_n_0 ,\gauss8_return0_inferred__1/i___60_carry__0_n_1 ,\gauss8_return0_inferred__1/i___60_carry__0_n_2 ,\gauss8_return0_inferred__1/i___60_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___60_carry__0_i_1_n_0,i___60_carry__0_i_2_n_0,i___60_carry__0_i_3_n_0,i___60_carry__0_i_4_n_0}),
        .O({\gauss8_return0_inferred__1/i___60_carry__0_n_4 ,\gauss8_return0_inferred__1/i___60_carry__0_n_5 ,\gauss8_return0_inferred__1/i___60_carry__0_n_6 ,\gauss8_return0_inferred__1/i___60_carry__0_n_7 }),
        .S({i___60_carry__0_i_5__0_n_0,i___60_carry__0_i_6__0_n_0,i___60_carry__0_i_7__0_n_0,i___60_carry__0_i_8__0_n_0}));
  CARRY4 \gauss8_return0_inferred__1/i___60_carry__1 
       (.CI(\gauss8_return0_inferred__1/i___60_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__1/i___60_carry__1_CO_UNCONNECTED [3:2],\gauss8_return0_inferred__1/i___60_carry__1_n_2 ,\NLW_gauss8_return0_inferred__1/i___60_carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gauss8_return0_inferred__1/i___60_carry__1_O_UNCONNECTED [3:1],\gauss8_return0_inferred__1/i___60_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,i___60_carry__1_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gauss8_return0_inferred__1/i___86_carry 
       (.CI(1'b0),
        .CO({\gauss8_return0_inferred__1/i___86_carry_n_0 ,\gauss8_return0_inferred__1/i___86_carry_n_1 ,\gauss8_return0_inferred__1/i___86_carry_n_2 ,\gauss8_return0_inferred__1/i___86_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___86_carry_i_1__0_n_0,i___86_carry_i_2__0_n_0,i___86_carry_i_3__0_n_0,1'b0}),
        .O(\NLW_gauss8_return0_inferred__1/i___86_carry_O_UNCONNECTED [3:0]),
        .S({i___86_carry_i_4__0_n_0,i___86_carry_i_5__0_n_0,i___86_carry_i_6__0_n_0,i___86_carry_i_7__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gauss8_return0_inferred__1/i___86_carry__0 
       (.CI(\gauss8_return0_inferred__1/i___86_carry_n_0 ),
        .CO({\gauss8_return0_inferred__1/i___86_carry__0_n_0 ,\gauss8_return0_inferred__1/i___86_carry__0_n_1 ,\gauss8_return0_inferred__1/i___86_carry__0_n_2 ,\gauss8_return0_inferred__1/i___86_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___86_carry__0_i_1__0_n_0,i___86_carry__0_i_2__0_n_0,i___86_carry__0_i_3__0_n_0,i___86_carry__0_i_4__0_n_0}),
        .O(gauss8_return0[7:4]),
        .S({i___86_carry__0_i_5__0_n_0,i___86_carry__0_i_6__0_n_0,i___86_carry__0_i_7__0_n_0,i___86_carry__0_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gauss8_return0_inferred__1/i___86_carry__1 
       (.CI(\gauss8_return0_inferred__1/i___86_carry__0_n_0 ),
        .CO({\NLW_gauss8_return0_inferred__1/i___86_carry__1_CO_UNCONNECTED [3],\gauss8_return0_inferred__1/i___86_carry__1_n_1 ,\gauss8_return0_inferred__1/i___86_carry__1_n_2 ,\gauss8_return0_inferred__1/i___86_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___86_carry__1_i_1__0_n_0,i___86_carry__1_i_2__0_n_0,i___86_carry__1_i_3__0_n_0}),
        .O(gauss8_return0[11:8]),
        .S({i___86_carry__1_i_4__0_n_0,i___86_carry__1_i_5__0_n_0,i___86_carry__1_i_6__0_n_0,i___86_carry__1_i_7__0_n_0}));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_1
       (.I0(\w2_reg_n_0_[2][22] ),
        .I1(gauss8_return2[6]),
        .I2(\w0_reg[0] [22]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return8[7]),
        .O(i___1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_1__0
       (.I0(br[6]),
        .I1(\w2_reg_n_0_[1][13] ),
        .I2(\w0_reg[0] [14]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][14] ),
        .O(i___1_carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_2
       (.I0(\w2_reg_n_0_[2][21] ),
        .I1(gauss8_return2[5]),
        .I2(\w0_reg[0] [21]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return8[6]),
        .O(i___1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_2__0
       (.I0(br[5]),
        .I1(\w2_reg_n_0_[1][12] ),
        .I2(\w0_reg[0] [13]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][13] ),
        .O(i___1_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_3
       (.I0(\w2_reg_n_0_[2][20] ),
        .I1(gauss8_return2[4]),
        .I2(\w0_reg[0] [20]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return8[5]),
        .O(i___1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_3__0
       (.I0(br[4]),
        .I1(\w2_reg_n_0_[1][11] ),
        .I2(\w0_reg[0] [12]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][12] ),
        .O(i___1_carry__0_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_4
       (.I0(\w2_reg_n_0_[2][19] ),
        .I1(gauss8_return2[3]),
        .I2(\w0_reg[0] [19]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return8[4]),
        .O(i___1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry__0_i_4__0
       (.I0(br[3]),
        .I1(\w2_reg_n_0_[1][10] ),
        .I2(\w0_reg[0] [11]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][11] ),
        .O(i___1_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_5
       (.I0(i___1_carry__0_i_1__0_n_0),
        .I1(br[7]),
        .I2(\w2_reg_n_0_[1][14] ),
        .I3(\w0_reg[0] [15]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][15] ),
        .O(i___1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_5__0
       (.I0(i___1_carry__0_i_1_n_0),
        .I1(\w2_reg_n_0_[2][23] ),
        .I2(gauss8_return2[7]),
        .I3(\w0_reg[0] [23]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return8[8]),
        .O(i___1_carry__0_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_6
       (.I0(i___1_carry__0_i_2__0_n_0),
        .I1(br[6]),
        .I2(\w2_reg_n_0_[1][13] ),
        .I3(\w0_reg[0] [14]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][14] ),
        .O(i___1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_6__0
       (.I0(i___1_carry__0_i_2_n_0),
        .I1(\w2_reg_n_0_[2][22] ),
        .I2(gauss8_return2[6]),
        .I3(\w0_reg[0] [22]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return8[7]),
        .O(i___1_carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_7
       (.I0(i___1_carry__0_i_3__0_n_0),
        .I1(br[5]),
        .I2(\w2_reg_n_0_[1][12] ),
        .I3(\w0_reg[0] [13]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][13] ),
        .O(i___1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_7__0
       (.I0(i___1_carry__0_i_3_n_0),
        .I1(\w2_reg_n_0_[2][21] ),
        .I2(gauss8_return2[5]),
        .I3(\w0_reg[0] [21]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return8[6]),
        .O(i___1_carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_8
       (.I0(i___1_carry__0_i_4__0_n_0),
        .I1(br[4]),
        .I2(\w2_reg_n_0_[1][11] ),
        .I3(\w0_reg[0] [12]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][12] ),
        .O(i___1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry__0_i_8__0
       (.I0(i___1_carry__0_i_4_n_0),
        .I1(\w2_reg_n_0_[2][20] ),
        .I2(gauss8_return2[4]),
        .I3(\w0_reg[0] [20]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return8[5]),
        .O(i___1_carry__0_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h001D1DFFFFE2E200)) 
    i___1_carry__1_i_1
       (.I0(\w0_reg_n_0_[1][15] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [15]),
        .I3(\w2_reg_n_0_[1][14] ),
        .I4(br[7]),
        .I5(\w2_reg_n_0_[1][15] ),
        .O(i___1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h11177717EEE888E8)) 
    i___1_carry__1_i_1__0
       (.I0(gauss8_return2[7]),
        .I1(\w2_reg_n_0_[2][23] ),
        .I2(gauss8_return8[8]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg[0] [23]),
        .I5(gauss8_return2[8]),
        .O(i___1_carry__1_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry_i_1
       (.I0(br[2]),
        .I1(\w2_reg_n_0_[1][9] ),
        .I2(\w0_reg[0] [10]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg_n_0_[1][10] ),
        .O(i___1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___1_carry_i_1__0
       (.I0(\w2_reg_n_0_[2][18] ),
        .I1(gauss8_return2[2]),
        .I2(\w0_reg[0] [18]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return8[3]),
        .O(i___1_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    i___1_carry_i_2
       (.I0(\w0_reg_n_0_[1][10] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [10]),
        .I3(\w2_reg_n_0_[1][9] ),
        .I4(br[2]),
        .O(i___1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    i___1_carry_i_2__0
       (.I0(gauss8_return8[3]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [18]),
        .I3(gauss8_return2[2]),
        .I4(\w2_reg_n_0_[2][18] ),
        .O(i___1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___1_carry_i_3
       (.I0(br[1]),
        .I1(\w2_reg_n_0_[1][8] ),
        .O(i___1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___1_carry_i_3__0
       (.I0(\w2_reg_n_0_[2][17] ),
        .I1(gauss8_return2[1]),
        .O(i___1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry_i_4
       (.I0(i___1_carry_i_1_n_0),
        .I1(br[3]),
        .I2(\w2_reg_n_0_[1][10] ),
        .I3(\w0_reg[0] [11]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w0_reg_n_0_[1][11] ),
        .O(i___1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___1_carry_i_4__0
       (.I0(i___1_carry_i_1__0_n_0),
        .I1(\w2_reg_n_0_[2][19] ),
        .I2(gauss8_return2[3]),
        .I3(\w0_reg[0] [19]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return8[4]),
        .O(i___1_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___1_carry_i_5
       (.I0(br[2]),
        .I1(\w2_reg_n_0_[1][9] ),
        .I2(tl),
        .I3(\w2_reg_n_0_[1][8] ),
        .I4(br[1]),
        .O(i___1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___1_carry_i_5__0
       (.I0(\w2_reg_n_0_[2][18] ),
        .I1(gauss8_return2[2]),
        .I2(i___1_carry_i_8__0_n_0),
        .I3(gauss8_return2[1]),
        .I4(\w2_reg_n_0_[2][17] ),
        .O(i___1_carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    i___1_carry_i_6
       (.I0(\w2_reg_n_0_[1][8] ),
        .I1(br[1]),
        .I2(\w0_reg_n_0_[1][9] ),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg[0] [9]),
        .O(i___1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    i___1_carry_i_6__0
       (.I0(gauss8_return2[1]),
        .I1(\w2_reg_n_0_[2][17] ),
        .I2(gauss8_return8[2]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w0_reg[0] [17]),
        .O(i___1_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i___1_carry_i_7
       (.I0(\w0_reg_n_0_[1][8] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [8]),
        .I3(br[0]),
        .O(i___1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i___1_carry_i_7__0
       (.I0(gauss8_return8[1]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg[0] [16]),
        .I3(\w2_reg_n_0_[2][16] ),
        .O(i___1_carry_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i___1_carry_i_8
       (.I0(\w0_reg[0] [10]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w0_reg_n_0_[1][10] ),
        .O(tl));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i___1_carry_i_8__0
       (.I0(\w0_reg[0] [18]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(gauss8_return8[3]),
        .O(i___1_carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_1
       (.I0(gauss8_return4[6]),
        .I1(gauss8_return5[6]),
        .I2(\w2_reg[0] [22]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return2[7]),
        .O(i___30_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_1__0
       (.I0(\w1_reg_n_0_[2][13] ),
        .I1(\w1_reg_n_0_[1][12] ),
        .I2(\w2_reg[0] [14]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][14] ),
        .O(i___30_carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_2
       (.I0(gauss8_return4[5]),
        .I1(gauss8_return5[5]),
        .I2(\w2_reg[0] [21]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return2[6]),
        .O(i___30_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_2__0
       (.I0(\w1_reg_n_0_[2][12] ),
        .I1(\w1_reg_n_0_[1][11] ),
        .I2(\w2_reg[0] [13]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][13] ),
        .O(i___30_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_3
       (.I0(gauss8_return4[4]),
        .I1(gauss8_return5[4]),
        .I2(\w2_reg[0] [20]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return2[5]),
        .O(i___30_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_3__0
       (.I0(\w1_reg_n_0_[2][11] ),
        .I1(\w1_reg_n_0_[1][10] ),
        .I2(\w2_reg[0] [12]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][12] ),
        .O(i___30_carry__0_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_4
       (.I0(\w1_reg_n_0_[2][10] ),
        .I1(\w1_reg_n_0_[1][9] ),
        .I2(\w2_reg[0] [11]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][11] ),
        .O(i___30_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__0_i_4__0
       (.I0(gauss8_return4[3]),
        .I1(gauss8_return5[3]),
        .I2(\w2_reg[0] [19]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return2[4]),
        .O(i___30_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_5
       (.I0(i___30_carry__0_i_1__0_n_0),
        .I1(\w1_reg_n_0_[2][14] ),
        .I2(\w1_reg_n_0_[1][13] ),
        .I3(\w2_reg[0] [15]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][15] ),
        .O(i___30_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_5__0
       (.I0(i___30_carry__0_i_1_n_0),
        .I1(gauss8_return4[7]),
        .I2(gauss8_return5[7]),
        .I3(\w2_reg[0] [23]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return2[8]),
        .O(i___30_carry__0_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_6
       (.I0(i___30_carry__0_i_2__0_n_0),
        .I1(\w1_reg_n_0_[2][13] ),
        .I2(\w1_reg_n_0_[1][12] ),
        .I3(\w2_reg[0] [14]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][14] ),
        .O(i___30_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_6__0
       (.I0(i___30_carry__0_i_2_n_0),
        .I1(gauss8_return4[6]),
        .I2(gauss8_return5[6]),
        .I3(\w2_reg[0] [22]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return2[7]),
        .O(i___30_carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_7
       (.I0(i___30_carry__0_i_3__0_n_0),
        .I1(\w1_reg_n_0_[2][12] ),
        .I2(\w1_reg_n_0_[1][11] ),
        .I3(\w2_reg[0] [13]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][13] ),
        .O(i___30_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_7__0
       (.I0(i___30_carry__0_i_3_n_0),
        .I1(gauss8_return4[5]),
        .I2(gauss8_return5[5]),
        .I3(\w2_reg[0] [21]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return2[6]),
        .O(i___30_carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_8
       (.I0(i___30_carry__0_i_4_n_0),
        .I1(\w1_reg_n_0_[2][11] ),
        .I2(\w1_reg_n_0_[1][10] ),
        .I3(\w2_reg[0] [12]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w2_reg_n_0_[1][12] ),
        .O(i___30_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___30_carry__0_i_8__0
       (.I0(i___30_carry__0_i_4__0_n_0),
        .I1(gauss8_return4[4]),
        .I2(gauss8_return5[4]),
        .I3(\w2_reg[0] [20]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return2[5]),
        .O(i___30_carry__0_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__1_i_1
       (.I0(gauss8_return4[7]),
        .I1(gauss8_return5[7]),
        .I2(\w2_reg[0] [23]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return2[8]),
        .O(i___30_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___30_carry__1_i_1__0
       (.I0(\w1_reg_n_0_[2][14] ),
        .I1(\w1_reg_n_0_[1][13] ),
        .I2(\w2_reg[0] [15]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg_n_0_[1][15] ),
        .O(i___30_carry__1_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    i___30_carry__1_i_2
       (.I0(\w1_reg_n_0_[1][14] ),
        .I1(\w1_reg_n_0_[2][15] ),
        .I2(\w1_reg_n_0_[1][15] ),
        .O(i___30_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    i___30_carry__1_i_2__0
       (.I0(gauss8_return5[8]),
        .I1(gauss8_return4[8]),
        .I2(gauss8_return5[9]),
        .O(i___30_carry__1_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___30_carry__1_i_3
       (.I0(bl),
        .I1(\w1_reg_n_0_[1][13] ),
        .I2(\w1_reg_n_0_[2][14] ),
        .I3(\w1_reg_n_0_[1][14] ),
        .I4(\w1_reg_n_0_[2][15] ),
        .O(i___30_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___30_carry__1_i_3__0
       (.I0(i___30_carry__1_i_4_n_0),
        .I1(gauss8_return5[7]),
        .I2(gauss8_return4[7]),
        .I3(gauss8_return5[8]),
        .I4(gauss8_return4[8]),
        .O(i___30_carry__1_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i___30_carry__1_i_4
       (.I0(\w2_reg[0] [23]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(gauss8_return2[8]),
        .O(i___30_carry__1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i___30_carry__1_i_4__0
       (.I0(\w2_reg[0] [15]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg_n_0_[1][15] ),
        .O(bl));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    i___30_carry_i_1
       (.I0(\w2_reg_n_0_[1][11] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg[0] [11]),
        .I3(\w1_reg_n_0_[1][9] ),
        .I4(\w1_reg_n_0_[2][10] ),
        .O(i___30_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    i___30_carry_i_1__0
       (.I0(gauss8_return2[4]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg[0] [19]),
        .I3(gauss8_return5[3]),
        .I4(gauss8_return4[3]),
        .O(i___30_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___30_carry_i_2
       (.I0(\w1_reg_n_0_[2][9] ),
        .I1(\w1_reg_n_0_[1][8] ),
        .O(i___30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___30_carry_i_2__0
       (.I0(gauss8_return4[2]),
        .I1(gauss8_return5[2]),
        .O(i___30_carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___30_carry_i_3
       (.I0(\w1_reg_n_0_[2][10] ),
        .I1(\w1_reg_n_0_[1][9] ),
        .I2(bl__0[3]),
        .I3(\w1_reg_n_0_[1][8] ),
        .I4(\w1_reg_n_0_[2][9] ),
        .O(i___30_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___30_carry_i_3__0
       (.I0(gauss8_return4[3]),
        .I1(gauss8_return5[3]),
        .I2(i___30_carry_i_7__0_n_0),
        .I3(gauss8_return5[2]),
        .I4(gauss8_return4[2]),
        .O(i___30_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    i___30_carry_i_4
       (.I0(\w1_reg_n_0_[1][8] ),
        .I1(\w1_reg_n_0_[2][9] ),
        .I2(\w2_reg_n_0_[1][10] ),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg[0] [10]),
        .O(i___30_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    i___30_carry_i_4__0
       (.I0(gauss8_return5[2]),
        .I1(gauss8_return4[2]),
        .I2(gauss8_return2[3]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w2_reg[0] [18]),
        .O(i___30_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i___30_carry_i_5
       (.I0(\w2_reg_n_0_[1][9] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg[0] [9]),
        .I3(\w1_reg_n_0_[2][8] ),
        .O(i___30_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i___30_carry_i_5__0
       (.I0(gauss8_return2[2]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg[0] [17]),
        .I3(gauss8_return4[1]),
        .O(i___30_carry_i_5__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i___30_carry_i_6
       (.I0(\w2_reg[0] [8]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg_n_0_[1][8] ),
        .O(bl__0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i___30_carry_i_6__0
       (.I0(\w2_reg[0] [16]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(gauss8_return2[1]),
        .O(i___30_carry_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i___30_carry_i_7
       (.I0(\w2_reg[0] [11]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w2_reg_n_0_[1][11] ),
        .O(bl__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i___30_carry_i_7__0
       (.I0(\w2_reg[0] [19]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(gauss8_return2[4]),
        .O(i___30_carry_i_7__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_1
       (.I0(\w0_reg_n_0_[2][23] ),
        .I1(gauss8_return8[7]),
        .I2(\w1_reg[0] [22]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[8]),
        .O(i___60_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_1__0
       (.I0(tr[7]),
        .I1(\w0_reg_n_0_[1][14] ),
        .I2(\w1_reg[0] [14]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][14] ),
        .O(i___60_carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_2
       (.I0(\w0_reg_n_0_[2][22] ),
        .I1(gauss8_return8[6]),
        .I2(\w1_reg[0] [21]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[7]),
        .O(i___60_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_2__0
       (.I0(tr[6]),
        .I1(\w0_reg_n_0_[1][13] ),
        .I2(\w1_reg[0] [13]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][13] ),
        .O(i___60_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_3
       (.I0(\w0_reg_n_0_[2][21] ),
        .I1(gauss8_return8[5]),
        .I2(\w1_reg[0] [20]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[6]),
        .O(i___60_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_3__0
       (.I0(tr[5]),
        .I1(\w0_reg_n_0_[1][12] ),
        .I2(\w1_reg[0] [12]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][12] ),
        .O(i___60_carry__0_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_4
       (.I0(\w0_reg_n_0_[2][20] ),
        .I1(gauss8_return8[4]),
        .I2(\w1_reg[0] [19]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[5]),
        .O(i___60_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry__0_i_4__0
       (.I0(tr[4]),
        .I1(\w0_reg_n_0_[1][11] ),
        .I2(\w1_reg[0] [11]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][11] ),
        .O(i___60_carry__0_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    i___60_carry__0_i_5
       (.I0(i___60_carry__0_i_1__0_n_0),
        .I1(\w0_reg_n_0_[1][15] ),
        .I2(\w1_reg[0] [15]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][15] ),
        .O(i___60_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    i___60_carry__0_i_5__0
       (.I0(i___60_carry__0_i_1_n_0),
        .I1(gauss8_return8[8]),
        .I2(\w1_reg[0] [23]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[9]),
        .O(i___60_carry__0_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry__0_i_6
       (.I0(i___60_carry__0_i_2__0_n_0),
        .I1(tr[7]),
        .I2(\w0_reg_n_0_[1][14] ),
        .I3(\w1_reg[0] [14]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][14] ),
        .O(i___60_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry__0_i_6__0
       (.I0(i___60_carry__0_i_2_n_0),
        .I1(\w0_reg_n_0_[2][23] ),
        .I2(gauss8_return8[7]),
        .I3(\w1_reg[0] [22]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return5[8]),
        .O(i___60_carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry__0_i_7
       (.I0(i___60_carry__0_i_3__0_n_0),
        .I1(tr[6]),
        .I2(\w0_reg_n_0_[1][13] ),
        .I3(\w1_reg[0] [13]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][13] ),
        .O(i___60_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry__0_i_7__0
       (.I0(i___60_carry__0_i_3_n_0),
        .I1(\w0_reg_n_0_[2][22] ),
        .I2(gauss8_return8[6]),
        .I3(\w1_reg[0] [21]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return5[7]),
        .O(i___60_carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry__0_i_8
       (.I0(i___60_carry__0_i_4__0_n_0),
        .I1(tr[5]),
        .I2(\w0_reg_n_0_[1][12] ),
        .I3(\w1_reg[0] [12]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][12] ),
        .O(i___60_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry__0_i_8__0
       (.I0(i___60_carry__0_i_4_n_0),
        .I1(\w0_reg_n_0_[2][21] ),
        .I2(gauss8_return8[5]),
        .I3(\w1_reg[0] [20]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return5[6]),
        .O(i___60_carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    i___60_carry__1_i_1
       (.I0(gauss8_return5[9]),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w1_reg[0] [23]),
        .I3(gauss8_return8[8]),
        .O(i___60_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    i___60_carry__1_i_1__0
       (.I0(\w1_reg_n_0_[1][15] ),
        .I1(m_axis_tuser_i_4_n_0),
        .I2(\w1_reg[0] [15]),
        .I3(\w0_reg_n_0_[1][15] ),
        .O(i___60_carry__1_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry_i_1
       (.I0(\w0_reg_n_0_[2][19] ),
        .I1(gauss8_return8[3]),
        .I2(\w1_reg[0] [18]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[4]),
        .O(i___60_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry_i_1__0
       (.I0(tr[3]),
        .I1(\w0_reg_n_0_[1][10] ),
        .I2(\w1_reg[0] [10]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][10] ),
        .O(i___60_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry_i_2
       (.I0(\w0_reg_n_0_[2][18] ),
        .I1(gauss8_return8[2]),
        .I2(\w1_reg[0] [17]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[3]),
        .O(i___60_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry_i_2__0
       (.I0(tr[2]),
        .I1(\w0_reg_n_0_[1][9] ),
        .I2(\w1_reg[0] [9]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][9] ),
        .O(i___60_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry_i_3
       (.I0(tr[1]),
        .I1(\w0_reg_n_0_[1][8] ),
        .I2(\w1_reg[0] [8]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][8] ),
        .O(i___60_carry_i_3_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    i___60_carry_i_3__0
       (.I0(\w0_reg_n_0_[2][17] ),
        .I1(gauss8_return8[1]),
        .I2(\w1_reg[0] [16]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[2]),
        .O(i___60_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry_i_4
       (.I0(i___60_carry_i_1__0_n_0),
        .I1(tr[4]),
        .I2(\w0_reg_n_0_[1][11] ),
        .I3(\w1_reg[0] [11]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][11] ),
        .O(i___60_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry_i_4__0
       (.I0(i___60_carry_i_1_n_0),
        .I1(\w0_reg_n_0_[2][20] ),
        .I2(gauss8_return8[4]),
        .I3(\w1_reg[0] [19]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return5[5]),
        .O(i___60_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry_i_5
       (.I0(i___60_carry_i_2__0_n_0),
        .I1(tr[3]),
        .I2(\w0_reg_n_0_[1][10] ),
        .I3(\w1_reg[0] [10]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][10] ),
        .O(i___60_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry_i_5__0
       (.I0(i___60_carry_i_2_n_0),
        .I1(\w0_reg_n_0_[2][19] ),
        .I2(gauss8_return8[3]),
        .I3(\w1_reg[0] [18]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return5[4]),
        .O(i___60_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry_i_6
       (.I0(i___60_carry_i_3_n_0),
        .I1(tr[2]),
        .I2(\w0_reg_n_0_[1][9] ),
        .I3(\w1_reg[0] [9]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(\w1_reg_n_0_[1][9] ),
        .O(i___60_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    i___60_carry_i_6__0
       (.I0(i___60_carry_i_3__0_n_0),
        .I1(\w0_reg_n_0_[2][18] ),
        .I2(gauss8_return8[2]),
        .I3(\w1_reg[0] [17]),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(gauss8_return5[3]),
        .O(i___60_carry_i_6__0_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h96999666)) 
    i___60_carry_i_7
       (.I0(tr[1]),
        .I1(\w0_reg_n_0_[1][8] ),
        .I2(\w1_reg[0] [8]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(\w1_reg_n_0_[1][8] ),
        .O(i___60_carry_i_7_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'h96999666)) 
    i___60_carry_i_7__0
       (.I0(\w0_reg_n_0_[2][17] ),
        .I1(gauss8_return8[1]),
        .I2(\w1_reg[0] [16]),
        .I3(m_axis_tuser_i_4_n_0),
        .I4(gauss8_return5[2]),
        .O(i___60_carry_i_7__0_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_1
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_5 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_5 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_6 ),
        .O(i___86_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_1__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_5 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_5 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_6 ),
        .O(i___86_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_2
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_6 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_7 ),
        .O(i___86_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_2__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_6 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_7 ),
        .O(i___86_carry__0_i_2__0_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_3
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_7 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_7 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_4 ),
        .O(i___86_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_3__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_7 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_7 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_4 ),
        .O(i___86_carry__0_i_3__0_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_4
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_4 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry_n_4 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_5 ),
        .O(i___86_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__0_i_4__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_4 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry_n_4 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_5 ),
        .O(i___86_carry__0_i_4__0_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_5
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_4 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_4 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_5 ),
        .I3(i___86_carry__0_i_1_n_0),
        .O(i___86_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_5__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_4 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_4 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_5 ),
        .I3(i___86_carry__0_i_1__0_n_0),
        .O(i___86_carry__0_i_5__0_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_6
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_5 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_5 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_6 ),
        .I3(i___86_carry__0_i_2_n_0),
        .O(i___86_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_6__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_5 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_5 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_6 ),
        .I3(i___86_carry__0_i_2__0_n_0),
        .O(i___86_carry__0_i_6__0_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_7
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_6 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_7 ),
        .I3(i___86_carry__0_i_3_n_0),
        .O(i___86_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_7__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_6 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_7 ),
        .I3(i___86_carry__0_i_3__0_n_0),
        .O(i___86_carry__0_i_7__0_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_8
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_7 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_7 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_4 ),
        .I3(i___86_carry__0_i_4_n_0),
        .O(i___86_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__0_i_8__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_7 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_7 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_4 ),
        .I3(i___86_carry__0_i_4__0_n_0),
        .O(i___86_carry__0_i_8__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__1_i_1
       (.I0(\gauss8_return0_inferred__0/i___1_carry__1_n_2 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__1_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__1_n_7 ),
        .O(i___86_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__1_i_1__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__1_n_2 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__1_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__1_n_7 ),
        .O(i___86_carry__1_i_1__0_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__1_i_2
       (.I0(\gauss8_return0_inferred__0/i___1_carry__1_n_7 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__1_n_7 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_4 ),
        .O(i___86_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__1_i_2__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__1_n_7 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__1_n_7 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_4 ),
        .O(i___86_carry__1_i_2__0_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__1_i_3
       (.I0(\gauss8_return0_inferred__0/i___1_carry__0_n_4 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__0_n_4 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_5 ),
        .O(i___86_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry__1_i_3__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__0_n_4 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__0_n_4 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_5 ),
        .O(i___86_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___86_carry__1_i_4
       (.I0(\gauss8_return0_inferred__0/i___30_carry__1_n_1 ),
        .I1(\gauss8_return0_inferred__0/i___60_carry__1_n_2 ),
        .O(i___86_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___86_carry__1_i_4__0
       (.I0(\gauss8_return0_inferred__1/i___30_carry__1_n_1 ),
        .I1(\gauss8_return0_inferred__1/i___60_carry__1_n_2 ),
        .O(i___86_carry__1_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___86_carry__1_i_5
       (.I0(\gauss8_return0_inferred__0/i___60_carry__1_n_7 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__1_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___1_carry__1_n_2 ),
        .I3(\gauss8_return0_inferred__0/i___60_carry__1_n_2 ),
        .I4(\gauss8_return0_inferred__0/i___30_carry__1_n_1 ),
        .O(i___86_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___86_carry__1_i_5__0
       (.I0(\gauss8_return0_inferred__1/i___60_carry__1_n_7 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__1_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___1_carry__1_n_2 ),
        .I3(\gauss8_return0_inferred__1/i___60_carry__1_n_2 ),
        .I4(\gauss8_return0_inferred__1/i___30_carry__1_n_1 ),
        .O(i___86_carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__1_i_6
       (.I0(i___86_carry__1_i_2_n_0),
        .I1(\gauss8_return0_inferred__0/i___30_carry__1_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__1_n_7 ),
        .I3(\gauss8_return0_inferred__0/i___1_carry__1_n_2 ),
        .O(i___86_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__1_i_6__0
       (.I0(i___86_carry__1_i_2__0_n_0),
        .I1(\gauss8_return0_inferred__1/i___30_carry__1_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__1_n_7 ),
        .I3(\gauss8_return0_inferred__1/i___1_carry__1_n_2 ),
        .O(i___86_carry__1_i_6__0_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__1_i_7
       (.I0(\gauss8_return0_inferred__0/i___1_carry__1_n_7 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry__1_n_7 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry__0_n_4 ),
        .I3(i___86_carry__1_i_3_n_0),
        .O(i___86_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry__1_i_7__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry__1_n_7 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry__1_n_7 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry__0_n_4 ),
        .I3(i___86_carry__1_i_3__0_n_0),
        .O(i___86_carry__1_i_7__0_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry_i_1
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_5 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry_n_5 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_6 ),
        .O(i___86_carry_i_1_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry_i_1__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_5 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry_n_5 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_6 ),
        .O(i___86_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry_i_2
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_6 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_7 ),
        .O(i___86_carry_i_2_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry_i_2__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_6 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_7 ),
        .O(i___86_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry_i_3
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_7 ),
        .I1(tr[0]),
        .I2(\gauss8_return0_inferred__0/i___30_carry_n_7 ),
        .O(i___86_carry_i_3_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___86_carry_i_3__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_7 ),
        .I1(\w0_reg_n_0_[2][16] ),
        .I2(\gauss8_return0_inferred__1/i___30_carry_n_7 ),
        .O(i___86_carry_i_3__0_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry_i_4
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_4 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry_n_4 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_5 ),
        .I3(i___86_carry_i_1_n_0),
        .O(i___86_carry_i_4_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry_i_4__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_4 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry_n_4 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_5 ),
        .I3(i___86_carry_i_1__0_n_0),
        .O(i___86_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry_i_5
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_5 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry_n_5 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_6 ),
        .I3(i___86_carry_i_2_n_0),
        .O(i___86_carry_i_5_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry_i_5__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_5 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry_n_5 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_6 ),
        .I3(i___86_carry_i_2__0_n_0),
        .O(i___86_carry_i_5__0_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry_i_6
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_6 ),
        .I1(\gauss8_return0_inferred__0/i___30_carry_n_6 ),
        .I2(\gauss8_return0_inferred__0/i___60_carry_n_7 ),
        .I3(i___86_carry_i_3_n_0),
        .O(i___86_carry_i_6_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___86_carry_i_6__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_6 ),
        .I1(\gauss8_return0_inferred__1/i___30_carry_n_6 ),
        .I2(\gauss8_return0_inferred__1/i___60_carry_n_7 ),
        .I3(i___86_carry_i_3__0_n_0),
        .O(i___86_carry_i_6__0_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    i___86_carry_i_7
       (.I0(\gauss8_return0_inferred__0/i___1_carry_n_7 ),
        .I1(tr[0]),
        .I2(\gauss8_return0_inferred__0/i___30_carry_n_7 ),
        .O(i___86_carry_i_7_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    i___86_carry_i_7__0
       (.I0(\gauss8_return0_inferred__1/i___1_carry_n_7 ),
        .I1(\w0_reg_n_0_[2][16] ),
        .I2(\gauss8_return0_inferred__1/i___30_carry_n_7 ),
        .O(i___86_carry_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFEA0000FFEAFFEA)) 
    \m_axis_tdata[23]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\m_axis_tdata[23]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axis_tvalid),
        .I4(m_axis_tready),
        .I5(m_axis_tvalid_reg_0),
        .O(\m_axis_tdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFDFD)) 
    \m_axis_tdata[23]_i_3 
       (.I0(\cy[11]_i_5_n_0 ),
        .I1(s_axis_tready_INST_0_i_4_n_0),
        .I2(s_axis_tready_INST_0_i_3_n_0),
        .I3(\cy_reg_n_0_[4] ),
        .I4(\cy_reg_n_0_[5] ),
        .O(\m_axis_tdata[23]_i_3_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__0_n_7),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__0_n_5 ),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__0_n_4 ),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__1_n_7 ),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__1_n_6 ),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__1_n_5 ),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__1_n_4 ),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[4]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[5]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[6]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[7]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__0_n_6),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[8]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[9]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[10]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0[11]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__0_n_5),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__0_n_4),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__1_n_7),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__1_n_6),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__1_n_5),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return0__86_carry__1_n_4),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__0_n_7 ),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\gauss8_return0_inferred__0/i___86_carry__0_n_6 ),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(m_axis_tlast_i_3_n_0),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_axis_tlast_i_2
       (.I0(p2_ccx[2]),
        .I1(p2_ccx[3]),
        .I2(p2_ccx[0]),
        .I3(p2_ccx[1]),
        .I4(p2_ccx[5]),
        .I5(p2_ccx[4]),
        .O(m_axis_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tlast_i_3
       (.I0(p2_ccx[10]),
        .I1(p2_ccx[11]),
        .I2(p2_ccx[8]),
        .I3(p2_ccx[9]),
        .I4(p2_ccx[7]),
        .I5(p2_ccx[6]),
        .O(m_axis_tlast_i_3_n_0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axis_tuser_i_1
       (.I0(m_axis_tuser_i_2_n_0),
        .I1(m_axis_tuser_i_3_n_0),
        .I2(m_axis_tuser_i_4_n_0),
        .O(m_axis_tuser0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axis_tuser_i_2
       (.I0(p2_ccy[8]),
        .I1(p2_ccy[9]),
        .I2(p2_ccy[6]),
        .I3(p2_ccy[7]),
        .I4(p2_ccy[11]),
        .I5(p2_ccy[10]),
        .O(m_axis_tuser_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axis_tuser_i_3
       (.I0(p2_ccy[2]),
        .I1(p2_ccy[3]),
        .I2(p2_ccy[0]),
        .I3(p2_ccy[1]),
        .I4(p2_ccy[5]),
        .I5(p2_ccy[4]),
        .O(m_axis_tuser_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_tuser_i_4
       (.I0(m_axis_tuser_i_5_n_0),
        .I1(m_axis_tlast_i_3_n_0),
        .O(m_axis_tuser_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tuser_i_5
       (.I0(p2_ccx[4]),
        .I1(p2_ccx[5]),
        .I2(p2_ccx[2]),
        .I3(p2_ccx[3]),
        .I4(p2_ccx[1]),
        .I5(p2_ccx[0]),
        .O(m_axis_tuser_i_5_n_0));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(m_axis_tuser0),
        .Q(m_axis_tuser),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF2220000)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(p2_cvalid),
        .I3(\m_axis_tdata[23]_i_2_n_0 ),
        .I4(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(1'b0));
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
  FDRE \p1_ccy_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\cy_reg_n_0_[0] ),
        .Q(p1_ccy[0]),
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
  LUT5 #(
    .INIT(32'h0000FE00)) 
    p1_cvalid_i_1
       (.I0(\fc_reg_n_0_[6] ),
        .I1(\fc_reg_n_0_[0] ),
        .I2(p1_cvalid_i_2_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(cvalid_f));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    p1_cvalid_i_2
       (.I0(\fc_reg_n_0_[3] ),
        .I1(\fc_reg_n_0_[4] ),
        .I2(\fc_reg_n_0_[1] ),
        .I3(\fc_reg_n_0_[2] ),
        .I4(buf1_reg_i_8_n_0),
        .O(p1_cvalid_i_2_n_0));
  FDRE p1_cvalid_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(cvalid_f),
        .Q(p1_cvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    p1_t0cur_i_1
       (.I0(\cy_reg_n_0_[3] ),
        .I1(\cy_reg_n_0_[5] ),
        .I2(\cy_reg_n_0_[2] ),
        .I3(\cy_reg_n_0_[1] ),
        .I4(\cy_reg_n_0_[0] ),
        .I5(p1_t0cur_i_2_n_0),
        .O(t0_from_cur_f));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    p1_t0cur_i_2
       (.I0(s_axis_tready_INST_0_i_3_n_0),
        .I1(\cy_reg_n_0_[4] ),
        .O(p1_t0cur_i_2_n_0));
  FDRE p1_t0cur_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_from_cur_f),
        .Q(p1_t0cur),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    p1_t2buf_i_1
       (.I0(\cy_reg_n_0_[2] ),
        .I1(\cy_reg_n_0_[3] ),
        .I2(\cy_reg_n_0_[0] ),
        .I3(\cy_reg_n_0_[1] ),
        .I4(\cy_reg_n_0_[5] ),
        .I5(p1_t0cur_i_2_n_0),
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
        .Q(p2_ccx[0]),
        .R(1'b0));
  FDRE \p2_ccx_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[10]),
        .Q(p2_ccx[10]),
        .R(1'b0));
  FDRE \p2_ccx_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[11]),
        .Q(p2_ccx[11]),
        .R(1'b0));
  FDRE \p2_ccx_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[1]),
        .Q(p2_ccx[1]),
        .R(1'b0));
  FDRE \p2_ccx_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[2]),
        .Q(p2_ccx[2]),
        .R(1'b0));
  FDRE \p2_ccx_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[3]),
        .Q(p2_ccx[3]),
        .R(1'b0));
  FDRE \p2_ccx_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[4]),
        .Q(p2_ccx[4]),
        .R(1'b0));
  FDRE \p2_ccx_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[5]),
        .Q(p2_ccx[5]),
        .R(1'b0));
  FDRE \p2_ccx_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[6]),
        .Q(p2_ccx[6]),
        .R(1'b0));
  FDRE \p2_ccx_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[7]),
        .Q(p2_ccx[7]),
        .R(1'b0));
  FDRE \p2_ccx_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[8]),
        .Q(p2_ccx[8]),
        .R(1'b0));
  FDRE \p2_ccx_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccx[9]),
        .Q(p2_ccx[9]),
        .R(1'b0));
  FDRE \p2_ccy_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[0]),
        .Q(p2_ccy[0]),
        .R(1'b0));
  FDRE \p2_ccy_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[10]),
        .Q(p2_ccy[10]),
        .R(1'b0));
  FDRE \p2_ccy_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[11]),
        .Q(p2_ccy[11]),
        .R(1'b0));
  FDRE \p2_ccy_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[1]),
        .Q(p2_ccy[1]),
        .R(1'b0));
  FDRE \p2_ccy_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[2]),
        .Q(p2_ccy[2]),
        .R(1'b0));
  FDRE \p2_ccy_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[3]),
        .Q(p2_ccy[3]),
        .R(1'b0));
  FDRE \p2_ccy_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[4]),
        .Q(p2_ccy[4]),
        .R(1'b0));
  FDRE \p2_ccy_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[5]),
        .Q(p2_ccy[5]),
        .R(1'b0));
  FDRE \p2_ccy_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[6]),
        .Q(p2_ccy[6]),
        .R(1'b0));
  FDRE \p2_ccy_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[7]),
        .Q(p2_ccy[7]),
        .R(1'b0));
  FDRE \p2_ccy_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[8]),
        .Q(p2_ccy[8]),
        .R(1'b0));
  FDRE \p2_ccy_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_ccy[9]),
        .Q(p2_ccy[9]),
        .R(1'b0));
  FDRE p2_cvalid_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(p1_cvalid),
        .Q(p2_cvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    s_axis_tready_INST_0
       (.I0(need_input),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'h000000AB0000FFFF)) 
    s_axis_tready_INST_0_i_1
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(\cy_reg_n_0_[5] ),
        .I2(s_axis_tready_INST_0_i_3_n_0),
        .I3(s_axis_tready_INST_0_i_4_n_0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(need_input));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    s_axis_tready_INST_0_i_2
       (.I0(\cy_reg_n_0_[2] ),
        .I1(\cy_reg_n_0_[3] ),
        .I2(\cy_reg_n_0_[0] ),
        .I3(\cy_reg_n_0_[1] ),
        .I4(\cy_reg_n_0_[4] ),
        .I5(s_axis_tready_INST_0_i_3_n_0),
        .O(s_axis_tready_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axis_tready_INST_0_i_3
       (.I0(\cy_reg_n_0_[10] ),
        .I1(\cy_reg_n_0_[11] ),
        .I2(\cy_reg_n_0_[8] ),
        .I3(\cy_reg_n_0_[9] ),
        .I4(\cy_reg_n_0_[7] ),
        .I5(\cy_reg_n_0_[6] ),
        .O(s_axis_tready_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axis_tready_INST_0_i_4
       (.I0(\fc_reg_n_0_[8] ),
        .I1(\fc_reg_n_0_[9] ),
        .I2(\fc_reg_n_0_[11] ),
        .I3(\fc_reg_n_0_[10] ),
        .I4(\fc_reg_n_0_[7] ),
        .I5(\fc_reg_n_0_[6] ),
        .O(s_axis_tready_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000330355554454)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state[1]_i_4_n_0 ),
        .I4(\state[1]_i_5_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003303AAAA88A8)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state[1]_i_4_n_0 ),
        .I4(\state[1]_i_5_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011010000)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(m_axis_tvalid_reg_0),
        .I3(m_axis_tready),
        .I4(s_axis_tvalid),
        .I5(\cy[11]_i_3_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005100)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cy[11]_i_5_n_0 ),
        .I5(p1_t0cur_i_2_n_0),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_4 
       (.I0(\fc[11]_i_3_n_0 ),
        .I1(\fc_reg_n_0_[0] ),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008A00)) 
    \state[1]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid_reg_0),
        .I3(flush_cnt[1]),
        .I4(flush_cnt[0]),
        .O(\state[1]_i_5_n_0 ));
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
  LUT4 #(
    .INIT(16'h8088)) 
    \t2_d[23]_i_1 
       (.I0(need_input),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid_reg_0),
        .O(t2_d_0));
  FDRE \t2_d_reg[0] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[0]),
        .Q(t2_d[0]),
        .R(1'b0));
  FDRE \t2_d_reg[10] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[10]),
        .Q(t2_d[10]),
        .R(1'b0));
  FDRE \t2_d_reg[11] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[11]),
        .Q(t2_d[11]),
        .R(1'b0));
  FDRE \t2_d_reg[12] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[12]),
        .Q(t2_d[12]),
        .R(1'b0));
  FDRE \t2_d_reg[13] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[13]),
        .Q(t2_d[13]),
        .R(1'b0));
  FDRE \t2_d_reg[14] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[14]),
        .Q(t2_d[14]),
        .R(1'b0));
  FDRE \t2_d_reg[15] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[15]),
        .Q(t2_d[15]),
        .R(1'b0));
  FDRE \t2_d_reg[16] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[16]),
        .Q(t2_d[16]),
        .R(1'b0));
  FDRE \t2_d_reg[17] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[17]),
        .Q(t2_d[17]),
        .R(1'b0));
  FDRE \t2_d_reg[18] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[18]),
        .Q(t2_d[18]),
        .R(1'b0));
  FDRE \t2_d_reg[19] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[19]),
        .Q(t2_d[19]),
        .R(1'b0));
  FDRE \t2_d_reg[1] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[1]),
        .Q(t2_d[1]),
        .R(1'b0));
  FDRE \t2_d_reg[20] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[20]),
        .Q(t2_d[20]),
        .R(1'b0));
  FDRE \t2_d_reg[21] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[21]),
        .Q(t2_d[21]),
        .R(1'b0));
  FDRE \t2_d_reg[22] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[22]),
        .Q(t2_d[22]),
        .R(1'b0));
  FDRE \t2_d_reg[23] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[23]),
        .Q(t2_d[23]),
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
  FDRE \t2_d_reg[8] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[8]),
        .Q(t2_d[8]),
        .R(1'b0));
  FDRE \t2_d_reg[9] 
       (.C(aclk),
        .CE(t2_d_0),
        .D(s_axis_tdata[9]),
        .Q(t2_d[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][0]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[0]),
        .I2(p1_ccy[0]),
        .I3(q1[0]),
        .O(t0_val[0]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][10]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[10]),
        .I2(p1_ccy[0]),
        .I3(q1[10]),
        .O(t0_val[10]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][11]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[11]),
        .I2(p1_ccy[0]),
        .I3(q1[11]),
        .O(t0_val[11]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][12]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[12]),
        .I2(p1_ccy[0]),
        .I3(q1[12]),
        .O(t0_val[12]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][13]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[13]),
        .I2(p1_ccy[0]),
        .I3(q1[13]),
        .O(t0_val[13]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][14]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[14]),
        .I2(p1_ccy[0]),
        .I3(q1[14]),
        .O(t0_val[14]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][15]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[15]),
        .I2(p1_ccy[0]),
        .I3(q1[15]),
        .O(t0_val[15]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][16]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[16]),
        .I2(p1_ccy[0]),
        .I3(q1[16]),
        .O(t0_val[16]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][17]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[17]),
        .I2(p1_ccy[0]),
        .I3(q1[17]),
        .O(t0_val[17]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][18]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[18]),
        .I2(p1_ccy[0]),
        .I3(q1[18]),
        .O(t0_val[18]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][19]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[19]),
        .I2(p1_ccy[0]),
        .I3(q1[19]),
        .O(t0_val[19]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][1]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[1]),
        .I2(p1_ccy[0]),
        .I3(q1[1]),
        .O(t0_val[1]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][20]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[20]),
        .I2(p1_ccy[0]),
        .I3(q1[20]),
        .O(t0_val[20]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][21]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[21]),
        .I2(p1_ccy[0]),
        .I3(q1[21]),
        .O(t0_val[21]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][22]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[22]),
        .I2(p1_ccy[0]),
        .I3(q1[22]),
        .O(t0_val[22]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][23]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[23]),
        .I2(p1_ccy[0]),
        .I3(q1[23]),
        .O(t0_val[23]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][2]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[2]),
        .I2(p1_ccy[0]),
        .I3(q1[2]),
        .O(t0_val[2]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][3]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[3]),
        .I2(p1_ccy[0]),
        .I3(q1[3]),
        .O(t0_val[3]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][4]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[4]),
        .I2(p1_ccy[0]),
        .I3(q1[4]),
        .O(t0_val[4]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][5]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[5]),
        .I2(p1_ccy[0]),
        .I3(q1[5]),
        .O(t0_val[5]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][6]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[6]),
        .I2(p1_ccy[0]),
        .I3(q1[6]),
        .O(t0_val[6]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][7]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[7]),
        .I2(p1_ccy[0]),
        .I3(q1[7]),
        .O(t0_val[7]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][8]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[8]),
        .I2(p1_ccy[0]),
        .I3(q1[8]),
        .O(t0_val[8]));
  LUT4 #(
    .INIT(16'hED48)) 
    \w0[2][9]_i_1 
       (.I0(p1_t0cur),
        .I1(q0[9]),
        .I2(p1_ccy[0]),
        .I3(q1[9]),
        .O(t0_val[9]));
  FDRE \w0_reg[0][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][0] ),
        .Q(\w0_reg[0] [0]),
        .R(1'b0));
  FDRE \w0_reg[0][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][10] ),
        .Q(\w0_reg[0] [10]),
        .R(1'b0));
  FDRE \w0_reg[0][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][11] ),
        .Q(\w0_reg[0] [11]),
        .R(1'b0));
  FDRE \w0_reg[0][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][12] ),
        .Q(\w0_reg[0] [12]),
        .R(1'b0));
  FDRE \w0_reg[0][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][13] ),
        .Q(\w0_reg[0] [13]),
        .R(1'b0));
  FDRE \w0_reg[0][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][14] ),
        .Q(\w0_reg[0] [14]),
        .R(1'b0));
  FDRE \w0_reg[0][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][15] ),
        .Q(\w0_reg[0] [15]),
        .R(1'b0));
  FDRE \w0_reg[0][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[1]),
        .Q(\w0_reg[0] [16]),
        .R(1'b0));
  FDRE \w0_reg[0][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[2]),
        .Q(\w0_reg[0] [17]),
        .R(1'b0));
  FDRE \w0_reg[0][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[3]),
        .Q(\w0_reg[0] [18]),
        .R(1'b0));
  FDRE \w0_reg[0][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[4]),
        .Q(\w0_reg[0] [19]),
        .R(1'b0));
  FDRE \w0_reg[0][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][1] ),
        .Q(\w0_reg[0] [1]),
        .R(1'b0));
  FDRE \w0_reg[0][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[5]),
        .Q(\w0_reg[0] [20]),
        .R(1'b0));
  FDRE \w0_reg[0][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[6]),
        .Q(\w0_reg[0] [21]),
        .R(1'b0));
  FDRE \w0_reg[0][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[7]),
        .Q(\w0_reg[0] [22]),
        .R(1'b0));
  FDRE \w0_reg[0][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return8[8]),
        .Q(\w0_reg[0] [23]),
        .R(1'b0));
  FDRE \w0_reg[0][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][2] ),
        .Q(\w0_reg[0] [2]),
        .R(1'b0));
  FDRE \w0_reg[0][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][3] ),
        .Q(\w0_reg[0] [3]),
        .R(1'b0));
  FDRE \w0_reg[0][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][4] ),
        .Q(\w0_reg[0] [4]),
        .R(1'b0));
  FDRE \w0_reg[0][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][5] ),
        .Q(\w0_reg[0] [5]),
        .R(1'b0));
  FDRE \w0_reg[0][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][6] ),
        .Q(\w0_reg[0] [6]),
        .R(1'b0));
  FDRE \w0_reg[0][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][7] ),
        .Q(\w0_reg[0] [7]),
        .R(1'b0));
  FDRE \w0_reg[0][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][8] ),
        .Q(\w0_reg[0] [8]),
        .R(1'b0));
  FDRE \w0_reg[0][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[1][9] ),
        .Q(\w0_reg[0] [9]),
        .R(1'b0));
  FDRE \w0_reg[1][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][0] ),
        .Q(\w0_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \w0_reg[1][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[2]),
        .Q(\w0_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \w0_reg[1][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[3]),
        .Q(\w0_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \w0_reg[1][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[4]),
        .Q(\w0_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \w0_reg[1][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[5]),
        .Q(\w0_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \w0_reg[1][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[6]),
        .Q(\w0_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \w0_reg[1][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[7]),
        .Q(\w0_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \w0_reg[1][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][16] ),
        .Q(gauss8_return8[1]),
        .R(1'b0));
  FDRE \w0_reg[1][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][17] ),
        .Q(gauss8_return8[2]),
        .R(1'b0));
  FDRE \w0_reg[1][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][18] ),
        .Q(gauss8_return8[3]),
        .R(1'b0));
  FDRE \w0_reg[1][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][19] ),
        .Q(gauss8_return8[4]),
        .R(1'b0));
  FDRE \w0_reg[1][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][1] ),
        .Q(\w0_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \w0_reg[1][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][20] ),
        .Q(gauss8_return8[5]),
        .R(1'b0));
  FDRE \w0_reg[1][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][21] ),
        .Q(gauss8_return8[6]),
        .R(1'b0));
  FDRE \w0_reg[1][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][22] ),
        .Q(gauss8_return8[7]),
        .R(1'b0));
  FDRE \w0_reg[1][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][23] ),
        .Q(gauss8_return8[8]),
        .R(1'b0));
  FDRE \w0_reg[1][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][2] ),
        .Q(\w0_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \w0_reg[1][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][3] ),
        .Q(\w0_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \w0_reg[1][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][4] ),
        .Q(\w0_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \w0_reg[1][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][5] ),
        .Q(\w0_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \w0_reg[1][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][6] ),
        .Q(\w0_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \w0_reg[1][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w0_reg_n_0_[2][7] ),
        .Q(\w0_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \w0_reg[1][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[0]),
        .Q(\w0_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \w0_reg[1][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(tr[1]),
        .Q(\w0_reg_n_0_[1][9] ),
        .R(1'b0));
  FDRE \w0_reg[2][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[0]),
        .Q(\w0_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \w0_reg[2][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[10]),
        .Q(tr[2]),
        .R(1'b0));
  FDRE \w0_reg[2][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[11]),
        .Q(tr[3]),
        .R(1'b0));
  FDRE \w0_reg[2][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[12]),
        .Q(tr[4]),
        .R(1'b0));
  FDRE \w0_reg[2][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[13]),
        .Q(tr[5]),
        .R(1'b0));
  FDRE \w0_reg[2][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[14]),
        .Q(tr[6]),
        .R(1'b0));
  FDRE \w0_reg[2][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[15]),
        .Q(tr[7]),
        .R(1'b0));
  FDRE \w0_reg[2][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[16]),
        .Q(\w0_reg_n_0_[2][16] ),
        .R(1'b0));
  FDRE \w0_reg[2][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[17]),
        .Q(\w0_reg_n_0_[2][17] ),
        .R(1'b0));
  FDRE \w0_reg[2][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[18]),
        .Q(\w0_reg_n_0_[2][18] ),
        .R(1'b0));
  FDRE \w0_reg[2][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[19]),
        .Q(\w0_reg_n_0_[2][19] ),
        .R(1'b0));
  FDRE \w0_reg[2][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[1]),
        .Q(\w0_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \w0_reg[2][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[20]),
        .Q(\w0_reg_n_0_[2][20] ),
        .R(1'b0));
  FDRE \w0_reg[2][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[21]),
        .Q(\w0_reg_n_0_[2][21] ),
        .R(1'b0));
  FDRE \w0_reg[2][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[22]),
        .Q(\w0_reg_n_0_[2][22] ),
        .R(1'b0));
  FDRE \w0_reg[2][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[23]),
        .Q(\w0_reg_n_0_[2][23] ),
        .R(1'b0));
  FDRE \w0_reg[2][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[2]),
        .Q(\w0_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \w0_reg[2][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[3]),
        .Q(\w0_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \w0_reg[2][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[4]),
        .Q(\w0_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \w0_reg[2][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[5]),
        .Q(\w0_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \w0_reg[2][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[6]),
        .Q(\w0_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \w0_reg[2][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[7]),
        .Q(\w0_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \w0_reg[2][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[8]),
        .Q(tr[0]),
        .R(1'b0));
  FDRE \w0_reg[2][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t0_val[9]),
        .Q(tr[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][0]_i_1 
       (.I0(q1[0]),
        .I1(q0[0]),
        .I2(p1_ccy[0]),
        .O(t1_val[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][10]_i_1 
       (.I0(q1[10]),
        .I1(q0[10]),
        .I2(p1_ccy[0]),
        .O(t1_val[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][11]_i_1 
       (.I0(q1[11]),
        .I1(q0[11]),
        .I2(p1_ccy[0]),
        .O(t1_val[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][12]_i_1 
       (.I0(q1[12]),
        .I1(q0[12]),
        .I2(p1_ccy[0]),
        .O(t1_val[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][13]_i_1 
       (.I0(q1[13]),
        .I1(q0[13]),
        .I2(p1_ccy[0]),
        .O(t1_val[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][14]_i_1 
       (.I0(q1[14]),
        .I1(q0[14]),
        .I2(p1_ccy[0]),
        .O(t1_val[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][15]_i_1 
       (.I0(q1[15]),
        .I1(q0[15]),
        .I2(p1_ccy[0]),
        .O(t1_val[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][16]_i_1 
       (.I0(q1[16]),
        .I1(q0[16]),
        .I2(p1_ccy[0]),
        .O(t1_val[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][17]_i_1 
       (.I0(q1[17]),
        .I1(q0[17]),
        .I2(p1_ccy[0]),
        .O(t1_val[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][18]_i_1 
       (.I0(q1[18]),
        .I1(q0[18]),
        .I2(p1_ccy[0]),
        .O(t1_val[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][19]_i_1 
       (.I0(q1[19]),
        .I1(q0[19]),
        .I2(p1_ccy[0]),
        .O(t1_val[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][1]_i_1 
       (.I0(q1[1]),
        .I1(q0[1]),
        .I2(p1_ccy[0]),
        .O(t1_val[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][20]_i_1 
       (.I0(q1[20]),
        .I1(q0[20]),
        .I2(p1_ccy[0]),
        .O(t1_val[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][21]_i_1 
       (.I0(q1[21]),
        .I1(q0[21]),
        .I2(p1_ccy[0]),
        .O(t1_val[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][22]_i_1 
       (.I0(q1[22]),
        .I1(q0[22]),
        .I2(p1_ccy[0]),
        .O(t1_val[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][23]_i_1 
       (.I0(q1[23]),
        .I1(q0[23]),
        .I2(p1_ccy[0]),
        .O(t1_val[23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][2]_i_1 
       (.I0(q1[2]),
        .I1(q0[2]),
        .I2(p1_ccy[0]),
        .O(t1_val[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][3]_i_1 
       (.I0(q1[3]),
        .I1(q0[3]),
        .I2(p1_ccy[0]),
        .O(t1_val[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][4]_i_1 
       (.I0(q1[4]),
        .I1(q0[4]),
        .I2(p1_ccy[0]),
        .O(t1_val[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][5]_i_1 
       (.I0(q1[5]),
        .I1(q0[5]),
        .I2(p1_ccy[0]),
        .O(t1_val[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][6]_i_1 
       (.I0(q1[6]),
        .I1(q0[6]),
        .I2(p1_ccy[0]),
        .O(t1_val[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][7]_i_1 
       (.I0(q1[7]),
        .I1(q0[7]),
        .I2(p1_ccy[0]),
        .O(t1_val[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][8]_i_1 
       (.I0(q1[8]),
        .I1(q0[8]),
        .I2(p1_ccy[0]),
        .O(t1_val[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \w1[2][9]_i_1 
       (.I0(q1[9]),
        .I1(q0[9]),
        .I2(p1_ccy[0]),
        .O(t1_val[9]));
  FDRE \w1_reg[0][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][0] ),
        .Q(\w1_reg[0] [0]),
        .R(1'b0));
  FDRE \w1_reg[0][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][10] ),
        .Q(\w1_reg[0] [10]),
        .R(1'b0));
  FDRE \w1_reg[0][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][11] ),
        .Q(\w1_reg[0] [11]),
        .R(1'b0));
  FDRE \w1_reg[0][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][12] ),
        .Q(\w1_reg[0] [12]),
        .R(1'b0));
  FDRE \w1_reg[0][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][13] ),
        .Q(\w1_reg[0] [13]),
        .R(1'b0));
  FDRE \w1_reg[0][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][14] ),
        .Q(\w1_reg[0] [14]),
        .R(1'b0));
  FDRE \w1_reg[0][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][15] ),
        .Q(\w1_reg[0] [15]),
        .R(1'b0));
  FDRE \w1_reg[0][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[2]),
        .Q(\w1_reg[0] [16]),
        .R(1'b0));
  FDRE \w1_reg[0][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[3]),
        .Q(\w1_reg[0] [17]),
        .R(1'b0));
  FDRE \w1_reg[0][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[4]),
        .Q(\w1_reg[0] [18]),
        .R(1'b0));
  FDRE \w1_reg[0][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[5]),
        .Q(\w1_reg[0] [19]),
        .R(1'b0));
  FDRE \w1_reg[0][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][1] ),
        .Q(\w1_reg[0] [1]),
        .R(1'b0));
  FDRE \w1_reg[0][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[6]),
        .Q(\w1_reg[0] [20]),
        .R(1'b0));
  FDRE \w1_reg[0][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[7]),
        .Q(\w1_reg[0] [21]),
        .R(1'b0));
  FDRE \w1_reg[0][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[8]),
        .Q(\w1_reg[0] [22]),
        .R(1'b0));
  FDRE \w1_reg[0][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return5[9]),
        .Q(\w1_reg[0] [23]),
        .R(1'b0));
  FDRE \w1_reg[0][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][2] ),
        .Q(\w1_reg[0] [2]),
        .R(1'b0));
  FDRE \w1_reg[0][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][3] ),
        .Q(\w1_reg[0] [3]),
        .R(1'b0));
  FDRE \w1_reg[0][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][4] ),
        .Q(\w1_reg[0] [4]),
        .R(1'b0));
  FDRE \w1_reg[0][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][5] ),
        .Q(\w1_reg[0] [5]),
        .R(1'b0));
  FDRE \w1_reg[0][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][6] ),
        .Q(\w1_reg[0] [6]),
        .R(1'b0));
  FDRE \w1_reg[0][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][7] ),
        .Q(\w1_reg[0] [7]),
        .R(1'b0));
  FDRE \w1_reg[0][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][8] ),
        .Q(\w1_reg[0] [8]),
        .R(1'b0));
  FDRE \w1_reg[0][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[1][9] ),
        .Q(\w1_reg[0] [9]),
        .R(1'b0));
  FDRE \w1_reg[1][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][0] ),
        .Q(\w1_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \w1_reg[1][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][10] ),
        .Q(\w1_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \w1_reg[1][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][11] ),
        .Q(\w1_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \w1_reg[1][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][12] ),
        .Q(\w1_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \w1_reg[1][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][13] ),
        .Q(\w1_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \w1_reg[1][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][14] ),
        .Q(\w1_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \w1_reg[1][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][15] ),
        .Q(\w1_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \w1_reg[1][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[1]),
        .Q(gauss8_return5[2]),
        .R(1'b0));
  FDRE \w1_reg[1][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[2]),
        .Q(gauss8_return5[3]),
        .R(1'b0));
  FDRE \w1_reg[1][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[3]),
        .Q(gauss8_return5[4]),
        .R(1'b0));
  FDRE \w1_reg[1][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[4]),
        .Q(gauss8_return5[5]),
        .R(1'b0));
  FDRE \w1_reg[1][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][1] ),
        .Q(\w1_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \w1_reg[1][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[5]),
        .Q(gauss8_return5[6]),
        .R(1'b0));
  FDRE \w1_reg[1][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[6]),
        .Q(gauss8_return5[7]),
        .R(1'b0));
  FDRE \w1_reg[1][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[7]),
        .Q(gauss8_return5[8]),
        .R(1'b0));
  FDRE \w1_reg[1][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return4[8]),
        .Q(gauss8_return5[9]),
        .R(1'b0));
  FDRE \w1_reg[1][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][2] ),
        .Q(\w1_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \w1_reg[1][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][3] ),
        .Q(\w1_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \w1_reg[1][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][4] ),
        .Q(\w1_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \w1_reg[1][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][5] ),
        .Q(\w1_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \w1_reg[1][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][6] ),
        .Q(\w1_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \w1_reg[1][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][7] ),
        .Q(\w1_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \w1_reg[1][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][8] ),
        .Q(\w1_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \w1_reg[1][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w1_reg_n_0_[2][9] ),
        .Q(\w1_reg_n_0_[1][9] ),
        .R(1'b0));
  FDRE \w1_reg[2][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[0]),
        .Q(\w1_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \w1_reg[2][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[10]),
        .Q(\w1_reg_n_0_[2][10] ),
        .R(1'b0));
  FDRE \w1_reg[2][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[11]),
        .Q(\w1_reg_n_0_[2][11] ),
        .R(1'b0));
  FDRE \w1_reg[2][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[12]),
        .Q(\w1_reg_n_0_[2][12] ),
        .R(1'b0));
  FDRE \w1_reg[2][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[13]),
        .Q(\w1_reg_n_0_[2][13] ),
        .R(1'b0));
  FDRE \w1_reg[2][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[14]),
        .Q(\w1_reg_n_0_[2][14] ),
        .R(1'b0));
  FDRE \w1_reg[2][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[15]),
        .Q(\w1_reg_n_0_[2][15] ),
        .R(1'b0));
  FDRE \w1_reg[2][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[16]),
        .Q(gauss8_return4[1]),
        .R(1'b0));
  FDRE \w1_reg[2][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[17]),
        .Q(gauss8_return4[2]),
        .R(1'b0));
  FDRE \w1_reg[2][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[18]),
        .Q(gauss8_return4[3]),
        .R(1'b0));
  FDRE \w1_reg[2][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[19]),
        .Q(gauss8_return4[4]),
        .R(1'b0));
  FDRE \w1_reg[2][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[1]),
        .Q(\w1_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \w1_reg[2][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[20]),
        .Q(gauss8_return4[5]),
        .R(1'b0));
  FDRE \w1_reg[2][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[21]),
        .Q(gauss8_return4[6]),
        .R(1'b0));
  FDRE \w1_reg[2][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[22]),
        .Q(gauss8_return4[7]),
        .R(1'b0));
  FDRE \w1_reg[2][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[23]),
        .Q(gauss8_return4[8]),
        .R(1'b0));
  FDRE \w1_reg[2][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[2]),
        .Q(\w1_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \w1_reg[2][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[3]),
        .Q(\w1_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \w1_reg[2][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[4]),
        .Q(\w1_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \w1_reg[2][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[5]),
        .Q(\w1_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \w1_reg[2][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[6]),
        .Q(\w1_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \w1_reg[2][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[7]),
        .Q(\w1_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \w1_reg[2][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[8]),
        .Q(\w1_reg_n_0_[2][8] ),
        .R(1'b0));
  FDRE \w1_reg[2][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t1_val[9]),
        .Q(\w1_reg_n_0_[2][9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][0]_i_1 
       (.I0(q1[0]),
        .I1(q0[0]),
        .I2(p1_ccy[0]),
        .I3(t2_d[0]),
        .I4(p1_t2buf),
        .O(t2_val[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][10]_i_1 
       (.I0(q1[10]),
        .I1(q0[10]),
        .I2(p1_ccy[0]),
        .I3(t2_d[10]),
        .I4(p1_t2buf),
        .O(t2_val[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][11]_i_1 
       (.I0(q1[11]),
        .I1(q0[11]),
        .I2(p1_ccy[0]),
        .I3(t2_d[11]),
        .I4(p1_t2buf),
        .O(t2_val[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][12]_i_1 
       (.I0(q1[12]),
        .I1(q0[12]),
        .I2(p1_ccy[0]),
        .I3(t2_d[12]),
        .I4(p1_t2buf),
        .O(t2_val[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][13]_i_1 
       (.I0(q1[13]),
        .I1(q0[13]),
        .I2(p1_ccy[0]),
        .I3(t2_d[13]),
        .I4(p1_t2buf),
        .O(t2_val[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][14]_i_1 
       (.I0(q1[14]),
        .I1(q0[14]),
        .I2(p1_ccy[0]),
        .I3(t2_d[14]),
        .I4(p1_t2buf),
        .O(t2_val[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][15]_i_1 
       (.I0(q1[15]),
        .I1(q0[15]),
        .I2(p1_ccy[0]),
        .I3(t2_d[15]),
        .I4(p1_t2buf),
        .O(t2_val[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][16]_i_1 
       (.I0(q1[16]),
        .I1(q0[16]),
        .I2(p1_ccy[0]),
        .I3(t2_d[16]),
        .I4(p1_t2buf),
        .O(t2_val[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][17]_i_1 
       (.I0(q1[17]),
        .I1(q0[17]),
        .I2(p1_ccy[0]),
        .I3(t2_d[17]),
        .I4(p1_t2buf),
        .O(t2_val[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][18]_i_1 
       (.I0(q1[18]),
        .I1(q0[18]),
        .I2(p1_ccy[0]),
        .I3(t2_d[18]),
        .I4(p1_t2buf),
        .O(t2_val[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][19]_i_1 
       (.I0(q1[19]),
        .I1(q0[19]),
        .I2(p1_ccy[0]),
        .I3(t2_d[19]),
        .I4(p1_t2buf),
        .O(t2_val[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][1]_i_1 
       (.I0(q1[1]),
        .I1(q0[1]),
        .I2(p1_ccy[0]),
        .I3(t2_d[1]),
        .I4(p1_t2buf),
        .O(t2_val[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][20]_i_1 
       (.I0(q1[20]),
        .I1(q0[20]),
        .I2(p1_ccy[0]),
        .I3(t2_d[20]),
        .I4(p1_t2buf),
        .O(t2_val[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][21]_i_1 
       (.I0(q1[21]),
        .I1(q0[21]),
        .I2(p1_ccy[0]),
        .I3(t2_d[21]),
        .I4(p1_t2buf),
        .O(t2_val[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][22]_i_1 
       (.I0(q1[22]),
        .I1(q0[22]),
        .I2(p1_ccy[0]),
        .I3(t2_d[22]),
        .I4(p1_t2buf),
        .O(t2_val[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][23]_i_1 
       (.I0(q1[23]),
        .I1(q0[23]),
        .I2(p1_ccy[0]),
        .I3(t2_d[23]),
        .I4(p1_t2buf),
        .O(t2_val[23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][2]_i_1 
       (.I0(q1[2]),
        .I1(q0[2]),
        .I2(p1_ccy[0]),
        .I3(t2_d[2]),
        .I4(p1_t2buf),
        .O(t2_val[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][3]_i_1 
       (.I0(q1[3]),
        .I1(q0[3]),
        .I2(p1_ccy[0]),
        .I3(t2_d[3]),
        .I4(p1_t2buf),
        .O(t2_val[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][4]_i_1 
       (.I0(q1[4]),
        .I1(q0[4]),
        .I2(p1_ccy[0]),
        .I3(t2_d[4]),
        .I4(p1_t2buf),
        .O(t2_val[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][5]_i_1 
       (.I0(q1[5]),
        .I1(q0[5]),
        .I2(p1_ccy[0]),
        .I3(t2_d[5]),
        .I4(p1_t2buf),
        .O(t2_val[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][6]_i_1 
       (.I0(q1[6]),
        .I1(q0[6]),
        .I2(p1_ccy[0]),
        .I3(t2_d[6]),
        .I4(p1_t2buf),
        .O(t2_val[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][7]_i_1 
       (.I0(q1[7]),
        .I1(q0[7]),
        .I2(p1_ccy[0]),
        .I3(t2_d[7]),
        .I4(p1_t2buf),
        .O(t2_val[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][8]_i_1 
       (.I0(q1[8]),
        .I1(q0[8]),
        .I2(p1_ccy[0]),
        .I3(t2_d[8]),
        .I4(p1_t2buf),
        .O(t2_val[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \w2[2][9]_i_1 
       (.I0(q1[9]),
        .I1(q0[9]),
        .I2(p1_ccy[0]),
        .I3(t2_d[9]),
        .I4(p1_t2buf),
        .O(t2_val[9]));
  FDRE \w2_reg[0][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][0] ),
        .Q(\w2_reg[0] [0]),
        .R(1'b0));
  FDRE \w2_reg[0][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][10] ),
        .Q(\w2_reg[0] [10]),
        .R(1'b0));
  FDRE \w2_reg[0][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][11] ),
        .Q(\w2_reg[0] [11]),
        .R(1'b0));
  FDRE \w2_reg[0][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][12] ),
        .Q(\w2_reg[0] [12]),
        .R(1'b0));
  FDRE \w2_reg[0][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][13] ),
        .Q(\w2_reg[0] [13]),
        .R(1'b0));
  FDRE \w2_reg[0][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][14] ),
        .Q(\w2_reg[0] [14]),
        .R(1'b0));
  FDRE \w2_reg[0][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][15] ),
        .Q(\w2_reg[0] [15]),
        .R(1'b0));
  FDRE \w2_reg[0][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[1]),
        .Q(\w2_reg[0] [16]),
        .R(1'b0));
  FDRE \w2_reg[0][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[2]),
        .Q(\w2_reg[0] [17]),
        .R(1'b0));
  FDRE \w2_reg[0][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[3]),
        .Q(\w2_reg[0] [18]),
        .R(1'b0));
  FDRE \w2_reg[0][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[4]),
        .Q(\w2_reg[0] [19]),
        .R(1'b0));
  FDRE \w2_reg[0][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][1] ),
        .Q(\w2_reg[0] [1]),
        .R(1'b0));
  FDRE \w2_reg[0][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[5]),
        .Q(\w2_reg[0] [20]),
        .R(1'b0));
  FDRE \w2_reg[0][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[6]),
        .Q(\w2_reg[0] [21]),
        .R(1'b0));
  FDRE \w2_reg[0][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[7]),
        .Q(\w2_reg[0] [22]),
        .R(1'b0));
  FDRE \w2_reg[0][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(gauss8_return2[8]),
        .Q(\w2_reg[0] [23]),
        .R(1'b0));
  FDRE \w2_reg[0][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][2] ),
        .Q(\w2_reg[0] [2]),
        .R(1'b0));
  FDRE \w2_reg[0][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][3] ),
        .Q(\w2_reg[0] [3]),
        .R(1'b0));
  FDRE \w2_reg[0][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][4] ),
        .Q(\w2_reg[0] [4]),
        .R(1'b0));
  FDRE \w2_reg[0][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][5] ),
        .Q(\w2_reg[0] [5]),
        .R(1'b0));
  FDRE \w2_reg[0][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][6] ),
        .Q(\w2_reg[0] [6]),
        .R(1'b0));
  FDRE \w2_reg[0][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][7] ),
        .Q(\w2_reg[0] [7]),
        .R(1'b0));
  FDRE \w2_reg[0][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][8] ),
        .Q(\w2_reg[0] [8]),
        .R(1'b0));
  FDRE \w2_reg[0][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[1][9] ),
        .Q(\w2_reg[0] [9]),
        .R(1'b0));
  FDRE \w2_reg[1][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][0] ),
        .Q(\w2_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \w2_reg[1][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[2]),
        .Q(\w2_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \w2_reg[1][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[3]),
        .Q(\w2_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \w2_reg[1][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[4]),
        .Q(\w2_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \w2_reg[1][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[5]),
        .Q(\w2_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \w2_reg[1][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[6]),
        .Q(\w2_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \w2_reg[1][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[7]),
        .Q(\w2_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \w2_reg[1][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][16] ),
        .Q(gauss8_return2[1]),
        .R(1'b0));
  FDRE \w2_reg[1][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][17] ),
        .Q(gauss8_return2[2]),
        .R(1'b0));
  FDRE \w2_reg[1][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][18] ),
        .Q(gauss8_return2[3]),
        .R(1'b0));
  FDRE \w2_reg[1][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][19] ),
        .Q(gauss8_return2[4]),
        .R(1'b0));
  FDRE \w2_reg[1][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][1] ),
        .Q(\w2_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \w2_reg[1][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][20] ),
        .Q(gauss8_return2[5]),
        .R(1'b0));
  FDRE \w2_reg[1][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][21] ),
        .Q(gauss8_return2[6]),
        .R(1'b0));
  FDRE \w2_reg[1][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][22] ),
        .Q(gauss8_return2[7]),
        .R(1'b0));
  FDRE \w2_reg[1][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][23] ),
        .Q(gauss8_return2[8]),
        .R(1'b0));
  FDRE \w2_reg[1][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][2] ),
        .Q(\w2_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \w2_reg[1][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][3] ),
        .Q(\w2_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \w2_reg[1][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][4] ),
        .Q(\w2_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \w2_reg[1][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][5] ),
        .Q(\w2_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \w2_reg[1][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][6] ),
        .Q(\w2_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \w2_reg[1][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(\w2_reg_n_0_[2][7] ),
        .Q(\w2_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \w2_reg[1][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[0]),
        .Q(\w2_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \w2_reg[1][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(br[1]),
        .Q(\w2_reg_n_0_[1][9] ),
        .R(1'b0));
  FDRE \w2_reg[2][0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[0]),
        .Q(\w2_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \w2_reg[2][10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[10]),
        .Q(br[2]),
        .R(1'b0));
  FDRE \w2_reg[2][11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[11]),
        .Q(br[3]),
        .R(1'b0));
  FDRE \w2_reg[2][12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[12]),
        .Q(br[4]),
        .R(1'b0));
  FDRE \w2_reg[2][13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[13]),
        .Q(br[5]),
        .R(1'b0));
  FDRE \w2_reg[2][14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[14]),
        .Q(br[6]),
        .R(1'b0));
  FDRE \w2_reg[2][15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[15]),
        .Q(br[7]),
        .R(1'b0));
  FDRE \w2_reg[2][16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[16]),
        .Q(\w2_reg_n_0_[2][16] ),
        .R(1'b0));
  FDRE \w2_reg[2][17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[17]),
        .Q(\w2_reg_n_0_[2][17] ),
        .R(1'b0));
  FDRE \w2_reg[2][18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[18]),
        .Q(\w2_reg_n_0_[2][18] ),
        .R(1'b0));
  FDRE \w2_reg[2][19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[19]),
        .Q(\w2_reg_n_0_[2][19] ),
        .R(1'b0));
  FDRE \w2_reg[2][1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[1]),
        .Q(\w2_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \w2_reg[2][20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[20]),
        .Q(\w2_reg_n_0_[2][20] ),
        .R(1'b0));
  FDRE \w2_reg[2][21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[21]),
        .Q(\w2_reg_n_0_[2][21] ),
        .R(1'b0));
  FDRE \w2_reg[2][22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[22]),
        .Q(\w2_reg_n_0_[2][22] ),
        .R(1'b0));
  FDRE \w2_reg[2][23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[23]),
        .Q(\w2_reg_n_0_[2][23] ),
        .R(1'b0));
  FDRE \w2_reg[2][2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[2]),
        .Q(\w2_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \w2_reg[2][3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[3]),
        .Q(\w2_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \w2_reg[2][4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[4]),
        .Q(\w2_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \w2_reg[2][5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[5]),
        .Q(\w2_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \w2_reg[2][6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[6]),
        .Q(\w2_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \w2_reg[2][7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[7]),
        .Q(\w2_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \w2_reg[2][8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[8]),
        .Q(br[0]),
        .R(1'b0));
  FDRE \w2_reg[2][9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(t2_val[9]),
        .Q(br[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[0]_i_1 
       (.I0(\fc_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\x_in_reg_n_0_[0] ),
        .O(wr_addr_now[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[1]_i_1 
       (.I0(\fc_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\x_in_reg_n_0_[1] ),
        .O(wr_addr_now[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[2]_i_1 
       (.I0(\fc_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\x_in_reg_n_0_[2] ),
        .O(wr_addr_now[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[3]_i_1 
       (.I0(\fc_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\x_in_reg_n_0_[3] ),
        .O(wr_addr_now[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[4]_i_1 
       (.I0(\fc_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\x_in_reg_n_0_[4] ),
        .O(wr_addr_now[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \wp0_a[5]_i_1 
       (.I0(\fc_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
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
  FDRE \wp0_d_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(wp0_d[10]),
        .R(1'b0));
  FDRE \wp0_d_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(wp0_d[11]),
        .R(1'b0));
  FDRE \wp0_d_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(wp0_d[12]),
        .R(1'b0));
  FDRE \wp0_d_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(wp0_d[13]),
        .R(1'b0));
  FDRE \wp0_d_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(wp0_d[14]),
        .R(1'b0));
  FDRE \wp0_d_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(wp0_d[15]),
        .R(1'b0));
  FDRE \wp0_d_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(wp0_d[16]),
        .R(1'b0));
  FDRE \wp0_d_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(wp0_d[17]),
        .R(1'b0));
  FDRE \wp0_d_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(wp0_d[18]),
        .R(1'b0));
  FDRE \wp0_d_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(wp0_d[19]),
        .R(1'b0));
  FDRE \wp0_d_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(wp0_d[1]),
        .R(1'b0));
  FDRE \wp0_d_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(wp0_d[20]),
        .R(1'b0));
  FDRE \wp0_d_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(wp0_d[21]),
        .R(1'b0));
  FDRE \wp0_d_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(wp0_d[22]),
        .R(1'b0));
  FDRE \wp0_d_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(wp0_d[23]),
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
  FDRE \wp0_d_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(wp0_d[8]),
        .R(1'b0));
  FDRE \wp0_d_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(wp0_d[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FE00FEFEFE00)) 
    wp0_s_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(wp0_s_i_2_n_0),
        .I3(wp0_s),
        .I4(\m_axis_tdata[23]_i_2_n_0 ),
        .I5(\cy_reg_n_0_[0] ),
        .O(wp0_s_i_1_n_0));
  LUT3 #(
    .INIT(8'h2F)) 
    wp0_s_i_2
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .O(wp0_s_i_2_n_0));
  FDRE wp0_s_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wp0_s_i_1_n_0),
        .Q(wp0_s),
        .R(1'b0));
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
  FDRE \wp1_d_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[10]),
        .Q(wp1_d[10]),
        .R(1'b0));
  FDRE \wp1_d_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[11]),
        .Q(wp1_d[11]),
        .R(1'b0));
  FDRE \wp1_d_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[12]),
        .Q(wp1_d[12]),
        .R(1'b0));
  FDRE \wp1_d_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[13]),
        .Q(wp1_d[13]),
        .R(1'b0));
  FDRE \wp1_d_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[14]),
        .Q(wp1_d[14]),
        .R(1'b0));
  FDRE \wp1_d_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[15]),
        .Q(wp1_d[15]),
        .R(1'b0));
  FDRE \wp1_d_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[16]),
        .Q(wp1_d[16]),
        .R(1'b0));
  FDRE \wp1_d_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[17]),
        .Q(wp1_d[17]),
        .R(1'b0));
  FDRE \wp1_d_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[18]),
        .Q(wp1_d[18]),
        .R(1'b0));
  FDRE \wp1_d_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[19]),
        .Q(wp1_d[19]),
        .R(1'b0));
  FDRE \wp1_d_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[1]),
        .Q(wp1_d[1]),
        .R(1'b0));
  FDRE \wp1_d_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[20]),
        .Q(wp1_d[20]),
        .R(1'b0));
  FDRE \wp1_d_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[21]),
        .Q(wp1_d[21]),
        .R(1'b0));
  FDRE \wp1_d_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[22]),
        .Q(wp1_d[22]),
        .R(1'b0));
  FDRE \wp1_d_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[23]),
        .Q(wp1_d[23]),
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
  FDRE \wp1_d_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[8]),
        .Q(wp1_d[8]),
        .R(1'b0));
  FDRE \wp1_d_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(wp0_d[9]),
        .Q(wp1_d[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_in[0]_i_1 
       (.I0(\x_in_reg_n_0_[0] ),
        .O(x_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[10]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[10]),
        .O(x_in[10]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \x_in[11]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(m_axis_tvalid_reg_0),
        .I3(m_axis_tready),
        .I4(s_axis_tvalid),
        .O(\x_in[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[11]_i_2 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[11]),
        .O(x_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[1]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[1]),
        .O(x_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[2]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[2]),
        .O(x_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[3]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[3]),
        .O(x_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[4]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[4]),
        .O(x_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[5]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[5]),
        .O(x_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[6]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[6]),
        .O(x_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[7]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[7]),
        .O(x_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[8]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[8]),
        .O(x_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_in[9]_i_1 
       (.I0(\cy[11]_i_3_n_0 ),
        .I1(data0[9]),
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
