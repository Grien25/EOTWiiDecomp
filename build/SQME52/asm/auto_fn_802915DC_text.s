.include "macros.inc"
.file "auto_fn_802915DC_text"

# 0x80006A68..0x80006A70 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A68 | size: 0x8
.obj "@etb_80006A68", local
.hidden "@etb_80006A68"
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
.endobj "@etb_80006A68"

# 0x800071CC..0x800071D8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800071CC | size: 0xC
.obj "@eti_800071CC", local
.hidden "@eti_800071CC"
	.4byte fn_802915DC
	.4byte 0x00000040
	.4byte "@etb_80006A68"
.endobj "@eti_800071CC"

# 0x802915DC..0x8029161C | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802915DC | size: 0x40
.fn fn_802915DC, global
/* 802915DC 0028C7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802915E0 0028C7E0  7C 08 02 A6 */	mflr r0
/* 802915E4 0028C7E4  38 A0 00 01 */	li r5, 0x1
/* 802915E8 0028C7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802915EC 0028C7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802915F0 0028C7F0  7C 7F 1B 78 */	mr r31, r3
/* 802915F4 0028C7F4  80 63 0B 78 */	lwz r3, 0xb78(r3)
/* 802915F8 0028C7F8  80 9F 0B 84 */	lwz r4, 0xb84(r31)
/* 802915FC 0028C7FC  4B FF DC A9 */	bl fn_8028F2A4
/* 80291600 0028C800  38 00 00 00 */	li r0, 0x0
/* 80291604 0028C804  90 1F 0B 84 */	stw r0, 0xb84(r31)
/* 80291608 0028C808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029160C 0028C80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291610 0028C810  7C 08 03 A6 */	mtlr r0
/* 80291614 0028C814  38 21 00 10 */	addi r1, r1, 0x10
/* 80291618 0028C818  4E 80 00 20 */	blr
.endfn fn_802915DC
