.include "macros.inc"
.file "auto_fn_800B73A0_text"

# 0x800B73A0..0x800B73D8 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x800B73A0 | size: 0x38
.fn fn_800B73A0, global
/* 800B73A0 000B25A0  3C 60 80 61 */	lis r3, lbl_80610818@ha
/* 800B73A4 000B25A4  3C 80 80 0B */	lis r4, fn_800B73D8@ha
/* 800B73A8 000B25A8  38 63 08 18 */	addi r3, r3, lbl_80610818@l
/* 800B73AC 000B25AC  38 00 00 00 */	li r0, 0x0
/* 800B73B0 000B25B0  3C A0 80 61 */	lis r5, lbl_8061080C@ha
/* 800B73B4 000B25B4  90 03 00 04 */	stw r0, 0x4(r3)
/* 800B73B8 000B25B8  38 84 73 D8 */	addi r4, r4, fn_800B73D8@l
/* 800B73BC 000B25BC  90 03 00 14 */	stw r0, 0x14(r3)
/* 800B73C0 000B25C0  38 A5 08 0C */	addi r5, r5, lbl_8061080C@l
/* 800B73C4 000B25C4  90 03 00 18 */	stw r0, 0x18(r3)
/* 800B73C8 000B25C8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800B73CC 000B25CC  98 03 00 20 */	stb r0, 0x20(r3)
/* 800B73D0 000B25D0  90 03 00 24 */	stw r0, 0x24(r3)
/* 800B73D4 000B25D4  48 13 F4 BC */	b __register_global_object
.endfn fn_800B73A0

# 0x802F0ACC..0x802F0AD0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800B73A0
