.include "macros.inc"
.file "auto_fn_80293B34_text"

# 0x80006B38..0x80006B40 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B38 | size: 0x8
.obj "@etb_80006B38", local
.hidden "@etb_80006B38"
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
.endobj "@etb_80006B38"

# 0x80007304..0x80007310 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007304 | size: 0xC
.obj "@eti_80007304", local
.hidden "@eti_80007304"
	.4byte fn_80293B34
	.4byte 0x0000008C
	.4byte "@etb_80006B38"
.endobj "@eti_80007304"

# 0x80293B34..0x80293BC0 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x80293B34 | size: 0x8C
.fn fn_80293B34, global
/* 80293B34 0028ED34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80293B38 0028ED38  7C 08 02 A6 */	mflr r0
/* 80293B3C 0028ED3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80293B40 0028ED40  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 80293B44 0028ED44  7C 7A 1B 78 */	mr r26, r3
/* 80293B48 0028ED48  7C 9B 23 78 */	mr r27, r4
/* 80293B4C 0028ED4C  7C BC 2B 78 */	mr r28, r5
/* 80293B50 0028ED50  7C DD 33 78 */	mr r29, r6
/* 80293B54 0028ED54  83 C3 0B 2C */	lwz r30, 0xb2c(r3)
/* 80293B58 0028ED58  80 03 0B 28 */	lwz r0, 0xb28(r3)
/* 80293B5C 0028ED5C  83 E3 0B 24 */	lwz r31, 0xb24(r3)
/* 80293B60 0028ED60  7C 1E 00 40 */	cmplw r30, r0
/* 80293B64 0028ED64  41 80 00 24 */	blt .L_80293B88
/* 80293B68 0028ED68  3C 60 80 2F */	lis r3, lbl_802F4848@ha
/* 80293B6C 0028ED6C  7F C5 F3 78 */	mr r5, r30
/* 80293B70 0028ED70  38 63 48 48 */	addi r3, r3, lbl_802F4848@l
/* 80293B74 0028ED74  7F 47 D3 78 */	mr r7, r26
/* 80293B78 0028ED78  38 83 09 73 */	addi r4, r3, 0x973
/* 80293B7C 0028ED7C  38 C0 00 00 */	li r6, 0x0
/* 80293B80 0028ED80  38 60 00 00 */	li r3, 0x0
/* 80293B84 0028ED84  48 01 EA C9 */	bl fn_802B264C
.L_80293B88:
/* 80293B88 0028ED88  7F E3 FB 78 */	mr r3, r31
/* 80293B8C 0028ED8C  7F C4 F3 78 */	mr r4, r30
/* 80293B90 0028ED90  7F 65 DB 78 */	mr r5, r27
/* 80293B94 0028ED94  7F 86 E3 78 */	mr r6, r28
/* 80293B98 0028ED98  7F A7 EB 78 */	mr r7, r29
/* 80293B9C 0028ED9C  48 02 2D 1D */	bl fn_802B68B8
/* 80293BA0 0028EDA0  80 7A 0B 2C */	lwz r3, 0xb2c(r26)
/* 80293BA4 0028EDA4  38 03 00 01 */	addi r0, r3, 0x1
/* 80293BA8 0028EDA8  90 1A 0B 2C */	stw r0, 0xb2c(r26)
/* 80293BAC 0028EDAC  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 80293BB0 0028EDB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80293BB4 0028EDB4  7C 08 03 A6 */	mtlr r0
/* 80293BB8 0028EDB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80293BBC 0028EDBC  4E 80 00 20 */	blr
.endfn fn_80293B34
