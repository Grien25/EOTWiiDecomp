.include "macros.inc"
.file "auto_03_802952D0_text"

# 0x802952D0..0x802952F4 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x802952D0 | size: 0x24
.fn fn_802952D0, global
/* 802952D0 002904D0  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 802952D4 002904D4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802952D8 002904D8  4D 82 00 20 */	beqlr
/* 802952DC 002904DC  81 84 00 10 */	lwz r12, 0x10(r4)
/* 802952E0 002904E0  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802952E4 002904E4  4D 82 00 20 */	beqlr
/* 802952E8 002904E8  7D 89 03 A6 */	mtctr r12
/* 802952EC 002904EC  4E 80 04 20 */	bctr
/* 802952F0 002904F0  4E 80 00 20 */	blr
.endfn fn_802952D0
