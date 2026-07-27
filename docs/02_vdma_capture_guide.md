# 02. TPG → AXI VDMA → DDR 캡처 (2단계)

- 작성일: 2026-07-09
- 목표: 1단계에서 검증한 `axis_tpg`를 실제 Zynq에서 돌려, VDMA가 DDR에 쓴 프레임이 골든 모델과 일치함을 확인
- 도구: Vivado 2025.2 (`C:\AMDDesignTools\2025.2`), Vitis 2025.2, Tera Term

## 0. 완료 기준 (DoD)

1. 블록 디자인 validate 통과, 비트스트림 생성
2. 베어메탈 앱 UART 출력: `buffer 0/1/2: OK (0 mismatches)`
3. UART 덤프 → `tpg_golden.py --compare` **COMPARE PASS** (진짜 완료 기준)

준비물: Zybo Z7-20 보드 + microUSB 케이블 (JTAG/UART 겸용, JP5=JTAG 위치).
보드가 아직 없으면 1~5절(비트스트림·앱 빌드)까지 진행하고 하드웨어 실행만 보류.

## 1. 보드 파일 설치 (최초 1회)

Vivado → **Tools → Vivado Store → Boards 탭** → "Zybo Z7-20" 검색 → Install.
(설치 후 New Project의 보드 목록에 Zybo Z7-20이 보여야 함. 안 보이면 Refresh)

## 2. 프로젝트 생성

1. New Project → 이름 `vdma_capture`, 위치는 `FPGA_practice/vivado/` 권장
2. RTL Project, "Do not specify sources at this time" 체크
3. **Boards 탭에서 Zybo Z7-20 선택** (파트 직접 선택 X — 보드 프리셋이 DDR 설정을 대신함)
4. 생성 후: Add Sources → Add or create design sources → `rtl/axis_tpg.v` 추가
   - ⚠️ "Copy sources into project" **체크 해제** (라이브 파일 참조 유지)

## 3. 블록 디자인 구성

Create Block Design (`design_1`) 후 아래 순서대로:

### 3.1 블록 추가·설정

| 순서 | 블록 | 설정 |
|---|---|---|
| 1 | ZYNQ7 Processing System | 추가 → **Run Block Automation** (보드 프리셋 적용) → 더블클릭: PS-PL Configuration → HP Slave AXI Interface → **S AXI HP0 체크**. Clock Configuration에서 FCLK_CLK0 = 100MHz 확인(기본) |
| 2 | `axis_tpg` | 다이어그램 우클릭 → **Add Module** → axis_tpg 선택. 더블클릭 → **H_ACTIVE=64, V_ACTIVE=48** (1차 검증은 시뮬과 동일 크기) |
| 3 | Constant (xlconstant) ×2 | ① Width=1, Val=1 → `enable`용 ② Width=2, Val=0 → `pattern_sel`용 (컬러바) |
| 4 | AXI Video Direct Memory Access | 더블클릭: **Enable Read Channel(MM2S) 체크 해제**. Write Channel: **Stream Data Width=24**, **Frame Buffers=3**, Line Buffer Depth=512(기본), Memory Map Data Width=64(기본) |

### 3.2 연결

1. **Run Connection Automation (All)** 을 먼저 실행 — S_AXI_LITE(GP0 경유), M_AXI_S2MM(HP0 경유), 클럭·리셋 인프라(SmartConnect, proc_sys_reset)가 자동 생성됨. 클럭 선택지는 전부 **FCLK_CLK0 (100MHz)** — 2단계는 단일 클럭 도메인 (CDC 없음)
2. 수동 연결:
   - `axis_tpg/m_axis` → `axi_vdma_0/S_AXIS_S2MM`
   - `axis_tpg/aclk` → FCLK_CLK0
   - `axis_tpg/aresetn` → `rst_ps7_..._100M/peripheral_aresetn[0:0]`
   - xlconstant들 → `enable`, `pattern_sel`
3. **Validate Design (F6)** — 에러 0이어야 함
4. Address Editor 탭 → 자동 할당 확인: VDMA lite (예: `0x43000000`), VDMA M_AXI_S2MM → PS DDR 전 구간 매핑

### 3.3 마무리

1. Sources에서 design_1 우클릭 → **Create HDL Wrapper** (Let Vivado manage)
2. **Generate Bitstream** (이 크기면 ~5-10분)
3. **File → Export → Export Hardware** → **Include bitstream** → `design_1_wrapper.xsa`

## 4. Vitis 베어메탈 앱

