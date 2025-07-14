.include "macros.inc"
.file "auto_03_8029679C_text"

# 0x8029679C..0x802967D8 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x8029679C | size: 0x20
.fn fn_8029679C, global
/* 8029679C 0029199C  80 83 00 48 */	lwz r4, 0x48(r3)
/* 802967A0 002919A0  38 00 00 01 */	li r0, 0x1
/* 802967A4 002919A4  90 03 00 10 */	stw r0, 0x10(r3)
/* 802967A8 002919A8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802967AC 002919AC  4D 82 00 20 */	beqlr
/* 802967B0 002919B0  7C 83 23 78 */	mr r3, r4
/* 802967B4 002919B4  48 01 7D 3C */	b fn_802AE4F0
/* 802967B8 002919B8  4E 80 00 20 */	blr
.endfn fn_8029679C

# .text:0x20 | 0x802967BC | size: 0x8
.fn fn_802967BC, global
/* 802967BC 002919BC  80 63 01 1C */	lwz r3, 0x11c(r3)
/* 802967C0 002919C0  4E 80 00 20 */	blr
.endfn fn_802967BC

# .text:0x28 | 0x802967C4 | size: 0xC
.fn fn_802967C4, global
/* 802967C4 002919C4  38 00 00 01 */	li r0, 0x1
/* 802967C8 002919C8  90 03 00 14 */	stw r0, 0x14(r3)
/* 802967CC 002919CC  4E 80 00 20 */	blr
.endfn fn_802967C4

# .text:0x34 | 0x802967D0 | size: 0x8
.fn fn_802967D0, global
/* 802967D0 002919D0  80 63 01 20 */	lwz r3, 0x120(r3)
/* 802967D4 002919D4  4E 80 00 20 */	blr
.endfn fn_802967D0
