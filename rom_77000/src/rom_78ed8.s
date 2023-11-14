	.include "macros.inc"

.thumb_func_start Func_78ed8
	mov	r3, #0xb4
	mul	r0, r3
	ldr	r2, =.L844ec
	add	r0, r2
	bx	lr
.func_end Func_78ed8

	.section .rodata

.L844ec:
	.incrom 0x844ec, 0x84a8c
