# ============================================================
# rebuild_bd_step5.tcl - BD를 덤프에서 재생성 후 5단계 통합
#   image_block.bd(JSON)에 박힌 v1 regfile 포트가 근본 문제.
#   BD를 통째로 지우고 bd_after_regfile.tcl(3단계 덤프)로 재생성하면
#   create_bd_cell이 소스를 fresh 파싱 -> v2 mux_sel 포트 반영.
# 사전: srcs/gen 아래 bd/image_block 디렉토리는 파일시스템에서 삭제됨.
# 실행: vivado -mode batch -source rebuild_bd_step5.tcl
# ============================================================
set ROOT "C:/Users/user/Desktop/project"
set PROJ "$ROOT/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"
set RTL  "$ROOT/FPGA_practice/rtl"
set DUMP3 "$ROOT/BARN_AI_FPGA_PL/scripts/bd_after_regfile.tcl"
set DUMP5 "$ROOT/BARN_AI_FPGA_PL/scripts/bd_after_step5.tcl"

open_project $PROJ

# --- 소스: 5단계 RTL 추가 (regfile/tpg는 이미 프로젝트, v2 파일) ---
foreach f {axis_demosaic.v axis_gamma.v axis_vid_mux.v} {
    if {[get_files -quiet $f] eq ""} { add_files -norecurse "$RTL/$f" }
}
update_compile_order -fileset sources_1

# --- 기존 BD 등록 해제 (파일은 이미 fs에서 삭제) + wrapper 해제 ---
set oldbd [get_files -quiet image_block.bd]
if {$oldbd ne ""} { remove_files $oldbd }

# --- 3단계 BD를 덤프로 재생성 (module ref는 소스 fresh 파싱 => v2) ---
source $DUMP3
current_bd_design [get_bd_designs image_block]
puts "DIAG regfile pins = [lsort [get_bd_pins -of_objects [get_bd_cells axil_regfile_0]]]"

# --- 5단계 블록 추가 ---
delete_bd_objs [get_bd_intf_nets -of_objects [get_bd_intf_pins axis_tpg_0/m_axis]]

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

# 클럭/리셋 (새 블록만)
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

# 제어 배선 (신규만)
connect_bd_net [get_bd_pins axil_regfile_0/mux_sel]    [get_bd_pins axis_vid_mux_0/sel]
connect_bd_net [get_bd_pins axil_regfile_0/tpg_enable] [get_bd_pins axis_tpg_B/enable]
connect_bd_net [get_bd_pins xlconst_pat2/dout]         [get_bd_pins axis_tpg_B/pattern_sel]

# 데이터패스
connect_bd_intf_net [get_bd_intf_pins axis_tpg_B/m_axis]      [get_bd_intf_pins conv_b/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins conv_b/M_AXIS]          [get_bd_intf_pins axis_demosaic_0/s_axis]
connect_bd_intf_net [get_bd_intf_pins axis_tpg_0/m_axis]      [get_bd_intf_pins axis_vid_mux_0/s0_axis]
connect_bd_intf_net [get_bd_intf_pins axis_demosaic_0/m_axis] [get_bd_intf_pins axis_vid_mux_0/s1_axis]
connect_bd_intf_net [get_bd_intf_pins axis_vid_mux_0/m_axis]  [get_bd_intf_pins axis_gamma_0/s_axis]
connect_bd_intf_net [get_bd_intf_pins axis_gamma_0/m_axis]    [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM]

# --- 검증 + 저장 + wrapper 재생성 ---
regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files image_block.bd] -top -import
write_bd_tcl -force $DUMP5

puts "== ADDRESS MAP =="
foreach seg [get_bd_addr_segs processing_system7_0/Data/*] {
    puts [format "  %-32s 0x%08X %s" [get_property NAME $seg] \
        [get_property OFFSET $seg] [get_property RANGE $seg]]
}
puts "== STEP5 REBUILD DONE =="
close_project
