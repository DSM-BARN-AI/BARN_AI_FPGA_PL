set ROOT "C:/Users/user/Desktop/project"
open_project "$ROOT/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"
set RTL "$ROOT/FPGA_practice/rtl"
foreach f {axis_demosaic.v axis_gamma.v axis_vid_mux.v} {
    if {[get_files -quiet $f] eq ""} { add_files -norecurse "$RTL/$f" }
}
update_compile_order -fileset sources_1
open_bd_design [get_files image_block.bd]

set fh [open "$ROOT/BARN_AI_FPGA_PL/scripts/probe_out.txt" w]
foreach {c ref} {probe_rf axil_regfile probe_mux axis_vid_mux probe_dem axis_demosaic probe_gam axis_gamma probe_tpg axis_tpg} {
    create_bd_cell -type module -reference $ref $c
    puts $fh "=== $c ($ref) PINS ==="
    foreach p [get_bd_pins -of_objects [get_bd_cells $c]] { puts $fh "  $p" }
    foreach ip [get_bd_intf_pins -of_objects [get_bd_cells $c]] { puts $fh "  INTF $ip" }
}
close $fh
close_project
