.include "macros.inc"
.file "auto_fn_8028ECD0_text"

# 0x80006960..0x80006968 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006960 | size: 0x8
.obj "@etb_80006960", local
.hidden "@etb_80006960"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006960"

# 0x80007040..0x8000704C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007040 | size: 0xC
.obj "@eti_80007040", local
.hidden "@eti_80007040"
	.4byte fn_8028ECD0
	.4byte 0x00000048
	.4byte "@etb_80006960"
.endobj "@eti_80007040"

# 0x8028ECD0..0x8028ED18 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028ECD0 | size: 0x48
.fn fn_8028ECD0, global
/* 8028ECD0 00289ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028ECD4 00289ED4  7C 08 02 A6 */	mflr r0
/* 8028ECD8 00289ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028ECDC 00289EDC  38 00 00 00 */	li r0, 0x0
/* 8028ECE0 00289EE0  80 AD 8E 58 */	lwz r5, lbl_806AB258@sda21(r0)
/* 8028ECE4 00289EE4  2C 05 00 00 */	cmpwi r5, 0x0
/* 8028ECE8 00289EE8  41 82 00 1C */	beq .L_8028ED04
/* 8028ECEC 00289EEC  81 85 00 48 */	lwz r12, 0x48(r5)
/* 8028ECF0 00289EF0  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028ECF4 00289EF4  41 82 00 10 */	beq .L_8028ED04
/* 8028ECF8 00289EF8  7D 89 03 A6 */	mtctr r12
/* 8028ECFC 00289EFC  4E 80 04 21 */	bctrl
/* 8028ED00 00289F00  7C 60 1B 78 */	mr r0, r3
.L_8028ED04:
/* 8028ED04 00289F04  7C 03 03 78 */	mr r3, r0
/* 8028ED08 00289F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028ED0C 00289F0C  7C 08 03 A6 */	mtlr r0
/* 8028ED10 00289F10  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ED14 00289F14  4E 80 00 20 */	blr
.endfn fn_8028ECD0
