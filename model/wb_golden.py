#!/usr/bin/env python3
"""Golden model + comparator for axis_whitebalance (BARN AI step 8).

Gray World, integer-exact, 2-frame delay. Contract = docs/08 sections 4-5:
  gain_ch = clamp((acc_G << 8) / acc_ch, GMIN, GMAX), acc_ch==0 -> unity
  out_ch  = sat8((in_ch * gain_ch) >> 8)   ; gain_G = unity (256)
  frame N uses gain(acc_{N-2}); frames 0,1 = unity

Generate stimulus + expected (both 24-bit %06x, TB reads with $readmemh):
  python model/wb_golden.py --width 64 --height 48 --frames 5 --img tint \
      --gen sim/wb_in.hex --exp sim/wb_exp.hex

Compare an RTL dump (recomputes expected from the same args):
  python model/wb_golden.py --width 64 --height 48 --frames 5 --img tint \
      --compare sim/wb_out.hex
"""
import argparse
import random
import sys

BARS = [0xFFFFFF, 0xFFFF00, 0x00FFFF, 0x00FF00,
        0xFF00FF, 0xFF0000, 0x0000FF, 0x000000]
SHIFT = 8
UNITY = 1 << SHIFT


def src_frame(w, h, img, seed, f):
    """One source frame as a flat list of 0xRRGGBB (per-frame varies for delay)."""
    if img == "tint":                       # gray ramp with a red cast
        out = []
        for _ in range(h):
            for x in range(w):
                g = (x * 255) // (w - 1) if w > 1 else 128
                r = min(255, g * 3 // 2)    # R boosted -> WB should gray it out
                out.append((r << 16) | (g << 8) | g)
        return out
    if img == "random":                     # per-frame seed -> exercises delay
        rng = random.Random(seed * 1000 + f)
        return [rng.getrandbits(24) for _ in range(w * h)]
    if img == "black2color":                # frame0 black (0-div), then bars
        if f == 0:
            return [0] * (w * h)
        return [BARS[x // (w // 8)] for _ in range(h) for x in range(w)]
    if img == "bright":                      # low avg-R, some high-R -> sat8
        out = []
        for _ in range(h):
            for x in range(w):
                r = 250 if (x % 8 == 0) else 10   # avg_R low -> gain_R clamps high
                out.append((r << 16) | (200 << 8) | 0)
        return out
    raise SystemExit("unknown --img " + img)


def accumulate(frame):
    aR = aG = aB = 0
    for px in frame:
        aR += (px >> 16) & 255
        aG += (px >> 8) & 255
        aB += px & 255
    return aR, aG, aB


def calc_gain(aR, aG, aB, gmin, gmax):
    def g(den):
        if den == 0:
            return UNITY                    # 0-div fallback
        v = (aG << SHIFT) // den            # floor
        return max(gmin, min(gmax, v))
    return g(aR), UNITY, g(aB)


def sat8(v):
    return 255 if v > 255 else v


def apply_gain(px, gR, gG, gB):
    R = (px >> 16) & 255
    G = (px >> 8) & 255
    B = px & 255
    return (sat8((R * gR) >> SHIFT) << 16) | \
           (sat8((G * gG) >> SHIFT) << 8) | \
            sat8((B * gB) >> SHIFT)


def build(a):
    frames = [src_frame(a.width, a.height, a.img, a.seed, f) for f in range(a.frames)]
    accs = [accumulate(fr) for fr in frames]
    stim, exp = [], []
    for N in range(a.frames):
        if N < 2:
            gR, gG, gB = UNITY, UNITY, UNITY          # no stats yet
        else:
            gR, gG, gB = calc_gain(*accs[N - 2], a.gmin, a.gmax)
        for px in frames[N]:
            stim.append(px)
            exp.append(apply_gain(px, gR, gG, gB))
    return stim, exp


def main():
    ap = argparse.ArgumentParser(description="axis_whitebalance golden / comparator")
    ap.add_argument("--width", type=int, default=64)
    ap.add_argument("--height", type=int, default=48)
    ap.add_argument("--frames", type=int, default=5)
    ap.add_argument("--img", default="tint",
                    choices=["tint", "random", "black2color", "bright"])
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--gmin", type=int, default=64)     # 0.25x
    ap.add_argument("--gmax", type=int, default=1023)   # ~4.0x
    ap.add_argument("--gen", help="write stimulus hex (%%06x per line)")
    ap.add_argument("--exp", help="write expected hex")
    ap.add_argument("--compare", help="RTL dump to compare (recomputes expected)")
    a = ap.parse_args()

    if a.img in ("black2color",) and a.width % 8:
        raise SystemExit("width must be multiple of 8 for bars")

    stim, exp = build(a)

    if a.gen:
        with open(a.gen, "w") as f:
            f.write("\n".join("%06x" % p for p in stim) + "\n")
        print("wrote %s (%d pixels)" % (a.gen, len(stim)))
    if a.exp:
        with open(a.exp, "w") as f:
            f.write("\n".join("%06x" % p for p in exp) + "\n")
        print("wrote %s (%d pixels)" % (a.exp, len(exp)))

    if a.compare:
        with open(a.compare) as f:
            got = [int(l, 16) for l in (s.strip() for s in f) if l]
        ok = True
        if len(got) != len(exp):
            print("LENGTH MISMATCH: sim=%d golden=%d" % (len(got), len(exp)))
            ok = False
        shown = 0
        fpx = a.width * a.height
        for i in range(min(len(got), len(exp))):
            if got[i] != exp[i]:
                ok = False
                if shown < 10:
                    fr, r = divmod(i, fpx)
                    yy, xx = divmod(r, a.width)
                    print("MISMATCH idx=%d frame=%d x=%d y=%d sim=%06x golden=%06x"
                          % (i, fr, xx, yy, got[i], exp[i]))
                    shown += 1
        if not ok and shown == 10:
            print("(further mismatches suppressed)")
        print("COMPARE PASS" if ok else "COMPARE FAIL")
        sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
