.include "macros.inc"
.file "auto_fn_802952F4_text"

# 0x80006BE8..0x80006BF0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006BE8 | size: 0x8
.obj "@etb_80006BE8", local
.hidden "@etb_80006BE8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006BE8"

# 0x8000740C..0x80007418 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000740C | size: 0xC
.obj "@eti_8000740C", local
.hidden "@eti_8000740C"
	.4byte fn_802952F4
	.4byte 0x00000048
	.4byte "@etb_80006BE8"
.endobj "@eti_8000740C"

# 0x802952F4..0x8029533C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802952F4 | size: 0x48
.fn fn_802952F4, global
/* 802952F4 002904F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802952F8 002904F8  7C 08 02 A6 */	mflr r0
/* 802952FC 002904FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295300 00290500  38 00 00 00 */	li r0, 0x0
/* 80295304 00290504  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 80295308 00290508  2C 04 00 00 */	cmpwi r4, 0x0
/* 8029530C 0029050C  41 82 00 1C */	beq .L_80295328
/* 80295310 00290510  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80295314 00290514  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295318 00290518  41 82 00 10 */	beq .L_80295328
/* 8029531C 0029051C  7D 89 03 A6 */	mtctr r12
/* 80295320 00290520  4E 80 04 21 */	bctrl
/* 80295324 00290524  7C 60 1B 78 */	mr r0, r3
.L_80295328:
/* 80295328 00290528  7C 03 03 78 */	mr r3, r0
/* 8029532C 0029052C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295330 00290530  7C 08 03 A6 */	mtlr r0
/* 80295334 00290534  38 21 00 10 */	addi r1, r1, 0x10
/* 80295338 00290538  4E 80 00 20 */	blr
.endfn fn_802952F4
