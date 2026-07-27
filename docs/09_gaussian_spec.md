# 09. 가우시안 디노이즈 (`axis_gaussian`) 스펙 — 3×3 고정계수

- 작성일: 2026-07-26
- 구현: Claude 작성, 손서원 학습
- 검증 인프라: `sim/tb_axis_gaussian.v`, `model/gaussian_golden.py`
- 로드맵: 8단계 (디노이즈)

---

## 1. 목적

3×3 가우시안 저역통과 필터로 공간 노이즈 제거.

- **`axis_demosaic`의 라인버퍼+3×3 윈도우+드레인 구조를 그대로 재사용** — 이 블록의 학습 포인트는
  "검증된 구조를 재활용하고 중심 연산만 교체"하는 실무 패턴. demosaic와의 diff가 곧 교재.
- demosaic와 다른 점: ① tdata 8→24비트(RGB) ② 위치별 분기 없음(모든 픽셀 동일 커널)
  ③ 3채널 독립 가중합

## 2. 블록 위치

```
demosaic ──RGB888──> [axis_gaussian] ──> WB ──> gamma ──> ...
```

RGB 파이프라인 어디든 삽입 가능. 권장 위치는 demosaic 직후(디모자이크 아티팩트 완화).
5단계 BD 통합 시 순서는 팀 협의.

## 3. 파라미터 / 포트

| 파라미터 | 기본값 | 설명 |
|---|---|---|
| `H_ACTIVE` | 1280 | 라인 픽셀 수 (라인버퍼 깊이) |
| `V_ACTIVE` | 720 | 프레임 라인 수 |

| 포트 | 방향 | 폭 | 설명 |
|---|---|---|---|
| `aclk`, `aresetn` | in | 1 | 동기 리셋 active-low |
| `s_axis_tdata` | in | 24 | `[23:16]=R [15:8]=G [7:0]=B` |
| `s_axis_tvalid/tready` | in/out | 1 | 입력 핸드셰이크 |
| `s_axis_tuser/tlast` | in | 1 | SOF/EOL |
| `m_axis_tdata` | out | 24 | 필터링된 RGB888 |
| `m_axis_tvalid/tready/tuser/tlast` | out/in/out/out | 1 | 출력 AXIS video |

## 4. 커널 (v1 고정)

```
        | 1  2  1 |
  1/16 ×| 2  4  2 |
        | 1  2  1 |
```

채널별 (R/G/B 각각 독립):
```
sum = 1·P(-1,-1) + 2·P(0,-1) + 1·P(1,-1)
    + 2·P(-1, 0) + 4·P(0, 0) + 2·P(1, 0)
    + 1·P(-1, 1) + 2·P(0, 1) + 1·P(1, 1)
out = sum >> 4          // ÷16, 버림(floor) — 골든↔RTL 비트일치 계약
```
- 계수 합 = 16 → `>>4`로 정규화. sum 최대 `255×16 = 4080`(12비트).
- **라운딩 = 버림**(R6). (반올림은 `(sum+8)>>4`, v2에서 골든과 함께 변경 시)

## 5. 경계 정책 (R5)

**좌표 클램프 (edge replicate)** — demosaic §6과 **완전히 동일**. 윈도우 탭 좌표를
`clamp(0,H-1)`, `clamp(0,V-1)`. 출력 프레임 = 입력과 동일 H×V, 경계 픽셀도 골든 비트일치.

## 6. 프로토콜 규칙 (R1~R9)

demosaic R1~R9와 동일 계약 (여기선 위치분기·위상이 없어 R10 해당 없음):

| # | 규칙 |
|---|---|
| **R1** | m_axis tvalid 유지·페이로드 불변 |
| **R2** | 스톨 없을 때 1픽셀/사이클 지속 (라인 말미 드레인 중 s_tready 하강 허용) |
| **R3** | 출력 SOF=(0,0), EOL=x(H-1) |
| **R4** | 프레임당 출력 = H×V (드레인 완주 포함) |
| **R5** | 경계 클램프 정확 (§5) |
| **R6** | 커널 가중합 + `>>4` 버림 정확, **3채널 독립** |
| **R7** | 리셋: 카운터·파이프 초기화, tvalid=0 |
| **R8** | 임의 시점 백프레셔에 데이터 유실/중복 없음 (전역 CE) |
| **R9** | 프레임 연속 입력 처리 |

