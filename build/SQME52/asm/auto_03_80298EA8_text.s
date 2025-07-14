.include "macros.inc"
.file "auto_03_80298EA8_text"

# 0x80298EA8..0x80298EBC | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80298EA8 | size: 0x14
.fn fn_80298EA8, global
/* 80298EA8 002940A8  38 00 00 03 */	li r0, 0x3
/* 80298EAC 002940AC  90 03 00 00 */	stw r0, 0x0(r3)
/* 80298EB0 002940B0  3C 60 80 66 */	lis r3, lbl_80666AE8@ha
/* 80298EB4 002940B4  38 63 6A E8 */	addi r3, r3, lbl_80666AE8@l
/* 80298EB8 002940B8  4E 80 00 20 */	blr
.endfn fn_80298EA8
