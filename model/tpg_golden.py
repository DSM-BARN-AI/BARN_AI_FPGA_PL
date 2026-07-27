#!/usr/bin/env python3
"""Golden model + comparator for axis_tpg (BARN AI step 1).

Pattern definitions must match docs/01_tpg_spec.md section 6 exactly.

Generate golden hex:
  python model/tpg_golden.py --width 64 --height 48 --pattern 0 --frames 2 --out golden.hex

Compare a simulation dump (one %06x pixel per line):
  python model/tpg_golden.py --width 64 --height 48 --pattern 0 --frames 2 --compare sim/tpg_out.hex

Render first frame to PNG for eyeballing (needs Pillow):
  python model/tpg_golden.py --width 64 --height 48 --pattern 0 --png colorbar.png
"""
import argparse
import sys

BARS = [0xFFFFFF, 0xFFFF00, 0x00FFFF, 0x00FF00,
        0xFF00FF, 0xFF0000, 0x0000FF, 0x000000]
SOLID = 0x808080


def pixel(x, y, w, pattern):
    if pattern == 0:                       # 8 color bars
        return BARS[x // (w // 8)]
    if pattern == 1:                       # horizontal ramp, R=G=B=x[7:0]
        v = x & 0xFF
        return (v << 16) | (v << 8) | v
    if pattern == 2:                       # bayer-sampled bars, RGGB (docs/04 s4)
        rgb = BARS[x // (w // 8)]          # sample lands in [7:0], upper 16b = 0
        if (y & 1) == 0 and (x & 1) == 0:
            return (rgb >> 16) & 255       # R site
        if (y & 1) == 1 and (x & 1) == 1:
            return rgb & 255               # B site
        return (rgb >> 8) & 255            # G site
    if pattern == 3:                       # solid gray
        return SOLID
    raise SystemExit("unknown pattern")


def gen(w, h, frames, pattern):
    frame = [pixel(x, y, w, pattern) for y in range(h) for x in range(w)]
    return frame * frames


def main():
    ap = argparse.ArgumentParser(description="axis_tpg golden model / comparator")
    ap.add_argument("--width", type=int, default=64)
    ap.add_argument("--height", type=int, default=48)
    ap.add_argument("--frames", type=int, default=2)
    ap.add_argument("--pattern", type=int, default=0, choices=[0, 1, 2, 3])
    ap.add_argument("--out", help="write golden hex to this path")
    ap.add_argument("--compare", help="sim dump to compare against golden")
    ap.add_argument("--png", help="save first frame as PNG (needs Pillow)")
    a = ap.parse_args()

    if a.width % 8:
        raise SystemExit("width must be a multiple of 8")

    golden = gen(a.width, a.height, a.frames, a.pattern)

    if a.out:
        with open(a.out, "w") as f:
            f.write("\n".join("%06x" % p for p in golden) + "\n")
        print("wrote %s (%d pixels)" % (a.out, len(golden)))

    if a.png:
        try:
            from PIL import Image
            n = a.width * a.height
            img = Image.new("RGB", (a.width, a.height))
            img.putdata([((p >> 16) & 255, (p >> 8) & 255, p & 255)
                         for p in golden[:n]])
            img.save(a.png)
            print("wrote", a.png)
        except ImportError:
            print("Pillow not installed (pip install Pillow); skipping png")

    if a.compare:
        with open(a.compare) as f:
            got = [int(l, 16) for l in (s.strip() for s in f) if l]
        ok = True
        if len(got) != len(golden):
            print("LENGTH MISMATCH: sim=%d golden=%d" % (len(got), len(golden)))
            ok = False
        shown = 0
        fpx = a.width * a.height
        for i in range(min(len(got), len(golden))):
            if got[i] != golden[i]:
                ok = False
                if shown < 10:
                    fr, r = divmod(i, fpx)
                    yy, xx = divmod(r, a.width)
                    print("MISMATCH idx=%d frame=%d x=%d y=%d sim=%06x golden=%06x"
                          % (i, fr, xx, yy, got[i], golden[i]))
                    shown += 1
        if not ok and shown == 10:
            print("(further mismatches suppressed)")
        print("COMPARE PASS" if ok else "COMPARE FAIL")
        sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
