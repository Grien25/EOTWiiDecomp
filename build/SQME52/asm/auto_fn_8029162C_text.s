.include "macros.inc"
.file "auto_fn_8029162C_text"

# 0x80006A70..0x80006A78 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A70 | size: 0x8
.obj "@etb_80006A70", local
.hidden "@etb_80006A70"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006A70"

# 0x800071D8..0x800071E4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800071D8 | size: 0xC
.obj "@eti_800071D8", local
.hidden "@eti_800071D8"
	.4byte fn_8029162C
	.4byte 0x00000040
	.4byte "@etb_80006A70"
.endobj "@eti_800071D8"

# 0x8029162C..0x8029166C | size: 0x40
.text
.balign 4

# .text:0x0 | 0x8029162C | size: 0x40
.fn fn_8029162C, global
/* 8029162C 0028C82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291630 0028C830  7C 08 02 A6 */	mflr r0
/* 80291634 0028C834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291638 0028C838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029163C 0028C83C  7C 7F 1B 78 */	mr r31, r3
/* 80291640 0028C840  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80291644 0028C844  48 02 0F 19 */	bl fn_802B255C
/* 80291648 0028C848  7F E3 FB 78 */	mr r3, r31
/* 8029164C 0028C84C  48 00 00 21 */	bl fn_8029166C
/* 80291650 0028C850  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80291654 0028C854  48 02 0F 0D */	bl fn_802B2560
/* 80291658 0028C858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029165C 0028C85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80291660 0028C860  7C 08 03 A6 */	mtlr r0
/* 80291664 0028C864  38 21 00 10 */	addi r1, r1, 0x10
/* 80291668 0028C868  4E 80 00 20 */	blr
.endfn fn_8029162C
