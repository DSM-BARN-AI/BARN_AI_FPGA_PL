# ============================================================
# add_regfile_bd.tcl - 3단계 BD 통합
#   axil_regfile을 image_block BD에 추가하고,
#   enable/pattern_sel 하드코딩(xlconstant)을 PS 제어로 교체.
# 실행: vivado -mode batch -source add_regfile_bd.tcl
# GUI 대응: 각 절이 GUI에서 하던 클릭 한 번씩과 1:1 대응
# ============================================================

set PROJ "C:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"
set RTL  "C:/Users/user/Desktop/project/FPGA_practice/rtl/axil_regfile.v"
set DUMP "C:/Users/user/Desktop/project/BARN_AI_FPGA_PL/scripts/bd_after_regfile.tcl"

open_project $PROJ

# --- 1) RTL 소스 추가 (copy 없이 라이브 참조 - axis_tpg와 동일 방식) ---
if {[get_files -quiet axil_regfile.v] eq ""} {
    add_files -norecurse $RTL
}
update_compile_order -fileset sources_1

# --- 2) BD 열기 ---
open_bd_design [get_files image_block.bd]

# --- 3) 모듈 레퍼런스 추가 (GUI: Add Module) ---
#   s_axil_* 네이밍 덕에 AXI4-Lite 슬레이브 인터페이스가 자동 추론됨
create_bd_cell -type module -reference axil_regfile axil_regfile_0
#   주소블록을 4K로 확보 (ADDR_WIDTH 8->12).
#   RTL 디코드는 addr[7:2] 그대로라 256B 주기로 앨리어싱되지만,
#   단순 레지스터 IP의 표준 관례 (4K = Zynq 주소편집기 최소 단위).
set_property CONFIG.ADDR_WIDTH 12 [get_bd_cells axil_regfile_0]

# --- 4) 하드코딩 상수 철거 (연결된 net도 함께 삭제됨) ---
delete_bd_objs [get_bd_cells xlconstant_0] [get_bd_cells xlconstant_1]

# --- 5) 클럭/리셋: 전 블록 단일 도메인 (FCLK_CLK0 100MHz) ---
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0]    [get_bd_pins axil_regfile_0/aclk]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins axil_regfile_0/aresetn]

# --- 6) 제어 배선: regfile -> TPG (xlconstant가 하던 일을 인계) ---
connect_bd_net [get_bd_pins axil_regfile_0/tpg_enable]  [get_bd_pins axis_tpg_0/enable]
connect_bd_net [get_bd_pins axil_regfile_0/pattern_sel] [get_bd_pins axis_tpg_0/pattern_sel]

# --- 7) status_in: 지금은 0 고정 (추후 프레임카운터 연결 예정) ---
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconst_status
set_property -dict [list CONFIG.CONST_WIDTH 32 CONFIG.CONST_VAL 0] [get_bd_cells xlconst_status]
connect_bd_net [get_bd_pins xlconst_status/dout] [get_bd_pins axil_regfile_0/status_in]

# --- 8) AXI 연결: SmartConnect 마스터 포트 1->2 확장, M01 -> regfile ---
#   PS GP0 --(axi_smc)--> M00: VDMA lite / M01: regfile
set_property CONFIG.NUM_MI 2 [get_bd_cells axi_smc]
set SAXIL [get_bd_intf_pins -of_objects [get_bd_cells axil_regfile_0] -filter {MODE == Slave}]
puts "INFO: regfile slave intf = $SAXIL"
connect_bd_intf_net [get_bd_intf_pins axi_smc/M01_AXI] $SAXIL

# --- 9) 주소 할당: 0x43C0_0000 / 4K (VDMA lite 0x4300_0000과 별개) ---
assign_bd_address -force -offset 0x43C00000 -range 4K \
    -target_address_space [get_bd_addr_spaces processing_system7_0/Data] \
    [get_bd_addr_segs -of_objects [get_bd_cells axil_regfile_0]]

# --- 10) 검증 + 저장 + 기록 덤프 ---
validate_bd_design
save_bd_design
write_bd_tcl -force $DUMP

puts "== ADDRESS MAP =="
foreach seg [get_bd_addr_segs processing_system7_0/Data/*] {
    puts [format "  %-40s offset=0x%08X range=%s" \
        [get_property NAME $seg] [get_property OFFSET $seg] [get_property RANGE $seg]]
}
puts "== BD INTEGRATION DONE =="
close_project
exit
