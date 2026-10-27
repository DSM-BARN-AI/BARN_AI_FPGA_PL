#!/usr/bin/env python3
"""Golden model + comparator for axis_gaussian (BARN AI step 8 denoise).

3x3 Gaussian [1 2 1;2 4 2;1 2 1]/16, per channel, border=clamp, >>4 floor.
Contract = docs/09 sections 4-5, bit-exact with RTL.

Generate stimulus + expected:
  python model/gaussian_golden.py --width 64 --height 48 --img bars \
      --gen sim/gauss_in.hex --exp sim/gauss_exp.hex

Compare an RTL dump (recomputes expected from same args):
  python model/gaussian_golden.py --width 64 --height 48 --img bars \
      --compare sim/gauss_out.hex
"""
import argparse
import random
import sys

BARS = [0xFFFFFF, 0xFFFF00, 0x00FFFF, 0x00FF00,
        0xFF00FF, 0xFF0000, 0x0000FF, 0x000000]
K = [[1, 2, 1], [2, 4, 2], [1, 2, 1]]


def src_frame(w, h, img, seed, f):
    if img == "bars":
        return [BARS[x // (w // 8)] for _ in range(h) for x in range(w)]
    if img == "random":
        rng = random.Random(seed * 1000 + f)
        return [rng.getrandbits(24) for _ in range(w * h)]
    if img == "impulse":                    # single bright dot -> kernel spread
        cy, cx = h // 2, w // 2
        return [0xFFFFFF if (y == cy and x == cx) else 0
                for y in range(h) for x in range(w)]
    if img == "solid":                      # uniform -> filter invariant
        return [0x808080] * (w * h)
    raise SystemExit("unknown --img " + img)


def conv(frame, w, h):
    def px(x, y):
        return frame[min(max(y, 0), h - 1) * w + min(max(x, 0), w - 1)]
    out = []
    for y in range(h):
        for x in range(w):
            sR = sG = sB = 0
            for dy in (-1, 0, 1):
                for dx in (-1, 0, 1):
                    p = px(x + dx, y + dy)
                    k = K[dy + 1][dx + 1]
                    sR += k * ((p >> 16) & 255)
                    sG += k * ((p >> 8) & 255)
                    sB += k * (p & 255)
            out.append(((sR >> 4) << 16) | ((sG >> 4) << 8) | (sB >> 4))
    return out


def build(a):
    stim, exp = [], []
    for f in range(a.frames):
        fr = src_frame(a.width, a.height, a.img, a.seed, f)
        stim += fr
        exp += conv(fr, a.width, a.height)
    return stim, exp


def main():
    ap = argparse.ArgumentParser(description="axis_gaussian golden / comparator")
    ap.add_argument("--width", type=int, default=64)
    ap.add_argument("--height", type=int, default=48)
    ap.add_argument("--frames", type=int, default=1)
    ap.add_argument("--img", default="bars",
                    choices=["bars", "random", "impulse", "solid"])
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--gen", help="write stimulus hex")
    ap.add_argument("--exp", help="write expected hex")
    ap.add_argument("--compare", help="RTL dump to compare")
    a = ap.parse_args()

    if a.img == "bars" and a.width % 8:
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
        print("COMPARE PASS" if ok else "COMPARE FAIL")
        sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
