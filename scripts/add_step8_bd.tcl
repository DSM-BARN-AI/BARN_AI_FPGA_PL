# ============================================================
# add_step8_bd.tcl - RGB ISP 완성: gaussian+WB를 s1 경로에 삽입
#   기존: TPG-B->conv->demosaic-> [mux/s1]
#   신규: TPG-B->conv->demosaic-> gaussian -> wb -> [mux/s1]
#   신규 블록이라 module ref 캐시 함정 없음 (포트 추가 아님).
# 실행: vivado -mode batch -source add_step8_bd.tcl
# ============================================================
set ROOT "C:/Users/user/Desktop/project"
set PROJ "$ROOT/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"
set RTL  "$ROOT/FPGA_practice/rtl"

open_project $PROJ
foreach f {axis_gaussian.v axis_whitebalance.v} {
    if {[get_files -quiet $f] eq ""} { add_files -norecurse "$RTL/$f" }
}
update_compile_order -fileset sources_1

open_bd_design [get_files image_block.bd]

# --- 새 블록 생성 ---
create_bd_cell -type module -reference axis_gaussian     axis_gaussian_0
set_property -dict [list CONFIG.H_ACTIVE {64} CONFIG.V_ACTIVE {48}] [get_bd_cells axis_gaussian_0]
create_bd_cell -type module -reference axis_whitebalance  axis_wb_0

# --- 클럭/리셋 ---
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
    [get_bd_pins axis_gaussian_0/aclk] [get_bd_pins axis_wb_0/aclk]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] \
    [get_bd_pins axis_gaussian_0/aresetn] [get_bd_pins axis_wb_0/aresetn]

# --- 기존 demosaic -> mux/s1 직결 끊기 ---
delete_bd_objs [get_bd_intf_nets -of_objects [get_bd_intf_pins axis_demosaic_0/m_axis]]

# --- 재연결: demosaic -> gaussian -> wb -> mux/s1 ---
connect_bd_intf_net [get_bd_intf_pins axis_demosaic_0/m_axis] [get_bd_intf_pins axis_gaussian_0/s_axis]
connect_bd_intf_net [get_bd_intf_pins axis_gaussian_0/m_axis] [get_bd_intf_pins axis_wb_0/s_axis]
connect_bd_intf_net [get_bd_intf_pins axis_wb_0/m_axis]       [get_bd_intf_pins axis_vid_mux_0/s1_axis]

regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files image_block.bd] -top -import
write_bd_tcl -force "$ROOT/BARN_AI_FPGA_PL/scripts/bd_after_step8.tcl"
puts "== STEP8 BD DONE =="
close_project
