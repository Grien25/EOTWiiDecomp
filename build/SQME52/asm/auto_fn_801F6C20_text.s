.include "macros.inc"
.file "auto_fn_801F6C20_text"

# 0x80006780..0x80006788 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006780 | size: 0x8
.obj "@etb_80006780", local
.hidden "@etb_80006780"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_80006780"

# 0x80006D70..0x80006D7C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006D70 | size: 0xC
.obj "@eti_80006D70", local
.hidden "@eti_80006D70"
	.4byte fn_801F6C20
	.4byte 0x00000080
	.4byte "@etb_80006780"
.endobj "@eti_80006D70"

# 0x801F6C20..0x801F6CA0 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x801F6C20 | size: 0x80
.fn fn_801F6C20, global
/* 801F6C20 001F1E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F6C24 001F1E24  7C 08 02 A6 */	mflr r0
/* 801F6C28 001F1E28  2C 03 00 00 */	cmpwi r3, 0x0
/* 801F6C2C 001F1E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6C30 001F1E30  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 801F6C34 001F1E34  7C 7A 1B 78 */	mr r26, r3
/* 801F6C38 001F1E38  7C 9B 23 78 */	mr r27, r4
/* 801F6C3C 001F1E3C  41 82 00 50 */	beq .L_801F6C8C
/* 801F6C40 001F1E40  2C 04 00 00 */	cmpwi r4, 0x0
/* 801F6C44 001F1E44  41 82 00 40 */	beq .L_801F6C84
/* 801F6C48 001F1E48  83 A3 FF F0 */	lwz r29, -0x10(r3)
/* 801F6C4C 001F1E4C  3B E0 00 00 */	li r31, 0x0
/* 801F6C50 001F1E50  83 C3 FF F4 */	lwz r30, -0xc(r3)
/* 801F6C54 001F1E54  7C 1D F1 D6 */	mullw r0, r29, r30
/* 801F6C58 001F1E58  7F 83 02 14 */	add r28, r3, r0
/* 801F6C5C 001F1E5C  48 00 00 20 */	b .L_801F6C7C
.L_801F6C60:
/* 801F6C60 001F1E60  7F 9D E0 50 */	subf r28, r29, r28
/* 801F6C64 001F1E64  7F 6C DB 78 */	mr r12, r27
/* 801F6C68 001F1E68  7F 83 E3 78 */	mr r3, r28
/* 801F6C6C 001F1E6C  38 80 FF FF */	li r4, -0x1
/* 801F6C70 001F1E70  7D 89 03 A6 */	mtctr r12
/* 801F6C74 001F1E74  4E 80 04 21 */	bctrl
/* 801F6C78 001F1E78  3B FF 00 01 */	addi r31, r31, 0x1
.L_801F6C7C:
/* 801F6C7C 001F1E7C  7C 1F F0 40 */	cmplw r31, r30
/* 801F6C80 001F1E80  41 80 FF E0 */	blt .L_801F6C60
.L_801F6C84:
/* 801F6C84 001F1E84  38 7A FF F0 */	subi r3, r26, 0x10
/* 801F6C88 001F1E88  4B EE 1D F1 */	bl fn_800D8A78
.L_801F6C8C:
/* 801F6C8C 001F1E8C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 801F6C90 001F1E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6C94 001F1E94  7C 08 03 A6 */	mtlr r0
/* 801F6C98 001F1E98  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6C9C 001F1E9C  4E 80 00 20 */	blr
.endfn fn_801F6C20
