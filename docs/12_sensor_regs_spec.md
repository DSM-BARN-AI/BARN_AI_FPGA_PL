# 12. 센서 레지스터 파일 (`axil_sensor_regs`) 스펙 — AXI4-Lite

- 작성일: 2026-07-28
- 구현: Claude 작성, 손서원 학습
- 검증 인프라: `sim/tb_axil_sensor_regs.v` (자가검사)
- 로드맵: 센서 파이프라인 3번째 블록 (파서 → PS 창구)

---

## 1. 목적

`ze03_parser` / `pms7003_parser`가 뽑아낸 값과 진단 카운터를 **PS가 읽을 수 있는
AXI4-Lite 레지스터**로 노출한다. 센서 수집 IP의 마지막 조각.

- **AXI 채널 로직은 검증된 `axil_regfile` 구조를 그대로 재사용**한다. 특히 읽기 채널의
  "억셉트 결정(arready 1클럭 펄스) / 핸드셰이크 에지에서 소비" 2단 규율 — 예전에
  유령 R 비트 버그를 냈던 그 부분(docs/03 §11)이다. 검증된 구조를 옮겨 쓰면 같은 버그를
  다시 만들 이유가 없다.

## 2. 블록 위치

```
ZE03    rx ─> uart_rx ─> ze03_parser    ──┐
                                          ├─> [axil_sensor_regs] ─AXI-Lite─> PS
PMS7003 rx ─> uart_rx ─> pms7003_parser ──┘
```

## 3. 레지스터 맵

베이스 주소는 BD 통합 시 확정 (예정: `0x43C1_0000`, 4K).

| 오프셋 | 이름 | 접근 | 내용 |
|---|---|---|---|
| `0x00` | `ID` | RO | `0xBA51_1101` — sanity read |
| `0x04` | `SNAPSHOT` | **WO** | **아무 값이나 쓰면** 그 순간의 모든 값·카운터를 그림자로 복사 |
| `0x08` | `ZE_CONC` | RO | `[15:0]`=농도, `[31:16]`=풀레인지 |
| `0x0C` | `ZE_INFO` | RO | `[7:0]`=가스종류, `[15:8]`=단위, `[23:16]`=소수점 |
| `0x10` | `ZE_CNT` | RO | `[15:0]`=유효프레임 수, `[31:16]`=체크섬에러 수 |
| `0x14` | `ZE_UERR` | RO | `[15:0]`=UART 프레이밍에러 수 |
| `0x18` | `PM_A` | RO | `[15:0]`=PM1.0, `[31:16]`=PM2.5 |
| `0x1C` | `PM_B` | RO | `[15:0]`=PM10 |
| `0x20` | `PM_CNT` | RO | `[15:0]`=유효프레임 수, `[31:16]`=체크섬에러 수 |
| `0x24` | `PM_UERR` | RO | `[15:0]`=UART 프레이밍에러 수 |
| 그 외 | (unmapped) | — | 읽기 `0xDEAD_BEEF`+SLVERR, 쓰기 SLVERR |

RO 주소에 쓰면 **응답 OKAY, 값 불변** (unmapped와 구별 — `axil_regfile`과 같은 규칙).
카운터는 16비트 래핑. PS는 델타로 계산한다.

## 4. ⚠️ 스냅샷 — 이 블록의 핵심 개념

센서 값은 여러 워드에 흩어져 있다. PS가 `ZE_CONC` → `ZE_INFO`를 차례로 읽는 도중
새 프레임이 도착하면, 앞 워드는 프레임 N, 뒤 워드는 N+1이 되어 **실제로는 존재한 적 없는
조합**이 읽힌다 (tearing).

**해결**: `SNAPSHOT`에 쓰면 그 순간의 모든 값·카운터가 그림자 레지스터로 **한 클럭에 복사**되고,
모든 읽기는 그림자만 본다. 따라서 항상 **한 프레임의 일관된 상태**를 본다.

**PS 사용 순서**:
```c
Xil_Out32(BASE + 0x04, 1);              // SNAPSHOT
u32 conc = Xil_In32(BASE + 0x08);       // 이하 모두 같은 시점의 값
u32 cnt  = Xil_In32(BASE + 0x10);
```
> 스냅샷 전에는 그림자가 리셋값(0)이다. **첫 읽기 전에 반드시 SNAPSHOT을 한 번** 써야 한다.

## 5. 진단 카운터의 쓸모

값만 노출하면 현장에서 원인을 못 가른다. 카운터 3종으로 갈린다:

| 증상 | 해석 |
|---|---|
| `frame_cnt`가 안 늘어남 | 센서 미연결 / 전원 없음 / rx 배선 끊김 |
| `csum_err`만 늘어남 | 배선 노이즈, 보율 불일치, **프레임 포맷 가정이 틀림**(datasheet 재확인) |
| `uart_frame_err`가 늘어남 | 정지비트 불량 = 보율 오차 과다, 접지 문제 |
| `frame_cnt` 정상 증가 | 정상 |

## 6. 프로토콜 규칙 (R1~R6)

| # | 규칙 |
|---|---|
| **R1** | AXI-Lite 5채널 계약 (`axil_regfile` R1~R9 승계): VALID 유지·페이로드 불변, AW/W 순서 자유, 응답 1:1 |
| **R2** | `SNAPSHOT` 쓰기 시 **모든** 값·카운터를 같은 클럭에 그림자로 복사 |
| **R3** | 읽기는 **그림자만** 반환 — 스냅샷 사이에 라이브 값이 바뀌어도 읽기 결과 불변 |
| **R4** | 카운터는 각 펄스마다 정확히 1 증가 (16비트 래핑) |
| **R5** | RO 쓰기 = OKAY + 값 불변, unmapped = SLVERR |
| **R6** | 리셋: 그림자·카운터 0, `rvalid`/`bvalid` 0 |

