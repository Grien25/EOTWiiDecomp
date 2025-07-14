.include "macros.inc"
.file "auto_fn_801F6AB0_text"

# 0x80006760..0x80006778 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006760 | size: 0x18
.obj "@etb_80006760", local
.hidden "@etb_80006760"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=0000005C, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "fn_801F69F4"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x0000005C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte fn_801F69F4
.endobj "@etb_80006760"

# 0x80006D58..0x80006D64 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006D58 | size: 0xC
.obj "@eti_80006D58", local
.hidden "@eti_80006D58"
	.4byte fn_801F6AB0
	.4byte 0x000000F8
	.4byte "@etb_80006760"
.endobj "@eti_80006D58"

# 0x801F6AB0..0x801F6BA8 | size: 0xF8
.text
.balign 4

# .text:0x0 | 0x801F6AB0 | size: 0xF8
.fn fn_801F6AB0, global
/* 801F6AB0 001F1CB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F6AB4 001F1CB4  7C 08 02 A6 */	mflr r0
/* 801F6AB8 001F1CB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F6ABC 001F1CBC  38 00 00 00 */	li r0, 0x0
/* 801F6AC0 001F1CC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F6AC4 001F1CC4  7C 7F 1B 78 */	mr r31, r3
/* 801F6AC8 001F1CC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F6ACC 001F1CCC  7C FE 3B 78 */	mr r30, r7
/* 801F6AD0 001F1CD0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801F6AD4 001F1CD4  7C DD 33 78 */	mr r29, r6
/* 801F6AD8 001F1CD8  93 81 00 20 */	stw r28, 0x20(r1)
/* 801F6ADC 001F1CDC  7C 9C 23 78 */	mr r28, r4
/* 801F6AE0 001F1CE0  90 61 00 08 */	stw r3, 0x8(r1)
/* 801F6AE4 001F1CE4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801F6AE8 001F1CE8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 801F6AEC 001F1CEC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801F6AF0 001F1CF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F6AF4 001F1CF4  48 00 00 28 */	b .L_801F6B1C
.L_801F6AF8:
/* 801F6AF8 001F1CF8  7F 8C E3 78 */	mr r12, r28
/* 801F6AFC 001F1CFC  7F E3 FB 78 */	mr r3, r31
/* 801F6B00 001F1D00  38 80 00 01 */	li r4, 0x1
/* 801F6B04 001F1D04  7D 89 03 A6 */	mtctr r12
/* 801F6B08 001F1D08  4E 80 04 21 */	bctrl
/* 801F6B0C 001F1D0C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801F6B10 001F1D10  7F FF EA 14 */	add r31, r31, r29
/* 801F6B14 001F1D14  38 03 00 01 */	addi r0, r3, 0x1
/* 801F6B18 001F1D18  90 01 00 18 */	stw r0, 0x18(r1)
.L_801F6B1C:
/* 801F6B1C 001F1D1C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801F6B20 001F1D20  7C 04 F0 40 */	cmplw r4, r30
/* 801F6B24 001F1D24  41 80 FF D4 */	blt .L_801F6AF8
/* 801F6B28 001F1D28  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801F6B2C 001F1D2C  7C 04 00 40 */	cmplw r4, r0
/* 801F6B30 001F1D30  40 80 00 58 */	bge .L_801F6B88
/* 801F6B34 001F1D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F6B38 001F1D38  2C 00 00 00 */	cmpwi r0, 0x0
/* 801F6B3C 001F1D3C  41 82 00 4C */	beq .L_801F6B88
/* 801F6B40 001F1D40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F6B44 001F1D44  80 61 00 08 */	lwz r3, 0x8(r1)
/* 801F6B48 001F1D48  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F6B4C 001F1D4C  7F E3 02 14 */	add r31, r3, r0
/* 801F6B50 001F1D50  48 00 00 2C */	b .L_801F6B7C
.L_801F6B54:
/* 801F6B54 001F1D54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F6B58 001F1D58  38 80 FF FF */	li r4, -0x1
/* 801F6B5C 001F1D5C  81 81 00 14 */	lwz r12, 0x14(r1)
/* 801F6B60 001F1D60  7F E0 F8 50 */	subf r31, r0, r31
/* 801F6B64 001F1D64  7F E3 FB 78 */	mr r3, r31
/* 801F6B68 001F1D68  7D 89 03 A6 */	mtctr r12
/* 801F6B6C 001F1D6C  4E 80 04 21 */	bctrl
/* 801F6B70 001F1D70  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801F6B74 001F1D74  38 03 FF FF */	subi r0, r3, 0x1
/* 801F6B78 001F1D78  90 01 00 18 */	stw r0, 0x18(r1)
.L_801F6B7C:
/* 801F6B7C 001F1D7C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801F6B80 001F1D80  2C 00 00 00 */	cmpwi r0, 0x0
/* 801F6B84 001F1D84  40 82 FF D0 */	bne .L_801F6B54
.L_801F6B88:
/* 801F6B88 001F1D88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F6B8C 001F1D8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F6B90 001F1D90  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F6B94 001F1D94  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801F6B98 001F1D98  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801F6B9C 001F1D9C  7C 08 03 A6 */	mtlr r0
/* 801F6BA0 001F1DA0  38 21 00 30 */	addi r1, r1, 0x30
/* 801F6BA4 001F1DA4  4E 80 00 20 */	blr
.endfn fn_801F6AB0
