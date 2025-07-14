.include "macros.inc"
.file "auto_fn_802919FC_text"

# 0x80006A98..0x80006AA0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A98 | size: 0x8
.obj "@etb_80006A98", local
.hidden "@etb_80006A98"
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
.endobj "@etb_80006A98"

# 0x80007214..0x80007220 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007214 | size: 0xC
.obj "@eti_80007214", local
.hidden "@eti_80007214"
	.4byte fn_802919FC
	.4byte 0x00000034
	.4byte "@etb_80006A98"
.endobj "@eti_80007214"

# 0x802919FC..0x80291A30 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802919FC | size: 0x34
.fn fn_802919FC, global
/* 802919FC 0028CBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291A00 0028CC00  7C 08 02 A6 */	mflr r0
/* 80291A04 0028CC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291A08 0028CC08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291A0C 0028CC0C  7C 7F 1B 78 */	mr r31, r3
/* 80291A10 0028CC10  48 00 21 B1 */	bl fn_80293BC0
/* 80291A14 0028CC14  7F E3 FB 78 */	mr r3, r31
/* 80291A18 0028CC18  48 00 00 FD */	bl fn_80291B14
/* 80291A1C 0028CC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291A20 0028CC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80291A24 0028CC24  7C 08 03 A6 */	mtlr r0
/* 80291A28 0028CC28  38 21 00 10 */	addi r1, r1, 0x10
/* 80291A2C 0028CC2C  4E 80 00 20 */	blr
.endfn fn_802919FC
