.include "macros.inc"
.file "auto_03_8028E98C_text"

# 0x8028E98C..0x8028E9D4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028E98C | size: 0x24
.fn fn_8028E98C, global
/* 8028E98C 00289B8C  80 6D 8E 58 */	lwz r3, lbl_806AB258@sda21(r0)
/* 8028E990 00289B90  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028E994 00289B94  4D 82 00 20 */	beqlr
/* 8028E998 00289B98  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8028E99C 00289B9C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028E9A0 00289BA0  4D 82 00 20 */	beqlr
/* 8028E9A4 00289BA4  7D 89 03 A6 */	mtctr r12
/* 8028E9A8 00289BA8  4E 80 04 20 */	bctr
/* 8028E9AC 00289BAC  4E 80 00 20 */	blr
.endfn fn_8028E98C

# .text:0x24 | 0x8028E9B0 | size: 0x24
.fn fn_8028E9B0, global
/* 8028E9B0 00289BB0  80 6D 8E 58 */	lwz r3, lbl_806AB258@sda21(r0)
/* 8028E9B4 00289BB4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028E9B8 00289BB8  4D 82 00 20 */	beqlr
/* 8028E9BC 00289BBC  81 83 00 04 */	lwz r12, 0x4(r3)
/* 8028E9C0 00289BC0  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028E9C4 00289BC4  4D 82 00 20 */	beqlr
/* 8028E9C8 00289BC8  7D 89 03 A6 */	mtctr r12
/* 8028E9CC 00289BCC  4E 80 04 20 */	bctr
/* 8028E9D0 00289BD0  4E 80 00 20 */	blr
.endfn fn_8028E9B0
