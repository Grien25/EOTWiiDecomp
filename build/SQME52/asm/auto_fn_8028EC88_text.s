.include "macros.inc"
.file "auto_fn_8028EC88_text"

# 0x80006958..0x80006960 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006958 | size: 0x8
.obj "@etb_80006958", local
.hidden "@etb_80006958"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006958"

# 0x80007034..0x80007040 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007034 | size: 0xC
.obj "@eti_80007034", local
.hidden "@eti_80007034"
	.4byte fn_8028EC88
	.4byte 0x00000048
	.4byte "@etb_80006958"
.endobj "@eti_80007034"

# 0x8028EC88..0x8028ECD0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028EC88 | size: 0x48
.fn fn_8028EC88, global
/* 8028EC88 00289E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EC8C 00289E8C  7C 08 02 A6 */	mflr r0
/* 8028EC90 00289E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EC94 00289E94  38 00 00 00 */	li r0, 0x0
/* 8028EC98 00289E98  80 AD 8E 58 */	lwz r5, lbl_806AB258@sda21(r0)
/* 8028EC9C 00289E9C  2C 05 00 00 */	cmpwi r5, 0x0
/* 8028ECA0 00289EA0  41 82 00 1C */	beq .L_8028ECBC
/* 8028ECA4 00289EA4  81 85 00 3C */	lwz r12, 0x3c(r5)
/* 8028ECA8 00289EA8  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028ECAC 00289EAC  41 82 00 10 */	beq .L_8028ECBC
/* 8028ECB0 00289EB0  7D 89 03 A6 */	mtctr r12
/* 8028ECB4 00289EB4  4E 80 04 21 */	bctrl
/* 8028ECB8 00289EB8  7C 60 1B 78 */	mr r0, r3
.L_8028ECBC:
/* 8028ECBC 00289EBC  7C 03 03 78 */	mr r3, r0
/* 8028ECC0 00289EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028ECC4 00289EC4  7C 08 03 A6 */	mtlr r0
/* 8028ECC8 00289EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ECCC 00289ECC  4E 80 00 20 */	blr
.endfn fn_8028EC88
