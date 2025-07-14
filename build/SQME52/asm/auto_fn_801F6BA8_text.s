.include "macros.inc"
.file "auto_fn_801F6BA8_text"

# 0x80006778..0x80006780 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006778 | size: 0x8
.obj "@etb_80006778", local
.hidden "@etb_80006778"
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
.endobj "@etb_80006778"

# 0x80006D64..0x80006D70 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006D64 | size: 0xC
.obj "@eti_80006D64", local
.hidden "@eti_80006D64"
	.4byte fn_801F6BA8
	.4byte 0x00000078
	.4byte "@etb_80006778"
.endobj "@eti_80006D64"

# 0x801F6BA8..0x801F6C20 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x801F6BA8 | size: 0x78
.fn fn_801F6BA8, global
/* 801F6BA8 001F1DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F6BAC 001F1DAC  7C 08 02 A6 */	mflr r0
/* 801F6BB0 001F1DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6BB4 001F1DB4  7C 05 31 D6 */	mullw r0, r5, r6
/* 801F6BB8 001F1DB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F6BBC 001F1DBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F6BC0 001F1DC0  7C DE 33 78 */	mr r30, r6
/* 801F6BC4 001F1DC4  7F E3 02 14 */	add r31, r3, r0
/* 801F6BC8 001F1DC8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F6BCC 001F1DCC  7C BD 2B 78 */	mr r29, r5
/* 801F6BD0 001F1DD0  93 81 00 10 */	stw r28, 0x10(r1)
/* 801F6BD4 001F1DD4  7C 9C 23 78 */	mr r28, r4
/* 801F6BD8 001F1DD8  48 00 00 20 */	b .L_801F6BF8
.L_801F6BDC:
/* 801F6BDC 001F1DDC  7F FD F8 50 */	subf r31, r29, r31
/* 801F6BE0 001F1DE0  7F 8C E3 78 */	mr r12, r28
/* 801F6BE4 001F1DE4  7F E3 FB 78 */	mr r3, r31
/* 801F6BE8 001F1DE8  38 80 FF FF */	li r4, -0x1
/* 801F6BEC 001F1DEC  7D 89 03 A6 */	mtctr r12
/* 801F6BF0 001F1DF0  4E 80 04 21 */	bctrl
/* 801F6BF4 001F1DF4  3B DE FF FF */	subi r30, r30, 0x1
.L_801F6BF8:
/* 801F6BF8 001F1DF8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 801F6BFC 001F1DFC  40 82 FF E0 */	bne .L_801F6BDC
/* 801F6C00 001F1E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6C04 001F1E04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F6C08 001F1E08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F6C0C 001F1E0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F6C10 001F1E10  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801F6C14 001F1E14  7C 08 03 A6 */	mtlr r0
/* 801F6C18 001F1E18  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6C1C 001F1E1C  4E 80 00 20 */	blr
.endfn fn_801F6BA8
