// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Jul 29 22:12:37 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_u_sensor_regs_0/image_block_u_sensor_regs_0_sim_netlist.v}
// Design      : image_block_u_sensor_regs_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_block_u_sensor_regs_0,axil_sensor_regs,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axil_sensor_regs,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module image_block_u_sensor_regs_0
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
    ze_conc,
    ze_range,
    ze_gas_type,
    ze_unit,
    ze_decimals,
    ze_frame_valid,
    ze_csum_err,
    ze_uart_frame_err,
    pm_pm1_0,
    pm_pm2_5,
    pm_pm10,
    pm_frame_valid,
    pm_csum_err,
    pm_uart_frame_err);
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
  input [15:0]ze_conc;
  input [15:0]ze_range;
  input [7:0]ze_gas_type;
  input [7:0]ze_unit;
  input [7:0]ze_decimals;
  input ze_frame_valid;
  input ze_csum_err;
  input ze_uart_frame_err;
  input [15:0]pm_pm1_0;
  input [15:0]pm_pm2_5;
  input [15:0]pm_pm10;
  input pm_frame_valid;
  input pm_csum_err;
  input pm_uart_frame_err;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire pm_csum_err;
  wire pm_frame_valid;
  wire [15:0]pm_pm10;
  wire [15:0]pm_pm1_0;
  wire [15:0]pm_pm2_5;
  wire pm_uart_frame_err;
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
  wire s_axil_wready;
  wire s_axil_wvalid;
  wire [15:0]ze_conc;
  wire ze_csum_err;
  wire [7:0]ze_decimals;
  wire ze_frame_valid;
  wire [7:0]ze_gas_type;
  wire [15:0]ze_range;
  wire ze_uart_frame_err;
  wire [7:0]ze_unit;

  assign s_axil_awready = s_axil_wready;
  assign s_axil_bresp[1] = \^s_axil_bresp [1];
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_rresp[1] = \^s_axil_rresp [1];
  assign s_axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  image_block_u_sensor_regs_0_axil_sensor_regs inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .pm_csum_err(pm_csum_err),
        .pm_frame_valid(pm_frame_valid),
        .pm_pm10(pm_pm10),
        .pm_pm1_0(pm_pm1_0),
        .pm_pm2_5(pm_pm2_5),
        .pm_uart_frame_err(pm_uart_frame_err),
        .s_axil_araddr(s_axil_araddr[7:2]),
        .s_axil_arready(s_axil_arready),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_awaddr(s_axil_awaddr[7:2]),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_bready(s_axil_bready),
        .s_axil_bresp(\^s_axil_bresp ),
        .s_axil_bvalid_reg_0(s_axil_bvalid),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rready(s_axil_rready),
        .s_axil_rresp(\^s_axil_rresp ),
        .s_axil_rvalid(s_axil_rvalid),
        .s_axil_wready(s_axil_wready),
        .s_axil_wvalid(s_axil_wvalid),
        .ze_conc(ze_conc),
        .ze_csum_err(ze_csum_err),
        .ze_decimals(ze_decimals),
        .ze_frame_valid(ze_frame_valid),
        .ze_gas_type(ze_gas_type),
        .ze_range(ze_range),
        .ze_uart_frame_err(ze_uart_frame_err),
        .ze_unit(ze_unit));
endmodule

