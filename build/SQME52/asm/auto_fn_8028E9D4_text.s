.include "macros.inc"
.file "auto_fn_8028E9D4_text"

# 0x80006920..0x80006928 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006920 | size: 0x8
.obj "@etb_80006920", local
.hidden "@etb_80006920"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006920"

# 0x80006FE0..0x80006FEC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006FE0 | size: 0xC
.obj "@eti_80006FE0", local
.hidden "@eti_80006FE0"
	.4byte fn_8028E9D4
	.4byte 0x00000048
	.4byte "@etb_80006920"
.endobj "@eti_80006FE0"

# 0x8028E9D4..0x8028EA1C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028E9D4 | size: 0x48
.fn fn_8028E9D4, global
/* 8028E9D4 00289BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E9D8 00289BD8  7C 08 02 A6 */	mflr r0
/* 8028E9DC 00289BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E9E0 00289BE0  38 00 00 00 */	li r0, 0x0
/* 8028E9E4 00289BE4  80 CD 8E 58 */	lwz r6, lbl_806AB258@sda21(r0)
/* 8028E9E8 00289BE8  2C 06 00 00 */	cmpwi r6, 0x0
/* 8028E9EC 00289BEC  41 82 00 1C */	beq .L_8028EA08
/* 8028E9F0 00289BF0  81 86 00 08 */	lwz r12, 0x8(r6)
/* 8028E9F4 00289BF4  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028E9F8 00289BF8  41 82 00 10 */	beq .L_8028EA08
/* 8028E9FC 00289BFC  7D 89 03 A6 */	mtctr r12
/* 8028EA00 00289C00  4E 80 04 21 */	bctrl
/* 8028EA04 00289C04  7C 60 1B 78 */	mr r0, r3
.L_8028EA08:
/* 8028EA08 00289C08  7C 03 03 78 */	mr r3, r0
/* 8028EA0C 00289C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EA10 00289C10  7C 08 03 A6 */	mtlr r0
/* 8028EA14 00289C14  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EA18 00289C18  4E 80 00 20 */	blr
.endfn fn_8028E9D4
