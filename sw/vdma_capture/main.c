/* ============================================================
 * BARN AI step 2 - TPG -> AXI VDMA (S2MM) -> DDR capture test
 * Bare-metal (standalone), Vitis 2025.2, Zybo Z7-20
 * Guide: docs/02_vdma_capture_guide.md (register map: section 8)
 *
 * Provided verification infra - the DUT here is the block design,
 * not this file. Reads back captured frames and checks them against
 * the same golden definition as model/tpg_golden.py (pattern 0).
 * ============================================================ */
#include "xparameters.h"
#include "xil_types.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "sleep.h"

/* If this macro name differs, search "VDMA" in xparameters.h */
#define VDMA_BASE     XPAR_AXI_VDMA_0_BASEADDR

/* ---- step3 regfile (axil_regfile) ----
 * base is fixed by scripts/add_regfile_bd.tcl (assign_bd_address).
 * TPG enable/pattern used to be hardwired xlconstants; now SW-controlled,
 * so the TPG stays silent until CTRL bit0 is set below.            */
#define REGF_BASE     0x43C00000u
#define REGF_ID       0x00   /* RO, magic 0xBA510301 */
#define REGF_SCRATCH  0x04   /* RW test reg          */
#define REGF_CTRL     0x08   /* bit0 = tpg_enable    */
#define REGF_TPG      0x0C   /* [1:0] = pattern_sel  */
#define REGF_STATUS   0x10   /* RO, status_in (=0 for now) */
#define REGF_MAGIC    0xBA510301u

/* ---- S2MM register offsets (PG020) ---- */
#define S2MM_VDMACR   0x30  /* bit0 RS, bit1 Circular            */
#define S2MM_VDMASR   0x34  /* bit0 Halted, bit4/5/6 errors      */
#define S2MM_VSIZE    0xA0  /* lines; write LAST - starts channel */
#define S2MM_HSIZE    0xA4  /* bytes per line                    */
#define S2MM_STRIDE   0xA8  /* line pitch in bytes               */
#define S2MM_ADDR1    0xAC
#define S2MM_ADDR2    0xB0
#define S2MM_ADDR3    0xB4

/* ---- frame geometry: must match axis_tpg BD parameters ---- */
#define H_ACTIVE      64
#define V_ACTIVE      48
#define BYTES_PP      3
#define HSIZE_B       (H_ACTIVE * BYTES_PP)   /* 192 */
#define STRIDE_B      256                     /* deliberately > HSIZE (stride practice) */
#define NBUF          3
#define BUF_BASE      0x02000000u             /* DDR, away from code/heap */
#define FRAME_B       (STRIDE_B * V_ACTIVE)

#define DUMP_FRAME    1   /* 1: dump buffer0 as hex for PC compare */

/* step5: which mux path to capture (compile-time).
 *  0 = TPG-A -> mux(s0) -> gamma  (color bars; bars are gamma-invariant
 *      since every channel is 0x00/0xFF, so the built-in bars check stays
 *      valid even with gamma in the path)
 *  1 = TPG-B(bayer) -> demosaic -> mux(s1) -> gamma  (interpolated RGB;
 *      built-in check skipped, verify on PC with the chain golden)          */
#define MUX_SEL       0

/* golden: pattern 0 (color bars), same table as model/tpg_golden.py */
static const u32 BARS[8] = {
    0xFFFFFF, 0xFFFF00, 0x00FFFF, 0x00FF00,
    0xFF00FF, 0xFF0000, 0x0000FF, 0x000000
};
#define BAR_W (H_ACTIVE / 8)

static u32 expected_pixel(int xp, int yp)
{
    (void)yp;
    return BARS[xp / BAR_W];
}

/* NOTE byte order: AXI is little-endian, so tdata[7:0] (B) lands at the
 * LOWEST address. Memory layout per pixel is [B][G][R].               */
static u32 read_pixel(const u8 *line, int xp)
{
    return ((u32)line[xp*3 + 2] << 16) |   /* R */
           ((u32)line[xp*3 + 1] <<  8) |   /* G */
           ((u32)line[xp*3 + 0]);          /* B */
}

static void print_hex6(u32 v)
{
    static const char *H = "0123456789abcdef";
    char s[8];
    int i;
    for (i = 0; i < 6; i++)
        s[5 - i] = H[(v >> (4 * i)) & 0xF];
    s[6] = '\0';
    xil_printf("%s\r\n", s);
}

