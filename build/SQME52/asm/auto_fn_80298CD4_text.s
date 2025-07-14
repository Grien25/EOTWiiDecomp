.include "macros.inc"
.file "auto_fn_80298CD4_text"

# 0x80006D08..0x80006D10 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D08 | size: 0x8
.obj "@etb_80006D08", local
.hidden "@etb_80006D08"
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
.endobj "@etb_80006D08"

# 0x800075BC..0x800075C8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800075BC | size: 0xC
.obj "@eti_800075BC", local
.hidden "@eti_800075BC"
	.4byte fn_80298CD4
	.4byte 0x0000007C
	.4byte "@etb_80006D08"
.endobj "@eti_800075BC"

# 0x80298CD4..0x80298D50 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x80298CD4 | size: 0x7C
.fn fn_80298CD4, global
/* 80298CD4 00293ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298CD8 00293ED8  7C 08 02 A6 */	mflr r0
/* 80298CDC 00293EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298CE0 00293EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298CE4 00293EE4  7C 7F 1B 78 */	mr r31, r3
/* 80298CE8 00293EE8  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80298CEC 00293EEC  2C 00 00 01 */	cmpwi r0, 0x1
/* 80298CF0 00293EF0  40 82 00 20 */	bne .L_80298D10
/* 80298CF4 00293EF4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80298CF8 00293EF8  38 80 00 01 */	li r4, 0x1
/* 80298CFC 00293EFC  48 01 C7 01 */	bl fn_802B53FC
/* 80298D00 00293F00  2C 03 00 00 */	cmpwi r3, 0x0
/* 80298D04 00293F04  40 82 00 0C */	bne .L_80298D10
/* 80298D08 00293F08  38 00 00 03 */	li r0, 0x3
/* 80298D0C 00293F0C  98 1F 00 0C */	stb r0, 0xc(r31)
.L_80298D10:
/* 80298D10 00293F10  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80298D14 00293F14  28 00 00 01 */	cmplwi r0, 0x1
/* 80298D18 00293F18  40 82 00 0C */	bne .L_80298D24
/* 80298D1C 00293F1C  7F E3 FB 78 */	mr r3, r31
/* 80298D20 00293F20  4B FF FB E9 */	bl fn_80298908
.L_80298D24:
/* 80298D24 00293F24  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80298D28 00293F28  28 00 00 02 */	cmplwi r0, 0x2
/* 80298D2C 00293F2C  40 82 00 0C */	bne .L_80298D38
/* 80298D30 00293F30  7F E3 FB 78 */	mr r3, r31
/* 80298D34 00293F34  4B FF FD 05 */	bl fn_80298A38
.L_80298D38:
/* 80298D38 00293F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298D3C 00293F3C  38 60 00 00 */	li r3, 0x0
/* 80298D40 00293F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298D44 00293F44  7C 08 03 A6 */	mtlr r0
/* 80298D48 00293F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80298D4C 00293F4C  4E 80 00 20 */	blr
.endfn fn_80298CD4
