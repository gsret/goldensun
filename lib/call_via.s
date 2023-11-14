	.include "macros.inc"

	.macro call_via register
.thumb_func_start _call_via_\register
	bx	\register
	nop
.func_end _call_via_\register
	.endm

	call_via r0
	call_via r1
	call_via r2
	call_via r3
	call_via r4
	call_via r5
	call_via r6
	call_via r7
	call_via r8
	call_via r9
	call_via r10
	call_via r11
	call_via r12
	call_via sp
	call_via lr
