# ============================================================
# sensors.xdc - 센서 UART 수신 핀 (Zybo Z7-20)
#
# ⚠️ 핀 배정은 Digilent **Zybo Z7-20 master XDC**로 반드시 대조할 것.
#    아래는 Pmod JE(표준 Pmod, 단일종단 3.3V) 기준이다.
#      JE1 = V12,  JE2 = W16,  JE3 = J15,  JE4 = H15
#      JE7 = V13,  JE8 = U17,  JE9 = T17,  JE10 = Y17
#
# ⚠️ 전압: Pmod JE는 **3.3V**다. 센서 TX가 5V TTL이면 레벨 시프터(또는
#    분압)를 반드시 넣을 것 — 5V를 직접 물리면 FPGA 핀이 손상된다.
#      PMS7003 : TX 3.3V  -> 직결 가능
#      ZE03    : 변종에 따라 다름 -> 데이터시트 확인 필수
#
# 두 신호 모두 **입력 전용**(FPGA는 수신만). 센서로 보내는 TX는 현재 없음.
# ============================================================

# ZE03 (가스) UART TX -> FPGA rx   : Pmod JE1
set_property -dict { PACKAGE_PIN V12  IOSTANDARD LVCMOS33 } [get_ports { ze03_rx }]

# PMS7003 (미세먼지) UART TX -> FPGA rx : Pmod JE2
set_property -dict { PACKAGE_PIN W16  IOSTANDARD LVCMOS33 } [get_ports { pms_rx }]

# 비동기 입력 — 내부에서 2FF 동기화하므로 타이밍 분석 대상에서 제외
set_false_path -from [get_ports ze03_rx]
set_false_path -from [get_ports pms_rx]
