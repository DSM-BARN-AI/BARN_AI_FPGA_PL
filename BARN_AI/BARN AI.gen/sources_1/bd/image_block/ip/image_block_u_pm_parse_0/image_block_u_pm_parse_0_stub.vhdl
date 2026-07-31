-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Jul 29 22:12:37 2026
-- Host        : LAPTOP-MPD8ATBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN
--               AI.gen/sources_1/bd/image_block/ip/image_block_u_pm_parse_0/image_block_u_pm_parse_0_stub.vhdl}
-- Design      : image_block_u_pm_parse_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_block_u_pm_parse_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_valid : in STD_LOGIC;
    pm1_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pm2_5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pm10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_valid : out STD_LOGIC;
    csum_err : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of image_block_u_pm_parse_0 : entity is "image_block_u_pm_parse_0,pms7003_parser,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of image_block_u_pm_parse_0 : entity is "image_block_u_pm_parse_0,pms7003_parser,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pms7003_parser,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of image_block_u_pm_parse_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of image_block_u_pm_parse_0 : entity is "module_ref";
end image_block_u_pm_parse_0;

architecture stub of image_block_u_pm_parse_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_data[7:0],s_valid,pm1_0[15:0],pm2_5[15:0],pm10[15:0],frame_valid,csum_err";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "pms7003_parser,Vivado 2025.2";
begin
end;
