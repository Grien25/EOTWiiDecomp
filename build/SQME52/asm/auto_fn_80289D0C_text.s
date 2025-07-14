.include "macros.inc"
.file "auto_fn_80289D0C_text"

# 0x800067C8..0x800067D0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067C8 | size: 0x8
.obj "@etb_800067C8", local
.hidden "@etb_800067C8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800067C8"

# 0x80006DDC..0x80006DE8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006DDC | size: 0xC
.obj "@eti_80006DDC", local
.hidden "@eti_80006DDC"
	.4byte fn_80289D0C
	.4byte 0x000000C8
	.4byte "@etb_800067C8"
.endobj "@eti_80006DDC"

# 0x80289D0C..0x80289DD4 | size: 0xC8
.text
.balign 4

# .text:0x0 | 0x80289D0C | size: 0xC8
.fn fn_80289D0C, global
/* 80289D0C 00284F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289D10 00284F10  7C 08 02 A6 */	mflr r0
/* 80289D14 00284F14  39 20 00 01 */	li r9, 0x1
/* 80289D18 00284F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289D1C 00284F1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80289D20 00284F20  7C 7F 1B 78 */	mr r31, r3
/* 80289D24 00284F24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80289D28 00284F28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80289D2C 00284F2C  7C BD 2B 78 */	mr r29, r5
/* 80289D30 00284F30  93 81 00 10 */	stw r28, 0x10(r1)
/* 80289D34 00284F34  7C DC 33 78 */	mr r28, r6
/* 80289D38 00284F38  81 63 00 1C */	lwz r11, 0x1c(r3)
/* 80289D3C 00284F3C  81 43 00 18 */	lwz r10, 0x18(r3)
/* 80289D40 00284F40  7D 0B 30 14 */	addc r8, r11, r6
/* 80289D44 00284F44  81 83 00 08 */	lwz r12, 0x8(r3)
/* 80289D48 00284F48  7C EA 29 14 */	adde r7, r10, r5
/* 80289D4C 00284F4C  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 80289D50 00284F50  91 23 00 30 */	stw r9, 0x30(r3)
/* 80289D54 00284F54  6D 80 80 00 */	xoris r0, r12, 0x8000
/* 80289D58 00284F58  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80289D5C 00284F5C  7C 68 F0 10 */	subfc r3, r8, r30
/* 80289D60 00284F60  7C E7 01 10 */	subfe r7, r7, r0
/* 80289D64 00284F64  7C E0 01 10 */	subfe r7, r0, r0
/* 80289D68 00284F68  7C E7 00 D1 */	neg. r7, r7
/* 80289D6C 00284F6C  41 82 00 0C */	beq .L_80289D78
/* 80289D70 00284F70  7F 8B F0 10 */	subfc r28, r11, r30
/* 80289D74 00284F74  7F AA 61 10 */	subfe r29, r10, r12
.L_80289D78:
/* 80289D78 00284F78  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 80289D7C 00284F7C  7C 83 23 78 */	mr r3, r4
/* 80289D80 00284F80  7F 85 E3 78 */	mr r5, r28
/* 80289D84 00284F84  7C 80 5A 14 */	add r4, r0, r11
/* 80289D88 00284F88  4B D7 A2 79 */	bl memcpy
/* 80289D8C 00284F8C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80289D90 00284F90  38 00 00 02 */	li r0, 0x2
/* 80289D94 00284F94  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80289D98 00284F98  7C 84 E0 14 */	addc r4, r4, r28
/* 80289D9C 00284F9C  93 9F 00 24 */	stw r28, 0x24(r31)
/* 80289DA0 00284FA0  7C 63 E9 14 */	adde r3, r3, r29
/* 80289DA4 00284FA4  93 BF 00 20 */	stw r29, 0x20(r31)
/* 80289DA8 00284FA8  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80289DAC 00284FAC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80289DB0 00284FB0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80289DB4 00284FB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80289DB8 00284FB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80289DBC 00284FBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80289DC0 00284FC0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80289DC4 00284FC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80289DC8 00284FC8  7C 08 03 A6 */	mtlr r0
/* 80289DCC 00284FCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80289DD0 00284FD0  4E 80 00 20 */	blr
.endfn fn_80289D0C