(* ORIG_REF_NAME = "axil_sensor_regs" *) 
module image_block_u_sensor_regs_0_axil_sensor_regs
   (s_axil_wready,
    s_axil_arready,
    s_axil_rdata,
    s_axil_rresp,
    s_axil_bvalid_reg_0,
    s_axil_bresp,
    s_axil_rvalid,
    s_axil_araddr,
    aclk,
    ze_conc,
    ze_range,
    ze_gas_type,
    ze_unit,
    ze_decimals,
    pm_pm1_0,
    pm_pm2_5,
    pm_pm10,
    ze_frame_valid,
    ze_csum_err,
    ze_uart_frame_err,
    pm_frame_valid,
    pm_csum_err,
    pm_uart_frame_err,
    s_axil_awaddr,
    s_axil_awvalid,
    s_axil_wvalid,
    aresetn,
    s_axil_arvalid,
    s_axil_rready,
    s_axil_bready);
  output s_axil_wready;
  output s_axil_arready;
  output [31:0]s_axil_rdata;
  output [0:0]s_axil_rresp;
  output s_axil_bvalid_reg_0;
  output [0:0]s_axil_bresp;
  output s_axil_rvalid;
  input [5:0]s_axil_araddr;
  input aclk;
  input [15:0]ze_conc;
  input [15:0]ze_range;
  input [7:0]ze_gas_type;
  input [7:0]ze_unit;
  input [7:0]ze_decimals;
  input [15:0]pm_pm1_0;
  input [15:0]pm_pm2_5;
  input [15:0]pm_pm10;
  input ze_frame_valid;
  input ze_csum_err;
  input ze_uart_frame_err;
  input pm_frame_valid;
  input pm_csum_err;
  input pm_uart_frame_err;
  input [5:0]s_axil_awaddr;
  input s_axil_awvalid;
  input s_axil_wvalid;
  input aresetn;
  input s_axil_arvalid;
  input s_axil_rready;
  input s_axil_bready;

  wire aclk;
  wire aresetn;
  wire clear;
  wire [31:0]data0;
  wire [23:0]data1;
  wire [31:0]data2;
  wire [31:0]data4;
  wire [31:0]data6;
  wire [31:0]p_1_in;
  wire pm_csum_err;
  wire \pm_ecnt[0]_i_2_n_0 ;
  wire [15:0]pm_ecnt_reg;
  wire \pm_ecnt_reg[0]_i_1_n_0 ;
  wire \pm_ecnt_reg[0]_i_1_n_1 ;
  wire \pm_ecnt_reg[0]_i_1_n_2 ;
  wire \pm_ecnt_reg[0]_i_1_n_3 ;
  wire \pm_ecnt_reg[0]_i_1_n_4 ;
  wire \pm_ecnt_reg[0]_i_1_n_5 ;
  wire \pm_ecnt_reg[0]_i_1_n_6 ;
  wire \pm_ecnt_reg[0]_i_1_n_7 ;
  wire \pm_ecnt_reg[12]_i_1_n_1 ;
  wire \pm_ecnt_reg[12]_i_1_n_2 ;
  wire \pm_ecnt_reg[12]_i_1_n_3 ;
  wire \pm_ecnt_reg[12]_i_1_n_4 ;
  wire \pm_ecnt_reg[12]_i_1_n_5 ;
  wire \pm_ecnt_reg[12]_i_1_n_6 ;
  wire \pm_ecnt_reg[12]_i_1_n_7 ;
  wire \pm_ecnt_reg[4]_i_1_n_0 ;
  wire \pm_ecnt_reg[4]_i_1_n_1 ;
  wire \pm_ecnt_reg[4]_i_1_n_2 ;
  wire \pm_ecnt_reg[4]_i_1_n_3 ;
  wire \pm_ecnt_reg[4]_i_1_n_4 ;
  wire \pm_ecnt_reg[4]_i_1_n_5 ;
  wire \pm_ecnt_reg[4]_i_1_n_6 ;
  wire \pm_ecnt_reg[4]_i_1_n_7 ;
  wire \pm_ecnt_reg[8]_i_1_n_0 ;
  wire \pm_ecnt_reg[8]_i_1_n_1 ;
  wire \pm_ecnt_reg[8]_i_1_n_2 ;
  wire \pm_ecnt_reg[8]_i_1_n_3 ;
  wire \pm_ecnt_reg[8]_i_1_n_4 ;
  wire \pm_ecnt_reg[8]_i_1_n_5 ;
  wire \pm_ecnt_reg[8]_i_1_n_6 ;
  wire \pm_ecnt_reg[8]_i_1_n_7 ;
  wire \pm_fcnt[0]_i_2_n_0 ;
  wire [15:0]pm_fcnt_reg;
  wire \pm_fcnt_reg[0]_i_1_n_0 ;
  wire \pm_fcnt_reg[0]_i_1_n_1 ;
  wire \pm_fcnt_reg[0]_i_1_n_2 ;
  wire \pm_fcnt_reg[0]_i_1_n_3 ;
  wire \pm_fcnt_reg[0]_i_1_n_4 ;
  wire \pm_fcnt_reg[0]_i_1_n_5 ;
  wire \pm_fcnt_reg[0]_i_1_n_6 ;
  wire \pm_fcnt_reg[0]_i_1_n_7 ;
  wire \pm_fcnt_reg[12]_i_1_n_1 ;
  wire \pm_fcnt_reg[12]_i_1_n_2 ;
  wire \pm_fcnt_reg[12]_i_1_n_3 ;
  wire \pm_fcnt_reg[12]_i_1_n_4 ;
  wire \pm_fcnt_reg[12]_i_1_n_5 ;
  wire \pm_fcnt_reg[12]_i_1_n_6 ;
  wire \pm_fcnt_reg[12]_i_1_n_7 ;
  wire \pm_fcnt_reg[4]_i_1_n_0 ;
  wire \pm_fcnt_reg[4]_i_1_n_1 ;
  wire \pm_fcnt_reg[4]_i_1_n_2 ;
  wire \pm_fcnt_reg[4]_i_1_n_3 ;
  wire \pm_fcnt_reg[4]_i_1_n_4 ;
  wire \pm_fcnt_reg[4]_i_1_n_5 ;
  wire \pm_fcnt_reg[4]_i_1_n_6 ;
  wire \pm_fcnt_reg[4]_i_1_n_7 ;
  wire \pm_fcnt_reg[8]_i_1_n_0 ;
  wire \pm_fcnt_reg[8]_i_1_n_1 ;
  wire \pm_fcnt_reg[8]_i_1_n_2 ;
  wire \pm_fcnt_reg[8]_i_1_n_3 ;
  wire \pm_fcnt_reg[8]_i_1_n_4 ;
  wire \pm_fcnt_reg[8]_i_1_n_5 ;
  wire \pm_fcnt_reg[8]_i_1_n_6 ;
  wire \pm_fcnt_reg[8]_i_1_n_7 ;
  wire pm_frame_valid;
  wire [15:0]pm_pm10;
  wire [15:0]pm_pm1_0;
  wire [15:0]pm_pm2_5;
  wire pm_uart_frame_err;
  wire \pm_ucnt[0]_i_2_n_0 ;
  wire [15:0]pm_ucnt_reg;
  wire \pm_ucnt_reg[0]_i_1_n_0 ;
  wire \pm_ucnt_reg[0]_i_1_n_1 ;
  wire \pm_ucnt_reg[0]_i_1_n_2 ;
  wire \pm_ucnt_reg[0]_i_1_n_3 ;
  wire \pm_ucnt_reg[0]_i_1_n_4 ;
  wire \pm_ucnt_reg[0]_i_1_n_5 ;
  wire \pm_ucnt_reg[0]_i_1_n_6 ;
  wire \pm_ucnt_reg[0]_i_1_n_7 ;
  wire \pm_ucnt_reg[12]_i_1_n_1 ;
  wire \pm_ucnt_reg[12]_i_1_n_2 ;
  wire \pm_ucnt_reg[12]_i_1_n_3 ;
  wire \pm_ucnt_reg[12]_i_1_n_4 ;
  wire \pm_ucnt_reg[12]_i_1_n_5 ;
  wire \pm_ucnt_reg[12]_i_1_n_6 ;
  wire \pm_ucnt_reg[12]_i_1_n_7 ;
  wire \pm_ucnt_reg[4]_i_1_n_0 ;
  wire \pm_ucnt_reg[4]_i_1_n_1 ;
  wire \pm_ucnt_reg[4]_i_1_n_2 ;
  wire \pm_ucnt_reg[4]_i_1_n_3 ;
  wire \pm_ucnt_reg[4]_i_1_n_4 ;
  wire \pm_ucnt_reg[4]_i_1_n_5 ;
  wire \pm_ucnt_reg[4]_i_1_n_6 ;
  wire \pm_ucnt_reg[4]_i_1_n_7 ;
  wire \pm_ucnt_reg[8]_i_1_n_0 ;
  wire \pm_ucnt_reg[8]_i_1_n_1 ;
  wire \pm_ucnt_reg[8]_i_1_n_2 ;
  wire \pm_ucnt_reg[8]_i_1_n_3 ;
  wire \pm_ucnt_reg[8]_i_1_n_4 ;
  wire \pm_ucnt_reg[8]_i_1_n_5 ;
  wire \pm_ucnt_reg[8]_i_1_n_6 ;
  wire \pm_ucnt_reg[8]_i_1_n_7 ;
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
  wire \s_axil_bresp[1]_i_3_n_0 ;
  wire s_axil_bvalid_i_1_n_0;
  wire s_axil_bvalid_reg_0;
  wire [31:0]s_axil_rdata;
  wire \s_axil_rdata[0]_i_2_n_0 ;
  wire \s_axil_rdata[0]_i_3_n_0 ;
  wire \s_axil_rdata[0]_i_4_n_0 ;
  wire \s_axil_rdata[10]_i_2_n_0 ;
  wire \s_axil_rdata[10]_i_3_n_0 ;
  wire \s_axil_rdata[10]_i_4_n_0 ;
  wire \s_axil_rdata[11]_i_2_n_0 ;
  wire \s_axil_rdata[11]_i_3_n_0 ;
  wire \s_axil_rdata[11]_i_4_n_0 ;
  wire \s_axil_rdata[12]_i_2_n_0 ;
  wire \s_axil_rdata[12]_i_3_n_0 ;
  wire \s_axil_rdata[12]_i_4_n_0 ;
  wire \s_axil_rdata[13]_i_2_n_0 ;
  wire \s_axil_rdata[13]_i_3_n_0 ;
  wire \s_axil_rdata[13]_i_4_n_0 ;
  wire \s_axil_rdata[14]_i_2_n_0 ;
  wire \s_axil_rdata[14]_i_3_n_0 ;
  wire \s_axil_rdata[14]_i_4_n_0 ;
  wire \s_axil_rdata[15]_i_2_n_0 ;
  wire \s_axil_rdata[15]_i_3_n_0 ;
  wire \s_axil_rdata[15]_i_4_n_0 ;
  wire \s_axil_rdata[16]_i_2_n_0 ;
  wire \s_axil_rdata[16]_i_3_n_0 ;
  wire \s_axil_rdata[16]_i_4_n_0 ;
  wire \s_axil_rdata[17]_i_2_n_0 ;
  wire \s_axil_rdata[17]_i_3_n_0 ;
  wire \s_axil_rdata[17]_i_4_n_0 ;
  wire \s_axil_rdata[18]_i_2_n_0 ;
  wire \s_axil_rdata[18]_i_3_n_0 ;
  wire \s_axil_rdata[18]_i_4_n_0 ;
  wire \s_axil_rdata[19]_i_2_n_0 ;
  wire \s_axil_rdata[19]_i_3_n_0 ;
  wire \s_axil_rdata[19]_i_4_n_0 ;
  wire \s_axil_rdata[1]_i_2_n_0 ;
  wire \s_axil_rdata[1]_i_3_n_0 ;
  wire \s_axil_rdata[1]_i_4_n_0 ;
  wire \s_axil_rdata[20]_i_2_n_0 ;
  wire \s_axil_rdata[20]_i_3_n_0 ;
  wire \s_axil_rdata[20]_i_4_n_0 ;
  wire \s_axil_rdata[21]_i_2_n_0 ;
  wire \s_axil_rdata[21]_i_3_n_0 ;
  wire \s_axil_rdata[21]_i_4_n_0 ;
  wire \s_axil_rdata[22]_i_2_n_0 ;
  wire \s_axil_rdata[22]_i_3_n_0 ;
  wire \s_axil_rdata[22]_i_4_n_0 ;
  wire \s_axil_rdata[23]_i_2_n_0 ;
  wire \s_axil_rdata[23]_i_3_n_0 ;
  wire \s_axil_rdata[23]_i_4_n_0 ;
  wire \s_axil_rdata[24]_i_2_n_0 ;
  wire \s_axil_rdata[25]_i_2_n_0 ;
  wire \s_axil_rdata[26]_i_2_n_0 ;
  wire \s_axil_rdata[27]_i_2_n_0 ;
  wire \s_axil_rdata[28]_i_2_n_0 ;
  wire \s_axil_rdata[29]_i_2_n_0 ;
  wire \s_axil_rdata[2]_i_2_n_0 ;
  wire \s_axil_rdata[2]_i_3_n_0 ;
  wire \s_axil_rdata[2]_i_4_n_0 ;
  wire \s_axil_rdata[30]_i_2_n_0 ;
  wire \s_axil_rdata[31]_i_3_n_0 ;
  wire \s_axil_rdata[31]_i_4_n_0 ;
  wire \s_axil_rdata[31]_i_5_n_0 ;
  wire \s_axil_rdata[31]_i_6_n_0 ;
  wire \s_axil_rdata[3]_i_2_n_0 ;
  wire \s_axil_rdata[3]_i_3_n_0 ;
  wire \s_axil_rdata[3]_i_4_n_0 ;
  wire \s_axil_rdata[4]_i_2_n_0 ;
  wire \s_axil_rdata[4]_i_3_n_0 ;
  wire \s_axil_rdata[4]_i_4_n_0 ;
  wire \s_axil_rdata[5]_i_2_n_0 ;
  wire \s_axil_rdata[5]_i_3_n_0 ;
  wire \s_axil_rdata[5]_i_4_n_0 ;
  wire \s_axil_rdata[6]_i_2_n_0 ;
  wire \s_axil_rdata[6]_i_3_n_0 ;
  wire \s_axil_rdata[6]_i_4_n_0 ;
  wire \s_axil_rdata[7]_i_2_n_0 ;
  wire \s_axil_rdata[7]_i_3_n_0 ;
  wire \s_axil_rdata[7]_i_4_n_0 ;
  wire \s_axil_rdata[8]_i_2_n_0 ;
  wire \s_axil_rdata[8]_i_3_n_0 ;
  wire \s_axil_rdata[8]_i_4_n_0 ;
  wire \s_axil_rdata[9]_i_2_n_0 ;
  wire \s_axil_rdata[9]_i_3_n_0 ;
  wire \s_axil_rdata[9]_i_4_n_0 ;
  wire s_axil_rready;
  wire [0:0]s_axil_rresp;
  wire \s_axil_rresp[1]_i_1_n_0 ;
  wire s_axil_rvalid;
  wire s_axil_rvalid02_out;
  wire s_axil_rvalid_i_1_n_0;
  wire s_axil_wready;
  wire s_axil_wvalid;
  wire s_conc;
  wire [15:0]s_pm10;
  wire [15:0]s_pu;
  wire [15:0]s_zu;
  wire wr_fire;
  wire [15:0]ze_conc;
  wire ze_csum_err;
  wire [7:0]ze_decimals;
  wire \ze_ecnt[0]_i_2_n_0 ;
  wire [15:0]ze_ecnt_reg;
  wire \ze_ecnt_reg[0]_i_1_n_0 ;
  wire \ze_ecnt_reg[0]_i_1_n_1 ;
  wire \ze_ecnt_reg[0]_i_1_n_2 ;
  wire \ze_ecnt_reg[0]_i_1_n_3 ;
  wire \ze_ecnt_reg[0]_i_1_n_4 ;
  wire \ze_ecnt_reg[0]_i_1_n_5 ;
  wire \ze_ecnt_reg[0]_i_1_n_6 ;
  wire \ze_ecnt_reg[0]_i_1_n_7 ;
  wire \ze_ecnt_reg[12]_i_1_n_1 ;
  wire \ze_ecnt_reg[12]_i_1_n_2 ;
  wire \ze_ecnt_reg[12]_i_1_n_3 ;
  wire \ze_ecnt_reg[12]_i_1_n_4 ;
  wire \ze_ecnt_reg[12]_i_1_n_5 ;
  wire \ze_ecnt_reg[12]_i_1_n_6 ;
  wire \ze_ecnt_reg[12]_i_1_n_7 ;
  wire \ze_ecnt_reg[4]_i_1_n_0 ;
  wire \ze_ecnt_reg[4]_i_1_n_1 ;
  wire \ze_ecnt_reg[4]_i_1_n_2 ;
  wire \ze_ecnt_reg[4]_i_1_n_3 ;
  wire \ze_ecnt_reg[4]_i_1_n_4 ;
  wire \ze_ecnt_reg[4]_i_1_n_5 ;
  wire \ze_ecnt_reg[4]_i_1_n_6 ;
  wire \ze_ecnt_reg[4]_i_1_n_7 ;
  wire \ze_ecnt_reg[8]_i_1_n_0 ;
  wire \ze_ecnt_reg[8]_i_1_n_1 ;
  wire \ze_ecnt_reg[8]_i_1_n_2 ;
  wire \ze_ecnt_reg[8]_i_1_n_3 ;
  wire \ze_ecnt_reg[8]_i_1_n_4 ;
  wire \ze_ecnt_reg[8]_i_1_n_5 ;
  wire \ze_ecnt_reg[8]_i_1_n_6 ;
  wire \ze_ecnt_reg[8]_i_1_n_7 ;
  wire \ze_fcnt[0]_i_2_n_0 ;
  wire [15:0]ze_fcnt_reg;
  wire \ze_fcnt_reg[0]_i_1_n_0 ;
  wire \ze_fcnt_reg[0]_i_1_n_1 ;
  wire \ze_fcnt_reg[0]_i_1_n_2 ;
  wire \ze_fcnt_reg[0]_i_1_n_3 ;
  wire \ze_fcnt_reg[0]_i_1_n_4 ;
  wire \ze_fcnt_reg[0]_i_1_n_5 ;
  wire \ze_fcnt_reg[0]_i_1_n_6 ;
  wire \ze_fcnt_reg[0]_i_1_n_7 ;
  wire \ze_fcnt_reg[12]_i_1_n_1 ;
  wire \ze_fcnt_reg[12]_i_1_n_2 ;
  wire \ze_fcnt_reg[12]_i_1_n_3 ;
  wire \ze_fcnt_reg[12]_i_1_n_4 ;
  wire \ze_fcnt_reg[12]_i_1_n_5 ;
  wire \ze_fcnt_reg[12]_i_1_n_6 ;
  wire \ze_fcnt_reg[12]_i_1_n_7 ;
  wire \ze_fcnt_reg[4]_i_1_n_0 ;
  wire \ze_fcnt_reg[4]_i_1_n_1 ;
  wire \ze_fcnt_reg[4]_i_1_n_2 ;
  wire \ze_fcnt_reg[4]_i_1_n_3 ;
  wire \ze_fcnt_reg[4]_i_1_n_4 ;
  wire \ze_fcnt_reg[4]_i_1_n_5 ;
  wire \ze_fcnt_reg[4]_i_1_n_6 ;
  wire \ze_fcnt_reg[4]_i_1_n_7 ;
  wire \ze_fcnt_reg[8]_i_1_n_0 ;
  wire \ze_fcnt_reg[8]_i_1_n_1 ;
  wire \ze_fcnt_reg[8]_i_1_n_2 ;
  wire \ze_fcnt_reg[8]_i_1_n_3 ;
  wire \ze_fcnt_reg[8]_i_1_n_4 ;
  wire \ze_fcnt_reg[8]_i_1_n_5 ;
  wire \ze_fcnt_reg[8]_i_1_n_6 ;
  wire \ze_fcnt_reg[8]_i_1_n_7 ;
  wire ze_frame_valid;
  wire [7:0]ze_gas_type;
  wire [15:0]ze_range;
  wire ze_uart_frame_err;
  wire \ze_ucnt[0]_i_2_n_0 ;
  wire [15:0]ze_ucnt_reg;
  wire \ze_ucnt_reg[0]_i_1_n_0 ;
  wire \ze_ucnt_reg[0]_i_1_n_1 ;
  wire \ze_ucnt_reg[0]_i_1_n_2 ;
  wire \ze_ucnt_reg[0]_i_1_n_3 ;
  wire \ze_ucnt_reg[0]_i_1_n_4 ;
  wire \ze_ucnt_reg[0]_i_1_n_5 ;
  wire \ze_ucnt_reg[0]_i_1_n_6 ;
  wire \ze_ucnt_reg[0]_i_1_n_7 ;
  wire \ze_ucnt_reg[12]_i_1_n_1 ;
  wire \ze_ucnt_reg[12]_i_1_n_2 ;
  wire \ze_ucnt_reg[12]_i_1_n_3 ;
  wire \ze_ucnt_reg[12]_i_1_n_4 ;
  wire \ze_ucnt_reg[12]_i_1_n_5 ;
  wire \ze_ucnt_reg[12]_i_1_n_6 ;
  wire \ze_ucnt_reg[12]_i_1_n_7 ;
  wire \ze_ucnt_reg[4]_i_1_n_0 ;
  wire \ze_ucnt_reg[4]_i_1_n_1 ;
  wire \ze_ucnt_reg[4]_i_1_n_2 ;
  wire \ze_ucnt_reg[4]_i_1_n_3 ;
  wire \ze_ucnt_reg[4]_i_1_n_4 ;
  wire \ze_ucnt_reg[4]_i_1_n_5 ;
  wire \ze_ucnt_reg[4]_i_1_n_6 ;
  wire \ze_ucnt_reg[4]_i_1_n_7 ;
  wire \ze_ucnt_reg[8]_i_1_n_0 ;
  wire \ze_ucnt_reg[8]_i_1_n_1 ;
  wire \ze_ucnt_reg[8]_i_1_n_2 ;
  wire \ze_ucnt_reg[8]_i_1_n_3 ;
  wire \ze_ucnt_reg[8]_i_1_n_4 ;
  wire \ze_ucnt_reg[8]_i_1_n_5 ;
  wire \ze_ucnt_reg[8]_i_1_n_6 ;
  wire \ze_ucnt_reg[8]_i_1_n_7 ;
  wire [7:0]ze_unit;
  wire [3:3]\NLW_pm_ecnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pm_fcnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pm_ucnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ze_ecnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ze_fcnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ze_ucnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \pm_ecnt[0]_i_2 
       (.I0(pm_ecnt_reg[0]),
        .O(\pm_ecnt[0]_i_2_n_0 ));
  FDRE \pm_ecnt_reg[0] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[0]_i_1_n_7 ),
        .Q(pm_ecnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ecnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pm_ecnt_reg[0]_i_1_n_0 ,\pm_ecnt_reg[0]_i_1_n_1 ,\pm_ecnt_reg[0]_i_1_n_2 ,\pm_ecnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pm_ecnt_reg[0]_i_1_n_4 ,\pm_ecnt_reg[0]_i_1_n_5 ,\pm_ecnt_reg[0]_i_1_n_6 ,\pm_ecnt_reg[0]_i_1_n_7 }),
        .S({pm_ecnt_reg[3:1],\pm_ecnt[0]_i_2_n_0 }));
  FDRE \pm_ecnt_reg[10] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[8]_i_1_n_5 ),
        .Q(pm_ecnt_reg[10]),
        .R(clear));
  FDRE \pm_ecnt_reg[11] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[8]_i_1_n_4 ),
        .Q(pm_ecnt_reg[11]),
        .R(clear));
  FDRE \pm_ecnt_reg[12] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[12]_i_1_n_7 ),
        .Q(pm_ecnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ecnt_reg[12]_i_1 
       (.CI(\pm_ecnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pm_ecnt_reg[12]_i_1_CO_UNCONNECTED [3],\pm_ecnt_reg[12]_i_1_n_1 ,\pm_ecnt_reg[12]_i_1_n_2 ,\pm_ecnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_ecnt_reg[12]_i_1_n_4 ,\pm_ecnt_reg[12]_i_1_n_5 ,\pm_ecnt_reg[12]_i_1_n_6 ,\pm_ecnt_reg[12]_i_1_n_7 }),
        .S(pm_ecnt_reg[15:12]));
  FDRE \pm_ecnt_reg[13] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[12]_i_1_n_6 ),
        .Q(pm_ecnt_reg[13]),
        .R(clear));
  FDRE \pm_ecnt_reg[14] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[12]_i_1_n_5 ),
        .Q(pm_ecnt_reg[14]),
        .R(clear));
  FDRE \pm_ecnt_reg[15] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[12]_i_1_n_4 ),
        .Q(pm_ecnt_reg[15]),
        .R(clear));
  FDRE \pm_ecnt_reg[1] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[0]_i_1_n_6 ),
        .Q(pm_ecnt_reg[1]),
        .R(clear));
  FDRE \pm_ecnt_reg[2] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[0]_i_1_n_5 ),
        .Q(pm_ecnt_reg[2]),
        .R(clear));
  FDRE \pm_ecnt_reg[3] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[0]_i_1_n_4 ),
        .Q(pm_ecnt_reg[3]),
        .R(clear));
  FDRE \pm_ecnt_reg[4] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[4]_i_1_n_7 ),
        .Q(pm_ecnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ecnt_reg[4]_i_1 
       (.CI(\pm_ecnt_reg[0]_i_1_n_0 ),
        .CO({\pm_ecnt_reg[4]_i_1_n_0 ,\pm_ecnt_reg[4]_i_1_n_1 ,\pm_ecnt_reg[4]_i_1_n_2 ,\pm_ecnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_ecnt_reg[4]_i_1_n_4 ,\pm_ecnt_reg[4]_i_1_n_5 ,\pm_ecnt_reg[4]_i_1_n_6 ,\pm_ecnt_reg[4]_i_1_n_7 }),
        .S(pm_ecnt_reg[7:4]));
  FDRE \pm_ecnt_reg[5] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[4]_i_1_n_6 ),
        .Q(pm_ecnt_reg[5]),
        .R(clear));
  FDRE \pm_ecnt_reg[6] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[4]_i_1_n_5 ),
        .Q(pm_ecnt_reg[6]),
        .R(clear));
  FDRE \pm_ecnt_reg[7] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[4]_i_1_n_4 ),
        .Q(pm_ecnt_reg[7]),
        .R(clear));
  FDRE \pm_ecnt_reg[8] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[8]_i_1_n_7 ),
        .Q(pm_ecnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ecnt_reg[8]_i_1 
       (.CI(\pm_ecnt_reg[4]_i_1_n_0 ),
        .CO({\pm_ecnt_reg[8]_i_1_n_0 ,\pm_ecnt_reg[8]_i_1_n_1 ,\pm_ecnt_reg[8]_i_1_n_2 ,\pm_ecnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_ecnt_reg[8]_i_1_n_4 ,\pm_ecnt_reg[8]_i_1_n_5 ,\pm_ecnt_reg[8]_i_1_n_6 ,\pm_ecnt_reg[8]_i_1_n_7 }),
        .S(pm_ecnt_reg[11:8]));
  FDRE \pm_ecnt_reg[9] 
       (.C(aclk),
        .CE(pm_csum_err),
        .D(\pm_ecnt_reg[8]_i_1_n_6 ),
        .Q(pm_ecnt_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \pm_fcnt[0]_i_2 
       (.I0(pm_fcnt_reg[0]),
        .O(\pm_fcnt[0]_i_2_n_0 ));
  FDRE \pm_fcnt_reg[0] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[0]_i_1_n_7 ),
        .Q(pm_fcnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_fcnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pm_fcnt_reg[0]_i_1_n_0 ,\pm_fcnt_reg[0]_i_1_n_1 ,\pm_fcnt_reg[0]_i_1_n_2 ,\pm_fcnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pm_fcnt_reg[0]_i_1_n_4 ,\pm_fcnt_reg[0]_i_1_n_5 ,\pm_fcnt_reg[0]_i_1_n_6 ,\pm_fcnt_reg[0]_i_1_n_7 }),
        .S({pm_fcnt_reg[3:1],\pm_fcnt[0]_i_2_n_0 }));
  FDRE \pm_fcnt_reg[10] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[8]_i_1_n_5 ),
        .Q(pm_fcnt_reg[10]),
        .R(clear));
  FDRE \pm_fcnt_reg[11] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[8]_i_1_n_4 ),
        .Q(pm_fcnt_reg[11]),
        .R(clear));
  FDRE \pm_fcnt_reg[12] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[12]_i_1_n_7 ),
        .Q(pm_fcnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_fcnt_reg[12]_i_1 
       (.CI(\pm_fcnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pm_fcnt_reg[12]_i_1_CO_UNCONNECTED [3],\pm_fcnt_reg[12]_i_1_n_1 ,\pm_fcnt_reg[12]_i_1_n_2 ,\pm_fcnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_fcnt_reg[12]_i_1_n_4 ,\pm_fcnt_reg[12]_i_1_n_5 ,\pm_fcnt_reg[12]_i_1_n_6 ,\pm_fcnt_reg[12]_i_1_n_7 }),
        .S(pm_fcnt_reg[15:12]));
  FDRE \pm_fcnt_reg[13] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[12]_i_1_n_6 ),
        .Q(pm_fcnt_reg[13]),
        .R(clear));
  FDRE \pm_fcnt_reg[14] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[12]_i_1_n_5 ),
        .Q(pm_fcnt_reg[14]),
        .R(clear));
  FDRE \pm_fcnt_reg[15] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[12]_i_1_n_4 ),
        .Q(pm_fcnt_reg[15]),
        .R(clear));
  FDRE \pm_fcnt_reg[1] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[0]_i_1_n_6 ),
        .Q(pm_fcnt_reg[1]),
        .R(clear));
  FDRE \pm_fcnt_reg[2] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[0]_i_1_n_5 ),
        .Q(pm_fcnt_reg[2]),
        .R(clear));
  FDRE \pm_fcnt_reg[3] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[0]_i_1_n_4 ),
        .Q(pm_fcnt_reg[3]),
        .R(clear));
  FDRE \pm_fcnt_reg[4] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[4]_i_1_n_7 ),
        .Q(pm_fcnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_fcnt_reg[4]_i_1 
       (.CI(\pm_fcnt_reg[0]_i_1_n_0 ),
        .CO({\pm_fcnt_reg[4]_i_1_n_0 ,\pm_fcnt_reg[4]_i_1_n_1 ,\pm_fcnt_reg[4]_i_1_n_2 ,\pm_fcnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_fcnt_reg[4]_i_1_n_4 ,\pm_fcnt_reg[4]_i_1_n_5 ,\pm_fcnt_reg[4]_i_1_n_6 ,\pm_fcnt_reg[4]_i_1_n_7 }),
        .S(pm_fcnt_reg[7:4]));
  FDRE \pm_fcnt_reg[5] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[4]_i_1_n_6 ),
        .Q(pm_fcnt_reg[5]),
        .R(clear));
  FDRE \pm_fcnt_reg[6] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[4]_i_1_n_5 ),
        .Q(pm_fcnt_reg[6]),
        .R(clear));
  FDRE \pm_fcnt_reg[7] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[4]_i_1_n_4 ),
        .Q(pm_fcnt_reg[7]),
        .R(clear));
  FDRE \pm_fcnt_reg[8] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[8]_i_1_n_7 ),
        .Q(pm_fcnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_fcnt_reg[8]_i_1 
       (.CI(\pm_fcnt_reg[4]_i_1_n_0 ),
        .CO({\pm_fcnt_reg[8]_i_1_n_0 ,\pm_fcnt_reg[8]_i_1_n_1 ,\pm_fcnt_reg[8]_i_1_n_2 ,\pm_fcnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_fcnt_reg[8]_i_1_n_4 ,\pm_fcnt_reg[8]_i_1_n_5 ,\pm_fcnt_reg[8]_i_1_n_6 ,\pm_fcnt_reg[8]_i_1_n_7 }),
        .S(pm_fcnt_reg[11:8]));
  FDRE \pm_fcnt_reg[9] 
       (.C(aclk),
        .CE(pm_frame_valid),
        .D(\pm_fcnt_reg[8]_i_1_n_6 ),
        .Q(pm_fcnt_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \pm_ucnt[0]_i_2 
       (.I0(pm_ucnt_reg[0]),
        .O(\pm_ucnt[0]_i_2_n_0 ));
  FDRE \pm_ucnt_reg[0] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[0]_i_1_n_7 ),
        .Q(pm_ucnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ucnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pm_ucnt_reg[0]_i_1_n_0 ,\pm_ucnt_reg[0]_i_1_n_1 ,\pm_ucnt_reg[0]_i_1_n_2 ,\pm_ucnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pm_ucnt_reg[0]_i_1_n_4 ,\pm_ucnt_reg[0]_i_1_n_5 ,\pm_ucnt_reg[0]_i_1_n_6 ,\pm_ucnt_reg[0]_i_1_n_7 }),
        .S({pm_ucnt_reg[3:1],\pm_ucnt[0]_i_2_n_0 }));
  FDRE \pm_ucnt_reg[10] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[8]_i_1_n_5 ),
        .Q(pm_ucnt_reg[10]),
        .R(clear));
  FDRE \pm_ucnt_reg[11] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[8]_i_1_n_4 ),
        .Q(pm_ucnt_reg[11]),
        .R(clear));
  FDRE \pm_ucnt_reg[12] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[12]_i_1_n_7 ),
        .Q(pm_ucnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ucnt_reg[12]_i_1 
       (.CI(\pm_ucnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pm_ucnt_reg[12]_i_1_CO_UNCONNECTED [3],\pm_ucnt_reg[12]_i_1_n_1 ,\pm_ucnt_reg[12]_i_1_n_2 ,\pm_ucnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_ucnt_reg[12]_i_1_n_4 ,\pm_ucnt_reg[12]_i_1_n_5 ,\pm_ucnt_reg[12]_i_1_n_6 ,\pm_ucnt_reg[12]_i_1_n_7 }),
        .S(pm_ucnt_reg[15:12]));
  FDRE \pm_ucnt_reg[13] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[12]_i_1_n_6 ),
        .Q(pm_ucnt_reg[13]),
        .R(clear));
  FDRE \pm_ucnt_reg[14] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[12]_i_1_n_5 ),
        .Q(pm_ucnt_reg[14]),
        .R(clear));
  FDRE \pm_ucnt_reg[15] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[12]_i_1_n_4 ),
        .Q(pm_ucnt_reg[15]),
        .R(clear));
  FDRE \pm_ucnt_reg[1] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[0]_i_1_n_6 ),
        .Q(pm_ucnt_reg[1]),
        .R(clear));
  FDRE \pm_ucnt_reg[2] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[0]_i_1_n_5 ),
        .Q(pm_ucnt_reg[2]),
        .R(clear));
  FDRE \pm_ucnt_reg[3] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[0]_i_1_n_4 ),
        .Q(pm_ucnt_reg[3]),
        .R(clear));
  FDRE \pm_ucnt_reg[4] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[4]_i_1_n_7 ),
        .Q(pm_ucnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ucnt_reg[4]_i_1 
       (.CI(\pm_ucnt_reg[0]_i_1_n_0 ),
        .CO({\pm_ucnt_reg[4]_i_1_n_0 ,\pm_ucnt_reg[4]_i_1_n_1 ,\pm_ucnt_reg[4]_i_1_n_2 ,\pm_ucnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_ucnt_reg[4]_i_1_n_4 ,\pm_ucnt_reg[4]_i_1_n_5 ,\pm_ucnt_reg[4]_i_1_n_6 ,\pm_ucnt_reg[4]_i_1_n_7 }),
        .S(pm_ucnt_reg[7:4]));
  FDRE \pm_ucnt_reg[5] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[4]_i_1_n_6 ),
        .Q(pm_ucnt_reg[5]),
        .R(clear));
  FDRE \pm_ucnt_reg[6] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[4]_i_1_n_5 ),
        .Q(pm_ucnt_reg[6]),
        .R(clear));
  FDRE \pm_ucnt_reg[7] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[4]_i_1_n_4 ),
        .Q(pm_ucnt_reg[7]),
        .R(clear));
  FDRE \pm_ucnt_reg[8] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[8]_i_1_n_7 ),
        .Q(pm_ucnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pm_ucnt_reg[8]_i_1 
       (.CI(\pm_ucnt_reg[4]_i_1_n_0 ),
        .CO({\pm_ucnt_reg[8]_i_1_n_0 ,\pm_ucnt_reg[8]_i_1_n_1 ,\pm_ucnt_reg[8]_i_1_n_2 ,\pm_ucnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pm_ucnt_reg[8]_i_1_n_4 ,\pm_ucnt_reg[8]_i_1_n_5 ,\pm_ucnt_reg[8]_i_1_n_6 ,\pm_ucnt_reg[8]_i_1_n_7 }),
        .S(pm_ucnt_reg[11:8]));
  FDRE \pm_ucnt_reg[9] 
       (.C(aclk),
        .CE(pm_uart_frame_err),
        .D(\pm_ucnt_reg[8]_i_1_n_6 ),
        .Q(pm_ucnt_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    s_axil_awready_i_1
       (.I0(aresetn),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h20)) 
    s_axil_awready_i_2
       (.I0(s_axil_wvalid),
        .I1(s_axil_bvalid_reg_0),
        .I2(s_axil_awvalid),
        .O(wr_fire));
  FDRE s_axil_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wr_fire),
        .Q(s_axil_wready),
        .R(clear));
  LUT5 #(
    .INIT(32'hFF00E000)) 
    \s_axil_bresp[1]_i_1 
       (.I0(s_axil_awaddr[2]),
        .I1(s_axil_awaddr[1]),
        .I2(s_axil_awaddr[3]),
        .I3(\s_axil_bresp[1]_i_2_n_0 ),
        .I4(\s_axil_bresp[1]_i_3_n_0 ),
        .O(\s_axil_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF200000)) 
    \s_axil_bresp[1]_i_2 
       (.I0(s_axil_awvalid),
        .I1(s_axil_bvalid_reg_0),
        .I2(s_axil_wvalid),
        .I3(s_axil_bresp),
        .I4(aresetn),
        .O(\s_axil_bresp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \s_axil_bresp[1]_i_3 
       (.I0(s_axil_awaddr[5]),
        .I1(s_axil_awaddr[4]),
        .I2(s_axil_wvalid),
        .I3(s_axil_bvalid_reg_0),
        .I4(s_axil_awvalid),
        .O(\s_axil_bresp[1]_i_3_n_0 ));
  FDRE \s_axil_bresp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axil_bresp[1]_i_1_n_0 ),
        .Q(s_axil_bresp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5C50)) 
    s_axil_bvalid_i_1
       (.I0(s_axil_bready),
        .I1(s_axil_wvalid),
        .I2(s_axil_bvalid_reg_0),
        .I3(s_axil_awvalid),
        .O(s_axil_bvalid_i_1_n_0));
  FDRE s_axil_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axil_bvalid_i_1_n_0),
        .Q(s_axil_bvalid_reg_0),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[0]_i_1 
       (.I0(\s_axil_rdata[0]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[0]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[0]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \s_axil_rdata[0]_i_2 
       (.I0(data1[0]),
        .I1(data0[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[0]_i_3 
       (.I0(s_pm10[0]),
        .I1(data4[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[0]),
        .I4(s_axil_araddr[0]),
        .I5(data2[0]),
        .O(\s_axil_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[0]_i_4 
       (.I0(data6[0]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[0]),
        .O(\s_axil_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[10]_i_1 
       (.I0(\s_axil_rdata[10]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[10]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[10]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[10]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[10]),
        .I2(s_axil_araddr[0]),
        .I3(data1[10]),
        .O(\s_axil_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[10]_i_3 
       (.I0(s_pm10[10]),
        .I1(data4[10]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[10]),
        .I4(s_axil_araddr[0]),
        .I5(data2[10]),
        .O(\s_axil_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[10]_i_4 
       (.I0(data6[10]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[10]),
        .O(\s_axil_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[11]_i_1 
       (.I0(\s_axil_rdata[11]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[11]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[11]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[11]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[11]),
        .I2(s_axil_araddr[0]),
        .I3(data1[11]),
        .O(\s_axil_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[11]_i_3 
       (.I0(s_pm10[11]),
        .I1(data4[11]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[11]),
        .I4(s_axil_araddr[0]),
        .I5(data2[11]),
        .O(\s_axil_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[11]_i_4 
       (.I0(data6[11]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[11]),
        .O(\s_axil_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[12]_i_1 
       (.I0(\s_axil_rdata[12]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[12]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[12]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \s_axil_rdata[12]_i_2 
       (.I0(data1[12]),
        .I1(data0[12]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[12]_i_3 
       (.I0(s_pm10[12]),
        .I1(data4[12]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[12]),
        .I4(s_axil_araddr[0]),
        .I5(data2[12]),
        .O(\s_axil_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[12]_i_4 
       (.I0(data6[12]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[12]),
        .O(\s_axil_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[13]_i_1 
       (.I0(\s_axil_rdata[13]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[13]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[13]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[13]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[13]),
        .I2(s_axil_araddr[0]),
        .I3(data1[13]),
        .O(\s_axil_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[13]_i_3 
       (.I0(s_pm10[13]),
        .I1(data4[13]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[13]),
        .I4(s_axil_araddr[0]),
        .I5(data2[13]),
        .O(\s_axil_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[13]_i_4 
       (.I0(data6[13]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[13]),
        .O(\s_axil_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \s_axil_rdata[14]_i_1 
       (.I0(\s_axil_rdata[14]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[14]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[14]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[14]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[14]),
        .I2(s_axil_araddr[0]),
        .I3(data1[14]),
        .O(\s_axil_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[14]_i_3 
       (.I0(s_pm10[14]),
        .I1(data4[14]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[14]),
        .I4(s_axil_araddr[0]),
        .I5(data2[14]),
        .O(\s_axil_rdata[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axil_rdata[14]_i_4 
       (.I0(data6[14]),
        .I1(s_axil_araddr[0]),
        .I2(s_pu[14]),
        .I3(s_axil_araddr[2]),
        .I4(s_axil_araddr[1]),
        .O(\s_axil_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[15]_i_1 
       (.I0(\s_axil_rdata[15]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[15]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[15]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[15]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[15]),
        .I2(s_axil_araddr[0]),
        .I3(data1[15]),
        .O(\s_axil_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[15]_i_3 
       (.I0(s_pm10[15]),
        .I1(data4[15]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[15]),
        .I4(s_axil_araddr[0]),
        .I5(data2[15]),
        .O(\s_axil_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[15]_i_4 
       (.I0(data6[15]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[15]),
        .O(\s_axil_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[16]_i_1 
       (.I0(\s_axil_rdata[16]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[16]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[16]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \s_axil_rdata[16]_i_2 
       (.I0(data1[16]),
        .I1(data0[16]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[16]_i_3 
       (.I0(data4[16]),
        .I1(s_axil_araddr[1]),
        .I2(data2[16]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \s_axil_rdata[16]_i_4 
       (.I0(s_axil_araddr[2]),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(data6[16]),
        .O(\s_axil_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \s_axil_rdata[17]_i_1 
       (.I0(\s_axil_rdata[17]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[17]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[17]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[17]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[17]),
        .I2(s_axil_araddr[0]),
        .I3(data1[17]),
        .O(\s_axil_rdata[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[17]_i_3 
       (.I0(data4[17]),
        .I1(s_axil_araddr[1]),
        .I2(data2[17]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axil_rdata[17]_i_4 
       (.I0(s_axil_araddr[0]),
        .I1(data6[17]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .O(\s_axil_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[18]_i_1 
       (.I0(\s_axil_rdata[18]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[18]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[18]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[18]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[18]),
        .I2(s_axil_araddr[0]),
        .I3(data1[18]),
        .O(\s_axil_rdata[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[18]_i_3 
       (.I0(data4[18]),
        .I1(s_axil_araddr[1]),
        .I2(data2[18]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \s_axil_rdata[18]_i_4 
       (.I0(s_axil_araddr[2]),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(data6[18]),
        .O(\s_axil_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[19]_i_1 
       (.I0(\s_axil_rdata[19]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[19]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[19]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[19]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[19]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[19]),
        .I2(s_axil_araddr[0]),
        .I3(data1[19]),
        .O(\s_axil_rdata[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[19]_i_3 
       (.I0(data4[19]),
        .I1(s_axil_araddr[1]),
        .I2(data2[19]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \s_axil_rdata[19]_i_4 
       (.I0(s_axil_araddr[2]),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(data6[19]),
        .O(\s_axil_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[1]_i_1 
       (.I0(\s_axil_rdata[1]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[1]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[1]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[1]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[1]),
        .I2(s_axil_araddr[0]),
        .I3(data1[1]),
        .O(\s_axil_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[1]_i_3 
       (.I0(s_pm10[1]),
        .I1(data4[1]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[1]),
        .I4(s_axil_araddr[0]),
        .I5(data2[1]),
        .O(\s_axil_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[1]_i_4 
       (.I0(data6[1]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[1]),
        .O(\s_axil_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \s_axil_rdata[20]_i_1 
       (.I0(\s_axil_rdata[20]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[20]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[20]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \s_axil_rdata[20]_i_2 
       (.I0(data1[20]),
        .I1(data0[20]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[20]_i_3 
       (.I0(data4[20]),
        .I1(s_axil_araddr[1]),
        .I2(data2[20]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axil_rdata[20]_i_4 
       (.I0(s_axil_araddr[0]),
        .I1(data6[20]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .O(\s_axil_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[21]_i_1 
       (.I0(\s_axil_rdata[21]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[21]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[21]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[21]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[21]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[21]),
        .I2(s_axil_araddr[0]),
        .I3(data1[21]),
        .O(\s_axil_rdata[21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[21]_i_3 
       (.I0(data4[21]),
        .I1(s_axil_araddr[1]),
        .I2(data2[21]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \s_axil_rdata[21]_i_4 
       (.I0(s_axil_araddr[2]),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(data6[21]),
        .O(\s_axil_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \s_axil_rdata[22]_i_1 
       (.I0(\s_axil_rdata[22]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[22]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[22]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[22]));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \s_axil_rdata[22]_i_2 
       (.I0(data1[22]),
        .I1(data0[22]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[22]_i_3 
       (.I0(data4[22]),
        .I1(s_axil_araddr[1]),
        .I2(data2[22]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axil_rdata[22]_i_4 
       (.I0(s_axil_araddr[0]),
        .I1(data6[22]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .O(\s_axil_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[23]_i_1 
       (.I0(\s_axil_rdata[23]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[23]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[23]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[23]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[23]),
        .I2(s_axil_araddr[0]),
        .I3(data1[23]),
        .O(\s_axil_rdata[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_axil_rdata[23]_i_3 
       (.I0(data4[23]),
        .I1(s_axil_araddr[1]),
        .I2(data2[23]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \s_axil_rdata[23]_i_4 
       (.I0(s_axil_araddr[2]),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .I3(data6[23]),
        .O(\s_axil_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \s_axil_rdata[24]_i_1 
       (.I0(\s_axil_rdata[24]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(\s_axil_rdata[31]_i_5_n_0 ),
        .I3(data6[24]),
        .I4(\s_axil_rdata[31]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000AFC00000A0C0)) 
    \s_axil_rdata[24]_i_2 
       (.I0(data4[24]),
        .I1(data2[24]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(s_axil_araddr[0]),
        .I5(data0[24]),
        .O(\s_axil_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \s_axil_rdata[25]_i_1 
       (.I0(\s_axil_rdata[25]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(data6[25]),
        .I3(\s_axil_rdata[31]_i_4_n_0 ),
        .I4(\s_axil_rdata[31]_i_5_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h00000000AFA0CFCF)) 
    \s_axil_rdata[25]_i_2 
       (.I0(data4[25]),
        .I1(data2[25]),
        .I2(s_axil_araddr[2]),
        .I3(data0[25]),
        .I4(s_axil_araddr[1]),
        .I5(s_axil_araddr[0]),
        .O(\s_axil_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \s_axil_rdata[26]_i_1 
       (.I0(\s_axil_rdata[26]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(data6[26]),
        .I3(\s_axil_rdata[31]_i_4_n_0 ),
        .I4(\s_axil_rdata[31]_i_5_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0000AFC00000A0C0)) 
    \s_axil_rdata[26]_i_2 
       (.I0(data4[26]),
        .I1(data2[26]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(s_axil_araddr[0]),
        .I5(data0[26]),
        .O(\s_axil_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \s_axil_rdata[27]_i_1 
       (.I0(\s_axil_rdata[27]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(data6[27]),
        .I3(\s_axil_rdata[31]_i_4_n_0 ),
        .I4(\s_axil_rdata[31]_i_5_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h00000000AFA0CFCF)) 
    \s_axil_rdata[27]_i_2 
       (.I0(data4[27]),
        .I1(data2[27]),
        .I2(s_axil_araddr[2]),
        .I3(data0[27]),
        .I4(s_axil_araddr[1]),
        .I5(s_axil_araddr[0]),
        .O(\s_axil_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \s_axil_rdata[28]_i_1 
       (.I0(\s_axil_rdata[28]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(data6[28]),
        .I3(\s_axil_rdata[31]_i_4_n_0 ),
        .I4(\s_axil_rdata[31]_i_5_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h00000000AFA0CFCF)) 
    \s_axil_rdata[28]_i_2 
       (.I0(data4[28]),
        .I1(data2[28]),
        .I2(s_axil_araddr[2]),
        .I3(data0[28]),
        .I4(s_axil_araddr[1]),
        .I5(s_axil_araddr[0]),
        .O(\s_axil_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \s_axil_rdata[29]_i_1 
       (.I0(\s_axil_rdata[29]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(\s_axil_rdata[31]_i_5_n_0 ),
        .I3(data6[29]),
        .I4(\s_axil_rdata[31]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h00000000AFA0CFCF)) 
    \s_axil_rdata[29]_i_2 
       (.I0(data4[29]),
        .I1(data2[29]),
        .I2(s_axil_araddr[2]),
        .I3(data0[29]),
        .I4(s_axil_araddr[1]),
        .I5(s_axil_araddr[0]),
        .O(\s_axil_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[2]_i_1 
       (.I0(\s_axil_rdata[2]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[2]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[2]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[2]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[2]),
        .I2(s_axil_araddr[0]),
        .I3(data1[2]),
        .O(\s_axil_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[2]_i_3 
       (.I0(s_pm10[2]),
        .I1(data4[2]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[2]),
        .I4(s_axil_araddr[0]),
        .I5(data2[2]),
        .O(\s_axil_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[2]_i_4 
       (.I0(data6[2]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[2]),
        .O(\s_axil_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \s_axil_rdata[30]_i_1 
       (.I0(\s_axil_rdata[30]_i_2_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(data6[30]),
        .I3(\s_axil_rdata[31]_i_4_n_0 ),
        .I4(\s_axil_rdata[31]_i_5_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0000AFC00000A0C0)) 
    \s_axil_rdata[30]_i_2 
       (.I0(data4[30]),
        .I1(data2[30]),
        .I2(s_axil_araddr[2]),
        .I3(s_axil_araddr[1]),
        .I4(s_axil_araddr[0]),
        .I5(data0[30]),
        .O(\s_axil_rdata[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axil_rdata[31]_i_1 
       (.I0(s_axil_arvalid),
        .I1(s_axil_arready),
        .O(s_axil_rvalid02_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \s_axil_rdata[31]_i_2 
       (.I0(\s_axil_rdata[31]_i_3_n_0 ),
        .I1(s_axil_araddr[3]),
        .I2(data6[31]),
        .I3(\s_axil_rdata[31]_i_4_n_0 ),
        .I4(\s_axil_rdata[31]_i_5_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h00000000AFA0CFCF)) 
    \s_axil_rdata[31]_i_3 
       (.I0(data4[31]),
        .I1(data2[31]),
        .I2(s_axil_araddr[2]),
        .I3(data0[31]),
        .I4(s_axil_araddr[1]),
        .I5(s_axil_araddr[0]),
        .O(\s_axil_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axil_rdata[31]_i_4 
       (.I0(s_axil_araddr[2]),
        .I1(s_axil_araddr[1]),
        .I2(s_axil_araddr[0]),
        .O(\s_axil_rdata[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axil_rdata[31]_i_5 
       (.I0(s_axil_araddr[1]),
        .I1(s_axil_araddr[2]),
        .O(\s_axil_rdata[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axil_rdata[31]_i_6 
       (.I0(s_axil_araddr[5]),
        .I1(s_axil_araddr[4]),
        .O(\s_axil_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[3]_i_1 
       (.I0(\s_axil_rdata[3]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[3]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[3]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[3]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[3]),
        .I2(s_axil_araddr[0]),
        .I3(data1[3]),
        .O(\s_axil_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[3]_i_3 
       (.I0(s_pm10[3]),
        .I1(data4[3]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[3]),
        .I4(s_axil_araddr[0]),
        .I5(data2[3]),
        .O(\s_axil_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[3]_i_4 
       (.I0(data6[3]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[3]),
        .O(\s_axil_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \s_axil_rdata[4]_i_1 
       (.I0(\s_axil_rdata[4]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[4]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[4]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[4]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[4]),
        .I2(s_axil_araddr[0]),
        .I3(data1[4]),
        .O(\s_axil_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[4]_i_3 
       (.I0(s_pm10[4]),
        .I1(data4[4]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[4]),
        .I4(s_axil_araddr[0]),
        .I5(data2[4]),
        .O(\s_axil_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axil_rdata[4]_i_4 
       (.I0(data6[4]),
        .I1(s_axil_araddr[0]),
        .I2(s_pu[4]),
        .I3(s_axil_araddr[2]),
        .I4(s_axil_araddr[1]),
        .O(\s_axil_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[5]_i_1 
       (.I0(\s_axil_rdata[5]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[5]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[5]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[5]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[5]),
        .I2(s_axil_araddr[0]),
        .I3(data1[5]),
        .O(\s_axil_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[5]_i_3 
       (.I0(s_pm10[5]),
        .I1(data4[5]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[5]),
        .I4(s_axil_araddr[0]),
        .I5(data2[5]),
        .O(\s_axil_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[5]_i_4 
       (.I0(data6[5]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[5]),
        .O(\s_axil_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[6]_i_1 
       (.I0(\s_axil_rdata[6]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[6]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[6]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[6]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[6]),
        .I2(s_axil_araddr[0]),
        .I3(data1[6]),
        .O(\s_axil_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[6]_i_3 
       (.I0(s_pm10[6]),
        .I1(data4[6]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[6]),
        .I4(s_axil_araddr[0]),
        .I5(data2[6]),
        .O(\s_axil_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[6]_i_4 
       (.I0(data6[6]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[6]),
        .O(\s_axil_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[7]_i_1 
       (.I0(\s_axil_rdata[7]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[7]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[7]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[7]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[7]),
        .I2(s_axil_araddr[0]),
        .I3(data1[7]),
        .O(\s_axil_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[7]_i_3 
       (.I0(s_pm10[7]),
        .I1(data4[7]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[7]),
        .I4(s_axil_araddr[0]),
        .I5(data2[7]),
        .O(\s_axil_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[7]_i_4 
       (.I0(data6[7]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[7]),
        .O(\s_axil_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \s_axil_rdata[8]_i_1 
       (.I0(\s_axil_rdata[8]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[8]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[8]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \s_axil_rdata[8]_i_2 
       (.I0(data1[8]),
        .I1(data0[8]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[0]),
        .O(\s_axil_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[8]_i_3 
       (.I0(s_pm10[8]),
        .I1(data4[8]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[8]),
        .I4(s_axil_araddr[0]),
        .I5(data2[8]),
        .O(\s_axil_rdata[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axil_rdata[8]_i_4 
       (.I0(data6[8]),
        .I1(s_axil_araddr[0]),
        .I2(s_pu[8]),
        .I3(s_axil_araddr[2]),
        .I4(s_axil_araddr[1]),
        .O(\s_axil_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axil_rdata[9]_i_1 
       (.I0(\s_axil_rdata[9]_i_2_n_0 ),
        .I1(s_axil_araddr[2]),
        .I2(\s_axil_rdata[9]_i_3_n_0 ),
        .I3(s_axil_araddr[3]),
        .I4(\s_axil_rdata[9]_i_4_n_0 ),
        .I5(\s_axil_rdata[31]_i_6_n_0 ),
        .O(p_1_in[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axil_rdata[9]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(data0[9]),
        .I2(s_axil_araddr[0]),
        .I3(data1[9]),
        .O(\s_axil_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axil_rdata[9]_i_3 
       (.I0(s_pm10[9]),
        .I1(data4[9]),
        .I2(s_axil_araddr[1]),
        .I3(s_zu[9]),
        .I4(s_axil_araddr[0]),
        .I5(data2[9]),
        .O(\s_axil_rdata[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    \s_axil_rdata[9]_i_4 
       (.I0(data6[9]),
        .I1(s_axil_araddr[0]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_pu[9]),
        .O(\s_axil_rdata[9]_i_4_n_0 ));
  FDRE \s_axil_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[0]),
        .Q(s_axil_rdata[0]),
        .R(clear));
  FDRE \s_axil_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[10]),
        .Q(s_axil_rdata[10]),
        .R(clear));
  FDRE \s_axil_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[11]),
        .Q(s_axil_rdata[11]),
        .R(clear));
  FDRE \s_axil_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[12]),
        .Q(s_axil_rdata[12]),
        .R(clear));
  FDRE \s_axil_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[13]),
        .Q(s_axil_rdata[13]),
        .R(clear));
  FDRE \s_axil_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[14]),
        .Q(s_axil_rdata[14]),
        .R(clear));
  FDRE \s_axil_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[15]),
        .Q(s_axil_rdata[15]),
        .R(clear));
  FDRE \s_axil_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[16]),
        .Q(s_axil_rdata[16]),
        .R(clear));
  FDRE \s_axil_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[17]),
        .Q(s_axil_rdata[17]),
        .R(clear));
  FDRE \s_axil_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[18]),
        .Q(s_axil_rdata[18]),
        .R(clear));
  FDRE \s_axil_rdata_reg[19] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[19]),
        .Q(s_axil_rdata[19]),
        .R(clear));
  FDRE \s_axil_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[1]),
        .Q(s_axil_rdata[1]),
        .R(clear));
  FDRE \s_axil_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[20]),
        .Q(s_axil_rdata[20]),
        .R(clear));
  FDRE \s_axil_rdata_reg[21] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[21]),
        .Q(s_axil_rdata[21]),
        .R(clear));
  FDRE \s_axil_rdata_reg[22] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[22]),
        .Q(s_axil_rdata[22]),
        .R(clear));
  FDRE \s_axil_rdata_reg[23] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[23]),
        .Q(s_axil_rdata[23]),
        .R(clear));
  FDRE \s_axil_rdata_reg[24] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[24]),
        .Q(s_axil_rdata[24]),
        .R(clear));
  FDRE \s_axil_rdata_reg[25] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[25]),
        .Q(s_axil_rdata[25]),
        .R(clear));
  FDRE \s_axil_rdata_reg[26] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[26]),
        .Q(s_axil_rdata[26]),
        .R(clear));
  FDRE \s_axil_rdata_reg[27] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[27]),
        .Q(s_axil_rdata[27]),
        .R(clear));
  FDRE \s_axil_rdata_reg[28] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[28]),
        .Q(s_axil_rdata[28]),
        .R(clear));
  FDRE \s_axil_rdata_reg[29] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[29]),
        .Q(s_axil_rdata[29]),
        .R(clear));
  FDRE \s_axil_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[2]),
        .Q(s_axil_rdata[2]),
        .R(clear));
  FDRE \s_axil_rdata_reg[30] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[30]),
        .Q(s_axil_rdata[30]),
        .R(clear));
  FDRE \s_axil_rdata_reg[31] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[31]),
        .Q(s_axil_rdata[31]),
        .R(clear));
  FDRE \s_axil_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[3]),
        .Q(s_axil_rdata[3]),
        .R(clear));
  FDRE \s_axil_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[4]),
        .Q(s_axil_rdata[4]),
        .R(clear));
  FDRE \s_axil_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[5]),
        .Q(s_axil_rdata[5]),
        .R(clear));
  FDRE \s_axil_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[6]),
        .Q(s_axil_rdata[6]),
        .R(clear));
  FDRE \s_axil_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[7]),
        .Q(s_axil_rdata[7]),
        .R(clear));
  FDRE \s_axil_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[8]),
        .Q(s_axil_rdata[8]),
        .R(clear));
  FDRE \s_axil_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(p_1_in[9]),
        .Q(s_axil_rdata[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \s_axil_rresp[1]_i_1 
       (.I0(s_axil_araddr[4]),
        .I1(s_axil_araddr[5]),
        .I2(s_axil_araddr[1]),
        .I3(s_axil_araddr[2]),
        .I4(s_axil_araddr[3]),
        .O(\s_axil_rresp[1]_i_1_n_0 ));
  FDRE \s_axil_rresp_reg[1] 
       (.C(aclk),
        .CE(s_axil_rvalid02_out),
        .D(\s_axil_rresp[1]_i_1_n_0 ),
        .Q(s_axil_rresp),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .R(clear));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_conc[15]_i_1 
       (.I0(s_axil_awaddr[1]),
        .I1(s_axil_awaddr[2]),
        .I2(s_axil_awaddr[0]),
        .I3(s_axil_awaddr[3]),
        .I4(\s_axil_bresp[1]_i_3_n_0 ),
        .O(s_conc));
  FDRE \s_conc_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[0]),
        .Q(data0[0]),
        .R(clear));
  FDRE \s_conc_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[10]),
        .Q(data0[10]),
        .R(clear));
  FDRE \s_conc_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[11]),
        .Q(data0[11]),
        .R(clear));
  FDRE \s_conc_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[12]),
        .Q(data0[12]),
        .R(clear));
  FDRE \s_conc_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[13]),
        .Q(data0[13]),
        .R(clear));
  FDRE \s_conc_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[14]),
        .Q(data0[14]),
        .R(clear));
  FDRE \s_conc_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[15]),
        .Q(data0[15]),
        .R(clear));
  FDRE \s_conc_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[1]),
        .Q(data0[1]),
        .R(clear));
  FDRE \s_conc_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[2]),
        .Q(data0[2]),
        .R(clear));
  FDRE \s_conc_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[3]),
        .Q(data0[3]),
        .R(clear));
  FDRE \s_conc_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[4]),
        .Q(data0[4]),
        .R(clear));
  FDRE \s_conc_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[5]),
        .Q(data0[5]),
        .R(clear));
  FDRE \s_conc_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[6]),
        .Q(data0[6]),
        .R(clear));
  FDRE \s_conc_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[7]),
        .Q(data0[7]),
        .R(clear));
  FDRE \s_conc_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[8]),
        .Q(data0[8]),
        .R(clear));
  FDRE \s_conc_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_conc[9]),
        .Q(data0[9]),
        .R(clear));
  FDRE \s_dec_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[0]),
        .Q(data1[16]),
        .R(clear));
  FDRE \s_dec_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[1]),
        .Q(data1[17]),
        .R(clear));
  FDRE \s_dec_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[2]),
        .Q(data1[18]),
        .R(clear));
  FDRE \s_dec_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[3]),
        .Q(data1[19]),
        .R(clear));
  FDRE \s_dec_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[4]),
        .Q(data1[20]),
        .R(clear));
  FDRE \s_dec_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[5]),
        .Q(data1[21]),
        .R(clear));
  FDRE \s_dec_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[6]),
        .Q(data1[22]),
        .R(clear));
  FDRE \s_dec_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_decimals[7]),
        .Q(data1[23]),
        .R(clear));
  FDRE \s_gas_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[0]),
        .Q(data1[0]),
        .R(clear));
  FDRE \s_gas_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[1]),
        .Q(data1[1]),
        .R(clear));
  FDRE \s_gas_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[2]),
        .Q(data1[2]),
        .R(clear));
  FDRE \s_gas_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[3]),
        .Q(data1[3]),
        .R(clear));
  FDRE \s_gas_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[4]),
        .Q(data1[4]),
        .R(clear));
  FDRE \s_gas_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[5]),
        .Q(data1[5]),
        .R(clear));
  FDRE \s_gas_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[6]),
        .Q(data1[6]),
        .R(clear));
  FDRE \s_gas_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_gas_type[7]),
        .Q(data1[7]),
        .R(clear));
  FDRE \s_pe_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[0]),
        .Q(data6[16]),
        .R(clear));
  FDRE \s_pe_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[10]),
        .Q(data6[26]),
        .R(clear));
  FDRE \s_pe_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[11]),
        .Q(data6[27]),
        .R(clear));
  FDRE \s_pe_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[12]),
        .Q(data6[28]),
        .R(clear));
  FDRE \s_pe_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[13]),
        .Q(data6[29]),
        .R(clear));
  FDRE \s_pe_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[14]),
        .Q(data6[30]),
        .R(clear));
  FDRE \s_pe_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[15]),
        .Q(data6[31]),
        .R(clear));
  FDRE \s_pe_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[1]),
        .Q(data6[17]),
        .R(clear));
  FDRE \s_pe_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[2]),
        .Q(data6[18]),
        .R(clear));
  FDRE \s_pe_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[3]),
        .Q(data6[19]),
        .R(clear));
  FDRE \s_pe_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[4]),
        .Q(data6[20]),
        .R(clear));
  FDRE \s_pe_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[5]),
        .Q(data6[21]),
        .R(clear));
  FDRE \s_pe_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[6]),
        .Q(data6[22]),
        .R(clear));
  FDRE \s_pe_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[7]),
        .Q(data6[23]),
        .R(clear));
  FDRE \s_pe_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[8]),
        .Q(data6[24]),
        .R(clear));
  FDRE \s_pe_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ecnt_reg[9]),
        .Q(data6[25]),
        .R(clear));
  FDRE \s_pf_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[0]),
        .Q(data6[0]),
        .R(clear));
  FDRE \s_pf_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[10]),
        .Q(data6[10]),
        .R(clear));
  FDRE \s_pf_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[11]),
        .Q(data6[11]),
        .R(clear));
  FDRE \s_pf_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[12]),
        .Q(data6[12]),
        .R(clear));
  FDRE \s_pf_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[13]),
        .Q(data6[13]),
        .R(clear));
  FDRE \s_pf_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[14]),
        .Q(data6[14]),
        .R(clear));
  FDRE \s_pf_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[15]),
        .Q(data6[15]),
        .R(clear));
  FDRE \s_pf_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[1]),
        .Q(data6[1]),
        .R(clear));
  FDRE \s_pf_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[2]),
        .Q(data6[2]),
        .R(clear));
  FDRE \s_pf_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[3]),
        .Q(data6[3]),
        .R(clear));
  FDRE \s_pf_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[4]),
        .Q(data6[4]),
        .R(clear));
  FDRE \s_pf_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[5]),
        .Q(data6[5]),
        .R(clear));
  FDRE \s_pf_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[6]),
        .Q(data6[6]),
        .R(clear));
  FDRE \s_pf_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[7]),
        .Q(data6[7]),
        .R(clear));
  FDRE \s_pf_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[8]),
        .Q(data6[8]),
        .R(clear));
  FDRE \s_pf_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_fcnt_reg[9]),
        .Q(data6[9]),
        .R(clear));
  FDRE \s_pm10_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[0]),
        .Q(s_pm10[0]),
        .R(clear));
  FDRE \s_pm10_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[10]),
        .Q(s_pm10[10]),
        .R(clear));
  FDRE \s_pm10_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[11]),
        .Q(s_pm10[11]),
        .R(clear));
  FDRE \s_pm10_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[12]),
        .Q(s_pm10[12]),
        .R(clear));
  FDRE \s_pm10_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[13]),
        .Q(s_pm10[13]),
        .R(clear));
  FDRE \s_pm10_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[14]),
        .Q(s_pm10[14]),
        .R(clear));
  FDRE \s_pm10_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[15]),
        .Q(s_pm10[15]),
        .R(clear));
  FDRE \s_pm10_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[1]),
        .Q(s_pm10[1]),
        .R(clear));
  FDRE \s_pm10_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[2]),
        .Q(s_pm10[2]),
        .R(clear));
  FDRE \s_pm10_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[3]),
        .Q(s_pm10[3]),
        .R(clear));
  FDRE \s_pm10_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[4]),
        .Q(s_pm10[4]),
        .R(clear));
  FDRE \s_pm10_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[5]),
        .Q(s_pm10[5]),
        .R(clear));
  FDRE \s_pm10_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[6]),
        .Q(s_pm10[6]),
        .R(clear));
  FDRE \s_pm10_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[7]),
        .Q(s_pm10[7]),
        .R(clear));
  FDRE \s_pm10_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[8]),
        .Q(s_pm10[8]),
        .R(clear));
  FDRE \s_pm10_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm10[9]),
        .Q(s_pm10[9]),
        .R(clear));
  FDRE \s_pm1_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[0]),
        .Q(data4[0]),
        .R(clear));
  FDRE \s_pm1_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[10]),
        .Q(data4[10]),
        .R(clear));
  FDRE \s_pm1_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[11]),
        .Q(data4[11]),
        .R(clear));
  FDRE \s_pm1_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[12]),
        .Q(data4[12]),
        .R(clear));
  FDRE \s_pm1_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[13]),
        .Q(data4[13]),
        .R(clear));
  FDRE \s_pm1_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[14]),
        .Q(data4[14]),
        .R(clear));
  FDRE \s_pm1_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[15]),
        .Q(data4[15]),
        .R(clear));
  FDRE \s_pm1_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[1]),
        .Q(data4[1]),
        .R(clear));
  FDRE \s_pm1_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[2]),
        .Q(data4[2]),
        .R(clear));
  FDRE \s_pm1_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[3]),
        .Q(data4[3]),
        .R(clear));
  FDRE \s_pm1_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[4]),
        .Q(data4[4]),
        .R(clear));
  FDRE \s_pm1_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[5]),
        .Q(data4[5]),
        .R(clear));
  FDRE \s_pm1_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[6]),
        .Q(data4[6]),
        .R(clear));
  FDRE \s_pm1_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[7]),
        .Q(data4[7]),
        .R(clear));
  FDRE \s_pm1_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[8]),
        .Q(data4[8]),
        .R(clear));
  FDRE \s_pm1_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm1_0[9]),
        .Q(data4[9]),
        .R(clear));
  FDRE \s_pm2_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[0]),
        .Q(data4[16]),
        .R(clear));
  FDRE \s_pm2_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[10]),
        .Q(data4[26]),
        .R(clear));
  FDRE \s_pm2_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[11]),
        .Q(data4[27]),
        .R(clear));
  FDRE \s_pm2_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[12]),
        .Q(data4[28]),
        .R(clear));
  FDRE \s_pm2_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[13]),
        .Q(data4[29]),
        .R(clear));
  FDRE \s_pm2_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[14]),
        .Q(data4[30]),
        .R(clear));
  FDRE \s_pm2_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[15]),
        .Q(data4[31]),
        .R(clear));
  FDRE \s_pm2_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[1]),
        .Q(data4[17]),
        .R(clear));
  FDRE \s_pm2_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[2]),
        .Q(data4[18]),
        .R(clear));
  FDRE \s_pm2_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[3]),
        .Q(data4[19]),
        .R(clear));
  FDRE \s_pm2_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[4]),
        .Q(data4[20]),
        .R(clear));
  FDRE \s_pm2_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[5]),
        .Q(data4[21]),
        .R(clear));
  FDRE \s_pm2_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[6]),
        .Q(data4[22]),
        .R(clear));
  FDRE \s_pm2_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[7]),
        .Q(data4[23]),
        .R(clear));
  FDRE \s_pm2_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[8]),
        .Q(data4[24]),
        .R(clear));
  FDRE \s_pm2_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_pm2_5[9]),
        .Q(data4[25]),
        .R(clear));
  FDRE \s_pu_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[0]),
        .Q(s_pu[0]),
        .R(clear));
  FDRE \s_pu_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[10]),
        .Q(s_pu[10]),
        .R(clear));
  FDRE \s_pu_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[11]),
        .Q(s_pu[11]),
        .R(clear));
  FDRE \s_pu_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[12]),
        .Q(s_pu[12]),
        .R(clear));
  FDRE \s_pu_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[13]),
        .Q(s_pu[13]),
        .R(clear));
  FDRE \s_pu_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[14]),
        .Q(s_pu[14]),
        .R(clear));
  FDRE \s_pu_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[15]),
        .Q(s_pu[15]),
        .R(clear));
  FDRE \s_pu_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[1]),
        .Q(s_pu[1]),
        .R(clear));
  FDRE \s_pu_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[2]),
        .Q(s_pu[2]),
        .R(clear));
  FDRE \s_pu_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[3]),
        .Q(s_pu[3]),
        .R(clear));
  FDRE \s_pu_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[4]),
        .Q(s_pu[4]),
        .R(clear));
  FDRE \s_pu_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[5]),
        .Q(s_pu[5]),
        .R(clear));
  FDRE \s_pu_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[6]),
        .Q(s_pu[6]),
        .R(clear));
  FDRE \s_pu_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[7]),
        .Q(s_pu[7]),
        .R(clear));
  FDRE \s_pu_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[8]),
        .Q(s_pu[8]),
        .R(clear));
  FDRE \s_pu_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(pm_ucnt_reg[9]),
        .Q(s_pu[9]),
        .R(clear));
  FDRE \s_range_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[0]),
        .Q(data0[16]),
        .R(clear));
  FDRE \s_range_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[10]),
        .Q(data0[26]),
        .R(clear));
  FDRE \s_range_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[11]),
        .Q(data0[27]),
        .R(clear));
  FDRE \s_range_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[12]),
        .Q(data0[28]),
        .R(clear));
  FDRE \s_range_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[13]),
        .Q(data0[29]),
        .R(clear));
  FDRE \s_range_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[14]),
        .Q(data0[30]),
        .R(clear));
  FDRE \s_range_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[15]),
        .Q(data0[31]),
        .R(clear));
  FDRE \s_range_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[1]),
        .Q(data0[17]),
        .R(clear));
  FDRE \s_range_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[2]),
        .Q(data0[18]),
        .R(clear));
  FDRE \s_range_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[3]),
        .Q(data0[19]),
        .R(clear));
  FDRE \s_range_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[4]),
        .Q(data0[20]),
        .R(clear));
  FDRE \s_range_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[5]),
        .Q(data0[21]),
        .R(clear));
  FDRE \s_range_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[6]),
        .Q(data0[22]),
        .R(clear));
  FDRE \s_range_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[7]),
        .Q(data0[23]),
        .R(clear));
  FDRE \s_range_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[8]),
        .Q(data0[24]),
        .R(clear));
  FDRE \s_range_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_range[9]),
        .Q(data0[25]),
        .R(clear));
  FDRE \s_unit_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[0]),
        .Q(data1[8]),
        .R(clear));
  FDRE \s_unit_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[1]),
        .Q(data1[9]),
        .R(clear));
  FDRE \s_unit_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[2]),
        .Q(data1[10]),
        .R(clear));
  FDRE \s_unit_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[3]),
        .Q(data1[11]),
        .R(clear));
  FDRE \s_unit_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[4]),
        .Q(data1[12]),
        .R(clear));
  FDRE \s_unit_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[5]),
        .Q(data1[13]),
        .R(clear));
  FDRE \s_unit_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[6]),
        .Q(data1[14]),
        .R(clear));
  FDRE \s_unit_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_unit[7]),
        .Q(data1[15]),
        .R(clear));
  FDRE \s_ze_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[0]),
        .Q(data2[16]),
        .R(clear));
  FDRE \s_ze_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[10]),
        .Q(data2[26]),
        .R(clear));
  FDRE \s_ze_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[11]),
        .Q(data2[27]),
        .R(clear));
  FDRE \s_ze_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[12]),
        .Q(data2[28]),
        .R(clear));
  FDRE \s_ze_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[13]),
        .Q(data2[29]),
        .R(clear));
  FDRE \s_ze_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[14]),
        .Q(data2[30]),
        .R(clear));
  FDRE \s_ze_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[15]),
        .Q(data2[31]),
        .R(clear));
  FDRE \s_ze_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[1]),
        .Q(data2[17]),
        .R(clear));
  FDRE \s_ze_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[2]),
        .Q(data2[18]),
        .R(clear));
  FDRE \s_ze_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[3]),
        .Q(data2[19]),
        .R(clear));
  FDRE \s_ze_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[4]),
        .Q(data2[20]),
        .R(clear));
  FDRE \s_ze_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[5]),
        .Q(data2[21]),
        .R(clear));
  FDRE \s_ze_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[6]),
        .Q(data2[22]),
        .R(clear));
  FDRE \s_ze_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[7]),
        .Q(data2[23]),
        .R(clear));
  FDRE \s_ze_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[8]),
        .Q(data2[24]),
        .R(clear));
  FDRE \s_ze_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ecnt_reg[9]),
        .Q(data2[25]),
        .R(clear));
  FDRE \s_zf_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[0]),
        .Q(data2[0]),
        .R(clear));
  FDRE \s_zf_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[10]),
        .Q(data2[10]),
        .R(clear));
  FDRE \s_zf_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[11]),
        .Q(data2[11]),
        .R(clear));
  FDRE \s_zf_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[12]),
        .Q(data2[12]),
        .R(clear));
  FDRE \s_zf_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[13]),
        .Q(data2[13]),
        .R(clear));
  FDRE \s_zf_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[14]),
        .Q(data2[14]),
        .R(clear));
  FDRE \s_zf_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[15]),
        .Q(data2[15]),
        .R(clear));
  FDRE \s_zf_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[1]),
        .Q(data2[1]),
        .R(clear));
  FDRE \s_zf_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[2]),
        .Q(data2[2]),
        .R(clear));
  FDRE \s_zf_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[3]),
        .Q(data2[3]),
        .R(clear));
  FDRE \s_zf_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[4]),
        .Q(data2[4]),
        .R(clear));
  FDRE \s_zf_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[5]),
        .Q(data2[5]),
        .R(clear));
  FDRE \s_zf_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[6]),
        .Q(data2[6]),
        .R(clear));
  FDRE \s_zf_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[7]),
        .Q(data2[7]),
        .R(clear));
  FDRE \s_zf_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[8]),
        .Q(data2[8]),
        .R(clear));
  FDRE \s_zf_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_fcnt_reg[9]),
        .Q(data2[9]),
        .R(clear));
  FDRE \s_zu_reg[0] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[0]),
        .Q(s_zu[0]),
        .R(clear));
  FDRE \s_zu_reg[10] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[10]),
        .Q(s_zu[10]),
        .R(clear));
  FDRE \s_zu_reg[11] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[11]),
        .Q(s_zu[11]),
        .R(clear));
  FDRE \s_zu_reg[12] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[12]),
        .Q(s_zu[12]),
        .R(clear));
  FDRE \s_zu_reg[13] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[13]),
        .Q(s_zu[13]),
        .R(clear));
  FDRE \s_zu_reg[14] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[14]),
        .Q(s_zu[14]),
        .R(clear));
  FDRE \s_zu_reg[15] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[15]),
        .Q(s_zu[15]),
        .R(clear));
  FDRE \s_zu_reg[1] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[1]),
        .Q(s_zu[1]),
        .R(clear));
  FDRE \s_zu_reg[2] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[2]),
        .Q(s_zu[2]),
        .R(clear));
  FDRE \s_zu_reg[3] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[3]),
        .Q(s_zu[3]),
        .R(clear));
  FDRE \s_zu_reg[4] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[4]),
        .Q(s_zu[4]),
        .R(clear));
  FDRE \s_zu_reg[5] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[5]),
        .Q(s_zu[5]),
        .R(clear));
  FDRE \s_zu_reg[6] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[6]),
        .Q(s_zu[6]),
        .R(clear));
  FDRE \s_zu_reg[7] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[7]),
        .Q(s_zu[7]),
        .R(clear));
  FDRE \s_zu_reg[8] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[8]),
        .Q(s_zu[8]),
        .R(clear));
  FDRE \s_zu_reg[9] 
       (.C(aclk),
        .CE(s_conc),
        .D(ze_ucnt_reg[9]),
        .Q(s_zu[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \ze_ecnt[0]_i_2 
       (.I0(ze_ecnt_reg[0]),
        .O(\ze_ecnt[0]_i_2_n_0 ));
  FDRE \ze_ecnt_reg[0] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[0]_i_1_n_7 ),
        .Q(ze_ecnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ecnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ze_ecnt_reg[0]_i_1_n_0 ,\ze_ecnt_reg[0]_i_1_n_1 ,\ze_ecnt_reg[0]_i_1_n_2 ,\ze_ecnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ze_ecnt_reg[0]_i_1_n_4 ,\ze_ecnt_reg[0]_i_1_n_5 ,\ze_ecnt_reg[0]_i_1_n_6 ,\ze_ecnt_reg[0]_i_1_n_7 }),
        .S({ze_ecnt_reg[3:1],\ze_ecnt[0]_i_2_n_0 }));
  FDRE \ze_ecnt_reg[10] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[8]_i_1_n_5 ),
        .Q(ze_ecnt_reg[10]),
        .R(clear));
  FDRE \ze_ecnt_reg[11] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[8]_i_1_n_4 ),
        .Q(ze_ecnt_reg[11]),
        .R(clear));
  FDRE \ze_ecnt_reg[12] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[12]_i_1_n_7 ),
        .Q(ze_ecnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ecnt_reg[12]_i_1 
       (.CI(\ze_ecnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_ze_ecnt_reg[12]_i_1_CO_UNCONNECTED [3],\ze_ecnt_reg[12]_i_1_n_1 ,\ze_ecnt_reg[12]_i_1_n_2 ,\ze_ecnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_ecnt_reg[12]_i_1_n_4 ,\ze_ecnt_reg[12]_i_1_n_5 ,\ze_ecnt_reg[12]_i_1_n_6 ,\ze_ecnt_reg[12]_i_1_n_7 }),
        .S(ze_ecnt_reg[15:12]));
  FDRE \ze_ecnt_reg[13] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[12]_i_1_n_6 ),
        .Q(ze_ecnt_reg[13]),
        .R(clear));
  FDRE \ze_ecnt_reg[14] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[12]_i_1_n_5 ),
        .Q(ze_ecnt_reg[14]),
        .R(clear));
  FDRE \ze_ecnt_reg[15] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[12]_i_1_n_4 ),
        .Q(ze_ecnt_reg[15]),
        .R(clear));
  FDRE \ze_ecnt_reg[1] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[0]_i_1_n_6 ),
        .Q(ze_ecnt_reg[1]),
        .R(clear));
  FDRE \ze_ecnt_reg[2] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[0]_i_1_n_5 ),
        .Q(ze_ecnt_reg[2]),
        .R(clear));
  FDRE \ze_ecnt_reg[3] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[0]_i_1_n_4 ),
        .Q(ze_ecnt_reg[3]),
        .R(clear));
  FDRE \ze_ecnt_reg[4] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[4]_i_1_n_7 ),
        .Q(ze_ecnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ecnt_reg[4]_i_1 
       (.CI(\ze_ecnt_reg[0]_i_1_n_0 ),
        .CO({\ze_ecnt_reg[4]_i_1_n_0 ,\ze_ecnt_reg[4]_i_1_n_1 ,\ze_ecnt_reg[4]_i_1_n_2 ,\ze_ecnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_ecnt_reg[4]_i_1_n_4 ,\ze_ecnt_reg[4]_i_1_n_5 ,\ze_ecnt_reg[4]_i_1_n_6 ,\ze_ecnt_reg[4]_i_1_n_7 }),
        .S(ze_ecnt_reg[7:4]));
  FDRE \ze_ecnt_reg[5] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[4]_i_1_n_6 ),
        .Q(ze_ecnt_reg[5]),
        .R(clear));
  FDRE \ze_ecnt_reg[6] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[4]_i_1_n_5 ),
        .Q(ze_ecnt_reg[6]),
        .R(clear));
  FDRE \ze_ecnt_reg[7] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[4]_i_1_n_4 ),
        .Q(ze_ecnt_reg[7]),
        .R(clear));
  FDRE \ze_ecnt_reg[8] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[8]_i_1_n_7 ),
        .Q(ze_ecnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ecnt_reg[8]_i_1 
       (.CI(\ze_ecnt_reg[4]_i_1_n_0 ),
        .CO({\ze_ecnt_reg[8]_i_1_n_0 ,\ze_ecnt_reg[8]_i_1_n_1 ,\ze_ecnt_reg[8]_i_1_n_2 ,\ze_ecnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_ecnt_reg[8]_i_1_n_4 ,\ze_ecnt_reg[8]_i_1_n_5 ,\ze_ecnt_reg[8]_i_1_n_6 ,\ze_ecnt_reg[8]_i_1_n_7 }),
        .S(ze_ecnt_reg[11:8]));
  FDRE \ze_ecnt_reg[9] 
       (.C(aclk),
        .CE(ze_csum_err),
        .D(\ze_ecnt_reg[8]_i_1_n_6 ),
        .Q(ze_ecnt_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \ze_fcnt[0]_i_2 
       (.I0(ze_fcnt_reg[0]),
        .O(\ze_fcnt[0]_i_2_n_0 ));
  FDRE \ze_fcnt_reg[0] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[0]_i_1_n_7 ),
        .Q(ze_fcnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_fcnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ze_fcnt_reg[0]_i_1_n_0 ,\ze_fcnt_reg[0]_i_1_n_1 ,\ze_fcnt_reg[0]_i_1_n_2 ,\ze_fcnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ze_fcnt_reg[0]_i_1_n_4 ,\ze_fcnt_reg[0]_i_1_n_5 ,\ze_fcnt_reg[0]_i_1_n_6 ,\ze_fcnt_reg[0]_i_1_n_7 }),
        .S({ze_fcnt_reg[3:1],\ze_fcnt[0]_i_2_n_0 }));
  FDRE \ze_fcnt_reg[10] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[8]_i_1_n_5 ),
        .Q(ze_fcnt_reg[10]),
        .R(clear));
  FDRE \ze_fcnt_reg[11] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[8]_i_1_n_4 ),
        .Q(ze_fcnt_reg[11]),
        .R(clear));
  FDRE \ze_fcnt_reg[12] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[12]_i_1_n_7 ),
        .Q(ze_fcnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_fcnt_reg[12]_i_1 
       (.CI(\ze_fcnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_ze_fcnt_reg[12]_i_1_CO_UNCONNECTED [3],\ze_fcnt_reg[12]_i_1_n_1 ,\ze_fcnt_reg[12]_i_1_n_2 ,\ze_fcnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_fcnt_reg[12]_i_1_n_4 ,\ze_fcnt_reg[12]_i_1_n_5 ,\ze_fcnt_reg[12]_i_1_n_6 ,\ze_fcnt_reg[12]_i_1_n_7 }),
        .S(ze_fcnt_reg[15:12]));
  FDRE \ze_fcnt_reg[13] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[12]_i_1_n_6 ),
        .Q(ze_fcnt_reg[13]),
        .R(clear));
  FDRE \ze_fcnt_reg[14] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[12]_i_1_n_5 ),
        .Q(ze_fcnt_reg[14]),
        .R(clear));
  FDRE \ze_fcnt_reg[15] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[12]_i_1_n_4 ),
        .Q(ze_fcnt_reg[15]),
        .R(clear));
  FDRE \ze_fcnt_reg[1] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[0]_i_1_n_6 ),
        .Q(ze_fcnt_reg[1]),
        .R(clear));
  FDRE \ze_fcnt_reg[2] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[0]_i_1_n_5 ),
        .Q(ze_fcnt_reg[2]),
        .R(clear));
  FDRE \ze_fcnt_reg[3] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[0]_i_1_n_4 ),
        .Q(ze_fcnt_reg[3]),
        .R(clear));
  FDRE \ze_fcnt_reg[4] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[4]_i_1_n_7 ),
        .Q(ze_fcnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_fcnt_reg[4]_i_1 
       (.CI(\ze_fcnt_reg[0]_i_1_n_0 ),
        .CO({\ze_fcnt_reg[4]_i_1_n_0 ,\ze_fcnt_reg[4]_i_1_n_1 ,\ze_fcnt_reg[4]_i_1_n_2 ,\ze_fcnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_fcnt_reg[4]_i_1_n_4 ,\ze_fcnt_reg[4]_i_1_n_5 ,\ze_fcnt_reg[4]_i_1_n_6 ,\ze_fcnt_reg[4]_i_1_n_7 }),
        .S(ze_fcnt_reg[7:4]));
  FDRE \ze_fcnt_reg[5] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[4]_i_1_n_6 ),
        .Q(ze_fcnt_reg[5]),
        .R(clear));
  FDRE \ze_fcnt_reg[6] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[4]_i_1_n_5 ),
        .Q(ze_fcnt_reg[6]),
        .R(clear));
  FDRE \ze_fcnt_reg[7] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[4]_i_1_n_4 ),
        .Q(ze_fcnt_reg[7]),
        .R(clear));
  FDRE \ze_fcnt_reg[8] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[8]_i_1_n_7 ),
        .Q(ze_fcnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_fcnt_reg[8]_i_1 
       (.CI(\ze_fcnt_reg[4]_i_1_n_0 ),
        .CO({\ze_fcnt_reg[8]_i_1_n_0 ,\ze_fcnt_reg[8]_i_1_n_1 ,\ze_fcnt_reg[8]_i_1_n_2 ,\ze_fcnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_fcnt_reg[8]_i_1_n_4 ,\ze_fcnt_reg[8]_i_1_n_5 ,\ze_fcnt_reg[8]_i_1_n_6 ,\ze_fcnt_reg[8]_i_1_n_7 }),
        .S(ze_fcnt_reg[11:8]));
  FDRE \ze_fcnt_reg[9] 
       (.C(aclk),
        .CE(ze_frame_valid),
        .D(\ze_fcnt_reg[8]_i_1_n_6 ),
        .Q(ze_fcnt_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \ze_ucnt[0]_i_2 
       (.I0(ze_ucnt_reg[0]),
        .O(\ze_ucnt[0]_i_2_n_0 ));
  FDRE \ze_ucnt_reg[0] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[0]_i_1_n_7 ),
        .Q(ze_ucnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ucnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ze_ucnt_reg[0]_i_1_n_0 ,\ze_ucnt_reg[0]_i_1_n_1 ,\ze_ucnt_reg[0]_i_1_n_2 ,\ze_ucnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ze_ucnt_reg[0]_i_1_n_4 ,\ze_ucnt_reg[0]_i_1_n_5 ,\ze_ucnt_reg[0]_i_1_n_6 ,\ze_ucnt_reg[0]_i_1_n_7 }),
        .S({ze_ucnt_reg[3:1],\ze_ucnt[0]_i_2_n_0 }));
  FDRE \ze_ucnt_reg[10] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[8]_i_1_n_5 ),
        .Q(ze_ucnt_reg[10]),
        .R(clear));
  FDRE \ze_ucnt_reg[11] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[8]_i_1_n_4 ),
        .Q(ze_ucnt_reg[11]),
        .R(clear));
  FDRE \ze_ucnt_reg[12] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[12]_i_1_n_7 ),
        .Q(ze_ucnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ucnt_reg[12]_i_1 
       (.CI(\ze_ucnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_ze_ucnt_reg[12]_i_1_CO_UNCONNECTED [3],\ze_ucnt_reg[12]_i_1_n_1 ,\ze_ucnt_reg[12]_i_1_n_2 ,\ze_ucnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_ucnt_reg[12]_i_1_n_4 ,\ze_ucnt_reg[12]_i_1_n_5 ,\ze_ucnt_reg[12]_i_1_n_6 ,\ze_ucnt_reg[12]_i_1_n_7 }),
        .S(ze_ucnt_reg[15:12]));
  FDRE \ze_ucnt_reg[13] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[12]_i_1_n_6 ),
        .Q(ze_ucnt_reg[13]),
        .R(clear));
  FDRE \ze_ucnt_reg[14] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[12]_i_1_n_5 ),
        .Q(ze_ucnt_reg[14]),
        .R(clear));
  FDRE \ze_ucnt_reg[15] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[12]_i_1_n_4 ),
        .Q(ze_ucnt_reg[15]),
        .R(clear));
  FDRE \ze_ucnt_reg[1] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[0]_i_1_n_6 ),
        .Q(ze_ucnt_reg[1]),
        .R(clear));
  FDRE \ze_ucnt_reg[2] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[0]_i_1_n_5 ),
        .Q(ze_ucnt_reg[2]),
        .R(clear));
  FDRE \ze_ucnt_reg[3] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[0]_i_1_n_4 ),
        .Q(ze_ucnt_reg[3]),
        .R(clear));
  FDRE \ze_ucnt_reg[4] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[4]_i_1_n_7 ),
        .Q(ze_ucnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ucnt_reg[4]_i_1 
       (.CI(\ze_ucnt_reg[0]_i_1_n_0 ),
        .CO({\ze_ucnt_reg[4]_i_1_n_0 ,\ze_ucnt_reg[4]_i_1_n_1 ,\ze_ucnt_reg[4]_i_1_n_2 ,\ze_ucnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_ucnt_reg[4]_i_1_n_4 ,\ze_ucnt_reg[4]_i_1_n_5 ,\ze_ucnt_reg[4]_i_1_n_6 ,\ze_ucnt_reg[4]_i_1_n_7 }),
        .S(ze_ucnt_reg[7:4]));
  FDRE \ze_ucnt_reg[5] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[4]_i_1_n_6 ),
        .Q(ze_ucnt_reg[5]),
        .R(clear));
  FDRE \ze_ucnt_reg[6] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[4]_i_1_n_5 ),
        .Q(ze_ucnt_reg[6]),
        .R(clear));
  FDRE \ze_ucnt_reg[7] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[4]_i_1_n_4 ),
        .Q(ze_ucnt_reg[7]),
        .R(clear));
  FDRE \ze_ucnt_reg[8] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[8]_i_1_n_7 ),
        .Q(ze_ucnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ze_ucnt_reg[8]_i_1 
       (.CI(\ze_ucnt_reg[4]_i_1_n_0 ),
        .CO({\ze_ucnt_reg[8]_i_1_n_0 ,\ze_ucnt_reg[8]_i_1_n_1 ,\ze_ucnt_reg[8]_i_1_n_2 ,\ze_ucnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ze_ucnt_reg[8]_i_1_n_4 ,\ze_ucnt_reg[8]_i_1_n_5 ,\ze_ucnt_reg[8]_i_1_n_6 ,\ze_ucnt_reg[8]_i_1_n_7 }),
        .S(ze_ucnt_reg[11:8]));
  FDRE \ze_ucnt_reg[9] 
       (.C(aclk),
        .CE(ze_uart_frame_err),
        .D(\ze_ucnt_reg[8]_i_1_n_6 ),
        .Q(ze_ucnt_reg[9]),
        .R(clear));
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
