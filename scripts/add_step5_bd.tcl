# ============================================================
# add_step5_bd.tcl - 5단계 BD 통합 (GUI refresh로 regfile v2 반영 완료 후)
#   regfile은 이미 mux_sel 포트를 가진 v2. 5단계 블록만 얹는다.
# 실행: vivado -mode batch -source add_step5_bd.tcl
# ============================================================
set ROOT "C:/Users/user/Desktop/project"
set PROJ "$ROOT/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"
set RTL  "$ROOT/FPGA_practice/rtl"
set DUMP "$ROOT/BARN_AI_FPGA_PL/scripts/bd_after_step5.tcl"

open_project $PROJ

foreach f {axis_demosaic.v axis_gamma.v axis_vid_mux.v} {
    if {[get_files -quiet $f] eq ""} { add_files -norecurse "$RTL/$f" }
}
update_compile_order -fileset sources_1

open_bd_design [get_files image_block.bd]

# mux_sel 포트 확인 (없으면 즉시 중단해 헛빌드 방지)
if {[get_bd_pins -quiet axil_regfile_0/mux_sel] eq ""} {
    error "ABORT: regfile still v1 (no mux_sel) - GUI refresh not saved?"
}
puts "DIAG regfile mux_sel present - proceeding"

# --- 기존 tpg_A -> VDMA 직결 끊기 ---
delete_bd_objs [get_bd_intf_nets -of_objects [get_bd_intf_pins axis_tpg_0/m_axis]]

# --- 새 블록 생성 ---
create_bd_cell -type module -reference axis_tpg      axis_tpg_B
create_bd_cell -type module -reference axis_demosaic axis_demosaic_0
create_bd_cell -type module -reference axis_vid_mux  axis_vid_mux_0
create_bd_cell -type module -reference axis_gamma    axis_gamma_0
set_property -dict [list CONFIG.H_ACTIVE {64} CONFIG.V_ACTIVE {48}] [get_bd_cells axis_tpg_B]
set_property -dict [list CONFIG.H_ACTIVE {64} CONFIG.V_ACTIVE {48}] [get_bd_cells axis_demosaic_0]
set_property CONFIG.LUT_FILE "$RTL/gamma_lut.mem" [get_bd_cells axis_gamma_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconst_pat2
set_property -dict [list CONFIG.CONST_WIDTH {2} CONFIG.CONST_VAL {2}] [get_bd_cells xlconst_pat2]

create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 conv_b
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {3} CONFIG.M_TDATA_NUM_BYTES {1} \
    CONFIG.TDATA_REMAP {tdata[7:0]}] [get_bd_cells conv_b]

# --- 클럭/리셋 (새 블록만; conv_b는 조합이라 clk 핀 없으면 자동 스킵) ---
set clk_pins [get_bd_pins processing_system7_0/FCLK_CLK0]
set rst_pins [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
foreach c {axis_tpg_B axis_demosaic_0 axis_vid_mux_0 axis_gamma_0 conv_b} {
    set cp [get_bd_pins -quiet $c/aclk]
    set rp [get_bd_pins -quiet $c/aresetn]
    if {$cp ne ""} { lappend clk_pins $cp }
    if {$rp ne ""} { lappend rst_pins $rp }
}
connect_bd_net $clk_pins
connect_bd_net $rst_pins

# --- 제어 배선 ---
connect_bd_net [get_bd_pins axil_regfile_0/mux_sel]    [get_bd_pins axis_vid_mux_0/sel]
connect_bd_net [get_bd_pins axil_regfile_0/tpg_enable] [get_bd_pins axis_tpg_B/enable]
connect_bd_net [get_bd_pins xlconst_pat2/dout]         [get_bd_pins axis_tpg_B/pattern_sel]

# --- 데이터패스 ---
connect_bd_intf_net [get_bd_intf_pins axis_tpg_B/m_axis]      [get_bd_intf_pins conv_b/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins conv_b/M_AXIS]          [get_bd_intf_pins axis_demosaic_0/s_axis]
connect_bd_intf_net [get_bd_intf_pins axis_tpg_0/m_axis]      [get_bd_intf_pins axis_vid_mux_0/s0_axis]
connect_bd_intf_net [get_bd_intf_pins axis_demosaic_0/m_axis] [get_bd_intf_pins axis_vid_mux_0/s1_axis]
connect_bd_intf_net [get_bd_intf_pins axis_vid_mux_0/m_axis]  [get_bd_intf_pins axis_gamma_0/s_axis]
connect_bd_intf_net [get_bd_intf_pins axis_gamma_0/m_axis]    [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM]

# --- 검증 + 저장 + wrapper ---
regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files image_block.bd] -top -import

puts "== ADDRESS MAP =="
foreach seg [get_bd_addr_segs processing_system7_0/Data/*] {
    puts [format "  %-32s 0x%08X %s" [get_property NAME $seg] \
        [get_property OFFSET $seg] [get_property RANGE $seg]]
}
write_bd_tcl -force $DUMP
puts "== STEP5 BD DONE =="
close_project
