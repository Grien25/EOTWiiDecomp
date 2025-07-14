.include "macros.inc"
.file "auto_fn_80290384_text"

# 0x80006A08..0x80006A10 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A08 | size: 0x8
.obj "@etb_80006A08", local
.hidden "@etb_80006A08"
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
.endobj "@etb_80006A08"

# 0x8000713C..0x80007148 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000713C | size: 0xC
.obj "@eti_8000713C", local
.hidden "@eti_8000713C"
	.4byte fn_80290384
	.4byte 0x00000064
	.4byte "@etb_80006A08"
.endobj "@eti_8000713C"

# 0x80290384..0x802903E8 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x80290384 | size: 0x64
.fn fn_80290384, global
/* 80290384 0028B584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290388 0028B588  7C 08 02 A6 */	mflr r0
/* 8029038C 0028B58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290390 0028B590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80290394 0028B594  3F E0 80 66 */	lis r31, lbl_80666A88@ha
/* 80290398 0028B598  80 1F 6A 88 */	lwz r0, lbl_80666A88@l(r31)
/* 8029039C 0028B59C  34 00 FF FF */	subic. r0, r0, 0x1
/* 802903A0 0028B5A0  90 1F 6A 88 */	stw r0, lbl_80666A88@l(r31)
/* 802903A4 0028B5A4  40 82 00 30 */	bne .L_802903D4
/* 802903A8 0028B5A8  4B FF E9 ED */	bl fn_8028ED94
/* 802903AC 0028B5AC  48 00 4E 71 */	bl fn_8029521C
/* 802903B0 0028B5B0  4B F7 DD 11 */	bl TRKUARTInterruptHandler
/* 802903B4 0028B5B4  48 02 60 F5 */	bl fn_802B64A8
/* 802903B8 0028B5B8  3B FF 6A 88 */	addi r31, r31, lbl_80666A88@l
/* 802903BC 0028B5BC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802903C0 0028B5C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802903C4 0028B5C4  41 82 00 10 */	beq .L_802903D4
/* 802903C8 0028B5C8  48 02 21 89 */	bl fn_802B2550
/* 802903CC 0028B5CC  38 00 00 00 */	li r0, 0x0
/* 802903D0 0028B5D0  90 1F 00 4C */	stw r0, 0x4c(r31)
.L_802903D4:
/* 802903D4 0028B5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802903D8 0028B5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802903DC 0028B5DC  7C 08 03 A6 */	mtlr r0
/* 802903E0 0028B5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802903E4 0028B5E4  4E 80 00 20 */	blr
.endfn fn_80290384
