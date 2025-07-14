.include "macros.inc"
.file "auto_fn_802954F4_text"

# 0x80006C10..0x80006C18 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C10 | size: 0x8
.obj "@etb_80006C10", local
.hidden "@etb_80006C10"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006C10"

# 0x80007448..0x80007454 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007448 | size: 0xC
.obj "@eti_80007448", local
.hidden "@eti_80007448"
	.4byte fn_802954F4
	.4byte 0x00000048
	.4byte "@etb_80006C10"
.endobj "@eti_80007448"

# 0x802954F4..0x8029553C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802954F4 | size: 0x48
.fn fn_802954F4, global
/* 802954F4 002906F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802954F8 002906F8  7C 08 02 A6 */	mflr r0
/* 802954FC 002906FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295500 00290700  38 00 00 00 */	li r0, 0x0
/* 80295504 00290704  80 AD 8E 74 */	lwz r5, lbl_806AB274@sda21(r0)
/* 80295508 00290708  2C 05 00 00 */	cmpwi r5, 0x0
/* 8029550C 0029070C  41 82 00 1C */	beq .L_80295528
/* 80295510 00290710  81 85 00 3C */	lwz r12, 0x3c(r5)
/* 80295514 00290714  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295518 00290718  41 82 00 10 */	beq .L_80295528
/* 8029551C 0029071C  7D 89 03 A6 */	mtctr r12
/* 80295520 00290720  4E 80 04 21 */	bctrl
/* 80295524 00290724  7C 60 1B 78 */	mr r0, r3
.L_80295528:
/* 80295528 00290728  7C 03 03 78 */	mr r3, r0
/* 8029552C 0029072C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295530 00290730  7C 08 03 A6 */	mtlr r0
/* 80295534 00290734  38 21 00 10 */	addi r1, r1, 0x10
/* 80295538 00290738  4E 80 00 20 */	blr
.endfn fn_802954F4
