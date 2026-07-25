// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jul 25 13:36:44 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_axil_regfile_0_0/image_block_axil_regfile_0_0_sim_netlist.v}
// Design      : image_block_axil_regfile_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_axil_regfile_0_0,axil_regfile,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axil_regfile,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_axil_regfile_0_0
   (aclk,
    aresetn,
    s_axil_awaddr,
    s_axil_awvalid,
    s_axil_awready,
    s_axil_wdata,
    s_axil_wstrb,
    s_axil_wvalid,
    s_axil_wready,
    s_axil_bresp,
    s_axil_bvalid,
    s_axil_bready,
    s_axil_araddr,
    s_axil_arvalid,
    s_axil_arready,
    s_axil_rdata,
    s_axil_rresp,
    s_axil_rvalid,
    s_axil_rready,
    tpg_enable,
    pattern_sel,
    mux_sel,
    status_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [11:0]s_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *) input s_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *) output s_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *) input [31:0]s_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *) input [3:0]s_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *) input s_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *) output s_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *) output [1:0]s_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *) output s_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *) input s_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *) input [11:0]s_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *) input s_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *) output s_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *) output [31:0]s_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *) output [1:0]s_axil_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *) output s_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *) input s_axil_rready;
  output tpg_enable;
  output [1:0]pattern_sel;
  output mux_sel;
  input [31:0]status_in;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire mux_sel;
  wire [1:0]pattern_sel;
  wire [11:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arvalid;
  wire [11:0]s_axil_awaddr;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire [1:1]\^s_axil_bresp ;
  wire s_axil_bvalid;
  wire [31:0]s_axil_rdata;
  wire s_axil_rready;
  wire [1:1]\^s_axil_rresp ;
  wire s_axil_rvalid;
  wire [31:0]s_axil_wdata;
  wire s_axil_wready;
  wire [3:0]s_axil_wstrb;
  wire s_axil_wvalid;
  wire [31:0]status_in;
  wire tpg_enable;

  assign s_axil_awready = s_axil_wready;
  assign s_axil_bresp[1] = \^s_axil_bresp [1];
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_rresp[1] = \^s_axil_rresp [1];
  assign s_axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  image_block_axil_regfile_0_0_axil_regfile inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .mux_sel(mux_sel),
        .pattern_sel(pattern_sel),
        .s_axil_araddr(s_axil_araddr[7:2]),
        .s_axil_arready(s_axil_arready),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_awaddr(s_axil_awaddr[7:2]),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_bready(s_axil_bready),
        .s_axil_bresp(\^s_axil_bresp ),
        .s_axil_bvalid(s_axil_bvalid),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rready(s_axil_rready),
        .s_axil_rresp(\^s_axil_rresp ),
        .s_axil_rvalid(s_axil_rvalid),
        .s_axil_wdata(s_axil_wdata),
        .s_axil_wready(s_axil_wready),
        .s_axil_wstrb(s_axil_wstrb),
        .s_axil_wvalid(s_axil_wvalid),
        .status_in(status_in),
        .tpg_enable(tpg_enable));
endmodule

