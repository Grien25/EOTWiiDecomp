.include "macros.inc"
.file "auto_fn_8028B288_text"

# 0x80006840..0x80006848 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006840 | size: 0x8
.obj "@etb_80006840", local
.hidden "@etb_80006840"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006840"

# 0x80006E90..0x80006E9C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006E90 | size: 0xC
.obj "@eti_80006E90", local
.hidden "@eti_80006E90"
	.4byte fn_8028B288
	.4byte 0x00000068
	.4byte "@etb_80006840"
.endobj "@eti_80006E90"

# 0x8028B288..0x8028B2F0 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x8028B288 | size: 0x68
.fn fn_8028B288, global
/* 8028B288 00286488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028B28C 0028648C  7C 08 02 A6 */	mflr r0
/* 8028B290 00286490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028B294 00286494  38 00 00 00 */	li r0, 0x0
/* 8028B298 00286498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028B29C 0028649C  7C 9F 23 78 */	mr r31, r4
/* 8028B2A0 002864A0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8028B2A4 002864A4  7C 7E 1B 78 */	mr r30, r3
/* 8028B2A8 002864A8  38 63 06 38 */	addi r3, r3, 0x638
/* 8028B2AC 002864AC  90 04 00 00 */	stw r0, 0x0(r4)
/* 8028B2B0 002864B0  38 80 00 01 */	li r4, 0x1
/* 8028B2B4 002864B4  48 02 75 45 */	bl fn_802B27F8
/* 8028B2B8 002864B8  2C 03 00 01 */	cmpwi r3, 0x1
/* 8028B2BC 002864BC  41 82 00 1C */	beq .L_8028B2D8
/* 8028B2C0 002864C0  7F C3 F3 78 */	mr r3, r30
/* 8028B2C4 002864C4  7F E4 FB 78 */	mr r4, r31
/* 8028B2C8 002864C8  48 00 00 29 */	bl fn_8028B2F0
/* 8028B2CC 002864CC  38 7E 06 38 */	addi r3, r30, 0x638
/* 8028B2D0 002864D0  38 80 00 00 */	li r4, 0x0
/* 8028B2D4 002864D4  48 02 75 25 */	bl fn_802B27F8
.L_8028B2D8:
/* 8028B2D8 002864D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028B2DC 002864DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028B2E0 002864E0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8028B2E4 002864E4  7C 08 03 A6 */	mtlr r0
/* 8028B2E8 002864E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028B2EC 002864EC  4E 80 00 20 */	blr
.endfn fn_8028B288
