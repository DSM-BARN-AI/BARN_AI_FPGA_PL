# 08. 화이트밸런스 (`axis_whitebalance`) 스펙 — Gray World

- 작성일: 2026-07-26
- 구현: Claude 작성, 손서원 학습
- 검증 인프라: `sim/tb_axis_wb.v`, `model/wb_golden.py`
- 로드맵: 8단계 (Pcam=6 이전에 진행 — 보드 없이 시뮬 완결)

---

## 1. 목적

Gray World 가정 기반 자동 화이트밸런스. **"장면 전체 색의 평균은 무채색(회색)"** 이라는 가정으로 R/B 채널 게인을 자동 산출해 색 캐스트(조명 색온도)를 보정.

- 축사 조명(백열/LED 혼재)의 색 틴트를 제거 → Jetson YOLO 입력 색 안정화 (스펙 논의 때 ✅ 확정 항목)
- **이 프로젝트 최초의 "프레임 통계 피드백" 블록** — 지금까지(tpg/demosaic/gamma)는 순수 스트리밍이었지만, WB는 *프레임 전체를 봐야 게인이 정해짐* → 지연·피드백 파이프라인이라는 새 패턴
- 고정소수점 게인 + 나눗셈 + 채도 클램프 학습

## 2. 블록 위치

```
demosaic ──RGB888──> [axis_whitebalance] ──RGB888──> gamma ──> mux ──> VDMA
```

파이프라인상 **demosaic 다음, gamma 앞**(리니어 도메인에서 게인 적용이 정확). 5단계 BD 통합은 이 블록 검증 후.

## 3. 파라미터 / 포트

| 파라미터 | 기본값 | 설명 |
|---|---|---|
| `GAIN_SHIFT` | 8 | 게인 고정소수점 소수 비트. unity = `1<<8` = 256 |
| `GAIN_MIN` | 64 | 게인 하한 (`0.25×`) — 과보정 방지 |
| `GAIN_MAX` | 1023 | 게인 상한 (`≈4.0×`) — 저조도 노이즈 폭주 방지 |

| 포트 | 방향 | 폭 | 설명 |
|---|---|---|---|
| `aclk`, `aresetn` | in | 1 | 동기 리셋 active-low |
| `s_axis_tdata` | in | 24 | `[23:16]=R [15:8]=G [7:0]=B` |
| `s_axis_tvalid/tready` | in/out | 1 | 입력 핸드셰이크 |
| `s_axis_tuser/tlast` | in | 1 | SOF/EOL — **프레임 경계 = tuser(SOF)** |
| `m_axis_tdata` | out | 24 | WB 적용 RGB888 |
| `m_axis_tvalid/tready/tuser/tlast` | out/in/out/out | 1 | 출력 AXIS video |

H/V 파라미터 없음 — 통계는 tuser~tuser 사이를 세므로 프레임 크기 무관.

## 4. 알고리즘 — Gray World

**통계 수집** (한 프레임 동안, 유효 픽셀마다):
```
acc_R += R;  acc_G += G;  acc_B += B;
```

**게인 산출** (프레임 경계에서, G 채널 기준):
```
gain_R = clamp( (acc_G << GAIN_SHIFT) / acc_R,  GAIN_MIN, GAIN_MAX )
gain_B = clamp( (acc_G << GAIN_SHIFT) / acc_B,  GAIN_MIN, GAIN_MAX )
gain_G = 1 << GAIN_SHIFT   // unity, G는 기준이라 그대로
```
- **나눗셈은 정수 나눗셈(floor)** — 골든과 RTL 비트일치 계약
- `acc_R==0` 또는 `acc_B==0`(전부 검정 채널) → 해당 게인 **unity(256) fallback** (0 나눗셈 회피)

**적용** (유효 픽셀마다, saturating):
```
R_out = sat8( (R * gain_R) >> GAIN_SHIFT )   // sat8: >255 → 255
G_out = G                                     // = (G*256)>>8, 항등
B_out = sat8( (B * gain_B) >> GAIN_SHIFT )
```

