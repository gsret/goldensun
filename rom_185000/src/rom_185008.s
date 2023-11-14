	.include "macros.inc"

.thumb_func_start Func_185008
	ldr	r2, =0xfff
	mov	r3, r0
	and	r3, r2
	lsl	r0, r3, #2
	add	r0, r3
	ldr	r3, =.L185024
	lsl	r0, #2
	add	r0, r3
	bx	lr
.func_end Func_185008

	.section .rodata

.L185024:
	.incrom 0x185024, 0x31efd4
