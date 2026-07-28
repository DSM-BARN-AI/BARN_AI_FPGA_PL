# 05. 감마 LUT (`axis_gamma`) + 비디오 먹스 (`axis_vid_mux`) 스펙 — 5단계

- 작성일: 2026-07-20
- 구현: Claude 작성, 손서원 학습
- 목표: **온보드 디모자이크 검증 경로 완성** — TPG(베이어)→디모자이크→감마→VDMA를 BD에 넣고, 먹스로 원본/처리 경로를 소프트웨어 전환

---

## A. TPG pattern 2'b10 — ✅ 완료 (2026-07-20)

docs/04 §4 정의대로 구현·검증 완료:
- `rtl/axis_tpg.v`: `2'b10` = 베이어 샘플링 컬러바(RGGB), 샘플은 `tdata[7:0]`, 상위 16비트 0
- `model/tpg_golden.py`: pattern 2 추가
- 회귀: P2×{r0,r1} + P0/P1 무회귀 = **4/4 TB PASS · COMPARE PASS**
- **교차 검증 PASS**: TPG 패턴2 스트림 ≡ `demosaic_golden --img bars --phase 0`의 `bayer_in`
  (3072샘플 비트일치) → 실보드 TPG→디모자이크 출력은 `demosaic_golden`의 기대값과 직접 비교 가능
- ⚠️ `axis_tpg.v`가 바뀌었으므로 **기존 비트스트림은 stale** — E절 BD 작업 때 일괄 재빌드

## B. `axis_gamma` — 감마 LUT (24bit 통과형)

### B.1 목적
- 저조도 축사 영상의 암부 계조 보존 + Jetson YOLO의 sRGB 입력 분포 정합
- **가장 단순한 통과형 AXIS 블록의 정석형** — 디모자이크(3단 파이프+드레인)의 1단 축소판
- LUT/메모리 초기화($readmemh) 학습

### B.2 파라미터 / 포트
| 파라미터 | 기본값 | 설명 |
|---|---|---|
| `LUT_FILE` | "gamma_lut.mem" | 256×8 LUT hex (3채널 공용 커브) |

포트: `aclk/aresetn`, `s_axis_*`(24b tdata+tvalid/tready/tuser/tlast), `m_axis_*`(동일).
**H/V 파라미터 없음** — 픽셀 단위 순수 매핑이라 지오메트리 무지(無知)가 정상.

### B.3 동작
- R/G/B 각각 `out = LUT[in]` (같은 테이블 3회 병렬 룩업)
- 1단 레지스터드: `adv = (!m_tvalid || m_tready) && s_tvalid`, `s_tready = (!m_tvalid || m_tready)`
- tuser/tlast는 데이터와 **같은 레지스터 단**으로 통과 (정렬 보장)
- LUT 초기화: `initial $readmemh(LUT_FILE, lut)` — Vivado 합성 지원. BD 통합 시 `.mem`을
  프로젝트 소스로 추가. 모듈 레퍼런스 플로우에서 경로 문제 발생 시 폴백: 파이썬이 case-ROM
  `.vh`를 생성해 include (문서화된 플랜 B)

### B.4 커브 (v1 고정)
`gamma_golden.py --gen-lut`이 생성: `LUT[i] = round(255 × (i/255)^(1/2.2))`, LUT[0]=0, LUT[255]=255.
(테이블 생성은 파이썬 자유 계산 — RTL·골든은 **파일을 그대로** 쓰므로 비트일치 자동)

### B.5 규칙 (R1~R7)
| # | 규칙 |
|---|---|
| R1 | m_axis: tvalid 유지·페이로드 불변 (표준 계약) |
| R2 | 버블 0 — s_tvalid 연속이면 m_tvalid 연속 (1px/cycle) |
| R3 | tuser/tlast가 해당 픽셀과 같은 비트에 정렬되어 통과 |
| R4 | 픽셀 수 보존 (드레인 없음 — 잔류 상태 자체가 없음) |
| R5 | 매핑 = LUT 파일과 비트일치 (3채널 동일) |
| R6 | 리셋: tvalid=0 |
| R7 | 임의 시점 백프레셔에 무손실 |

### B.6 검증
- `gamma_golden.py`: `--gen-lut`(LUT 생성) / `--apply in.hex out.hex`(임의 %06x 스트림에 LUT 적용 — E절 체인 골든에도 재사용) / `--compare`
- TB: 랜덤 24비트 스트림(파일) 재생, valid×ready 랜덤화, 인라인 비교 + R1/R3 모니터
- DoD: {random s1, random s2, bars} × {v1r1, v0r0} 중 4런 + COMPARE PASS

## C. `axis_vid_mux` — 2:1 프레임 원자성 먹스

### C.1 목적
TPG 직결(s0) vs 디모자이크 경로(s1)를 **프레임 단위로** 전환. 이후 6단계에서 s1이 카메라
경로로 교체되는 디버그 인프라 (업계 표준 관행 — TPG는 최종 디자인에 상주).