## 7. 검증 기록 (2026-07-28, XSim 2025.2) — TB PASS

```powershell
xvlog ..\rtl\axil_sensor_regs.v tb_axil_sensor_regs.v
xelab tb_axil_sensor_regs -s sr_sim
xsim sr_sim -R
```

| 테스트 | 결과 |
|---|---|
| T1 ID 읽기 | OK `ba511101` |
| T2 unmapped | OK `deadbeef` + SLVERR (읽기·쓰기 모두) |
| T3 프레임/카운터 | OK ZE `{ce=2,fv=3}`, PM `{ce=1,fv=2}`, uart err 1·3 |
| T4 필드 패킹 | OK `ZE_CONC=07d00066`, `ZE_INFO=00010217`, `PM_A=0017000c` |
| **T5 스냅샷 일관성** | **OK** — 스냅샷 없이 라이브 값이 바뀌어도 읽기 불변, 새 스냅샷 후 갱신 |
| T6 RO 쓰기 | OK 응답 OKAY, 값 불변 |
| T7 연속 읽기 20회 | OK 전부 MAGIC (**유령 R 비트 회귀 없음**) |

**첫 시도 무버그** — 검증된 AXI 구조를 재사용한 효과. T7은 `axil_regfile`에서 잡았던
유령 비트 버그가 재발하지 않았는지 확인하는 회귀 테스트다.

## 7.5 통합 TB (`sim/tb_sensor_chain.v`) — PASS

`rx(직렬) → uart_rx → parser → axil_sensor_regs → AXI-Lite 읽기` 전 경로.
개별 블록은 각자 검증됐으므로, 여기서는 **블록 사이의 계약**을 본다.

| 테스트 | 결과 |
|---|---|
| T0 ID | OK |
| T1 ZE03 직렬 3프레임 → AXI | OK `ZE_CNT=3`, `ZE_CONC=07d000c8` |
| T2 PMS 직렬 2프레임 → AXI | OK `PM_CNT=2`, `PM_A=0019000c` |
| T3 체크섬 손상 | OK `csum_err` 증가, 값 불변 |
| T4 정지비트 불량 | OK `ZE_UERR=1` (uart_rx→레지스터 경로) |
| **T5 두 센서 동시 수신** | **OK** 상호 간섭 없음 |

**첫 시도 0 errors.** 확인된 것: `uart_rx`의 1클럭 펄스가 파서 `s_valid`로 정확히 전달되고,
파서 펄스가 카운터에 1회만 반영되며, 직렬 비트에서 출발한 값이 AXI까지 변형 없이 도달한다.

## 7.6 BD 통합 완료 (2026-07-29)

`scripts/add_sensor_bd.tcl` — validate 통과, 비트스트림·XSA 완료.

```
ze03_rx(Pmod JE1, V12) → uart_rx → ze03_parser    ─┐
pms_rx (Pmod JE2, W16) → uart_rx → pms7003_parser ─┴→ axil_sensor_regs → SmartConnect M02 → PS GP0
```

| 항목 | 값 |
|---|---|
| 센서 레지스터 베이스 | **`0x43C1_0000` / 4K** |
| (기존) 영상 regfile | `0x43C0_0000` / 4K |
| (기존) VDMA | `0x4300_0000` / 64K |
| **PS I2C0** | **활성화, MIO 10-11 (Zybo Pmod JF)** — BSP팀 요청 |
| 타이밍 | **WNS +0.480ns / WHS +0.025ns (met)** |
| 자원 | LUT 7.00% · FF 5.04% · BRAM 2.5% · **IOB 2/125** |
| 핀 배치 실측 | `V12=ze03_rx`, `W16=pms_rx` (INPUT, LVCMOS33, FIXED) |

### ⚠️ 이번 통합에서 잡은 함정 — 래퍼 임포트 사본 스테일

1차 빌드는 **100% 성공에 타이밍도 met였지만 `Bonded IOB = 0`** 이었다. 즉 외부 핀이 하나도
연결되지 않은 채 "성공"한 것. 원인은 래퍼가 두 벌이었고 합성이 낡은 쪽을 쓴 것:

```
.gen/sources_1/bd/image_block/hdl/image_block_wrapper.v   07-29  ze03_rx 있음
.srcs/sources_1/imports/hdl/image_block_wrapper.v         07-25  ze03_rx 없음 ← 합성이 사용
```
`make_wrapper -import`가 기존 임포트 사본을 덮어쓰지 않는다. 합성 로그의
`port 'ze03_rx' of module 'image_block' is unconnected`와 XDC의 `No ports matched`가 단서.

**조치**: `.gen`의 최신 래퍼를 `imports/hdl/`에 덮어쓰고 재빌드 → `Bonded IOB = 2`.
**교훈**: 외부 포트를 추가한 빌드는 **`Bonded IOB` 개수와 `*_io_placed.rpt`를 반드시 확인**한다.
빌드 성공만으로는 핀 연결이 보장되지 않는다.

## 8. 다음 단계

1. **BD 통합**: `uart_rx`×2 + 파서 2종 + 이 레지스터 파일을 하나의 계층으로 묶고,
   PS GP0 → SmartConnect → `s_axil` 연결. **PS I2C0 활성화**(팀원 요청)도 같이.
   외부 핀 2개(`ze03_rx`, `pms_rx`)를 Pmod로 제약 파일에 배정.
2. (선택) **통합 TB**: `uart_rx` → 파서 → 레지스터를 직결해 실제 직렬 파형부터
   AXI 읽기까지 한 번에 검증.
3. **PS 소프트웨어**: SNAPSHOT → 읽기 → 카운터 델타 확인 루프.