## 5. ⚠️ 프레임 지연 모델 (핵심 설계 결정 — R6/R7)

게인은 "프레임 전체 합"이 있어야 나오는데, 스트리밍은 마지막 픽셀까지 합을 모릅니다. 그래서 **게인은 이전 프레임 통계로 이번 프레임에 적용**됩니다. 게다가 나눗셈이 멀티사이클이라, 프레임 갭이 0이어도 안전하도록 **2프레임 지연**으로 확정합니다:

```
프레임 N 출력 = 프레임 N 입력 × gain( acc_{N-2} )     (N ≥ 2)
프레임 0, 1 출력 = 입력 그대로 (unity gain)              (통계 아직 없음)
```

- 프레임 N-2 EOL에 나눗셈 시작 → 프레임 N-1 동안 완료 → 프레임 N SOF에 active gain 래치
- 2프레임 여유 덕에 나눗셈 사이클 수 걱정 없이 프레임 경계에서만 게인 변경(R6) 보장
- 정적/완속 변화 장면(축사)에선 2프레임(≈0.13초 @15fps) 지연은 무시 가능
- **골든도 정확히 이 지연 모델**을 따름 → 비트일치

## 6. 프로토콜 규칙 (R1~R11) — 리뷰/검증 기준

| # | 규칙 |
|---|---|
| **R1** | m_axis tvalid 유지·페이로드 불변 (표준 계약) |
| **R2** | 스트리밍 1픽셀/사이클, 버블 자체 생성 금지 |
| **R3** | tuser/tlast가 해당 픽셀과 정렬 통과 |
| **R4** | 프레임당 출력 = 입력 픽셀 수 보존 |
| **R5** | 게인 적용 = §4 고정소수점(`>>SHIFT`, floor) + `sat8` 클램프 정확 |
| **R6** | 게인은 **프레임 경계(SOF)에서만** 변경 — 프레임 내 전 픽셀 동일 게인 |
| **R7** | 지연 모델 §5 정확: 프레임 N에 `gain(acc_{N-2})`, 프레임 0/1 unity |
| **R8** | 통계 `acc_R/G/B` = 프레임 유효 픽셀 채널 합 정확 (백프레셔 중 중복 누적 금지!) |
| **R9** | 나눗셈 = `(acc_G<<SHIFT)/acc_ch` floor, `GAIN_MIN/MAX` 클램프, `acc_ch==0`→unity |
| **R10** | 임의 시점 백프레셔(`m_tready=0`)에 데이터·통계 무손실 |
| **R11** | G 채널은 항등 통과 (gain_G=unity) |

**R8 주의**: 통계 누적은 **핸드셰이크 성공(`s_tvalid && s_tready`) 시에만**. 백프레셔로 같은 픽셀이 여러 사이클 머무를 때 중복 누적하면 합이 틀어짐 — TPG의 "카운터는 억셉트 시에만 전진"과 같은 원칙.

## 7. 아키텍처 개요 (구현은 RTL 주석이 교재)

```
s_axis ─┬─> [게인 적용 (R*gainR, B*gainB, sat8)] ─1단─> m_axis
        └─> [acc_R/G/B 누적] ─EOL─> [나눗셈 엔진] ─> [gain 파이프 2프레임] ─> active gain
```

- **적용 경로**: gamma와 같은 R1-safe 1단. 게인 곱셈 + 채도 클램프만 추가.
- **통계 경로**: 억셉트 시 acc 누적. SOF에서 프레임 합 확정 → 나눗셈 시작 → acc 리셋.
- **나눗셈 엔진**: 시퀀셜 long division (프레임당 2회: R, B). 프레임 경계에 여유(수천 사이클)라 멀티사이클 OK. 또는 파이프라인 나눗셈.
- **게인 파이프**: `acc_{N-2}` → `gain_N` 정렬용 2단 레지스터. SOF에서 active로 승격.

## 8. 검증 계획

