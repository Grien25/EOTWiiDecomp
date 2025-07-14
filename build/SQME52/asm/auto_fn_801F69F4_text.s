.include "macros.inc"
.file "auto_fn_801F69F4_text"

# 0x80006758..0x80006760 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006758 | size: 0x8
.obj "@etb_80006758", local
.hidden "@etb_80006758"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80006758"

# 0x80006D4C..0x80006D58 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006D4C | size: 0xC
.obj "@eti_80006D4C", local
.hidden "@eti_80006D4C"
	.4byte fn_801F69F4
	.4byte 0x000000BC
	.4byte "@etb_80006758"
.endobj "@eti_80006D4C"

# 0x801F69F4..0x801F6AB0 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x801F69F4 | size: 0xBC
.fn fn_801F69F4, global
/* 801F69F4 001F1BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F69F8 001F1BF8  7C 08 02 A6 */	mflr r0
/* 801F69FC 001F1BFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 801F6A00 001F1C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6A04 001F1C04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F6A08 001F1C08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F6A0C 001F1C0C  7C 9E 23 78 */	mr r30, r4
/* 801F6A10 001F1C10  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F6A14 001F1C14  7C 7D 1B 78 */	mr r29, r3
/* 801F6A18 001F1C18  41 82 00 78 */	beq .L_801F6A90
/* 801F6A1C 001F1C1C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801F6A20 001F1C20  80 03 00 08 */	lwz r0, 0x8(r3)
/* 801F6A24 001F1C24  7C 04 00 40 */	cmplw r4, r0
/* 801F6A28 001F1C28  40 80 00 58 */	bge .L_801F6A80
/* 801F6A2C 001F1C2C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801F6A30 001F1C30  2C 00 00 00 */	cmpwi r0, 0x0
/* 801F6A34 001F1C34  41 82 00 4C */	beq .L_801F6A80
/* 801F6A38 001F1C38  80 03 00 04 */	lwz r0, 0x4(r3)
/* 801F6A3C 001F1C3C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 801F6A40 001F1C40  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F6A44 001F1C44  7F E3 02 14 */	add r31, r3, r0
/* 801F6A48 001F1C48  48 00 00 2C */	b .L_801F6A74
.L_801F6A4C:
/* 801F6A4C 001F1C4C  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 801F6A50 001F1C50  38 80 FF FF */	li r4, -0x1
/* 801F6A54 001F1C54  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 801F6A58 001F1C58  7F E0 F8 50 */	subf r31, r0, r31
/* 801F6A5C 001F1C5C  7F E3 FB 78 */	mr r3, r31
/* 801F6A60 001F1C60  7D 89 03 A6 */	mtctr r12
/* 801F6A64 001F1C64  4E 80 04 21 */	bctrl
/* 801F6A68 001F1C68  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 801F6A6C 001F1C6C  38 03 FF FF */	subi r0, r3, 0x1
/* 801F6A70 001F1C70  90 1D 00 10 */	stw r0, 0x10(r29)
.L_801F6A74:
/* 801F6A74 001F1C74  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 801F6A78 001F1C78  2C 00 00 00 */	cmpwi r0, 0x0
/* 801F6A7C 001F1C7C  40 82 FF D0 */	bne .L_801F6A4C
.L_801F6A80:
/* 801F6A80 001F1C80  2C 1E 00 00 */	cmpwi r30, 0x0
/* 801F6A84 001F1C84  40 81 00 0C */	ble .L_801F6A90
/* 801F6A88 001F1C88  7F A3 EB 78 */	mr r3, r29
/* 801F6A8C 001F1C8C  4B EE 1F E9 */	bl fn_800D8A74
.L_801F6A90:
/* 801F6A90 001F1C90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F6A94 001F1C94  7F A3 EB 78 */	mr r3, r29
/* 801F6A98 001F1C98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F6A9C 001F1C9C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F6AA0 001F1CA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6AA4 001F1CA4  7C 08 03 A6 */	mtlr r0
/* 801F6AA8 001F1CA8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6AAC 001F1CAC  4E 80 00 20 */	blr
.endfn fn_801F69F4
