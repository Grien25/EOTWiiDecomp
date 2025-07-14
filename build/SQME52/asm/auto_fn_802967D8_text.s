.include "macros.inc"
.file "auto_fn_802967D8_text"

# 0x80006C70..0x80006C78 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C70 | size: 0x8
.obj "@etb_80006C70", local
.hidden "@etb_80006C70"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006C70"

# 0x800074D8..0x800074E4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800074D8 | size: 0xC
.obj "@eti_800074D8", local
.hidden "@eti_800074D8"
	.4byte fn_802967D8
	.4byte 0x00000058
	.4byte "@etb_80006C70"
.endobj "@eti_800074D8"

# 0x802967D8..0x80296830 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x802967D8 | size: 0x58
.fn fn_802967D8, global
/* 802967D8 002919D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802967DC 002919DC  7C 08 02 A6 */	mflr r0
/* 802967E0 002919E0  38 80 00 03 */	li r4, 0x3
/* 802967E4 002919E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802967E8 002919E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802967EC 002919EC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802967F0 002919F0  7C 7E 1B 78 */	mr r30, r3
/* 802967F4 002919F4  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802967F8 002919F8  48 01 EC 05 */	bl fn_802B53FC
/* 802967FC 002919FC  7C 7F 1B 78 */	mr r31, r3
/* 80296800 00291A00  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80296804 00291A04  38 80 00 01 */	li r4, 0x1
/* 80296808 00291A08  48 01 EB F5 */	bl fn_802B53FC
/* 8029680C 00291A0C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80296810 00291A10  7C 63 FA 14 */	add r3, r3, r31
/* 80296814 00291A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296818 00291A18  7C 63 03 96 */	divwu r3, r3, r0
/* 8029681C 00291A1C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80296820 00291A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296824 00291A24  7C 08 03 A6 */	mtlr r0
/* 80296828 00291A28  38 21 00 10 */	addi r1, r1, 0x10
/* 8029682C 00291A2C  4E 80 00 20 */	blr
.endfn fn_802967D8