int main(void)
{
    u32 sr;
    int b, xp, yp, bad;

    xil_printf("\r\n== BARN AI step2/3/5: regfile TPG->mux->gamma->VDMA->DDR ==\r\n");

    /* 0) regfile sanity + TPG control (step 3)
     *    ID read proves the AXI-Lite path; SCRATCH proves the write path.
     *    Enable the TPG *before* starting VDMA: TPG asserts tvalid and
     *    stalls on tready=0 (R1), so the first accepted pixel is still
     *    (0,0)+SOF when VDMA comes up - backpressure does the sync.   */
    {
        u32 id = Xil_In32(REGF_BASE + REGF_ID);
        xil_printf("regfile ID      = 0x%08x (expect 0x%08x)\r\n", id, REGF_MAGIC);
        if (id != REGF_MAGIC) {
            xil_printf("FATAL: regfile ID mismatch - wrong bitstream/platform?\r\n");
            while (1) ;
        }
        Xil_Out32(REGF_BASE + REGF_SCRATCH, 0xA55A1234u);
        xil_printf("scratch readback= 0x%08x (expect 0xa55a1234)\r\n",
                   Xil_In32(REGF_BASE + REGF_SCRATCH));
        xil_printf("status          = 0x%08x (expect 0 for now)\r\n",
                   Xil_In32(REGF_BASE + REGF_STATUS));

        Xil_Out32(REGF_BASE + REGF_TPG,  0);  /* TPG-A pattern 0 (bars)  */
        Xil_Out32(REGF_BASE + REGF_CTRL,
                  (1u << 0) | ((MUX_SEL & 1u) << 1)); /* enable + mux_sel */
        xil_printf("mux path        = %d (%s)\r\n", MUX_SEL,
                   MUX_SEL ? "TPG-B->demosaic->gamma" : "TPG-A->gamma(bars)");
    }

    /* 1) program S2MM (order matters: VSIZE last starts the engine) */
    Xil_Out32(VDMA_BASE + S2MM_VDMACR, (1u << 0) | (1u << 1)); /* RS + Circular */
    Xil_Out32(VDMA_BASE + S2MM_ADDR1,  BUF_BASE + 0 * FRAME_B);
    Xil_Out32(VDMA_BASE + S2MM_ADDR2,  BUF_BASE + 1 * FRAME_B);
    Xil_Out32(VDMA_BASE + S2MM_ADDR3,  BUF_BASE + 2 * FRAME_B);
    Xil_Out32(VDMA_BASE + S2MM_HSIZE,  HSIZE_B);
    Xil_Out32(VDMA_BASE + S2MM_STRIDE, STRIDE_B);
    Xil_Out32(VDMA_BASE + S2MM_VSIZE,  V_ACTIVE);              /* GO */

    /* 2) let it run (64x48 @100MHz -> hundreds of frames), then check */
    usleep(20000);
    sr = Xil_In32(VDMA_BASE + S2MM_VDMASR);
    xil_printf("VDMASR after run = 0x%08x (halted=b0, err=b4/5/6)\r\n", sr);

    /* 3) halt at frame boundary, wait for Halted */
    Xil_Out32(VDMA_BASE + S2MM_VDMACR,
              Xil_In32(VDMA_BASE + S2MM_VDMACR) & ~1u);
    while (!(Xil_In32(VDMA_BASE + S2MM_VDMASR) & 1u))
        ;

    /* 4) CPU cache must be invalidated before reading DMA-written memory */
    Xil_DCacheInvalidateRange((INTPTR)BUF_BASE, NBUF * FRAME_B);

#if MUX_SEL == 0
    /* 5) sel=0: bars survive gamma unchanged -> built-in golden check valid */
    for (b = 0; b < NBUF; b++) {
        bad = 0;
        for (yp = 0; yp < V_ACTIVE; yp++) {
            const u8 *line = (const u8 *)(BUF_BASE + b * FRAME_B + yp * STRIDE_B);
            for (xp = 0; xp < H_ACTIVE; xp++) {
                u32 px = read_pixel(line, xp);
                if (px != expected_pixel(xp, yp)) {
                    if (bad < 5)
                        xil_printf("MISMATCH buf%d (%d,%d) got %06x expected %06x\r\n",
                                   b, xp, yp, px, expected_pixel(xp, yp));
                    bad++;
                }
            }
        }
        xil_printf("buffer %d: %s (%d mismatches)\r\n", b, bad ? "FAIL" : "OK", bad);
    }
#else
    /* 5) sel=1: demosaic output is interpolated (not bars) -> PC golden only */
    (void)b; (void)xp; (void)yp; (void)bad;
    xil_printf("mux_sel=1: demosaic path - built-in bars check skipped.\r\n");
    xil_printf("verify on PC: demosaic_golden(bars,RGGB) -> gamma_golden --apply\r\n");
#endif

#if DUMP_FRAME
    /* 6) dump buffer 0 for PC-side compare:
     *    python model/uart_to_hex.py uart.log frame.hex
     *  MUX_SEL=0: python model/tpg_golden.py --pattern 0 --frames 1 \
     *               --width 64 --height 48 --compare frame.hex
     *  MUX_SEL=1: python model/demosaic_golden.py --img bars --phase 0 \
     *               --width 64 --height 48 --exp rgb.hex
     *             python model/gamma_golden.py --lut sim/gamma_lut.mem \
     *               --apply rgb.hex exp.hex
     *             (then compare frame.hex against exp.hex)                */
    xil_printf("---FRAME-BEGIN---\r\n");
    for (yp = 0; yp < V_ACTIVE; yp++) {
        const u8 *line = (const u8 *)(BUF_BASE + 0 * FRAME_B + yp * STRIDE_B);
        for (xp = 0; xp < H_ACTIVE; xp++)
            print_hex6(read_pixel(line, xp));
    }
    xil_printf("---FRAME-END---\r\n");
#endif

    xil_printf("done.\r\n");
    while (1)
        ;
    return 0;
}
