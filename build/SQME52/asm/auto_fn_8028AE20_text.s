.include "macros.inc"
.file "auto_fn_8028AE20_text"

# 0x80006820..0x80006828 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006820 | size: 0x8
.obj "@etb_80006820", local
.hidden "@etb_80006820"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r25-r31
 */
	.4byte 0x38080000
	.4byte 0x00000000
.endobj "@etb_80006820"

# 0x80006E60..0x80006E6C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006E60 | size: 0xC
.obj "@eti_80006E60", local
.hidden "@eti_80006E60"
	.4byte fn_8028AE20
	.4byte 0x00000098
	.4byte "@etb_80006820"
.endobj "@eti_80006E60"

# 0x8028AE20..0x8028AEB8 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x8028AE20 | size: 0x98
.fn fn_8028AE20, global
/* 8028AE20 00286020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028AE24 00286024  7C 08 02 A6 */	mflr r0
/* 8028AE28 00286028  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028AE2C 0028602C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028AE30 00286030  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8028AE34 00286034  7C 7D 1B 78 */	mr r29, r3
/* 8028AE38 00286038  7C 99 23 78 */	mr r25, r4
/* 8028AE3C 0028603C  7C BA 2B 78 */	mr r26, r5
/* 8028AE40 00286040  7C DB 33 78 */	mr r27, r6
/* 8028AE44 00286044  40 82 00 0C */	bne .L_8028AE50
/* 8028AE48 00286048  38 60 00 00 */	li r3, 0x0
/* 8028AE4C 0028604C  48 00 00 58 */	b .L_8028AEA4
.L_8028AE50:
/* 8028AE50 00286050  7F 5F D3 78 */	mr r31, r26
/* 8028AE54 00286054  54 DE 10 3A */	slwi r30, r6, 2
/* 8028AE58 00286058  3B 80 00 00 */	li r28, 0x0
/* 8028AE5C 0028605C  48 00 00 1C */	b .L_8028AE78
.L_8028AE60:
/* 8028AE60 00286060  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8028AE64 00286064  7F C5 F3 78 */	mr r5, r30
/* 8028AE68 00286068  38 80 00 00 */	li r4, 0x0
/* 8028AE6C 0028606C  4B D7 94 E5 */	bl memset
/* 8028AE70 00286070  3B FF 00 04 */	addi r31, r31, 0x4
/* 8028AE74 00286074  3B 9C 00 01 */	addi r28, r28, 0x1
.L_8028AE78:
/* 8028AE78 00286078  7C 1C C8 40 */	cmplw r28, r25
/* 8028AE7C 0028607C  41 80 FF E4 */	blt .L_8028AE60
/* 8028AE80 00286080  7F A3 EB 78 */	mr r3, r29
/* 8028AE84 00286084  7F 24 CB 78 */	mr r4, r25
/* 8028AE88 00286088  7F 45 D3 78 */	mr r5, r26
/* 8028AE8C 0028608C  7F 66 DB 78 */	mr r6, r27
/* 8028AE90 00286090  48 00 00 29 */	bl fn_8028AEB8
/* 8028AE94 00286094  7C 60 00 34 */	cntlzw r0, r3
/* 8028AE98 00286098  54 00 DF FE */	extrwi r0, r0, 1, 26
/* 8028AE9C 0028609C  7C 00 00 D0 */	neg r0, r0
/* 8028AEA0 002860A0  7C 63 00 78 */	andc r3, r3, r0
.L_8028AEA4:
/* 8028AEA4 002860A4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8028AEA8 002860A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8028AEAC 002860AC  7C 08 03 A6 */	mtlr r0
/* 8028AEB0 002860B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8028AEB4 002860B4  4E 80 00 20 */	blr
.endfn fn_8028AE20
