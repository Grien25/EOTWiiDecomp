.include "macros.inc"
.file "auto_fn_8028927C_text"

# 0x80006788..0x80006790 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006788 | size: 0x8
.obj "@etb_80006788", local
.hidden "@etb_80006788"
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
.endobj "@etb_80006788"

# 0x80006D7C..0x80006D88 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006D7C | size: 0xC
.obj "@eti_80006D7C", local
.hidden "@eti_80006D7C"
	.4byte fn_8028927C
	.4byte 0x00000044
	.4byte "@etb_80006788"
.endobj "@eti_80006D7C"

# 0x8028927C..0x802892C0 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x8028927C | size: 0x44
.fn fn_8028927C, global
/* 8028927C 0028447C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80289280 00284480  7C 08 02 A6 */	mflr r0
/* 80289284 00284484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80289288 00284488  38 00 00 00 */	li r0, 0x0
/* 8028928C 0028448C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80289290 00284490  7C DF 33 78 */	mr r31, r6
/* 80289294 00284494  90 06 00 00 */	stw r0, 0x0(r6)
/* 80289298 00284498  48 00 C3 D9 */	bl fn_80295670
/* 8028929C 0028449C  2C 03 00 01 */	cmpwi r3, 0x1
/* 802892A0 002844A0  41 82 00 0C */	beq .L_802892AC
/* 802892A4 002844A4  38 00 FF FF */	li r0, -0x1
/* 802892A8 002844A8  90 1F 00 00 */	stw r0, 0x0(r31)
.L_802892AC:
/* 802892AC 002844AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802892B0 002844B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802892B4 002844B4  7C 08 03 A6 */	mtlr r0
/* 802892B8 002844B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802892BC 002844BC  4E 80 00 20 */	blr
.endfn fn_8028927C
