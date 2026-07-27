#!/usr/bin/env python3
"""Golden model + comparator for axis_gamma (BARN AI step 5).

Contract = docs/05_gamma_mux_spec.md section B: per-channel 256x8 LUT,
same curve on R/G/B. The .mem FILE is the single source of truth -
RTL ($readmemh) and this model both read it, so bit-match is automatic.

Make the LUT (gamma 1/2.2 encode, half-up rounding):
  python model/gamma_golden.py --gen-lut sim/gamma_lut.mem

Make stimulus + expected (24-bit %06x stream):
  python model/gamma_golden.py --width 64 --height 48 --img random --seed 1 \
      --lut sim/gamma_lut.mem --gen sim/gamma_in.hex --exp sim/gamma_exp.hex

Apply LUT to any %06x stream (step-5 chain golden reuses this):
  python model/gamma_golden.py --lut sim/gamma_lut.mem --apply in.hex out.hex

Compare an RTL dump (recomputes expected from the same args):
  python model/gamma_golden.py --width 64 --height 48 --img random --seed 1 \
      --lut sim/gamma_lut.mem --compare sim/gamma_out.hex
"""
import argparse
import random
import sys

BARS = [0xFFFFFF, 0xFFFF00, 0x00FFFF, 0x00FF00,
        0xFF00FF, 0xFF0000, 0x0000FF, 0x000000]
GAMMA = 1.0 / 2.2


def lut_value(i):
    return int(255.0 * ((i / 255.0) ** GAMMA) + 0.5)   # half-up (banker's X)


def load_lut(path):
    with open(path) as f:
        lut = [int(l, 16) for l in (s.strip() for s in f) if l]
    if len(lut) != 256:
        raise SystemExit("LUT must have 256 entries, got %d" % len(lut))
    return lut


def apply_lut(pix, lut):
    return (lut[(pix >> 16) & 255] << 16) | (lut[(pix >> 8) & 255] << 8) | lut[pix & 255]


def src_stream(a):
    out = []
    for f in range(a.frames):
        if a.img == "bars":
            fr = [BARS[x // (a.width // 8)]
                  for _ in range(a.height) for x in range(a.width)]
        elif a.img == "ramp":
            fr = [((x & 255) << 16) | ((x & 255) << 8) | (x & 255)
                  for _ in range(a.height) for x in range(a.width)]
        elif a.img == "random":
            rng = random.Random(a.seed * 1000 + f)
            fr = [rng.getrandbits(24)
                  for _ in range(a.width * a.height)]
        else:
            raise SystemExit("unknown --img " + a.img)
        out += fr
    return out


def main():
    ap = argparse.ArgumentParser(description="axis_gamma golden model / comparator")
    ap.add_argument("--width", type=int, default=64)
    ap.add_argument("--height", type=int, default=48)
    ap.add_argument("--frames", type=int, default=1)
    ap.add_argument("--img", default="random", choices=["bars", "ramp", "random"])
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--lut", default="gamma_lut.mem")
    ap.add_argument("--gen-lut", dest="gen_lut", help="write the 256x8 LUT hex")
    ap.add_argument("--gen", help="write stimulus hex (%%06x per line)")
    ap.add_argument("--exp", help="write expected hex (LUT applied)")
    ap.add_argument("--apply", nargs=2, metavar=("IN", "OUT"),
                    help="apply LUT to IN stream, write OUT")
    ap.add_argument("--compare", help="RTL dump to compare (recomputes expected)")
    a = ap.parse_args()

    if a.gen_lut:
        with open(a.gen_lut, "w") as f:
            f.write("\n".join("%02x" % lut_value(i) for i in range(256)) + "\n")
        print("wrote %s (256 entries, gamma=1/2.2 encode)" % a.gen_lut)
        if not (a.gen or a.exp or a.apply or a.compare):
            return

    lut = load_lut(a.lut)

    if a.apply:
        with open(a.apply[0]) as f:
            src = [int(l, 16) for l in (s.strip() for s in f) if l]
        with open(a.apply[1], "w") as f:
            f.write("\n".join("%06x" % apply_lut(p, lut) for p in src) + "\n")
        print("wrote %s (%d pixels)" % (a.apply[1], len(src)))
        return

    stream = src_stream(a)

    if a.gen:
        with open(a.gen, "w") as f:
            f.write("\n".join("%06x" % p for p in stream) + "\n")
        print("wrote %s (%d pixels)" % (a.gen, len(stream)))

    exp = [apply_lut(p, lut) for p in stream]

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
