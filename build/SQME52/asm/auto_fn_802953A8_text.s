.include "macros.inc"
.file "auto_fn_802953A8_text"

# 0x80006BF8..0x80006C00 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006BF8 | size: 0x8
.obj "@etb_80006BF8", local
.hidden "@etb_80006BF8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006BF8"

# 0x80007424..0x80007430 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007424 | size: 0xC
.obj "@eti_80007424", local
.hidden "@eti_80007424"
	.4byte fn_802953A8
	.4byte 0x00000048
	.4byte "@etb_80006BF8"
.endobj "@eti_80007424"

# 0x802953A8..0x802953F0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802953A8 | size: 0x48
.fn fn_802953A8, global
/* 802953A8 002905A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802953AC 002905AC  7C 08 02 A6 */	mflr r0
/* 802953B0 002905B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802953B4 002905B4  38 00 00 00 */	li r0, 0x0
/* 802953B8 002905B8  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 802953BC 002905BC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802953C0 002905C0  41 82 00 1C */	beq .L_802953DC
/* 802953C4 002905C4  81 84 00 20 */	lwz r12, 0x20(r4)
/* 802953C8 002905C8  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802953CC 002905CC  41 82 00 10 */	beq .L_802953DC
/* 802953D0 002905D0  7D 89 03 A6 */	mtctr r12
/* 802953D4 002905D4  4E 80 04 21 */	bctrl
/* 802953D8 002905D8  7C 60 1B 78 */	mr r0, r3
.L_802953DC:
/* 802953DC 002905DC  7C 03 03 78 */	mr r3, r0
/* 802953E0 002905E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802953E4 002905E4  7C 08 03 A6 */	mtlr r0
/* 802953E8 002905E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802953EC 002905EC  4E 80 00 20 */	blr
.endfn fn_802953A8