- **골든** `wb_golden.py`: 정수 연산으로 §4-5 재현. 스티뮬러스 생성(색 캐스트 이미지) + 프레임별 acc/gain/지연 모델 반영한 기대 출력. `--compare`.
- **TB** `tb_axis_wb.v`: 파일 재생, **입력 valid × 출력 ready 랜덤화**(R8/R10), R1/R3/R6 모니터. **최소 5프레임**(첫 2 unity, 이후 보정 반영 확인).
- **스티뮬러스**: ① 붉은 틴트 이미지(R 과다) → WB가 gain_R<1로 회색화 ② 랜덤 ③ 검정 프레임(0 나눗셈 엣지) ④ 포화 유발(밝은 편향 → sat8 클램프)

## 9. 완료 기준 (DoD)

| 실행 | 스티뮬러스 | 모드 |
|---|---|---|
| 1 | 붉은 틴트, 5프레임 | valid=1 ready=1 |
| 2 | 랜덤 시드1, 5프레임 | valid=1 ready=1 |
| 3 | 랜덤 시드1, 5프레임 | valid=0 ready=0 (R2/R8 풀스로틀) |
| 4 | 검정→컬러 전환 (0 나눗셈) | valid=1 ready=1 |
| 5 | 밝은 편향 (sat8 클램프) | valid=1 ready=0 |

전부 TB PASS + COMPARE PASS.

## 10. 확정 필요 항목 (구현 착수 전 검토)

1. **지연 = 2프레임** (§5). 1프레임으로 줄이려면 프레임 갭 보장 필요 → 2프레임이 안전.
2. **게인 = G 기준** (gain_G=1). R/B만 보정. (대안: 밝기 보존형 — Y 기준 정규화. 복잡, v2로 보류)
3. **게인 클램프 [0.25×, 4×]**, **0 나눗셈 → unity fallback**.
4. **나눗셈 구현**: 시퀀셜 long division (직접 구현, 학습) vs Verilog `/`(합성기 생성). → 학습 목적상 시퀀셜 권장.

이 4개로 확정하면 골든→TB→RTL 착수. 바꿀 항목 있으면 알려주세요 (골든·TB·RTL 세 곳이 같이 움직임).

## 11. 실행 방법 (확정)

```powershell
# sim/ 폴더
$env:PATH = "C:\AMDDesignTools\2025.2\Vivado\bin;" + $env:PATH
xvlog ..\rtl\axis_whitebalance.v tb_axis_wb.v
xelab tb_axis_wb -s wb_sim
python ..\model\wb_golden.py --frames 5 --img tint --gen wb_in.hex --exp wb_exp.hex
xsim wb_sim -R -testplusarg '"valid_mode=1"' -testplusarg '"ready_mode=1"' -testplusarg '"frames=5"'
python ..\model\wb_golden.py --frames 5 --img tint --compare wb_out.hex
# --img: tint / random / black2color / bright
```

### 검증 기록 (2026-07-26, XSim 2025.2)

| 실행 | 조건 | 결과 |
|---|---|---|
| 1 | tint, v1r1 | TB PASS · COMPARE PASS |
| 2 | random, v1r1 | TB PASS · COMPARE PASS |
| 3 | random, **v0r0** | TB PASS · COMPARE PASS · **R2 OK 15360 무버블** |
| 4 | black2color, v1r1 | TB PASS · COMPARE PASS (0나눗셈 fallback) |
| 5 | bright, v1r0 | TB PASS · COMPARE PASS (sat8 클램프) |

**구현 중 잡은 버그 (교재)**: 최초 구현은 각 프레임 **첫 픽셀(SOF)에서만** R 채널이 1 어긋났다.
원인 = `active_gain <= pending`이 SOF에서 실행되지만 그건 다음 사이클 반영이라, SOF 픽셀
자신은 이전 게인으로 곱해짐(1사이클 스큐). 골든은 프레임 전체를 새 게인으로 계산 → 불일치.
수정 = SOF 사이클만 `pending`을 조합으로 바로 사용(`gR_now = sof ? pending : active`).
D4가 우연히 통과했던 건 그 프레임 게인이 unity라 차이가 안 드러났기 때문 — **엣지 스티뮬러스
(random/bright)가 없었으면 놓쳤을 버그**. 검증 다양성의 실례.
