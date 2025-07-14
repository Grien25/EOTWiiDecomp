.include "macros.inc"
.file "auto_fn_8028ED98_text"

# 0x80006968..0x80006970 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006968 | size: 0x8
.obj "@etb_80006968", local
.hidden "@etb_80006968"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006968"

# 0x8000704C..0x80007058 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000704C | size: 0xC
.obj "@eti_8000704C", local
.hidden "@eti_8000704C"
	.4byte fn_8028ED98
	.4byte 0x0000004C
	.4byte "@etb_80006968"
.endobj "@eti_8000704C"

# 0x8028ED98..0x8028EDE4 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x8028ED98 | size: 0x4C
.fn fn_8028ED98, global
/* 8028ED98 00289F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028ED9C 00289F9C  7C 08 02 A6 */	mflr r0
/* 8028EDA0 00289FA0  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 8028EDA4 00289FA4  38 60 00 00 */	li r3, 0x0
/* 8028EDA8 00289FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EDAC 00289FAC  38 00 00 01 */	li r0, 0x1
/* 8028EDB0 00289FB0  2C 05 00 00 */	cmpwi r5, 0x0
/* 8028EDB4 00289FB4  38 80 00 40 */	li r4, 0x40
/* 8028EDB8 00289FB8  90 01 00 08 */	stw r0, 0x8(r1)
/* 8028EDBC 00289FBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028EDC0 00289FC0  41 82 00 08 */	beq .L_8028EDC8
/* 8028EDC4 00289FC4  54 A4 30 32 */	slwi r4, r5, 6
.L_8028EDC8:
/* 8028EDC8 00289FC8  38 A1 00 08 */	addi r5, r1, 0x8
/* 8028EDCC 00289FCC  48 02 84 DD */	bl fn_802B72A8
/* 8028EDD0 00289FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EDD4 00289FD4  38 63 00 38 */	addi r3, r3, 0x38
/* 8028EDD8 00289FD8  7C 08 03 A6 */	mtlr r0
/* 8028EDDC 00289FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EDE0 00289FE0  4E 80 00 20 */	blr
.endfn fn_8028ED98
