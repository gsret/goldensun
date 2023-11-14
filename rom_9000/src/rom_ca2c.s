	.include "macros.inc"

.thumb_func_start Func_ca2c
	mov	r3, #4
	ldrsh	r2, [r0, r3]
	ldr	r3, [r0]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	str	r3, [r0]
	mov	r3, #0
	strh	r3, [r0, #4]
	mov	r0, #1
	bx	lr
.func_end  Func_ca2c

.thumb_func_start Func_ca44
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #0
	strb	r3, [r2]
	ldrh	r3, [r0, #4]
	add	r3, #1
	strh	r3, [r0, #4]
	mov	r0, #1
	bx	lr
.func_end Func_ca44

.thumb_func_start Func_ca58
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
	strb	r3, [r2]
	ldrh	r3, [r0, #4]
	add	r3, #1
	strh	r3, [r0, #4]
	mov	r0, #1
	bx	lr
.func_end Func_ca58
