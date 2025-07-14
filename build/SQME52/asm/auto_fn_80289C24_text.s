.include "macros.inc"
.file "auto_fn_80289C24_text"

# 0x800067B8..0x800067C0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067B8 | size: 0x8
.obj "@etb_800067B8", local
.hidden "@etb_800067B8"
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
.endobj "@etb_800067B8"

# 0x80006DC4..0x80006DD0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006DC4 | size: 0xC
.obj "@eti_80006DC4", local
.hidden "@eti_80006DC4"
	.4byte fn_80289C24
	.4byte 0x00000044
	.4byte "@etb_800067B8"
.endobj "@eti_80006DC4"

# 0x80289C24..0x80289C68 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x80289C24 | size: 0x44
.fn fn_80289C24, global
/* 80289C24 00284E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80289C28 00284E28  7C 08 02 A6 */	mflr r0
/* 80289C2C 00284E2C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80289C30 00284E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80289C34 00284E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80289C38 00284E38  7C 7F 1B 78 */	mr r31, r3
/* 80289C3C 00284E3C  41 82 00 14 */	beq .L_80289C50
/* 80289C40 00284E40  2C 04 00 00 */	cmpwi r4, 0x0
/* 80289C44 00284E44  40 81 00 0C */	ble .L_80289C50
/* 80289C48 00284E48  38 80 00 38 */	li r4, 0x38
/* 80289C4C 00284E4C  48 02 9C 6D */	bl fn_802B38B8
.L_80289C50:
/* 80289C50 00284E50  7F E3 FB 78 */	mr r3, r31
/* 80289C54 00284E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80289C58 00284E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80289C5C 00284E5C  7C 08 03 A6 */	mtlr r0
/* 80289C60 00284E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80289C64 00284E64  4E 80 00 20 */	blr
.endfn fn_80289C24
