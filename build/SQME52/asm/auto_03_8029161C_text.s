.include "macros.inc"
.file "auto_03_8029161C_text"

# 0x8029161C..0x8029162C | size: 0x10
.text
.balign 4

# .text:0x0 | 0x8029161C | size: 0x8
.fn fn_8029161C, global
/* 8029161C 0028C81C  90 83 08 8C */	stw r4, 0x88c(r3)
/* 80291620 0028C820  4E 80 00 20 */	blr
.endfn fn_8029161C

# .text:0x8 | 0x80291624 | size: 0x8
.fn fn_80291624, global
/* 80291624 0028C824  90 83 08 90 */	stw r4, 0x890(r3)
/* 80291628 0028C828  4E 80 00 20 */	blr
.endfn fn_80291624
