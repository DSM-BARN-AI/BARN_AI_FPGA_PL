// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Jul 29 22:12:37 2026
// Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
//               AI.gen/sources_1/bd/image_block/ip/image_block_u_ze_parse_0/image_block_u_ze_parse_0_stub.v}
// Design      : image_block_u_ze_parse_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "image_block_u_ze_parse_0,ze03_parser,{}" *) (* CORE_GENERATION_INFO = "image_block_u_ze_parse_0,ze03_parser,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ze03_parser,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ze03_parser,Vivado 2025.2" *) 
module image_block_u_ze_parse_0(aclk, aresetn, s_data, s_valid, conc, gas_type, unit, 
  decimals, range, frame_valid, csum_err)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_data[7:0],s_valid,conc[15:0],gas_type[7:0],unit[7:0],decimals[7:0],range[15:0],frame_valid,csum_err" */
/* synthesis syn_force_seq_prim="aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk /* synthesis syn_isclock = 1 */;
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
endmodule
