.include "macros.inc"
.file "auto_fn_802954A4_text"

# 0x80006C08..0x80006C10 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C08 | size: 0x8
.obj "@etb_80006C08", local
.hidden "@etb_80006C08"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006C08"

# 0x8000743C..0x80007448 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000743C | size: 0xC
.obj "@eti_8000743C", local
.hidden "@eti_8000743C"
	.4byte fn_802954A4
	.4byte 0x00000050
	.4byte "@etb_80006C08"
.endobj "@eti_8000743C"

# 0x802954A4..0x802954F4 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802954A4 | size: 0x50
.fn fn_802954A4, global
/* 802954A4 002906A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802954A8 002906A8  7C 08 02 A6 */	mflr r0
/* 802954AC 002906AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802954B0 002906B0  38 00 00 00 */	li r0, 0x0
/* 802954B4 002906B4  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 802954B8 002906B8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802954BC 002906BC  41 82 00 24 */	beq .L_802954E0
/* 802954C0 002906C0  81 84 00 38 */	lwz r12, 0x38(r4)
/* 802954C4 002906C4  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802954C8 002906C8  41 82 00 10 */	beq .L_802954D8
/* 802954CC 002906CC  7D 89 03 A6 */	mtctr r12
/* 802954D0 002906D0  4E 80 04 21 */	bctrl
/* 802954D4 002906D4  48 00 00 08 */	b .L_802954DC
.L_802954D8:
/* 802954D8 002906D8  38 60 00 00 */	li r3, 0x0
.L_802954DC:
/* 802954DC 002906DC  7C 60 1B 78 */	mr r0, r3
.L_802954E0:
/* 802954E0 002906E0  7C 03 03 78 */	mr r3, r0
/* 802954E4 002906E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802954E8 002906E8  7C 08 03 A6 */	mtlr r0
/* 802954EC 002906EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802954F0 002906F0  4E 80 00 20 */	blr
.endfn fn_802954A4
