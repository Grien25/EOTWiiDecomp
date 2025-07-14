.include "macros.inc"
.file "auto_fn_8028EF18_text"

# 0x80006978..0x80006980 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006978 | size: 0x8
.obj "@etb_80006978", local
.hidden "@etb_80006978"
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
.endobj "@etb_80006978"

# 0x80007064..0x80007070 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007064 | size: 0xC
.obj "@eti_80007064", local
.hidden "@eti_80007064"
	.4byte fn_8028EF18
	.4byte 0x000000A4
	.4byte "@etb_80006978"
.endobj "@eti_80007064"

# 0x8028EF18..0x8028EFBC | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x8028EF18 | size: 0xA4
.fn fn_8028EF18, global
/* 8028EF18 0028A118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028EF1C 0028A11C  7C 08 02 A6 */	mflr r0
/* 8028EF20 0028A120  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028EF24 0028A124  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028EF28 0028A128  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028EF2C 0028A12C  3B C0 00 00 */	li r30, 0x0
/* 8028EF30 0028A130  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028EF34 0028A134  7C 9D 23 78 */	mr r29, r4
/* 8028EF38 0028A138  93 81 00 10 */	stw r28, 0x10(r1)
/* 8028EF3C 0028A13C  7C 7C 1B 78 */	mr r28, r3
/* 8028EF40 0028A140  7F 9F E3 78 */	mr r31, r28
/* 8028EF44 0028A144  48 00 00 28 */	b .L_8028EF6C
.L_8028EF48:
/* 8028EF48 0028A148  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8028EF4C 0028A14C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8028EF50 0028A150  41 82 00 14 */	beq .L_8028EF64
/* 8028EF54 0028A154  7F 83 E3 78 */	mr r3, r28
/* 8028EF58 0028A158  7F A4 EB 78 */	mr r4, r29
/* 8028EF5C 0028A15C  7F C5 F3 78 */	mr r5, r30
/* 8028EF60 0028A160  48 00 03 45 */	bl fn_8028F2A4
.L_8028EF64:
/* 8028EF64 0028A164  3B FF 00 04 */	addi r31, r31, 0x4
/* 8028EF68 0028A168  3B DE 00 01 */	addi r30, r30, 0x1
.L_8028EF6C:
/* 8028EF6C 0028A16C  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8028EF70 0028A170  7C 1E 00 00 */	cmpw r30, r0
/* 8028EF74 0028A174  41 80 FF D4 */	blt .L_8028EF48
/* 8028EF78 0028A178  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8028EF7C 0028A17C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028EF80 0028A180  41 82 00 10 */	beq .L_8028EF90
/* 8028EF84 0028A184  48 02 64 1D */	bl fn_802B53A0
/* 8028EF88 0028A188  38 00 00 00 */	li r0, 0x0
/* 8028EF8C 0028A18C  90 1C 00 10 */	stw r0, 0x10(r28)
.L_8028EF90:
/* 8028EF90 0028A190  7F A3 EB 78 */	mr r3, r29
/* 8028EF94 0028A194  7F 84 E3 78 */	mr r4, r28
/* 8028EF98 0028A198  48 02 4B 1D */	bl fn_802B3AB4
/* 8028EF9C 0028A19C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028EFA0 0028A1A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028EFA4 0028A1A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028EFA8 0028A1A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028EFAC 0028A1AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8028EFB0 0028A1B0  7C 08 03 A6 */	mtlr r0
/* 8028EFB4 0028A1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8028EFB8 0028A1B8  4E 80 00 20 */	blr
.endfn fn_8028EF18
