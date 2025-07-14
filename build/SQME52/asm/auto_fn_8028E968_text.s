.include "macros.inc"
.file "auto_fn_8028E968_text"

# 0x80006918..0x80006920 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006918 | size: 0x8
.obj "@etb_80006918", local
.hidden "@etb_80006918"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006918"

# 0x80006FD4..0x80006FE0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006FD4 | size: 0xC
.obj "@eti_80006FD4", local
.hidden "@eti_80006FD4"
	.4byte fn_8028E968
	.4byte 0x00000024
	.4byte "@etb_80006918"
.endobj "@eti_80006FD4"

# 0x8028E968..0x8028E98C | size: 0x24
.text
.balign 4

# .text:0x0 | 0x8028E968 | size: 0x24
.fn fn_8028E968, global
/* 8028E968 00289B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E96C 00289B6C  7C 08 02 A6 */	mflr r0
/* 8028E970 00289B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E974 00289B74  48 00 6C DD */	bl fn_80295650
/* 8028E978 00289B78  90 6D 8E 58 */	stw r3, lbl_806AB258@sda21(r0)
/* 8028E97C 00289B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E980 00289B80  7C 08 03 A6 */	mtlr r0
/* 8028E984 00289B84  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E988 00289B88  4E 80 00 20 */	blr
.endfn fn_8028E968
