// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:axis_vid_mux:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module image_block_axis_vid_mux_0_0 (
  aclk,
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
  m_axis_tlast
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s0_axis:s1_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
input wire sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [23 : 0] s0_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *)
input wire s0_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *)
output wire s0_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TUSER" *)
input wire s0_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *)
input wire s0_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [23 : 0] s1_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TVALID" *)
input wire s1_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TREADY" *)
output wire s1_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TUSER" *)
input wire s1_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TLAST" *)
input wire s1_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [23 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
output wire m_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;

  axis_vid_mux inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .sel(sel),
    .s0_axis_tdata(s0_axis_tdata),
    .s0_axis_tvalid(s0_axis_tvalid),
    .s0_axis_tready(s0_axis_tready),
    .s0_axis_tuser(s0_axis_tuser),
    .s0_axis_tlast(s0_axis_tlast),
    .s1_axis_tdata(s1_axis_tdata),
    .s1_axis_tvalid(s1_axis_tvalid),
    .s1_axis_tready(s1_axis_tready),
    .s1_axis_tuser(s1_axis_tuser),
    .s1_axis_tlast(s1_axis_tlast),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tuser(m_axis_tuser),
    .m_axis_tlast(m_axis_tlast)
  );
endmodule
