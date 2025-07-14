.include "macros.inc"
.file "auto_fn_802BA508_text"

# 0x802BA508..0x802BA550 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BA508 | size: 0x48
.fn fn_802BA508, global
/* 802BA508 002B5708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA50C 002B570C  3C 60 80 00 */	lis r3, 0x8000
/* 802BA510 002B5710  3C 00 43 30 */	lis r0, 0x4330
/* 802BA514 002B5714  C8 42 A8 60 */	lfd f2, lbl_806ADC80@sda21(r0)
/* 802BA518 002B5718  80 A3 00 F8 */	lwz r5, 0xf8(r3)
/* 802BA51C 002B571C  3C 80 80 67 */	lis r4, lbl_80675634@ha
/* 802BA520 002B5720  90 01 00 08 */	stw r0, 0x8(r1)
/* 802BA524 002B5724  3C 60 80 67 */	lis r3, lbl_80675630@ha
/* 802BA528 002B5728  54 A0 F0 BE */	srwi r0, r5, 2
/* 802BA52C 002B572C  C0 02 A8 68 */	lfs f0, lbl_806ADC88@sda21(r0)
/* 802BA530 002B5730  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BA534 002B5734  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 802BA538 002B5738  EC 21 10 28 */	fsubs f1, f1, f2
/* 802BA53C 002B573C  D0 24 56 34 */	stfs f1, lbl_80675634@l(r4)
/* 802BA540 002B5740  EC 00 08 24 */	fdivs f0, f0, f1
/* 802BA544 002B5744  D0 03 56 30 */	stfs f0, lbl_80675630@l(r3)
/* 802BA548 002B5748  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA54C 002B574C  4E 80 00 20 */	blr
.endfn fn_802BA508

# 0x802F0BA4..0x802F0BA8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802BA508
