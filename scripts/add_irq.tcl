# ============================================================
# add_irq.tcl - VDMA S2MM 완료 인터럽트를 PS IRQ_F2P에 배선
#   BSP(PetaLinux) 팀 요청: 리눅스 xilinx_dma 드라이버는 IRQ 필수.
#   (베어메탈 main.c는 폴링이라 없어도 됐던 것)
# 실행: vivado -mode batch -source add_irq.tcl
# ============================================================
set ROOT "C:/Users/user/Desktop/project"
set PROJ "$ROOT/BARN_AI_FPGA_PL/BARN_AI/BARN AI.xpr"

open_project $PROJ
open_bd_design [get_files image_block.bd]

# VDMA 인터럽트 출력 핀 이름 확인
puts "DIAG vdma irq pins = [get_bd_pins -quiet axi_vdma_0/*introut*]"

# 1) PS Fabric 인터럽트 입력 1개 활성화
set_property -dict [list \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
] [get_bd_cells processing_system7_0]

# 2) s2mm_introut -> IRQ_F2P[0] (단일 인터럽트라 concat 불필요)
connect_bd_net [get_bd_pins axi_vdma_0/s2mm_introut] [get_bd_pins processing_system7_0/IRQ_F2P]

# 3) 검증 + 저장
validate_bd_design
save_bd_design

puts "IRQ WIRED ok. PCW_IRQ_F2P_INTR = [get_property CONFIG.PCW_IRQ_F2P_INTR [get_bd_cells processing_system7_0]]"
puts "introut net = [get_bd_nets -quiet -of_objects [get_bd_pins axi_vdma_0/s2mm_introut]]"
write_bd_tcl -force "$ROOT/BARN_AI_FPGA_PL/scripts/bd_after_irq.tcl"
puts "== IRQ DONE =="
close_project
