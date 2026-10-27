#!/usr/bin/env python3
"""Chain golden for the full ISP path (MUX_SEL=1), BARN AI step 5/8 hardware.

Hardware path being modelled (BD: image_block):
  axis_tpg_B (pattern 2'b10, bayer bars RGGB)
    -> conv 24->8 (tdata[7:0])
    -> axis_demosaic  (bilinear, clamp, floor)
    -> axis_gaussian  (3x3 [1 2 1;2 4 2;1 2 1]>>4, clamp, floor)
    -> axis_whitebalance (Gray World, 2-frame delay -> STEADY STATE here)
    -> axis_vid_mux (s1)
    -> axis_gamma (256x8 LUT)
    -> VDMA S2MM -> DDR

Each stage reuses the SAME functions as that block's own verified golden
model, so there is exactly one source of truth per algorithm.

WB steady state: the TPG feeds an identical frame forever, so every frame's
accumulator is identical (call it A) and from frame 2 on the applied gain is
gain(A). The capture happens ~650 frames in, so steady state is what lands in
DDR.

Generate expected DDR content:
  python model/isp_chain_golden.py --width 64 --height 48 \
      --lut rtl/gamma_lut.mem --exp sim/isp_exp.hex

Compare a UART capture (after uart_to_hex.py):
  python model/isp_chain_golden.py --width 64 --height 48 \
      --lut rtl/gamma_lut.mem --compare frame.hex

  --stage lets you stop early to localise a mismatch:
      demosaic | gaussian | wb | gamma (default)
"""
import argparse
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import demosaic_golden as DM
import gaussian_golden as GS
import wb_golden as WB
import gamma_golden as GM


def build(w, h, phase, lut, gmin, gmax, stage):
    # 1) source bars -> bayer sampling (identical to TPG pattern 2'b10)
    src = DM.src_frame(w, h, "bars", 0, 0)          # list of rows, 0xRRGGBB
    bay = DM.make_bayer(src, w, h, phase)           # list of rows, 8-bit samples

    # 2) demosaic -> flat RGB888
    out = DM.demosaic(bay, w, h, phase)
    if stage == "demosaic":
        return out

    # 3) gaussian 3x3
    out = GS.conv(out, w, h)
    if stage == "gaussian":
        return out

    # 4) white balance, steady state (gain from this very frame's stats)
    aR, aG, aB = WB.accumulate(out)
    gR, gG, gB = WB.calc_gain(aR, aG, aB, gmin, gmax)
    print("  WB steady gains: gR=%d gG=%d gB=%d  (unity=%d)" % (gR, gG, gB, WB.UNITY))
    out = [WB.apply_gain(p, gR, gG, gB) for p in out]
    if stage == "wb":
        return out

    # 5) gamma LUT
    out = [GM.apply_lut(p, lut) for p in out]
    return out


def main():
    ap = argparse.ArgumentParser(description="full ISP chain golden / comparator")
    ap.add_argument("--width", type=int, default=64)
    ap.add_argument("--height", type=int, default=48)
    ap.add_argument("--phase", type=int, default=0, choices=[0, 1, 2, 3])
    ap.add_argument("--lut", default="rtl/gamma_lut.mem")
    ap.add_argument("--gmin", type=int, default=64)
    ap.add_argument("--gmax", type=int, default=1023)
    ap.add_argument("--stage", default="gamma",
                    choices=["demosaic", "gaussian", "wb", "gamma"])
    ap.add_argument("--exp", help="write expected hex")
    ap.add_argument("--compare", help="capture to compare against expected")
    a = ap.parse_args()

    lut = GM.load_lut(a.lut)
    exp = build(a.width, a.height, a.phase, lut, a.gmin, a.gmax, a.stage)
    print("  stage=%s, %d pixels" % (a.stage, len(exp)))

    if a.exp:
        with open(a.exp, "w") as f:
            f.write("\n".join("%06x" % p for p in exp) + "\n")
        print("wrote %s" % a.exp)

    if a.compare:
        with open(a.compare) as f:
            got = [int(l, 16) for l in (s.strip() for s in f) if l]
        ok = True
        if len(got) != len(exp):
            print("LENGTH MISMATCH: sim=%d golden=%d" % (len(got), len(exp)))
            ok = False
        shown = 0
        for i in range(min(len(got), len(exp))):
            if got[i] != exp[i]:
                ok = False
                if shown < 10:
                    yy, xx = divmod(i, a.width)
                    print("MISMATCH idx=%d x=%d y=%d hw=%06x golden=%06x"
                          % (i, xx, yy, got[i], exp[i]))
                    shown += 1
        if not ok and shown == 10:
            print("(further mismatches suppressed)")
        print("COMPARE PASS" if ok else "COMPARE FAIL")
        sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
