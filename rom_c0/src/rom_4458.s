	.include "macros.inc"

.thumb_func_start Func_4458
	ldr	r1, =iwram_1cb4
	ldr	r3, =0x41c64e6d
	ldr	r2, [r1]
	mov	r0, r2
	mul	r0, r3
	ldr	r3, =0x3039
	add	r0, r3
	str	r0, [r1]
	lsl	r0, #8
	lsr	r0, #16
	bx	lr
.func_end Func_4458
