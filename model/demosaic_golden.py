#!/usr/bin/env python3
"""Golden model + comparator for axis_demosaic (BARN AI step 4).

Contract = docs/04_demosaic_spec.md sections 4-6, bit-exact:
  - pixel class from (y&1 ^ phase>>1, x&1 ^ phase&1): R / Gr / Gb / B
  - bilinear 3x3, border = coordinate clamp (edge replicate)
  - rounding = truncation (floor) on >>1 and >>2

Generate stimulus + expected pair (TB reads both with $readmemh):
  python model/demosaic_golden.py --width 64 --height 48 --img bars --phase 0 \
      --gen sim/bayer_in.hex --exp sim/rgb_exp.hex
  (--img random --seed 1 varies per frame: frame f uses seed*1000+f)

Compare an RTL dump (one %06x pixel per line, same args as generation):
  python model/demosaic_golden.py --width 64 --height 48 --img bars --phase 0 \
      --compare sim/dem_out.hex
"""
import argparse
import random
import sys

BARS = [0xFFFFFF, 0xFFFF00, 0x00FFFF, 0x00FF00,
        0xFF00FF, 0xFF0000, 0x0000FF, 0x000000]


def src_frame(w, h, img, seed, f):
    """Source RGB image (list of h rows of w ints 0xRRGGBB)."""
    if img == "bars":
        row = [BARS[x // (w // 8)] for x in range(w)]
        return [row[:] for _ in range(h)]
    if img == "ramp":
        row = [((x & 255) << 16) | ((x & 255) << 8) | (x & 255) for x in range(w)]
        return [row[:] for _ in range(h)]
    if img == "random":
        rng = random.Random(seed * 1000 + f)
        return [[rng.getrandbits(24) for _ in range(w)] for _ in range(h)]
    raise SystemExit("unknown --img " + img)


def bayer_class(x, y, phase):
    """0=R 1=Gr 2=Gb 3=B  (spec section 4)."""
    cx = (x & 1) ^ (phase & 1)
    cy = (y & 1) ^ ((phase >> 1) & 1)
    return (cy << 1) | cx


def bayer_sample(rgb, cls):
    if cls == 0:
        return (rgb >> 16) & 255          # R
    if cls == 3:
        return rgb & 255                  # B
    return (rgb >> 8) & 255               # Gr / Gb


def make_bayer(src, w, h, phase):
    return [[bayer_sample(src[y][x], bayer_class(x, y, phase))
             for x in range(w)] for y in range(h)]


def demosaic(b, w, h, phase):
    """Bilinear 3x3 with clamp + truncation. Returns flat list of 0xRRGGBB."""
    out = []
    for y in range(h):
        for x in range(w):
            def p(dx, dy):
                return b[min(max(y + dy, 0), h - 1)][min(max(x + dx, 0), w - 1)]
            P = p(0, 0)
            cross = (p(-1, 0) + p(1, 0) + p(0, -1) + p(0, 1)) >> 2
            diag = (p(-1, -1) + p(1, -1) + p(-1, 1) + p(1, 1)) >> 2
            lr = (p(-1, 0) + p(1, 0)) >> 1
            ud = (p(0, -1) + p(0, 1)) >> 1
            cls = bayer_class(x, y, phase)
            if cls == 0:                  # R site
                r, g, bl = P, cross, diag
            elif cls == 1:                # Gr site (R row)
                r, g, bl = lr, P, ud
            elif cls == 2:                # Gb site (B row)
                r, g, bl = ud, P, lr
            else:                         # B site
                r, g, bl = diag, cross, P
            out.append((r << 16) | (g << 8) | bl)
    return out


def build(a):
    """All frames concatenated: (bayer samples, expected pixels)."""
    bay, exp = [], []
    for f in range(a.frames):
        src = src_frame(a.width, a.height, a.img, a.seed, f)
        b = make_bayer(src, a.width, a.height, a.phase)
        bay += [b[y][x] for y in range(a.height) for x in range(a.width)]
        exp += demosaic(b, a.width, a.height, a.phase)
    return bay, exp


def main():
    ap = argparse.ArgumentParser(description="axis_demosaic golden model / comparator")
    ap.add_argument("--width", type=int, default=64)
    ap.add_argument("--height", type=int, default=48)
    ap.add_argument("--frames", type=int, default=1)
    ap.add_argument("--img", default="bars", choices=["bars", "ramp", "random"])
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--phase", type=int, default=0, choices=[0, 1, 2, 3])
    ap.add_argument("--gen", help="write bayer stimulus hex (%%02x per line)")
    ap.add_argument("--exp", help="write expected RGB hex (%%06x per line)")
    ap.add_argument("--compare", help="RTL dump to compare against expected")
    a = ap.parse_args()

    if a.img == "bars" and a.width % 8:
        raise SystemExit("width must be a multiple of 8 for bars")

    bay, exp = build(a)

    if a.gen:
        with open(a.gen, "w") as f:
            f.write("\n".join("%02x" % v for v in bay) + "\n")
        print("wrote %s (%d samples)" % (a.gen, len(bay)))

    if a.exp:
        with open(a.exp, "w") as f:
            f.write("\n".join("%06x" % v for v in exp) + "\n")
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
