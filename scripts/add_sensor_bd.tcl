# ============================================================
# add_sensor_bd.tcl - 센서 파이프라인 BD 통합
#   ze03_rx  -> uart_rx -> ze03_parser    ─┐
#   pms_rx   -> uart_rx -> pms7003_parser ─┴─> axil_sensor_regs -> PS GP0
#   + PS I2C0 활성화 (MIO 10-11, Pmod JF) — BSP팀 요청
# 실행: vivado -mode batch -source add_sensor_bd.tcl
# ============================================================
set ROOT "C:/Users/user/Desktop/project"
set REPO "$ROOT/BARN_AI_FPGA_PL"
set PROJ "$REPO/BARN_AI/BARN AI.xpr"
set RTL  "$REPO/rtl"

open_project $PROJ

# --- 1) 소스/제약 추가 ---
foreach f {uart_rx.v ze03_parser.v pms7003_parser.v axil_sensor_regs.v} {
    if {[get_files -quiet $f] eq ""} { add_files -norecurse "$RTL/$f" }
}
if {[get_files -quiet sensors.xdc] eq ""} {
    add_files -fileset constrs_1 -norecurse "$REPO/constraints/sensors.xdc"
}
update_compile_order -fileset sources_1

open_bd_design [get_files image_block.bd]

# --- 2) 셀 생성 (BAUD/OVERSAMPLE는 RTL 기본값 9600/16 사용) ---
create_bd_cell -type module -reference uart_rx          u_ze_uart
create_bd_cell -type module -reference uart_rx          u_pm_uart
create_bd_cell -type module -reference ze03_parser      u_ze_parse
create_bd_cell -type module -reference pms7003_parser   u_pm_parse
create_bd_cell -type module -reference axil_sensor_regs u_sensor_regs
set_property CONFIG.ADDR_WIDTH 12 [get_bd_cells u_sensor_regs]

# --- 3) 클럭/리셋 ---
set clk_pins [get_bd_pins processing_system7_0/FCLK_CLK0]
set rst_pins [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
foreach c {u_ze_uart u_pm_uart u_ze_parse u_pm_parse u_sensor_regs} {
    lappend clk_pins [get_bd_pins $c/aclk]
    lappend rst_pins [get_bd_pins $c/aresetn]
}
connect_bd_net $clk_pins
connect_bd_net $rst_pins

# --- 4) uart_rx -> parser ---
connect_bd_net [get_bd_pins u_ze_uart/m_data]  [get_bd_pins u_ze_parse/s_data]
connect_bd_net [get_bd_pins u_ze_uart/m_valid] [get_bd_pins u_ze_parse/s_valid]
connect_bd_net [get_bd_pins u_pm_uart/m_data]  [get_bd_pins u_pm_parse/s_data]
connect_bd_net [get_bd_pins u_pm_uart/m_valid] [get_bd_pins u_pm_parse/s_valid]

# --- 5) parser + uart 에러 -> 레지스터 파일 ---
connect_bd_net [get_bd_pins u_ze_parse/conc]        [get_bd_pins u_sensor_regs/ze_conc]
connect_bd_net [get_bd_pins u_ze_parse/range]       [get_bd_pins u_sensor_regs/ze_range]
connect_bd_net [get_bd_pins u_ze_parse/gas_type]    [get_bd_pins u_sensor_regs/ze_gas_type]
connect_bd_net [get_bd_pins u_ze_parse/unit]        [get_bd_pins u_sensor_regs/ze_unit]
connect_bd_net [get_bd_pins u_ze_parse/decimals]    [get_bd_pins u_sensor_regs/ze_decimals]
connect_bd_net [get_bd_pins u_ze_parse/frame_valid] [get_bd_pins u_sensor_regs/ze_frame_valid]
connect_bd_net [get_bd_pins u_ze_parse/csum_err]    [get_bd_pins u_sensor_regs/ze_csum_err]
connect_bd_net [get_bd_pins u_ze_uart/frame_err]    [get_bd_pins u_sensor_regs/ze_uart_frame_err]

connect_bd_net [get_bd_pins u_pm_parse/pm1_0]       [get_bd_pins u_sensor_regs/pm_pm1_0]
connect_bd_net [get_bd_pins u_pm_parse/pm2_5]       [get_bd_pins u_sensor_regs/pm_pm2_5]
connect_bd_net [get_bd_pins u_pm_parse/pm10]        [get_bd_pins u_sensor_regs/pm_pm10]
connect_bd_net [get_bd_pins u_pm_parse/frame_valid] [get_bd_pins u_sensor_regs/pm_frame_valid]
connect_bd_net [get_bd_pins u_pm_parse/csum_err]    [get_bd_pins u_sensor_regs/pm_csum_err]
connect_bd_net [get_bd_pins u_pm_uart/frame_err]    [get_bd_pins u_sensor_regs/pm_uart_frame_err]

# --- 6) AXI: SmartConnect 마스터 2 -> 3, M02 -> 센서 레지스터 ---
set_property CONFIG.NUM_MI 3 [get_bd_cells axi_smc]
set SAXIL [get_bd_intf_pins -of_objects [get_bd_cells u_sensor_regs] -filter {MODE == Slave}]
puts "DIAG sensor slave intf = $SAXIL"
connect_bd_intf_net [get_bd_intf_pins axi_smc/M02_AXI] $SAXIL

# --- 7) 외부 rx 핀 ---
make_bd_pins_external -name ze03_rx [get_bd_pins u_ze_uart/rx]
make_bd_pins_external -name pms_rx  [get_bd_pins u_pm_uart/rx]

# --- 8) PS I2C0 (BSP팀 요청) — MIO 10-11 = Pmod JF ---
#     SHT40(0x44) / SCD41(0x62) / MLX90640(0x33)을 한 버스에 매단다.
#     리눅스는 cdns,i2c-r1p14 표준 드라이버가 자동 인식 (오프셋 정의 불필요).
set_property -dict [list \
    CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_I2C0_I2C0_IO {MIO 10 .. 11} \
] [get_bd_cells processing_system7_0]

# --- 9) 주소 할당 ---
assign_bd_address -force -offset 0x43C10000 -range 4K \
    -target_address_space [get_bd_addr_spaces processing_system7_0/Data] \
    [get_bd_addr_segs -of_objects [get_bd_cells u_sensor_regs]]

# --- 10) 검증 + 저장 ---
regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files image_block.bd] -top -import

puts "== ADDRESS MAP =="
foreach seg [get_bd_addr_segs processing_system7_0/Data/*] {
    puts [format "  %-32s 0x%08X %s" [get_property NAME $seg] \
        [get_property OFFSET $seg] [get_property RANGE $seg]]
}
puts "== I2C0 = [get_property CONFIG.PCW_I2C0_PERIPHERAL_ENABLE [get_bd_cells processing_system7_0]] on [get_property CONFIG.PCW_I2C0_I2C0_IO [get_bd_cells processing_system7_0]] =="
write_bd_tcl -force "$REPO/scripts/bd_after_sensor.tcl"
puts "== SENSOR BD DONE =="
close_project
