.include "macros.inc"
.file "auto_fn_80295240_text"

# 0x80006BD8..0x80006BE0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006BD8 | size: 0x8
.obj "@etb_80006BD8", local
.hidden "@etb_80006BD8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006BD8"

# 0x800073F4..0x80007400 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800073F4 | size: 0xC
.obj "@eti_800073F4", local
.hidden "@eti_800073F4"
	.4byte fn_80295240
	.4byte 0x00000048
	.4byte "@etb_80006BD8"
.endobj "@eti_800073F4"

# 0x80295240..0x80295288 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x80295240 | size: 0x48
.fn fn_80295240, global
/* 80295240 00290440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295244 00290444  7C 08 02 A6 */	mflr r0
/* 80295248 00290448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029524C 0029044C  38 00 00 00 */	li r0, 0x0
/* 80295250 00290450  80 CD 8E 74 */	lwz r6, lbl_806AB274@sda21(r0)
/* 80295254 00290454  2C 06 00 00 */	cmpwi r6, 0x0
/* 80295258 00290458  41 82 00 1C */	beq .L_80295274
/* 8029525C 0029045C  81 86 00 08 */	lwz r12, 0x8(r6)
/* 80295260 00290460  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295264 00290464  41 82 00 10 */	beq .L_80295274
/* 80295268 00290468  7D 89 03 A6 */	mtctr r12
/* 8029526C 0029046C  4E 80 04 21 */	bctrl
/* 80295270 00290470  7C 60 1B 78 */	mr r0, r3
.L_80295274:
/* 80295274 00290474  7C 03 03 78 */	mr r3, r0
/* 80295278 00290478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029527C 0029047C  7C 08 03 A6 */	mtlr r0
/* 80295280 00290480  38 21 00 10 */	addi r1, r1, 0x10
/* 80295284 00290484  4E 80 00 20 */	blr
.endfn fn_80295240
