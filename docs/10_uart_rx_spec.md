# 10. UART 수신 코어 (`uart_rx`) 스펙 — 8N1, 16× 오버샘플

- 작성일: 2026-07-26
- 구현: Claude 작성, 손서원 학습
- 검증 인프라: `sim/tb_uart_rx.v` (자가검사 — 직렬 프레임 구동, 골든 파이썬 불필요)
- 로드맵: 센서 파이프라인 1단계 (UART 2종 ZE03·PMS7003 → PL, 하이브리드 결정)

---

## 1. 목적

범용 UART 수신기. 직렬 rx 라인 → 병렬 바이트. 센서 UART(9600 8N1)를 PL에서 받는 첫 블록.

- 하이브리드 아키텍처(I²C=PS, UART=PL)에서 UART 담당 (PS UART는 콘솔이 점유해 부족).
- **이 프로젝트 최초의 비동기 입력(CDC) 블록** — rx는 clk와 무관한 외부 신호라 **2FF 동기화**가 필수.
  지금까지(AXIS/AXI-Lite)는 전부 동기 도메인이었음.
- 이 위에 프레임 파서(센서별) + AXI-Lite 노출을 얹어 센서 수집 IP 완성 (다음 단계).

## 2. 블록 위치

```
sensor rx핀 ──> [uart_rx] ──byte──> (프레임 파서 → AXI-Lite regfile) → PS
```

## 3. 파라미터 / 포트

| 파라미터 | 기본값 | 설명 |
|---|---|---|
| `CLK_FREQ_HZ` | 100_000_000 | aclk 주파수 |
| `BAUD` | 9600 | 센서 보드레이트 (ZE03/PMS7003 공통) |
| `OVERSAMPLE` | 16 | 비트당 오버샘플 수 |

파생: `OSVW_TICKS = CLK_FREQ_HZ / (BAUD × OVERSAMPLE)` (오버샘플 1틱당 클럭 수).
100MHz/9600/16 ≈ 651 → 오버샘플 틱마다 651클럭 카운트.

| 포트 | 방향 | 폭 | 설명 |
|---|---|---|---|
| `aclk`, `aresetn` | in | 1 | 동기 리셋 active-low |
| `rx` | in | 1 | **비동기** 직렬 입력 (외부 센서) |
| `m_data` | out | 8 | 수신 바이트 (LSB first 조립) |
| `m_valid` | out | 1 | 바이트 수신 완료 **1클럭 펄스** |
| `frame_err` | out | 1 | stop 비트 불량 시 1클럭 펄스 (R4) |

## 4. 동작 (FSM: IDLE → START → DATA → STOP)

1. **동기화**: `rx`를 2FF로 동기화(`rx_sync`) — 메타스테이빌리티 방지 (R7).
2. **IDLE**: `rx_sync` high 대기. **하강 에지**(start 비트) 감지 → START.
3. **START**: OSVW_TICKS 카운터로 오버샘플 틱 생성. **오버샘플 중앙(8/16)** 에서 `rx_sync` 재확인
   — 여전히 low면 진짜 start(글리치 아님), DATA로. high면 오검출 → IDLE (R1).
4. **DATA**: 비트마다 오버샘플 중앙에서 샘플, **LSB first**로 8비트 시프트 조립 (R3).
5. **STOP**: 중앙 샘플이 high면 정상 → `m_data`/`m_valid` 출력. low면 `frame_err` (R4).
6. STOP 후 IDLE 복귀. (프레임 갭 무관 — 다음 start 하강 대기)

## 5. 프로토콜 규칙 (R1~R7) — 리뷰 기준

| # | 규칙 |
|---|---|
| **R1** | start 비트는 **중앙 재확인**으로 글리치 걸러냄 (하강만으로 진입하지 않음) |
| **R2** | 각 비트는 오버샘플 **중앙(8/16)** 에서 샘플 — 비트 경계 타이밍 오차에 견고 |
| **R3** | 데이터 8비트 **LSB first** 조립 |
| **R4** | stop 비트 high 확인. low면 `frame_err` 펄스, `m_valid`는 **내지 않음** |
| **R5** | `m_valid`/`frame_err`는 정확히 **1클럭 펄스** (바이트당 1회) |
| **R6** | 보드레이트 오차 ±2%에도 정상 수신 (중앙 샘플 마진) |
| **R7** | `rx` 2FF 동기화 (CDC) — 비동기 입력의 메타스테이빌리티 차단 |

## 6. 아키텍처 개요

```
rx ─2FF─> rx_sync ─┬─> 하강 에지 검출 (start)
                   └─> 중앙 샘플 (data/stop)
[OSVW 카운터] → 오버샘플 틱 → [비트 카운터 0..15] → 중앙(8)에서 샘플
[FSM IDLE/START/DATA/STOP] → 시프트 레지스터 → m_data/m_valid
```

