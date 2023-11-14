	.include "macros.inc"

.thumb_func_start Func_e0524
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r7, r2
	mov	r5, r3
	bl	Func_2f40
	mov	r6, r0
	cmp	r5, #0
	beq	.Le0548
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r1, r6
	mov	r2, #0x80
	bl	_call_via_r3
.Le0548:
	cmp	r7, #0
	beq	.Le054e
	add	r6, #0x80
.Le054e:
	mov	r0, r6
	mov	r1, r8
	bl	Func_5340
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e0524
