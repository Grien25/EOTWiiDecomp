.include "macros.inc"
.file "auto_fn_80291784_text"

# 0x80006A80..0x80006A88 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A80 | size: 0x8
.obj "@etb_80006A80", local
.hidden "@etb_80006A80"
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
.endobj "@etb_80006A80"

# 0x800071F0..0x800071FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800071F0 | size: 0xC
.obj "@eti_800071F0", local
.hidden "@eti_800071F0"
	.4byte fn_80291784
	.4byte 0x00000040
	.4byte "@etb_80006A80"
.endobj "@eti_800071F0"

# 0x80291784..0x802917C4 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x80291784 | size: 0x40
.fn fn_80291784, global
/* 80291784 0028C984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291788 0028C988  7C 08 02 A6 */	mflr r0
/* 8029178C 0028C98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291790 0028C990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291794 0028C994  7C 7F 1B 78 */	mr r31, r3
/* 80291798 0028C998  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8029179C 0028C99C  48 02 0D C1 */	bl fn_802B255C
/* 802917A0 0028C9A0  7F E3 FB 78 */	mr r3, r31
/* 802917A4 0028C9A4  48 00 00 21 */	bl fn_802917C4
/* 802917A8 0028C9A8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802917AC 0028C9AC  48 02 0D B5 */	bl fn_802B2560
/* 802917B0 0028C9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802917B4 0028C9B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802917B8 0028C9B8  7C 08 03 A6 */	mtlr r0
/* 802917BC 0028C9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802917C0 0028C9C0  4E 80 00 20 */	blr
.endfn fn_80291784
