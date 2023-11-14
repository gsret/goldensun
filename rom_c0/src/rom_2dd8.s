	.include "macros.inc"

.thumb_func_start Func_2dd8
	ldr	r4, =iwram_1e50
	lsl	r0, #2
	ldr	r1, [r0, r4]
	lsr	r3, r1, #22
	beq	.L2dec
	mov	r2, #0
	str	r2, [r0, r4]
	mov	r0, #4
	and	r3, r0
	str	r1, [r3, r4]
.L2dec:
	bx	lr
	.ssize	Func_2dd8

.thumb_func_start Func_2df0
	ldr	r4, =iwram_1e50
	mov	r1, #4
	lsr	r2, r0, #22
	and	r2, r1
	str	r0, [r2, r4]
	bx	lr
.func_end Func_2df0
