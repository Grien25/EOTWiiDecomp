.include "macros.inc"
.file "auto_03_8028EA64_text"

# 0x8028EA64..0x8028EA88 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x8028EA64 | size: 0x24
.fn fn_8028EA64, global
/* 8028EA64 00289C64  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EA68 00289C68  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EA6C 00289C6C  4D 82 00 20 */	beqlr
/* 8028EA70 00289C70  81 84 00 10 */	lwz r12, 0x10(r4)
/* 8028EA74 00289C74  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EA78 00289C78  4D 82 00 20 */	beqlr
/* 8028EA7C 00289C7C  7D 89 03 A6 */	mtctr r12
/* 8028EA80 00289C80  4E 80 04 20 */	bctr
/* 8028EA84 00289C84  4E 80 00 20 */	blr
.endfn fn_8028EA64
