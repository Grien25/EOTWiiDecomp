.include "macros.inc"
.file "auto_fn_8028EBF0_text"

# 0x80006948..0x80006950 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006948 | size: 0x8
.obj "@etb_80006948", local
.hidden "@etb_80006948"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006948"

# 0x8000701C..0x80007028 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000701C | size: 0xC
.obj "@eti_8000701C", local
.hidden "@eti_8000701C"
	.4byte fn_8028EBF0
	.4byte 0x00000048
	.4byte "@etb_80006948"
.endobj "@eti_8000701C"

# 0x8028EBF0..0x8028EC38 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028EBF0 | size: 0x48
.fn fn_8028EBF0, global
/* 8028EBF0 00289DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EBF4 00289DF4  7C 08 02 A6 */	mflr r0
/* 8028EBF8 00289DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EBFC 00289DFC  38 00 00 00 */	li r0, 0x0
/* 8028EC00 00289E00  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EC04 00289E04  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EC08 00289E08  41 82 00 1C */	beq .L_8028EC24
/* 8028EC0C 00289E0C  81 84 00 34 */	lwz r12, 0x34(r4)
/* 8028EC10 00289E10  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EC14 00289E14  41 82 00 10 */	beq .L_8028EC24
/* 8028EC18 00289E18  7D 89 03 A6 */	mtctr r12
/* 8028EC1C 00289E1C  4E 80 04 21 */	bctrl
/* 8028EC20 00289E20  7C 60 1B 78 */	mr r0, r3
.L_8028EC24:
/* 8028EC24 00289E24  7C 03 03 78 */	mr r3, r0
/* 8028EC28 00289E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EC2C 00289E2C  7C 08 03 A6 */	mtlr r0
/* 8028EC30 00289E30  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EC34 00289E34  4E 80 00 20 */	blr
.endfn fn_8028EBF0
