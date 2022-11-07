.global _start
_start:
	
//Constants 
.equ DISPLAY_BASE, 0xff200020 //7 Seg Display Base address 
.equ FIRST_DIGS, 0xff3f3fff
.equ SECOND_DIGS, 0x6d4f06

LDR  r1, =DISPLAY_BASE //Load 7 Seg Display Base into register 1
LDR r0, =FIRST_DIGS
STR r0, [r1]
ADD r1, #0x10 //goto to next location in memory
LDR r0, =SECOND_DIGS
STR r0, [r1]

_stop:
B    _stop

/* Created By 
Wrenen D'Cunha 
 */
