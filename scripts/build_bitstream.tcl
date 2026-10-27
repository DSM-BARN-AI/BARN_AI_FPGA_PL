# ============================================================
# build_bitstream.tcl - synth + impl + bitstream + XSA export
# 실행: vivado -mode batch -source build_bitstream.tcl
# ============================================================
set PROJ "C:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"
set XSA  "C:/Users/user/Desktop/project/BARN_AI_FPGA_PL/BARN_AI/image_block_wrapper.xsa"

open_project $PROJ

# 중단된 이전 빌드의 좀비 런 정리 (100% 아닌 synth 런 전부 리셋)
foreach r [get_runs -filter {IS_SYNTHESIS}] {
    if {[get_property PROGRESS $r] ne "100%"} {
        puts "RESET stale run: $r ([get_property STATUS $r])"
        reset_run $r
    }
}

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1

set status   [get_property STATUS   [get_runs impl_1]]
set progress [get_property PROGRESS [get_runs impl_1]]
puts "impl_1: $status ($progress)"
if {$progress ne "100%"} { error "BUILD FAILED: impl_1 = $status" }

# 타이밍 요약 (WNS 확인용)
open_run impl_1
set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]]
set whs [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -hold]]
puts "TIMING: WNS=${wns}ns WHS=${whs}ns (둘 다 양수여야 met)"

write_hw_platform -fixed -include_bit -force $XSA
puts "== XSA EXPORTED: $XSA =="
close_project
exit
