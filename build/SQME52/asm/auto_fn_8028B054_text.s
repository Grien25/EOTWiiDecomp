.include "macros.inc"
.file "auto_fn_8028B054_text"

# 0x80006830..0x80006838 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006830 | size: 0x8
.obj "@etb_80006830", local
.hidden "@etb_80006830"
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
.endobj "@etb_80006830"

# 0x80006E78..0x80006E84 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006E78 | size: 0xC
.obj "@eti_80006E78", local
.hidden "@eti_80006E78"
	.4byte fn_8028B054
	.4byte 0x00000098
	.4byte "@etb_80006830"
.endobj "@eti_80006E78"

# 0x8028B054..0x8028B0EC | size: 0x98
.text
.balign 4

# .text:0x0 | 0x8028B054 | size: 0x98
.fn fn_8028B054, global
/* 8028B054 00286254  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028B058 00286258  7C 08 02 A6 */	mflr r0
/* 8028B05C 0028625C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028B060 00286260  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028B064 00286264  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8028B068 00286268  7C 7D 1B 78 */	mr r29, r3
/* 8028B06C 0028626C  7C 99 23 78 */	mr r25, r4
/* 8028B070 00286270  7C BA 2B 78 */	mr r26, r5
/* 8028B074 00286274  7C DB 33 78 */	mr r27, r6
/* 8028B078 00286278  40 82 00 0C */	bne .L_8028B084
/* 8028B07C 0028627C  38 60 00 00 */	li r3, 0x0
/* 8028B080 00286280  48 00 00 58 */	b .L_8028B0D8
.L_8028B084:
/* 8028B084 00286284  7F 5F D3 78 */	mr r31, r26
/* 8028B088 00286288  54 DE 08 3C */	slwi r30, r6, 1
/* 8028B08C 0028628C  3B 80 00 00 */	li r28, 0x0
/* 8028B090 00286290  48 00 00 1C */	b .L_8028B0AC
.L_8028B094:
/* 8028B094 00286294  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8028B098 00286298  7F C5 F3 78 */	mr r5, r30
/* 8028B09C 0028629C  38 80 00 00 */	li r4, 0x0
/* 8028B0A0 002862A0  4B D7 92 B1 */	bl memset
/* 8028B0A4 002862A4  3B FF 00 04 */	addi r31, r31, 0x4
/* 8028B0A8 002862A8  3B 9C 00 01 */	addi r28, r28, 0x1
.L_8028B0AC:
/* 8028B0AC 002862AC  7C 1C C8 40 */	cmplw r28, r25
/* 8028B0B0 002862B0  41 80 FF E4 */	blt .L_8028B094
/* 8028B0B4 002862B4  7F A3 EB 78 */	mr r3, r29
/* 8028B0B8 002862B8  7F 24 CB 78 */	mr r4, r25
/* 8028B0BC 002862BC  7F 45 D3 78 */	mr r5, r26
/* 8028B0C0 002862C0  7F 66 DB 78 */	mr r6, r27
/* 8028B0C4 002862C4  48 00 00 29 */	bl fn_8028B0EC
/* 8028B0C8 002862C8  7C 60 00 34 */	cntlzw r0, r3
/* 8028B0CC 002862CC  54 00 DF FE */	extrwi r0, r0, 1, 26
/* 8028B0D0 002862D0  7C 00 00 D0 */	neg r0, r0
/* 8028B0D4 002862D4  7C 63 00 78 */	andc r3, r3, r0
.L_8028B0D8:
/* 8028B0D8 002862D8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8028B0DC 002862DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8028B0E0 002862E0  7C 08 03 A6 */	mtlr r0
/* 8028B0E4 002862E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8028B0E8 002862E8  4E 80 00 20 */	blr
.endfn fn_8028B054
