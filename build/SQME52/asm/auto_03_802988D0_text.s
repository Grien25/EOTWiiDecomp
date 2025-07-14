.include "macros.inc"
.file "auto_03_802988D0_text"

# 0x802988D0..0x80298908 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x802988D0 | size: 0x10
.fn fn_802988D0, global
/* 802988D0 00293AD0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802988D4 00293AD4  54 80 10 3A */	slwi r0, r4, 2
/* 802988D8 00293AD8  7C A3 01 2E */	stwx r5, r3, r0
/* 802988DC 00293ADC  4E 80 00 20 */	blr
.endfn fn_802988D0

# .text:0x10 | 0x802988E0 | size: 0x14
.fn fn_802988E0, global
/* 802988E0 00293AE0  38 80 00 01 */	li r4, 0x1
/* 802988E4 00293AE4  38 00 00 00 */	li r0, 0x0
/* 802988E8 00293AE8  98 83 00 0C */	stb r4, 0xc(r3)
/* 802988EC 00293AEC  90 03 00 08 */	stw r0, 0x8(r3)
/* 802988F0 00293AF0  4E 80 00 20 */	blr
.endfn fn_802988E0

# .text:0x24 | 0x802988F4 | size: 0xC
.fn fn_802988F4, global
/* 802988F4 00293AF4  38 00 00 00 */	li r0, 0x0
/* 802988F8 00293AF8  98 03 00 0C */	stb r0, 0xc(r3)
/* 802988FC 00293AFC  4E 80 00 20 */	blr
.endfn fn_802988F4

# .text:0x30 | 0x80298900 | size: 0x8
.fn fn_80298900, global
/* 80298900 00293B00  88 63 00 0C */	lbz r3, 0xc(r3)
/* 80298904 00293B04  4E 80 00 20 */	blr
.endfn fn_80298900
