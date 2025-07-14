.include "macros.inc"
.file "auto_fn_80290DB4_text"

# 0x80006A38..0x80006A40 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A38 | size: 0x8
.obj "@etb_80006A38", local
.hidden "@etb_80006A38"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80006A38"

# 0x80007184..0x80007190 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007184 | size: 0xC
.obj "@eti_80007184", local
.hidden "@eti_80007184"
	.4byte fn_80290DB4
	.4byte 0x00000068
	.4byte "@etb_80006A38"
.endobj "@eti_80007184"

# 0x80290DB4..0x80290E1C | size: 0x68
.text
.balign 4

# .text:0x0 | 0x80290DB4 | size: 0x68
.fn fn_80290DB4, global
/* 80290DB4 0028BFB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80290DB8 0028BFB8  7C 08 02 A6 */	mflr r0
/* 80290DBC 0028BFBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80290DC0 0028BFC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80290DC4 0028BFC4  7C BF 2B 78 */	mr r31, r5
/* 80290DC8 0028BFC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80290DCC 0028BFCC  7C 9E 23 78 */	mr r30, r4
/* 80290DD0 0028BFD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80290DD4 0028BFD4  7C 7D 1B 78 */	mr r29, r3
/* 80290DD8 0028BFD8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80290DDC 0028BFDC  48 02 17 81 */	bl fn_802B255C
/* 80290DE0 0028BFE0  7F A3 EB 78 */	mr r3, r29
/* 80290DE4 0028BFE4  7F C4 F3 78 */	mr r4, r30
/* 80290DE8 0028BFE8  7F E5 FB 78 */	mr r5, r31
/* 80290DEC 0028BFEC  48 00 00 31 */	bl fn_80290E1C
/* 80290DF0 0028BFF0  7C 7F 1B 78 */	mr r31, r3
/* 80290DF4 0028BFF4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80290DF8 0028BFF8  48 02 17 69 */	bl fn_802B2560
/* 80290DFC 0028BFFC  7F E3 FB 78 */	mr r3, r31
/* 80290E00 0028C000  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80290E04 0028C004  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80290E08 0028C008  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80290E0C 0028C00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80290E10 0028C010  7C 08 03 A6 */	mtlr r0
/* 80290E14 0028C014  38 21 00 20 */	addi r1, r1, 0x20
/* 80290E18 0028C018  4E 80 00 20 */	blr
.endfn fn_80290DB4
