.include "macros.inc"
.file "auto_fn_80296E30_text"

# 0x80006C90..0x80006C98 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C90 | size: 0x8
.obj "@etb_80006C90", local
.hidden "@etb_80006C90"
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
.endobj "@etb_80006C90"

# 0x80007508..0x80007514 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007508 | size: 0xC
.obj "@eti_80007508", local
.hidden "@eti_80007508"
	.4byte fn_80296E30
	.4byte 0x0000005C
	.4byte "@etb_80006C90"
.endobj "@eti_80007508"

# 0x80296E30..0x80296E8C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x80296E30 | size: 0x5C
.fn fn_80296E30, global
/* 80296E30 00292030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80296E34 00292034  7C 08 02 A6 */	mflr r0
/* 80296E38 00292038  90 01 00 24 */	stw r0, 0x24(r1)
/* 80296E3C 0029203C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80296E40 00292040  7C 7F 1B 78 */	mr r31, r3
/* 80296E44 00292044  80 03 01 10 */	lwz r0, 0x110(r3)
/* 80296E48 00292048  2C 00 00 00 */	cmpwi r0, 0x0
/* 80296E4C 0029204C  41 82 00 2C */	beq .L_80296E78
/* 80296E50 00292050  90 01 00 08 */	stw r0, 0x8(r1)
/* 80296E54 00292054  38 A1 00 08 */	addi r5, r1, 0x8
/* 80296E58 00292058  80 03 01 14 */	lwz r0, 0x114(r3)
/* 80296E5C 0029205C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80296E60 00292060  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80296E64 00292064  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 80296E68 00292068  48 01 E5 85 */	bl fn_802B53EC
/* 80296E6C 0029206C  38 00 00 00 */	li r0, 0x0
/* 80296E70 00292070  90 1F 01 10 */	stw r0, 0x110(r31)
/* 80296E74 00292074  90 1F 01 14 */	stw r0, 0x114(r31)
.L_80296E78:
/* 80296E78 00292078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80296E7C 0029207C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80296E80 00292080  7C 08 03 A6 */	mtlr r0
/* 80296E84 00292084  38 21 00 20 */	addi r1, r1, 0x20
/* 80296E88 00292088  4E 80 00 20 */	blr
.endfn fn_80296E30
