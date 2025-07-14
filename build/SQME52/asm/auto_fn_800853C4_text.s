.include "macros.inc"
.file "auto_fn_800853C4_text"

# 0x800853C4..0x800853F8 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x800853C4 | size: 0x34
.fn fn_800853C4, global
/* 800853C4 000805C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800853C8 000805C8  7C 08 02 A6 */	mflr r0
/* 800853CC 000805CC  3C 60 80 5E */	lis r3, lbl_805DE648@ha
/* 800853D0 000805D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800853D4 000805D4  38 63 E6 48 */	addi r3, r3, lbl_805DE648@l
/* 800853D8 000805D8  48 1B 9F 39 */	bl fn_8023F310
/* 800853DC 000805DC  3C 60 80 5E */	lis r3, lbl_805DE680@ha
/* 800853E0 000805E0  38 63 E6 80 */	addi r3, r3, lbl_805DE680@l
/* 800853E4 000805E4  48 1B 9F 2D */	bl fn_8023F310
/* 800853E8 000805E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800853EC 000805EC  7C 08 03 A6 */	mtlr r0
/* 800853F0 000805F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800853F4 000805F4  4E 80 00 20 */	blr
.endfn fn_800853C4

# 0x802F0AAC..0x802F0AB0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800853C4
