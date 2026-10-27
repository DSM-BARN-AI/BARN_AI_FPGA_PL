#!/usr/bin/env python3
"""Extract the frame hex dump from a UART terminal log (BARN AI step 2).

Keeps only 6-hex-digit lines between ---FRAME-BEGIN--- and ---FRAME-END---.

Usage:
  python model/uart_to_hex.py uart.log frame.hex
  python model/tpg_golden.py --width 64 --height 48 --pattern 0 --frames 1 --compare frame.hex
"""
import re
import sys

def main():
    if len(sys.argv) != 3:
        raise SystemExit(__doc__)
    src, dst = sys.argv[1], sys.argv[2]
    pixels, inside = [], False
    hex6 = re.compile(r"^[0-9a-fA-F]{6}$")
    with open(src, "r", errors="replace") as f:
        for raw in f:
            line = raw.strip()
            if "---FRAME-BEGIN---" in line:
                inside, pixels = True, []   # keep the LAST dump if several
                continue
            if "---FRAME-END---" in line:
                inside = False
                continue
            if inside and hex6.match(line):
                pixels.append(line.lower())
    if not pixels:
        raise SystemExit("no frame dump found (missing BEGIN/END markers?)")
    with open(dst, "w") as f:
        f.write("\n".join(pixels) + "\n")
    print("wrote %s (%d pixels)" % (dst, len(pixels)))

if __name__ == "__main__":
    main()