### C.2 포트
`s0_axis_*`, `s1_axis_*`, `m_axis_*` (모두 24b video), `sel` (1b, regfile CTRL[1], 비동기 아님 — 같은 클럭).

### C.3 동작 (FSM: HUNT / PASS)
- **HUNT**: 선택 입력의 비트를 **버리면서**(tready=1, 출력 없음) `tuser=1` 비트를 기다림.
  SOF 비트부터 통과 시작 → PASS. 리셋 직후도 HUNT (첫 완전 프레임부터 출력).
- **PASS**: 선택 입력 → 출력 통과(1단 레지스터드, 감마와 동일 골격).
  `sel != sel_active`가 감지되면: 현 스트림의 **다음 SOF 비트를 수락하지 않고**(=현 프레임
  완주 후 정확히 경계에서) `sel_active <= sel` → HUNT.
- 비선택 입력: `tready=0` **동결**. TPG류 소스는 R1 홀드로 무손실 대기.
  ⚠️ 카메라(밀어내는 소스)는 동결 불가 — 6단계에서 프레임버퍼/드롭 로직으로 해결 (명시적 스코프 제외).
- 재선택된 입력이 동결 중 SOF에 멈춰 있었다면 HUNT가 즉시 명중 — 전환 지연 최소화.

### C.4 규칙 (R1~R6)
| # | 규칙 |
|---|---|
| R1 | m_axis 표준 계약 |
| R2 | **출력은 완전한 프레임만** — SOF로 시작, 정확히 H×V비트, 부분 프레임 절대 금지 |
| R3 | 전환은 프레임 경계에서만 (PASS 중 프레임 중간 전환 금지) |
| R4 | 비선택 입력 동결(tready=0), 선택 입력만 소비 |
| R5 | 리셋 후 첫 SOF까지 출력 없음 (HUNT) |
| R6 | sel 반영 지연 ≤ 현재 프레임 잔여 + 새 소스 SOF 대기 (최대 ~1프레임) |

### C.5 검증
- TB 스티뮬러스 = **검증된 `axis_tpg` 2개 실인스턴스** (s0: pattern 0 컬러바, s1: pattern 3 단색
  회색) — 골든 파이썬 불필요, TB 자가검사:
  프레임 단위로 ①전 픽셀이 한 소스의 패턴값 ②SOF/EOL 지오메트리 ③프레임 수 ④R2(부분 프레임 0건)
- sel을 프레임 중간 무작위 시점에 토글 (전환이 경계로 밀리는지 = R3)
- DoD: {r0, r1} × {sel 고정 0, 고정 1, 랜덤 토글} 대표 4런

## D. `axil_regfile` v2 — CTRL[1] = mux_sel

| 오프셋 | 이름 | 변경 |
|---|---|---|
| 0x08 | CTRL | bit0=tpg_enable (기존), **bit1=mux_sel (신규)** — 마스크 `&32'h1`→`&32'h3` |

- RTL: `assign mux_sel = ctrl_reg[1];` 포트 추가
- TB: 레퍼런스 모델 CTRL 마스크 갱신 + mux_sel 출력 체크(R10 확장) → 재회귀 3종 (기본/seed7/n_ops=1000)
- docs/03 §4 표는 이 문서가 개정 기록

## E. BD 통합 계획 (구현 완료 후)

```
                        ┌─ axis_tpg_A (pattern=regfile) ──────────────┐
 regfile CTRL[0]=enable─┤                                             ├─ axis_vid_mux ─ axis_gamma ─ VDMA S2MM
        CTRL[1]=sel     └─ axis_tpg_B (pattern=2'b10 상수)─ demosaic ──┘
        TPG_CFG → tpg_A.pattern_sel
```
- Tcl 스크립트(`scripts/add_step5_bd.tcl`)로 일괄 조립 + validate + 비트스트림 재빌드 (TPG 수정 반영)
- 온보드 검증 (보드 도착 시, main.c v3):
  - sel=0: 캡처 == `tpg_golden p0` → `gamma_golden --apply` 체인
  - sel=1: 캡처 == `demosaic_golden bars/RGGB exp` → `gamma_golden --apply` 체인
  - 이 체인 골든이 B.6의 `--apply` 모드가 존재하는 이유

## F. 완료 기준 (DoD) 요약

1. B: gamma 4런 TB PASS + COMPARE PASS
2. C: mux 4런 TB PASS (자가검사)
3. D: regfile v2 재회귀 3종 PASS
4. E: validate 통과 + 비트스트림 + WNS met + XSA (보드 실행은 하드웨어 도착 후)

### 검증 기록 (2026-07-20, XSim 2025.2) — B·C·D 완료

