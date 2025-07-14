.include "macros.inc"
.file "auto_fn_80289B54_text"

# 0x800067B0..0x800067B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067B0 | size: 0x8
.obj "@etb_800067B0", local
.hidden "@etb_800067B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: Yes
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10180000
	.4byte 0x00000000
.endobj "@etb_800067B0"

# 0x80006DB8..0x80006DC4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006DB8 | size: 0xC
.obj "@eti_80006DB8", local
.hidden "@eti_80006DB8"
	.4byte fn_80289B54
	.4byte 0x000000B0
	.4byte "@etb_800067B0"
.endobj "@eti_80006DB8"

# 0x80289B54..0x80289C04 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x80289B54 | size: 0xB0
.fn fn_80289B54, global
/* 80289B54 00284D54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80289B58 00284D58  7C 08 02 A6 */	mflr r0
/* 80289B5C 00284D5C  3C A0 80 2F */	lis r5, lbl_802F3F54@ha
/* 80289B60 00284D60  38 C0 00 04 */	li r6, 0x4
/* 80289B64 00284D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80289B68 00284D68  38 A5 3F 54 */	addi r5, r5, lbl_802F3F54@l
/* 80289B6C 00284D6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80289B70 00284D70  7C 3F 0B 78 */	mr r31, r1
/* 80289B74 00284D74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80289B78 00284D78  7C 7E 1B 78 */	mr r30, r3
/* 80289B7C 00284D7C  7F C4 F3 78 */	mr r4, r30
/* 80289B80 00284D80  38 60 00 38 */	li r3, 0x38
/* 80289B84 00284D84  48 02 9C B5 */	bl fn_802B3838
/* 80289B88 00284D88  2C 03 00 00 */	cmpwi r3, 0x0
/* 80289B8C 00284D8C  41 82 00 14 */	beq .L_80289BA0
/* 80289B90 00284D90  3C 80 80 58 */	lis r4, lbl_8057BC68@ha
/* 80289B94 00284D94  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 80289B98 00284D98  38 84 BC 68 */	addi r4, r4, lbl_8057BC68@l
/* 80289B9C 00284D9C  90 83 00 00 */	stw r4, 0x0(r3)
.L_80289BA0:
/* 80289BA0 00284DA0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80289BA4 00284DA4  40 82 00 0C */	bne .L_80289BB0
/* 80289BA8 00284DA8  38 60 00 00 */	li r3, 0x0
/* 80289BAC 00284DAC  48 00 00 38 */	b .L_80289BE4
.L_80289BB0:
/* 80289BB0 00284DB0  38 80 00 00 */	li r4, 0x0
/* 80289BB4 00284DB4  90 83 00 04 */	stw r4, 0x4(r3)
/* 80289BB8 00284DB8  38 00 FF FF */	li r0, -0x1
/* 80289BBC 00284DBC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80289BC0 00284DC0  90 03 00 08 */	stw r0, 0x8(r3)
/* 80289BC4 00284DC4  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80289BC8 00284DC8  90 83 00 18 */	stw r4, 0x18(r3)
/* 80289BCC 00284DCC  90 83 00 24 */	stw r4, 0x24(r3)
/* 80289BD0 00284DD0  90 83 00 20 */	stw r4, 0x20(r3)
/* 80289BD4 00284DD4  93 C3 00 10 */	stw r30, 0x10(r3)
/* 80289BD8 00284DD8  90 83 00 28 */	stw r4, 0x28(r3)
/* 80289BDC 00284DDC  90 83 00 30 */	stw r4, 0x30(r3)
/* 80289BE0 00284DE0  90 83 00 2C */	stw r4, 0x2c(r3)
.L_80289BE4:
/* 80289BE4 00284DE4  7F EA FB 78 */	mr r10, r31
/* 80289BE8 00284DE8  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 80289BEC 00284DEC  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 80289BF0 00284DF0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80289BF4 00284DF4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 80289BF8 00284DF8  7D 41 53 78 */	mr r1, r10
/* 80289BFC 00284DFC  7C 08 03 A6 */	mtlr r0
/* 80289C00 00284E00  4E 80 00 20 */	blr
.endfn fn_80289B54
