# ============================================================
# repoint_rtl.tcl - RTL 참조를 FPGA_practice -> PL 레포 내부로 이전
#   목적: 레포 하나만 클론하면 빌드 재현 가능 (절대경로 의존 제거)
#   내용이 바이트 동일하므로 모듈 포트 변화 없음 -> module ref 캐시 안전
# 실행: vivado -mode batch -source repoint_rtl.tcl
# ============================================================
set REPO "C:/Users/user/Desktop/project/BARN_AI_FPGA_PL"
set PROJ "$REPO/BARN_AI/BARN AI.xpr"
set NEW  "$REPO/rtl"

open_project $PROJ

set mods {axil_regfile.v axis_demosaic.v axis_gamma.v axis_gaussian.v
          axis_tpg.v axis_vid_mux.v axis_whitebalance.v}

puts "== BEFORE =="
foreach m $mods {
    set f [get_files -quiet $m]
    if {$f ne ""} { puts "  $m -> $f" }
}

# 옛 참조 제거 후 새 위치로 추가 (내용 동일 = 포트 동일)
foreach m $mods {
    set f [get_files -quiet $m]
    if {$f ne ""} { remove_files $f }
    add_files -norecurse "$NEW/$m"
}
update_compile_order -fileset sources_1

puts "== AFTER =="
foreach m $mods {
    puts "  $m -> [get_files -quiet $m]"
}

# gamma LUT 경로도 레포 내부로
open_bd_design [get_files image_block.bd]
set_property CONFIG.LUT_FILE "$NEW/gamma_lut.mem" [get_bd_cells axis_gamma_0]
puts "  LUT_FILE -> [get_property CONFIG.LUT_FILE [get_bd_cells axis_gamma_0]]"

# 포트가 그대로인지 = BD가 깨지지 않았는지 확인
if {[get_bd_pins -quiet axil_regfile_0/mux_sel] eq ""} {
    error "ABORT: regfile mux_sel 사라짐 - module ref 깨짐"
}
validate_bd_design
save_bd_design
puts "== REPOINT DONE =="
close_project
