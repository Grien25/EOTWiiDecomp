.include "macros.inc"
.file "auto_fn_80293EE8_text"

# 0x80006B58..0x80006B60 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B58 | size: 0x8
.obj "@etb_80006B58", local
.hidden "@etb_80006B58"
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
.endobj "@etb_80006B58"

# 0x80007334..0x80007340 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007334 | size: 0xC
.obj "@eti_80007334", local
.hidden "@eti_80007334"
	.4byte fn_80293EE8
	.4byte 0x00000040
	.4byte "@etb_80006B58"
.endobj "@eti_80007334"

# 0x80293EE8..0x80293F28 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x80293EE8 | size: 0x40
.fn fn_80293EE8, global
/* 80293EE8 0028F0E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293EEC 0028F0EC  7C 08 02 A6 */	mflr r0
/* 80293EF0 0028F0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293EF4 0028F0F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293EF8 0028F0F8  7C 7F 1B 78 */	mr r31, r3
/* 80293EFC 0028F0FC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80293F00 0028F100  48 01 E6 5D */	bl fn_802B255C
/* 80293F04 0028F104  7F E3 FB 78 */	mr r3, r31
/* 80293F08 0028F108  48 00 00 21 */	bl fn_80293F28
/* 80293F0C 0028F10C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80293F10 0028F110  48 01 E6 51 */	bl fn_802B2560
/* 80293F14 0028F114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293F18 0028F118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293F1C 0028F11C  7C 08 03 A6 */	mtlr r0
/* 80293F20 0028F120  38 21 00 10 */	addi r1, r1, 0x10
/* 80293F24 0028F124  4E 80 00 20 */	blr
.endfn fn_80293EE8
