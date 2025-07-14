.include "macros.inc"
.file "auto_fn_802951B8_text"

# 0x80006BD0..0x80006BD8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006BD0 | size: 0x8
.obj "@etb_80006BD0", local
.hidden "@etb_80006BD0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006BD0"

# 0x800073E8..0x800073F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800073E8 | size: 0xC
.obj "@eti_800073E8", local
.hidden "@eti_800073E8"
	.4byte fn_802951B8
	.4byte 0x00000024
	.4byte "@etb_80006BD0"
.endobj "@eti_800073E8"

# 0x802951B8..0x802951DC | size: 0x24
.text
.balign 4

# .text:0x0 | 0x802951B8 | size: 0x24
.fn fn_802951B8, global
/* 802951B8 002903B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802951BC 002903BC  7C 08 02 A6 */	mflr r0
/* 802951C0 002903C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802951C4 002903C4  48 00 04 75 */	bl fn_80295638
/* 802951C8 002903C8  48 00 00 15 */	bl fn_802951DC
/* 802951CC 002903CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802951D0 002903D0  7C 08 03 A6 */	mtlr r0
/* 802951D4 002903D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802951D8 002903D8  4E 80 00 20 */	blr
.endfn fn_802951B8
