.include "macros.inc"
.file "auto_fn_80295804_text"

# 0x80006C30..0x80006C38 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C30 | size: 0x8
.obj "@etb_80006C30", local
.hidden "@etb_80006C30"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006C30"

# 0x80007478..0x80007484 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007478 | size: 0xC
.obj "@eti_80007478", local
.hidden "@eti_80007478"
	.4byte fn_80295804
	.4byte 0x00000038
	.4byte "@etb_80006C30"
.endobj "@eti_80007478"

# 0x80295804..0x8029583C | size: 0x38
.text
.balign 4

# .text:0x0 | 0x80295804 | size: 0x38
.fn fn_80295804, global
/* 80295804 00290A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295808 00290A08  7C 08 02 A6 */	mflr r0
/* 8029580C 00290A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295810 00290A10  80 0D 8E 7C */	lwz r0, lbl_806AB27C@sda21(r0)
/* 80295814 00290A14  34 00 FF FF */	subic. r0, r0, 0x1
/* 80295818 00290A18  90 0D 8E 7C */	stw r0, lbl_806AB27C@sda21(r0)
/* 8029581C 00290A1C  40 82 00 10 */	bne .L_8029582C
/* 80295820 00290A20  48 01 AC 05 */	bl fn_802B0424
/* 80295824 00290A24  48 00 3C 4D */	bl fn_80299470
/* 80295828 00290A28  48 00 49 F1 */	bl fn_8029A218
.L_8029582C:
/* 8029582C 00290A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295830 00290A30  7C 08 03 A6 */	mtlr r0
/* 80295834 00290A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80295838 00290A38  4E 80 00 20 */	blr
.endfn fn_80295804