## 7. 아키텍처 — demosaic 재사용

demosaic(`rtl/axis_demosaic.v`)의 골격을 그대로:
- **라인버퍼 2줄** (단, 24비트 폭) + 2비트 지연 쓰기(read-during-write 회피)
- **스캔 FSM** (PREFILL / SCAN fc=0..H / FLUSH) — 동일
- **행 클램프 먹스** (cy==0 위, cy==V-1 드레인) — 동일
- **3×3 윈도우** 열 시프트 (24비트 탭)
- **전역 CE** `adv = out_ok && (!need_input || s_tvalid)` — 동일

교체되는 것은 중심 조합뿐:
- demosaic: `case({py,px})` 위치별 보간 → **gaussian: 채널별 고정 가중합 `>>4`**
- 8비트 탭 → 24비트 탭(가중합 시 `[23:16]/[15:8]/[7:0]` 분리)

지연: 첫 SOF 출력까지 입력 ~H+2픽셀, 드레인 ~H+1사이클 (demosaic와 동일).

## 8. 검증 계획

- **골든** `gaussian_golden.py`: 3×3 컨볼루션(클램프, `>>4` 버림) per 채널. 스티뮬러스 생성 +
  기대 RGB + `--compare`.
- **TB** `tb_axis_gaussian.v`: demosaic TB 골격 재사용(24비트 in/out). 입력 valid × 출력 ready
  랜덤, R1/R3 모니터, R4 드레인 감시, 2프레임 연속.
- **스티뮬러스**: ① 컬러바(경계·엣지 많음) ② 임펄스(단일 밝은 점 → 커널 퍼짐 확인)
  ③ 랜덤 ④ 균일색(필터 후 불변 확인).

## 9. 완료 기준 (DoD)

| 실행 | 스티뮬러스 | 모드 |
|---|---|---|
| 1 | 컬러바 | v1r1 |
| 2 | 랜덤 s1 | v1r1 |
| 3 | 랜덤 s1 | v0r0 (R2 풀스로틀) |
| 4 | 임펄스 | v1r1 |
| 5 | 랜덤 s1, 2프레임 | v1r1 (R9) |

전부 TB PASS + COMPARE PASS.

## 10. 확정 사항

커널=가우시안 1-2-1/16, 경계=클램프, 라운딩=버림, 3채널 독립, 구조=demosaic 재사용.
바꿀 항목 있으면 RTL 착수 전에.

## 11. 검증 기록 (2026-07-26, XSim 2025.2)

| 실행 | 조건 | 결과 |
|---|---|---|
| 1 | bars, v1r1 | TB PASS · COMPARE PASS |
| 2 | random, v1r1 | TB PASS · COMPARE PASS |
| 3 | random, **v0r0** | TB PASS · COMPARE PASS · **R2 OK 3187/3219 cyc** |
| 4 | impulse, v1r1 | TB PASS · COMPARE PASS (커널 퍼짐) |
| 5 | random, **2프레임** | TB PASS · COMPARE PASS (R9) |

**첫 시도 5/5 PASS, 버그 0.** R2 사이클 수(3187)가 demosaic와 **정확히 동일** — 스캔 FSM/드레인
골격을 그대로 재사용했다는 증거. 검증된 구조 재활용의 실례(WB는 새 구조라 스큐 버그를 잡았지만,
gaussian은 검증된 골격이라 무버그). 실행: `xvlog ..\rtl\axis_gaussian.v tb_axis_gaussian.v` →
`xelab tb_axis_gaussian -s g_sim` → golden `--gen/--exp` → `xsim` → golden `--compare`.
`--img`: bars / random / impulse / solid.
