.include "macros.inc"
.file "auto_fn_802913D0_text"

# 0x80006A48..0x80006A50 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A48 | size: 0x8
.obj "@etb_80006A48", local
.hidden "@etb_80006A48"
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
.endobj "@etb_80006A48"

# 0x8000719C..0x800071A8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000719C | size: 0xC
.obj "@eti_8000719C", local
.hidden "@eti_8000719C"
	.4byte fn_802913D0
	.4byte 0x00000040
	.4byte "@etb_80006A48"
.endobj "@eti_8000719C"

# 0x802913D0..0x80291410 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802913D0 | size: 0x40
.fn fn_802913D0, global
/* 802913D0 0028C5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802913D4 0028C5D4  7C 08 02 A6 */	mflr r0
/* 802913D8 0028C5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802913DC 0028C5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802913E0 0028C5E0  7C 7F 1B 78 */	mr r31, r3
/* 802913E4 0028C5E4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802913E8 0028C5E8  48 02 11 75 */	bl fn_802B255C
/* 802913EC 0028C5EC  7F E3 FB 78 */	mr r3, r31
/* 802913F0 0028C5F0  48 00 00 21 */	bl fn_80291410
/* 802913F4 0028C5F4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802913F8 0028C5F8  48 02 11 69 */	bl fn_802B2560
/* 802913FC 0028C5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291400 0028C600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80291404 0028C604  7C 08 03 A6 */	mtlr r0
/* 80291408 0028C608  38 21 00 10 */	addi r1, r1, 0x10
/* 8029140C 0028C60C  4E 80 00 20 */	blr
.endfn fn_802913D0
