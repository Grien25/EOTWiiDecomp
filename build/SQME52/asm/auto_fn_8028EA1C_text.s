.include "macros.inc"
.file "auto_fn_8028EA1C_text"

# 0x80006928..0x80006930 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006928 | size: 0x8
.obj "@etb_80006928", local
.hidden "@etb_80006928"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006928"

# 0x80006FEC..0x80006FF8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006FEC | size: 0xC
.obj "@eti_80006FEC", local
.hidden "@eti_80006FEC"
	.4byte fn_8028EA1C
	.4byte 0x00000048
	.4byte "@etb_80006928"
.endobj "@eti_80006FEC"

# 0x8028EA1C..0x8028EA64 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028EA1C | size: 0x48
.fn fn_8028EA1C, global
/* 8028EA1C 00289C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EA20 00289C20  7C 08 02 A6 */	mflr r0
/* 8028EA24 00289C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EA28 00289C28  38 00 00 00 */	li r0, 0x0
/* 8028EA2C 00289C2C  81 4D 8E 58 */	lwz r10, lbl_806AB258@sda21(r0)
/* 8028EA30 00289C30  2C 0A 00 00 */	cmpwi r10, 0x0
/* 8028EA34 00289C34  41 82 00 1C */	beq .L_8028EA50
/* 8028EA38 00289C38  81 8A 00 0C */	lwz r12, 0xc(r10)
/* 8028EA3C 00289C3C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EA40 00289C40  41 82 00 10 */	beq .L_8028EA50
/* 8028EA44 00289C44  7D 89 03 A6 */	mtctr r12
/* 8028EA48 00289C48  4E 80 04 21 */	bctrl
/* 8028EA4C 00289C4C  7C 60 1B 78 */	mr r0, r3
.L_8028EA50:
/* 8028EA50 00289C50  7C 03 03 78 */	mr r3, r0
/* 8028EA54 00289C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EA58 00289C58  7C 08 03 A6 */	mtlr r0
/* 8028EA5C 00289C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EA60 00289C60  4E 80 00 20 */	blr
.endfn fn_8028EA1C