(* ORIG_REF_NAME = "axil_regfile" *) 
module image_block_axil_regfile_0_0_axil_regfile
   (tpg_enable,
    pattern_sel,
    mux_sel,
    s_axil_wready,
    s_axil_arready,
    s_axil_rdata,
    s_axil_rresp,
    s_axil_bvalid,
    s_axil_rvalid,
    s_axil_bresp,
    s_axil_araddr,
    aclk,
    s_axil_wdata,
    s_axil_wstrb,
    s_axil_awaddr,
    s_axil_awvalid,
    s_axil_wvalid,
    status_in,
    s_axil_arvalid,
    s_axil_rready,
    aresetn,
    s_axil_bready);
  output tpg_enable;
  output [1:0]pattern_sel;
  output mux_sel;
  output s_axil_wready;
  output s_axil_arready;
  output [31:0]s_axil_rdata;
  output [0:0]s_axil_rresp;
  output s_axil_bvalid;
  output s_axil_rvalid;
  output [0:0]s_axil_bresp;
  input [5:0]s_axil_araddr;
  input aclk;
  input [31:0]s_axil_wdata;
  input [3:0]s_axil_wstrb;
  input [5:0]s_axil_awaddr;
  input s_axil_awvalid;
  input s_axil_wvalid;
  input [31:0]status_in;
  input s_axil_arvalid;
  input s_axil_rready;
  input aresetn;
  input s_axil_bready;

  wire aclk;
  wire aresetn;
  wire \ctrl_reg[0]_i_1_n_0 ;
  wire \ctrl_reg[0]_i_2_n_0 ;
  wire \ctrl_reg[1]_i_1_n_0 ;
  wire mux_sel;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [1:0]pattern_sel;
  wire [5:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arready0__0;
  wire s_axil_arvalid;
  wire [5:0]s_axil_awaddr;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire [0:0]s_axil_bresp;
  wire \s_axil_bresp[1]_i_1_n_0 ;
  wire \s_axil_bresp[1]_i_2_n_0 ;
  wire s_axil_bvalid;
  wire s_axil_bvalid_i_1_n_0;
  wire [31:0]s_axil_rdata;
  wire \s_axil_rdata[0]_i_1_n_0 ;
  wire \s_axil_rdata[0]_i_2_n_0 ;
  wire \s_axil_rdata[10]_i_1_n_0 ;
  wire \s_axil_rdata[11]_i_1_n_0 ;
  wire \s_axil_rdata[12]_i_1_n_0 ;
  wire \s_axil_rdata[13]_i_1_n_0 ;
  wire \s_axil_rdata[14]_i_1_n_0 ;
  wire \s_axil_rdata[15]_i_1_n_0 ;
  wire \s_axil_rdata[16]_i_1_n_0 ;
  wire \s_axil_rdata[17]_i_1_n_0 ;
  wire \s_axil_rdata[18]_i_1_n_0 ;
  wire \s_axil_rdata[19]_i_1_n_0 ;
  wire \s_axil_rdata[1]_i_1_n_0 ;
  wire \s_axil_rdata[1]_i_2_n_0 ;
  wire \s_axil_rdata[20]_i_1_n_0 ;
  wire \s_axil_rdata[21]_i_1_n_0 ;
  wire \s_axil_rdata[22]_i_1_n_0 ;
  wire \s_axil_rdata[23]_i_1_n_0 ;
  wire \s_axil_rdata[24]_i_1_n_0 ;
  wire \s_axil_rdata[25]_i_1_n_0 ;
  wire \s_axil_rdata[26]_i_1_n_0 ;
  wire \s_axil_rdata[27]_i_1_n_0 ;
  wire \s_axil_rdata[28]_i_1_n_0 ;
  wire \s_axil_rdata[29]_i_1_n_0 ;
  wire \s_axil_rdata[2]_i_1_n_0 ;
  wire \s_axil_rdata[30]_i_1_n_0 ;
  wire \s_axil_rdata[31]_i_2_n_0 ;
  wire \s_axil_rdata[31]_i_3_n_0 ;
  wire \s_axil_rdata[3]_i_1_n_0 ;
  wire \s_axil_rdata[4]_i_1_n_0 ;
  wire \s_axil_rdata[5]_i_1_n_0 ;
  wire \s_axil_rdata[6]_i_1_n_0 ;
  wire \s_axil_rdata[7]_i_1_n_0 ;
  wire \s_axil_rdata[8]_i_1_n_0 ;
  wire \s_axil_rdata[9]_i_1_n_0 ;
  wire s_axil_rready;
  wire [0:0]s_axil_rresp;
  wire \s_axil_rresp[1]_i_1_n_0 ;
  wire s_axil_rvalid;
  wire s_axil_rvalid00_out;
  wire s_axil_rvalid_i_1_n_0;
  wire [31:0]s_axil_wdata;
  wire s_axil_wready;
  wire [3:0]s_axil_wstrb;
  wire s_axil_wvalid;
  wire [31:0]scratch_reg;
  wire scratch_reg1;
  wire [31:0]status_in;
  wire tpg_enable;
  wire \tpg_reg[0]_i_1_n_0 ;
  wire \tpg_reg[1]_i_1_n_0 ;
  wire \tpg_reg[1]_i_2_n_0 ;

  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \ctrl_reg[0]_i_1 
       (.I0(s_axil_wdata[0]),
        .I1(s_axil_wstrb[0]),
        .I2(scratch_reg1),
        .I3(\ctrl_reg[0]_i_2_n_0 ),
        .I4(tpg_enable),
        .O(\ctrl_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ctrl_reg[0]_i_2 
       (.I0(s_axil_awaddr[0]),
        .I1(s_axil_awaddr[2]),
        .I2(s_axil_awaddr[1]),
        .I3(s_axil_awaddr[4]),
        .I4(s_axil_awaddr[3]),
        .I5(s_axil_awaddr[5]),
        .O(\ctrl_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \ctrl_reg[1]_i_1 
       (.I0(s_axil_wdata[1]),
        .I1(s_axil_wstrb[0]),
        .I2(scratch_reg1),
        .I3(\ctrl_reg[0]_i_2_n_0 ),
        .I4(mux_sel),
        .O(\ctrl_reg[1]_i_1_n_0 ));
  FDRE \ctrl_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ctrl_reg[0]_i_1_n_0 ),
        .Q(tpg_enable),
        .R(p_0_in));
  FDRE \ctrl_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ctrl_reg[1]_i_1_n_0 ),
        .Q(mux_sel),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2022)) 
    s_axil_arready0
       (.I0(s_axil_arvalid),
        .I1(s_axil_arready),
        .I2(s_axil_rready),
        .I3(s_axil_rvalid),
        .O(s_axil_arready0__0));
  FDRE s_axil_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axil_arready0__0),
        .Q(s_axil_arready),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s_axil_awready_i_1
       (.I0(aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_axil_awready_i_2
       (.I0(s_axil_awvalid),
        .I1(s_axil_wvalid),
        .I2(s_axil_bvalid),
        .O(scratch_reg1));
  FDRE s_axil_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(scratch_reg1),
        .Q(s_axil_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFEAAFFFFFEAA0000)) 
    \s_axil_bresp[1]_i_1 
       (.I0(\s_axil_bresp[1]_i_2_n_0 ),
        .I1(s_axil_awaddr[0]),
        .I2(s_axil_awaddr[1]),
        .I3(s_axil_awaddr[2]),
        .I4(scratch_reg1),
        .I5(s_axil_bresp),
        .O(\s_axil_bresp[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axil_bresp[1]_i_2 
       (.I0(s_axil_awaddr[5]),
        .I1(s_axil_awaddr[3]),
        .I2(s_axil_awaddr[4]),
        .O(\s_axil_bresp[1]_i_2_n_0 ));
  FDRE \s_axil_bresp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axil_bresp[1]_i_1_n_0 ),
        .Q(s_axil_bresp),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    s_axil_bvalid_i_1
       (.I0(s_axil_wvalid),
        .I1(s_axil_awvalid),
        .I2(s_axil_bready),
        .I3(s_axil_bvalid),
        .O(s_axil_bvalid_i_1_n_0));
  FDRE s_axil_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axil_bvalid_i_1_n_0),
        .Q(s_axil_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEF00E0)) 
    \s_axil_rdata[0]_i_1 
       (.I0(status_in[0]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(\s_axil_rdata[0]_i_2_n_0 ),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFFF0AACCFF)) 
    \s_axil_rdata[0]_i_2 
       (.I0(scratch_reg[0]),
        .I1(tpg_enable),
        .I2(pattern_sel[0]),
        .I3(s_axil_araddr[1]),
        .I4(s_axil_araddr[0]),
        .I5(s_axil_araddr[2]),
        .O(\s_axil_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[10]_i_1 
       (.I0(status_in[10]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[10]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[11]_i_1 
       (.I0(status_in[11]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[11]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[12]_i_1 
       (.I0(status_in[12]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[12]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[13]_i_1 
       (.I0(status_in[13]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[13]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004A0040)) 
    \s_axil_rdata[14]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[14]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[14]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[15]_i_1 
       (.I0(status_in[15]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[15]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0EFF0E3)) 
    \s_axil_rdata[16]_i_1 
       (.I0(status_in[16]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[16]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004A0040)) 
    \s_axil_rdata[17]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[17]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[17]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[18]_i_1 
       (.I0(status_in[18]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[18]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[19]_i_1 
       (.I0(status_in[19]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[19]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEF00E0)) 
    \s_axil_rdata[1]_i_1 
       (.I0(status_in[1]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(\s_axil_rdata[1]_i_2_n_0 ),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFFF0AACC00)) 
    \s_axil_rdata[1]_i_2 
       (.I0(scratch_reg[1]),
        .I1(mux_sel),
        .I2(pattern_sel[1]),
        .I3(s_axil_araddr[1]),
        .I4(s_axil_araddr[0]),
        .I5(s_axil_araddr[2]),
        .O(\s_axil_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004F0045)) 
    \s_axil_rdata[20]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[20]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[20]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[21]_i_1 
       (.I0(status_in[21]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[21]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004F0045)) 
    \s_axil_rdata[22]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[22]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[22]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[23]_i_1 
       (.I0(status_in[23]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[23]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004A0040)) 
    \s_axil_rdata[24]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[24]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[24]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0EFF0E3)) 
    \s_axil_rdata[25]_i_1 
       (.I0(status_in[25]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[25]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[26]_i_1 
       (.I0(status_in[26]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[26]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0EFF0E3)) 
    \s_axil_rdata[27]_i_1 
       (.I0(status_in[27]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[27]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0EFF0E3)) 
    \s_axil_rdata[28]_i_1 
       (.I0(status_in[28]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[28]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004F0045)) 
    \s_axil_rdata[29]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[29]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[29]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[2]_i_1 
       (.I0(status_in[2]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[2]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[30]_i_1 
       (.I0(status_in[30]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[30]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axil_rdata[31]_i_1 
       (.I0(s_axil_arvalid),
        .I1(s_axil_arready),
        .O(s_axil_rvalid00_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0EFF0E3)) 
    \s_axil_rdata[31]_i_2 
       (.I0(status_in[31]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[31]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axil_rdata[31]_i_3 
       (.I0(s_axil_araddr[5]),
        .I1(s_axil_araddr[3]),
        .I2(s_axil_araddr[4]),
        .O(\s_axil_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[3]_i_1 
       (.I0(status_in[3]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[3]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004A0040)) 
    \s_axil_rdata[4]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[4]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[4]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[5]_i_1 
       (.I0(status_in[5]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[5]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[6]_i_1 
       (.I0(status_in[6]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[6]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0ECF0E0)) 
    \s_axil_rdata[7]_i_1 
       (.I0(status_in[7]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[7]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004F0045)) 
    \s_axil_rdata[8]_i_1 
       (.I0(s_axil_araddr[0]),
        .I1(status_in[8]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[8]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0EFF0E3)) 
    \s_axil_rdata[9]_i_1 
       (.I0(status_in[9]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(scratch_reg[9]),
        .I5(\s_axil_rdata[31]_i_3_n_0 ),
        .O(\s_axil_rdata[9]_i_1_n_0 ));
  FDRE \s_axil_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[0]_i_1_n_0 ),
        .Q(s_axil_rdata[0]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[10]_i_1_n_0 ),
        .Q(s_axil_rdata[10]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[11]_i_1_n_0 ),
        .Q(s_axil_rdata[11]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[12]_i_1_n_0 ),
        .Q(s_axil_rdata[12]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[13]_i_1_n_0 ),
        .Q(s_axil_rdata[13]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[14]_i_1_n_0 ),
        .Q(s_axil_rdata[14]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[15]_i_1_n_0 ),
        .Q(s_axil_rdata[15]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[16]_i_1_n_0 ),
        .Q(s_axil_rdata[16]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[17]_i_1_n_0 ),
        .Q(s_axil_rdata[17]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[18]_i_1_n_0 ),
        .Q(s_axil_rdata[18]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[19] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[19]_i_1_n_0 ),
        .Q(s_axil_rdata[19]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[1]_i_1_n_0 ),
        .Q(s_axil_rdata[1]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[20]_i_1_n_0 ),
        .Q(s_axil_rdata[20]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[21] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[21]_i_1_n_0 ),
        .Q(s_axil_rdata[21]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[22] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[22]_i_1_n_0 ),
        .Q(s_axil_rdata[22]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[23] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[23]_i_1_n_0 ),
        .Q(s_axil_rdata[23]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[24] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[24]_i_1_n_0 ),
        .Q(s_axil_rdata[24]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[25] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[25]_i_1_n_0 ),
        .Q(s_axil_rdata[25]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[26] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[26]_i_1_n_0 ),
        .Q(s_axil_rdata[26]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[27] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[27]_i_1_n_0 ),
        .Q(s_axil_rdata[27]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[28] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[28]_i_1_n_0 ),
        .Q(s_axil_rdata[28]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[29] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[29]_i_1_n_0 ),
        .Q(s_axil_rdata[29]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[2]_i_1_n_0 ),
        .Q(s_axil_rdata[2]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[30] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[30]_i_1_n_0 ),
        .Q(s_axil_rdata[30]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[31] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[31]_i_2_n_0 ),
        .Q(s_axil_rdata[31]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[3]_i_1_n_0 ),
        .Q(s_axil_rdata[3]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[4]_i_1_n_0 ),
        .Q(s_axil_rdata[4]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[5]_i_1_n_0 ),
        .Q(s_axil_rdata[5]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[6]_i_1_n_0 ),
        .Q(s_axil_rdata[6]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[7]_i_1_n_0 ),
        .Q(s_axil_rdata[7]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[8]_i_1_n_0 ),
        .Q(s_axil_rdata[8]),
        .R(p_0_in));
  FDRE \s_axil_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rdata[9]_i_1_n_0 ),
        .Q(s_axil_rdata[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \s_axil_rresp[1]_i_1 
       (.I0(s_axil_araddr[4]),
        .I1(s_axil_araddr[3]),
        .I2(s_axil_araddr[5]),
        .I3(s_axil_araddr[0]),
        .I4(s_axil_araddr[1]),
        .I5(s_axil_araddr[2]),
        .O(\s_axil_rresp[1]_i_1_n_0 ));
  FDRE \s_axil_rresp_reg[1] 
       (.C(aclk),
        .CE(s_axil_rvalid00_out),
        .D(\s_axil_rresp[1]_i_1_n_0 ),
        .Q(s_axil_rresp),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axil_rvalid_i_1
       (.I0(s_axil_arready),
        .I1(s_axil_arvalid),
        .I2(s_axil_rready),
        .I3(s_axil_rvalid),
        .O(s_axil_rvalid_i_1_n_0));
  FDRE s_axil_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axil_rvalid_i_1_n_0),
        .Q(s_axil_rvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \scratch_reg[15]_i_1 
       (.I0(scratch_reg1),
        .I1(\s_axil_bresp[1]_i_2_n_0 ),
        .I2(s_axil_awaddr[0]),
        .I3(s_axil_wstrb[1]),
        .I4(s_axil_awaddr[1]),
        .I5(s_axil_awaddr[2]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \scratch_reg[23]_i_1 
       (.I0(scratch_reg1),
        .I1(\s_axil_bresp[1]_i_2_n_0 ),
        .I2(s_axil_awaddr[0]),
        .I3(s_axil_wstrb[2]),
        .I4(s_axil_awaddr[1]),
        .I5(s_axil_awaddr[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \scratch_reg[31]_i_1 
       (.I0(scratch_reg1),
        .I1(\s_axil_bresp[1]_i_2_n_0 ),
        .I2(s_axil_awaddr[0]),
        .I3(s_axil_wstrb[3]),
        .I4(s_axil_awaddr[1]),
        .I5(s_axil_awaddr[2]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \scratch_reg[7]_i_1 
       (.I0(scratch_reg1),
        .I1(\s_axil_bresp[1]_i_2_n_0 ),
        .I2(s_axil_awaddr[0]),
        .I3(s_axil_wstrb[0]),
        .I4(s_axil_awaddr[1]),
        .I5(s_axil_awaddr[2]),
        .O(p_1_in[7]));
  FDRE \scratch_reg_reg[0] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[0]),
        .Q(scratch_reg[0]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[10] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[10]),
        .Q(scratch_reg[10]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[11] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[11]),
        .Q(scratch_reg[11]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[12] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[12]),
        .Q(scratch_reg[12]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[13] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[13]),
        .Q(scratch_reg[13]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[14] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[14]),
        .Q(scratch_reg[14]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[15] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[15]),
        .Q(scratch_reg[15]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[16] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[16]),
        .Q(scratch_reg[16]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[17] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[17]),
        .Q(scratch_reg[17]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[18] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[18]),
        .Q(scratch_reg[18]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[19] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[19]),
        .Q(scratch_reg[19]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[1] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[1]),
        .Q(scratch_reg[1]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[20] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[20]),
        .Q(scratch_reg[20]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[21] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[21]),
        .Q(scratch_reg[21]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[22] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[22]),
        .Q(scratch_reg[22]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[23] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axil_wdata[23]),
        .Q(scratch_reg[23]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[24] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[24]),
        .Q(scratch_reg[24]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[25] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[25]),
        .Q(scratch_reg[25]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[26] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[26]),
        .Q(scratch_reg[26]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[27] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[27]),
        .Q(scratch_reg[27]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[28] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[28]),
        .Q(scratch_reg[28]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[29] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[29]),
        .Q(scratch_reg[29]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[2] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[2]),
        .Q(scratch_reg[2]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[30] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[30]),
        .Q(scratch_reg[30]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[31] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axil_wdata[31]),
        .Q(scratch_reg[31]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[3] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[3]),
        .Q(scratch_reg[3]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[4] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[4]),
        .Q(scratch_reg[4]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[5] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[5]),
        .Q(scratch_reg[5]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[6] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[6]),
        .Q(scratch_reg[6]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[7] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axil_wdata[7]),
        .Q(scratch_reg[7]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[8] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[8]),
        .Q(scratch_reg[8]),
        .R(p_0_in));
  FDRE \scratch_reg_reg[9] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axil_wdata[9]),
        .Q(scratch_reg[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \tpg_reg[0]_i_1 
       (.I0(s_axil_wdata[0]),
        .I1(s_axil_wstrb[0]),
        .I2(scratch_reg1),
        .I3(\tpg_reg[1]_i_2_n_0 ),
        .I4(pattern_sel[0]),
        .O(\tpg_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \tpg_reg[1]_i_1 
       (.I0(s_axil_wdata[1]),
        .I1(s_axil_wstrb[0]),
        .I2(scratch_reg1),
        .I3(\tpg_reg[1]_i_2_n_0 ),
        .I4(pattern_sel[1]),
        .O(\tpg_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \tpg_reg[1]_i_2 
       (.I0(s_axil_awaddr[1]),
        .I1(s_axil_awaddr[0]),
        .I2(s_axil_awaddr[2]),
        .I3(s_axil_awaddr[4]),
        .I4(s_axil_awaddr[3]),
        .I5(s_axil_awaddr[5]),
        .O(\tpg_reg[1]_i_2_n_0 ));
  FDRE \tpg_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tpg_reg[0]_i_1_n_0 ),
        .Q(pattern_sel[0]),
        .R(p_0_in));
  FDRE \tpg_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tpg_reg[1]_i_1_n_0 ),
        .Q(pattern_sel[1]),
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
