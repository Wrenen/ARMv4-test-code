.global _start
_start:
.equ VGA, 0xc8000000
.equ black, 0x00000000
.equ blue, 0x11111111
.equ dgreen, 0x22222222
.equ lblue, 0x33333333
.equ green, 0x44444444
.equ aqua, 0x55555555
.equ lime, 0x66666666
.equ teal, 0x77777777
.equ grape, 0x88888888
.equ purple, 0x99999999
.equ lpurple, 0xbbbbbbbb
.equ lbrown, 0xcccccccc
.equ pastlep, 0xdddddddd
.equ yellow, 0xeeeeeeee
.equ white, 0xffffffff
.equ compare, 0xaaaaaaaa

ColorLoop:
LDR r1, =VGA
LDR r3, =compare
LDR r0, =white
B Fill
B _stop

//fills the VGA with one color
Fill:
STMFD SP!, {lr}
Loop:
LDR r2, [r1]
CMP r2, r3
STR r0, [r1]
ADD r1, #4
BEQ _Fill
B Loop

_Fill:
LDMFD SP!, {pc}

_stop:
B _stop

.end