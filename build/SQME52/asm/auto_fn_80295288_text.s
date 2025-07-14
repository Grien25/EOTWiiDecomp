.include "macros.inc"
.file "auto_fn_80295288_text"

# 0x80006BE0..0x80006BE8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006BE0 | size: 0x8
.obj "@etb_80006BE0", local
.hidden "@etb_80006BE0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006BE0"

# 0x80007400..0x8000740C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007400 | size: 0xC
.obj "@eti_80007400", local
.hidden "@eti_80007400"
	.4byte fn_80295288
	.4byte 0x00000048
	.4byte "@etb_80006BE0"
.endobj "@eti_80007400"

# 0x80295288..0x802952D0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x80295288 | size: 0x48
.fn fn_80295288, global
/* 80295288 00290488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029528C 0029048C  7C 08 02 A6 */	mflr r0
/* 80295290 00290490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295294 00290494  38 00 00 00 */	li r0, 0x0
/* 80295298 00290498  81 4D 8E 74 */	lwz r10, lbl_806AB274@sda21(r0)
/* 8029529C 0029049C  2C 0A 00 00 */	cmpwi r10, 0x0
/* 802952A0 002904A0  41 82 00 1C */	beq .L_802952BC
/* 802952A4 002904A4  81 8A 00 0C */	lwz r12, 0xc(r10)
/* 802952A8 002904A8  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802952AC 002904AC  41 82 00 10 */	beq .L_802952BC
/* 802952B0 002904B0  7D 89 03 A6 */	mtctr r12
/* 802952B4 002904B4  4E 80 04 21 */	bctrl
/* 802952B8 002904B8  7C 60 1B 78 */	mr r0, r3
.L_802952BC:
/* 802952BC 002904BC  7C 03 03 78 */	mr r3, r0
/* 802952C0 002904C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802952C4 002904C4  7C 08 03 A6 */	mtlr r0
/* 802952C8 002904C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802952CC 002904CC  4E 80 00 20 */	blr
.endfn fn_80295288