- 오버샘플 카운터: `OSVW_TICKS`까지 세면 1 오버샘플 틱. 틱 16개 = 1비트.
- 중앙 샘플: 오버샘플 인덱스 8에서 `rx_sync` 캡처.
- 나눗셈 없음 (카운터 비교만). baud는 컴파일타임 상수.

## 7. 검증 계획

- **TB** `tb_uart_rx.v`: **골든 파이썬 불필요** — TB가 직렬 프레임을 실제 baud 타이밍으로 구동하고,
  보낸 바이트 == 받은 바이트 자가검사.
  - 랜덤 바이트 다수 전송, 프레임 간 랜덤 갭
  - **baud 오차 주입**(±2% TB 송신 baud 변조 → R6 확인)
  - **frame_err 케이스**(stop 비트를 0으로 → frame_err 확인, m_valid 없음)
  - 글리치 주입(start 하강 후 즉시 복귀 → 오검출 안 됨, R1)
- 시뮬 속도: TB는 BAUD를 높여(예 1Mbaud) 오버샘플 틱 수를 줄여도 됨 (로직 동일, 시뮬 시간 단축).
  DUT 파라미터도 TB와 맞춤.

## 8. 완료 기준 (DoD)

| 실행 | 조건 |
|---|---|
| 1 | 랜덤 128바이트, 정상 baud |
| 2 | baud +2% 송신 |
| 3 | baud −2% 송신 |
| 4 | frame_err (stop=0) 주입 → 검출, m_valid 억제 |
| 5 | start 글리치 → 오검출 없음 |

전부 TB PASS (자가검사).

## 9. 확정 사항

8N1(패리티 없음), 16× 오버샘플, 중앙 샘플, LSB first, 2FF 동기화.
센서(ZE03/PMS7003) 둘 다 9600 8N1이라 단일 코어로 2 인스턴스. 프레임 파싱은 상위 블록.
바꿀 항목 있으면 RTL 착수 전에.

## 10. 실행 방법 (확정)

```powershell
# sim/ 폴더
$env:PATH = "C:\AMDDesignTools\2025.2\Vivado\bin;" + $env:PATH
xvlog ..\rtl\uart_rx.v tb_uart_rx.v
xelab tb_uart_rx -s u_sim                                  # BAUD=625k (빠른 시뮬)
xelab tb_uart_rx -s u_sim9600 -generic_top '"BAUD=9600"'   # 실제 센서 설정
xsim u_sim -R                                              # 전 시나리오 T1~T7
xsim u_sim -R -testplusarg '"seed=7"'
xsim u_sim9600 -R -testplusarg '"quick=1"'                 # 반복 축약 (10416클럭/비트)
```

**시뮬 보율 선택 근거**: `BAUD=625000` → `OSVW_TICKS = 100e6/(625e3×16) = 10` 으로 **나눗셈이
정확히 떨어져** 분주 오차 없이 로직만 검증할 수 있다. 실제 9600은 `OSVW=651`(비트당 10416클럭)
이라 시뮬이 1000배 길어지므로 `+quick=1`로 반복을 줄여 별도 확인.

### 검증 기록 (2026-07-28, XSim 2025.2) — DoD 4/4 PASS

| 실행 | 조건 | 결과 |
|---|---|---|
| 1 | BAUD=625k, 기본 시드 | **TB PASS** 264바이트, frame_err 4 |
| 2 | BAUD=625k, seed=7 | **TB PASS** 264바이트 |
| 3 | BAUD=625k, seed=99 | **TB PASS** 264바이트 |
| 4 | **BAUD=9600 (OSVW=651)**, quick | **TB PASS** 31바이트 — 실제 센서 설정 |

시나리오(모든 런 공통): T1 랜덤+랜덤갭 / T2 **백투백(갭 0)** / T3 **보율 +2%** /
T4 **보율 −2%** / T5 프레이밍 에러 주입 → **R4 검출·바이트 억제** / T6 **시작 글리치 → 전부 무시**
/ T7 글리치 후 복구.

**첫 시도 무버그** (선언 순서 오류 1건 외). demosaic·gaussian처럼 구조가 명확한 FSM이라
사이클 트레이스 디버깅이 필요 없었음.

## 11. 다음 블록

`uart_rx` 위에 얹을 것:
1. **프레임 파서** — ZE03(9바이트: `0xFF` 헤더 + 농도 + 체크섬), PMS7003(32바이트: `0x42 0x4D`
   헤더 + 길이 + 13워드 + 16비트 체크섬). 헤더 동기 → 길이만큼 수집 → **체크섬 검증** →
   유효 프레임만 통과.
2. **AXI-Lite 노출** — 파싱된 값 + 프레임 카운터 + 에러 카운터(frame_err/checksum_err)를
   레지스터로. `axil_regfile` 패턴 재사용.
3. BD 통합 시 인스턴스 2개(센서별 BAUD 동일 9600) + PS I2C0 활성화.