| 항목 | 실행 | 결과 |
|---|---|---|
| B gamma | random s1 v1r1 / random s1 **v0r0** / random s2 v1r0 / bars v0r1 | 4/4 TB PASS · COMPARE PASS · **R2 OK 3072비트 무버블** |
| C mux | sel0 고정 r0 / sel1 고정 r0 / 토글 r1 / 토글 r0(seed7) | 4/4 TB PASS · 토글 런 bars/gray 혼재 프레임 **전부 원자적** (에러 0) |
| D regfile v2 | 기본 / seed7 / seed7+n_ops1000 | 3/3 TB PASS (CTRL 마스크 &3, mux_sel R10 체크 포함) |

## G. 통합·인터럽트 완료 기록 (2026-07-26)

**BD 통합 완료** (`scripts/add_step5_bd.tcl`):
- 파이프라인: `TPG-A → mux(s0)` / `TPG-B → conv(24→8) → demosaic → mux(s1)`, `mux → gamma → VDMA S2MM`
- 제어: regfile `CTRL[0]=enable`(A/B 공유), `CTRL[1]=mux_sel`, `TPG_CFG→TPG-A pattern`
- 주소: VDMA lite `0x4300_0000`, regfile `0x43C0_0000`
- ⚠️ **함정 기록**: 커스텀 RTL의 **포트를 추가**(regfile v2 mux_sel)하면 Vivado module reference가
  v1을 캐시해 배치 Tcl로는 반영 안 됨 → **GUI "Refresh Changed Modules" 1클릭** 필요.
  (포트 내부 로직만 바뀌면 재합성으로 충분. 포트 자체 변경만 해당.)

**VDMA 인터럽트 배선** (BSP/PetaLinux 팀 요청, `scripts/add_irq.tcl`):
- `axi_vdma_0/s2mm_introut → PS IRQ_F2P[0]`, `PCW_USE_FABRIC_INTERRUPT=1`, `PCW_IRQ_F2P_INTR=1`
- 리눅스 `xilinx_dma`는 IRQ 필수(베어메탈 `main.c`는 폴링이라 없어도 됐음)
- DT: `IRQ_F2P[0]` = GIC SPI 61 = `interrupts = <0 29 4>`

**비트스트림**: `impl 100%`, **WNS=+1.812ns / WHS=+0.024ns (met)**, XSA export (07-25 23:20).

**main.c v3** (`sw/vdma_capture/main.c`): 컴파일타임 `MUX_SEL`로 경로 선택
- `MUX_SEL=0`: TPG-A→gamma. **컬러바는 gamma 불변**(모든 채널 0/255)이라 내장 bars 검사 유효
  — PC 검증: `bars == gamma(bars)` 일치 확인 완료
- `MUX_SEL=1`: TPG-B→demosaic→gamma. 내장검사 스킵, PC 체인 골든
  (`demosaic_golden --img bars --exp` → `gamma_golden --apply`)
- ⚠️ 5단계 XSA는 SW가 `CTRL=0x1`(enable) 안 쓰면 TPG 정지 → 캡처 0

## H. 하드웨어 검증 완료 (2026-07-28) — ✅ 두 경로 모두 PASS

Zybo Z7-20 실기, 8단계 ISP 비트스트림 (WNS +0.715ns).

| 경로 | 하드웨어 파이프라인 | 판정 |
|---|---|---|
| `MUX_SEL=0` | TPG-A → mux(s0) → gamma → VDMA | **COMPARE PASS** (`tpg_golden --pattern 0`, 2회 독립 실행) |
| `MUX_SEL=1` | TPG-B(2'b10) → conv24→8 → demosaic → gaussian → WB → mux(s1) → gamma → VDMA | **COMPARE PASS** (`isp_chain_golden.py`) |

공통 확인: `regfile ID=0xBA510301`, `scratch=0xA55A1234` 왕복, `CTRL[0]`로 TPG 기동,
`CTRL[1]`로 경로 전환 — 소프트웨어 제어가 실칩에서 동작.

### 체인 골든 (`model/isp_chain_golden.py`)
각 블록의 **검증된 골든 함수를 import해서 조합** — 알고리즘당 진실은 하나만 존재.
`--stage demosaic|gaussian|wb|gamma`로 체인을 중간에 끊어 비교하면 불일치 블록을 국소화 가능.

**WB 정상상태 처리**: TPG가 매 프레임 동일 영상을 주므로 누적값이 불변 → 프레임 2 이후
게인이 `gain(A)`로 고정. 캡처는 20ms(≈650프레임) 뒤라 정상상태.
실측 게인 **gR=260 / gG=256 / gB=252** (unity=256) — 컬러바 평균이 거의 중성이라는 물리와 일치.
흰 픽셀 검산: `ffffff` →(WB) `fffffb` →(gamma) `fffffd` ✓

### 의미
시뮬레이션에서만 통과했던 5개 커스텀 블록이 **직렬 연결 상태로 실리콘에서 비트일치**.
개별 블록 검증(각자 TB+골든)과 통합 검증(체인 골든)이 모두 닫혔으므로,
**RGB 전처리 파이프라인은 실카메라 입력만 남기고 완결**.

**보드 도착 시 남은 것**: ~~`MUX_SEL=0/1` 각각 실행~~ → **완료**. 다음은 6단계 Pcam 실입력.
