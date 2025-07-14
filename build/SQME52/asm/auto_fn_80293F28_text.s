.include "macros.inc"
.file "auto_fn_80293F28_text"

# 0x80006B60..0x80006B68 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B60 | size: 0x8
.obj "@etb_80006B60", local
.hidden "@etb_80006B60"
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
.endobj "@etb_80006B60"

# 0x80007340..0x8000734C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007340 | size: 0xC
.obj "@eti_80007340", local
.hidden "@eti_80007340"
	.4byte fn_80293F28
	.4byte 0x0000009C
	.4byte "@etb_80006B60"
.endobj "@eti_80007340"

# 0x80293F28..0x80293FC4 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x80293F28 | size: 0x9C
.fn fn_80293F28, global
/* 80293F28 0028F128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293F2C 0028F12C  7C 08 02 A6 */	mflr r0
/* 80293F30 0028F130  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293F34 0028F134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293F38 0028F138  7C 7F 1B 78 */	mr r31, r3
/* 80293F3C 0028F13C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80293F40 0028F140  2C 00 00 00 */	cmpwi r0, 0x0
/* 80293F44 0028F144  40 82 00 10 */	bne .L_80293F54
/* 80293F48 0028F148  38 00 00 00 */	li r0, 0x0
/* 80293F4C 0028F14C  90 03 00 04 */	stw r0, 0x4(r3)
/* 80293F50 0028F150  48 00 00 60 */	b .L_80293FB0
.L_80293F54:
/* 80293F54 0028F154  2C 00 00 07 */	cmpwi r0, 0x7
/* 80293F58 0028F158  40 82 00 10 */	bne .L_80293F68
/* 80293F5C 0028F15C  38 00 00 00 */	li r0, 0x0
/* 80293F60 0028F160  90 03 00 04 */	stw r0, 0x4(r3)
/* 80293F64 0028F164  48 00 00 4C */	b .L_80293FB0
.L_80293F68:
/* 80293F68 0028F168  2C 00 00 09 */	cmpwi r0, 0x9
/* 80293F6C 0028F16C  41 82 00 44 */	beq .L_80293FB0
/* 80293F70 0028F170  2C 00 00 06 */	cmpwi r0, 0x6
/* 80293F74 0028F174  40 82 00 08 */	bne .L_80293F7C
/* 80293F78 0028F178  48 00 00 38 */	b .L_80293FB0
.L_80293F7C:
/* 80293F7C 0028F17C  80 A3 0B 74 */	lwz r5, 0xb74(r3)
/* 80293F80 0028F180  38 80 00 01 */	li r4, 0x1
/* 80293F84 0028F184  38 00 00 08 */	li r0, 0x8
/* 80293F88 0028F188  90 83 00 08 */	stw r4, 0x8(r3)
/* 80293F8C 0028F18C  2C 05 00 00 */	cmpwi r5, 0x0
/* 80293F90 0028F190  90 03 00 04 */	stw r0, 0x4(r3)
/* 80293F94 0028F194  41 82 00 0C */	beq .L_80293FA0
/* 80293F98 0028F198  7C A3 2B 78 */	mr r3, r5
/* 80293F9C 0028F19C  48 00 14 79 */	bl fn_80295414
.L_80293FA0:
/* 80293FA0 0028F1A0  80 7F 0B 9C */	lwz r3, 0xb9c(r31)
/* 80293FA4 0028F1A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80293FA8 0028F1A8  41 82 00 08 */	beq .L_80293FB0
/* 80293FAC 0028F1AC  4B FF AB FD */	bl fn_8028EBA8
.L_80293FB0:
/* 80293FB0 0028F1B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293FB4 0028F1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293FB8 0028F1B8  7C 08 03 A6 */	mtlr r0
/* 80293FBC 0028F1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80293FC0 0028F1C0  4E 80 00 20 */	blr
.endfn fn_80293F28
