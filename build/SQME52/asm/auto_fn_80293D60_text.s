.include "macros.inc"
.file "auto_fn_80293D60_text"

# 0x80006B48..0x80006B50 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B48 | size: 0x8
.obj "@etb_80006B48", local
.hidden "@etb_80006B48"
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
.endobj "@etb_80006B48"

# 0x8000731C..0x80007328 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000731C | size: 0xC
.obj "@eti_8000731C", local
.hidden "@eti_8000731C"
	.4byte fn_80293D60
	.4byte 0x00000040
	.4byte "@etb_80006B48"
.endobj "@eti_8000731C"

# 0x80293D60..0x80293DA0 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x80293D60 | size: 0x40
.fn fn_80293D60, global
/* 80293D60 0028EF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293D64 0028EF64  7C 08 02 A6 */	mflr r0
/* 80293D68 0028EF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293D6C 0028EF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293D70 0028EF70  7C 7F 1B 78 */	mr r31, r3
/* 80293D74 0028EF74  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80293D78 0028EF78  48 01 E7 E5 */	bl fn_802B255C
/* 80293D7C 0028EF7C  7F E3 FB 78 */	mr r3, r31
/* 80293D80 0028EF80  48 00 00 21 */	bl fn_80293DA0
/* 80293D84 0028EF84  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80293D88 0028EF88  48 01 E7 D9 */	bl fn_802B2560
/* 80293D8C 0028EF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293D90 0028EF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293D94 0028EF94  7C 08 03 A6 */	mtlr r0
/* 80293D98 0028EF98  38 21 00 10 */	addi r1, r1, 0x10
/* 80293D9C 0028EF9C  4E 80 00 20 */	blr
.endfn fn_80293D60
