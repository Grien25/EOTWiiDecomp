.include "macros.inc"
.file "auto_fn_8028E924_text"

# 0x80006910..0x80006918 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006910 | size: 0x8
.obj "@etb_80006910", local
.hidden "@etb_80006910"
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
.endobj "@etb_80006910"

# 0x80006FC8..0x80006FD4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006FC8 | size: 0xC
.obj "@eti_80006FC8", local
.hidden "@eti_80006FC8"
	.4byte fn_8028E924
	.4byte 0x00000044
	.4byte "@etb_80006910"
.endobj "@eti_80006FC8"

# 0x8028E924..0x8028E968 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x8028E924 | size: 0x44
.fn fn_8028E924, global
/* 8028E924 00289B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E928 00289B28  7C 08 02 A6 */	mflr r0
/* 8028E92C 00289B2C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028E930 00289B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E934 00289B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E938 00289B38  7C 7F 1B 78 */	mr r31, r3
/* 8028E93C 00289B3C  41 82 00 14 */	beq .L_8028E950
/* 8028E940 00289B40  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028E944 00289B44  40 81 00 0C */	ble .L_8028E950
/* 8028E948 00289B48  38 80 06 88 */	li r4, 0x688
/* 8028E94C 00289B4C  48 02 4F 6D */	bl fn_802B38B8
.L_8028E950:
/* 8028E950 00289B50  7F E3 FB 78 */	mr r3, r31
/* 8028E954 00289B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E958 00289B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E95C 00289B5C  7C 08 03 A6 */	mtlr r0
/* 8028E960 00289B60  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E964 00289B64  4E 80 00 20 */	blr
.endfn fn_8028E924