1. Vitis 2025.2 실행 → 워크스페이스 `FPGA_practice/vitis/`
2. **Platform Component** 생성 ← 방금 XSA 선택 (OS: standalone, CPU: ps7_cortexa9_0) → Build
3. **Application Component** 생성 (템플릿 Hello World) → `helloworld.c` 내용을 **`sw/vdma_capture/main.c`** 내용으로 교체 → Build
4. 빌드 에러 `XPAR_AXI_VDMA_0_BASEADDR` 미정의 시: 플랫폼의 `xparameters.h`에서 "VDMA"로 검색해 실제 매크로명으로 수정

## 5. 하드웨어 실행

1. Zybo 연결, 전원 ON. Tera Term → 시리얼 → **115200 8N1** → File → Log (로그 저장 시작, 예: `uart.log`)
2. Vitis Run (bitstream 프로그램 + 앱 실행)
3. 기대 출력:
   ```
   == BARN AI step2: TPG->VDMA->DDR capture ==
   VDMASR after run = 0x...
   buffer 0: OK (0 mismatches)
   buffer 1: OK (0 mismatches)
   buffer 2: OK (0 mismatches)
   ---FRAME-BEGIN---
   ffffff
   ... (3072줄)
   ---FRAME-END---
   ```

## 6. 골든 비교 (최종 검증)

```powershell
# 프로젝트 루트에서
python model\uart_to_hex.py uart.log frame.hex
python model\tpg_golden.py --width 64 --height 48 --pattern 0 --frames 1 --compare frame.hex
# → COMPARE PASS 가 나와야 2단계 완료
```

## 7. 메모리 구조 (main.c와 대응)

```
DDR 0x0200_0000 : 버퍼0   ┐ stride=256B × 48줄 = 12KB/프레임
    0x0200_3000 : 버퍼1   ├ 유효 데이터는 줄당 192B (64px × 3B)
    0x0200_6000 : 버퍼2   ┘ stride > hsize 를 일부러 사용 (스트라이드 개념 연습)
```

⚠️ **바이트 순서**: AXI는 little-endian — `tdata[7:0]`(B)이 **낮은 주소**에 먼저 기록됨.
즉 DDR에는 픽셀당 `[B][G][R]` 순서로 놓임. main.c의 재조립과 이후 GStreamer 설정(BGR 포맷 선언)에서 이걸 사용.

## 8. VDMA S2MM 레지스터 퀵맵 (PG020) — 나중에 Linux UIO에서도 그대로 씀

| 오프셋 | 이름 | 내용 |
|---|---|---|
| 0x30 | S2MM_VDMACR | bit0 RS(run/stop), bit1 Circular |
| 0x34 | S2MM_VDMASR | bit0 Halted, bit4/5/6 에러 |
| 0xA0 | S2MM_VSIZE | 라인 수 — **맨 마지막에 써야 전송 시작** |
| 0xA4 | S2MM_HSIZE | 줄당 유효 바이트 |
| 0xA8 | S2MM_FRMDLY_STRIDE | 줄 간격(바이트) |
| 0xAC/B0/B4 | S2MM_START_ADDRESS 1~3 | 프레임버퍼 물리주소 |

프로그래밍 순서: VDMACR(RS+Circular) → 주소 3개 → HSIZE → STRIDE → **VSIZE(시작)**

## 9. 트러블슈팅

| 증상 | 원인/조치 |
|---|---|
| Add Module 후 m_axis가 버스로 안 묶임 | 포트 네이밍 추론 실패 — `aclk` 선언 위에 `(* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn" *)` 추가 후 BD에서 Refresh Module |
| Validate: 클럭 도메인 경고 | 모든 aclk가 FCLK_CLK0인지 확인 (VDMA는 3개: lite/s2mm/mm) |
| VDMASR에 에러비트(4/5/6) | 주소 미할당(Address Editor), HP0 미활성, 또는 VSIZE를 먼저 쓴 경우 |
| buffer FAIL + 데이터 전부 0 | VDMA가 SOF(tuser) 못 받음 — m_axis 연결과 tuser 폭(1) 확인 |
| buffer FAIL + 값은 있는데 어긋남 | 캐시 invalidate 누락(main.c엔 있음), stride 불일치, 또는 바이트순서(§7) |
| 픽셀이 한두 개씩 밀림 | R1/R2 위반 의심 — 근데 우리 TPG는 랜덤 백프레셔 검증 완료라, VDMA 설정 쪽부터 볼 것 |

## 10. 리뷰 요청 방법

BD에서 막히면 Tcl Console에 `write_bd_tcl -force bd_dump.tcl` 실행 → 그 파일 경로를 알려주면 블록 연결·설정을 그대로 리뷰 가능. validate 에러는 에러 텍스트 전체를 붙여넣기.
