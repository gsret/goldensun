	.include "macros.inc"

.thumb_func_start Func_d654
	mov	r2, #4
	ldrsh	r3, [r0, r2]
	ldr	r2, [r0]
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r3, #4]
	mov	r2, r0
	sub	r3, #1
	add	r2, #0x5e
	strh	r3, [r2]
	ldrh	r3, [r0, #4]
	add	r3, #2
	strh	r3, [r0, #4]
	mov	r0, #0
	bx	lr
.func_end Func_d654

.thumb_func_start Func_d674
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x60
	ldrb	r3, [r2]
	cmp	r3, #0x3b
	bls	.Ld688
	mov	r3, #0
	strb	r3, [r2]
	b	.Ld692
.Ld688:
	mov	r0, r5
	bl	Func_ca98
	cmp	r0, #0
	beq	.Ld69c
.Ld692:
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r3, [r5, #4]
	mov	r0, #1
	b	.Ld69e
.Ld69c:
	mov	r0, #0
.Ld69e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d674

.thumb_func_start Func_d6a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, #4
	ldrsh	r6, [r5, r1]
	ldr	r2, [r5]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r3, [r3, #4]
	bl	_call_via_r3
	cmp	r0, #0
	beq	.Ld6c0
	mov	r0, #0
	b	.Ld6d0
.Ld6c0:
	mov	r1, #4
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5, #4]
	cmp	r3, r6
	bne	.Ld6ce
	add	r3, r2, #2
	strh	r3, [r5, #4]
.Ld6ce:
	mov	r0, #1
.Ld6d0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_d6a4

.thumb_func_start Func_d6d8
	push	{lr}
	mov	r2, r0
	add	r2, #0x5e
	mov	r3, #0
	strh	r3, [r2]
	cmp	r1, #0
	bne	.Ld6ec
	b	.Ld702
.Ld6e8:
	add	r0, #1
	b	.Ld704
.Ld6ec:
	ldr	r3, =0xbfffffff
	ldr	r4, =0x3ff
	ldr	r2, [r0]
	and	r1, r3
	mov	r0, #0
.Ld6f6:
	ldmia	r2!, {r3}
	cmp	r3, r1
	beq	.Ld6e8
	add	r0, #1
	cmp	r0, r4
	ble	.Ld6f6
.Ld702:
	mov	r0, #0
.Ld704:
	pop	{r1}
	bx	r1
.func_end Func_d6d8

.thumb_func_start Func_d710
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r4}
	ldr	r1, [r3]
	ldr	r3, =0xffff
	cmp	r4, r3
	beq	.Ld742
	mov	r0, r5
	add	r0, #0x5d
	ldrb	r2, [r0]
	add	r2, #1
	strb	r2, [r0]
	lsl	r3, r4, #16
	lsl	r2, #24
	lsr	r2, #24
	asr	r3, #16
	cmp	r2, r3
	bge	.Ld74a
	mov	r0, r5
.Ld742:
	bl	Func_d6d8
	strh	r0, [r5, #4]
	b	.Ld754
.Ld74a:
	mov	r3, #0
	strb	r3, [r0]
	ldrh	r3, [r5, #4]
	add	r3, #3
	strh	r3, [r5, #4]
.Ld754:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d710

.thumb_func_start Func_d760
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3, #4]
	bl	Func_d6d8
	strh	r0, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d760

.thumb_func_start Func_d780
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3, #4]
	mov	r3, r5
	add	r3, #0x57
	ldrb	r3, [r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	beq	.Ld7a6
	mov	r0, r5
	bl	Func_d6d8
	strh	r0, [r5, #4]
	b	.Ld7aa
.Ld7a6:
	add	r3, r0, #2
	strh	r3, [r5, #4]
.Ld7aa:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d780

.thumb_func_start Func_d7b4
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3, #4]
	mov	r3, r5
	add	r3, #0x57
	ldrb	r3, [r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	bne	.Ld7da
	mov	r0, r5
	bl	Func_d6d8
	strh	r0, [r5, #4]
	b	.Ld7de
.Ld7da:
	add	r3, r0, #2
	strh	r3, [r5, #4]
.Ld7de:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d7b4

.thumb_func_start Func_d7e8
	ldr	r3, =.L13240
	str	r3, [r0]
	mov	r3, #0
	strh	r3, [r0, #4]
	mov	r0, #0
	bx	lr
.func_end Func_d7e8

.thumb_func_start Func_d7f8
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r3, #4]
	bl	_Func_79338
	mov	r3, r5
	add	r3, #0x57
	strb	r0, [r3]
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d7f8

.thumb_func_start Func_d820
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r6, [r3, #4]
	mov	r0, r6
	bl	_Func_79338
	mov	r3, r5
	add	r3, #0x57
	strb	r0, [r3]
	mov	r0, r6
	bl	_Func_79358
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_d820

.thumb_func_start Func_d850
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r6, [r3, #4]
	mov	r0, r6
	bl	_Func_79338
	mov	r3, r5
	add	r3, #0x57
	strb	r0, [r3]
	mov	r0, r6
	bl	_Func_79374
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_d850

.thumb_func_start Func_d880
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	ldr	r2, [r6]
	lsl	r3, #2
	add	r3, r2
	ldr	r5, [r3, #4]
	mov	r0, r5
	bl	_Func_79338
	mov	r3, r6
	add	r3, #0x57
	strb	r0, [r3]
	mov	r3, #0x80
	lsl	r0, #24
	lsl	r3, #17
	cmp	r0, r3
	bne	.Ld8ae
	mov	r0, r5
	bl	_Func_79374
	b	.Ld8b4
.Ld8ae:
	mov	r0, r5
	bl	_Func_79358
.Ld8b4:
	ldrh	r3, [r6, #4]
	add	r3, #2
	strh	r3, [r6, #4]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_d880

.thumb_func_start Func_d8c4
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3, #4]
	bl	Func_c300
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d8c4

.thumb_func_start Func_d8e8
	push	{lr}
	bl	Func_c0f4
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Func_d8e8

.thumb_func_start Func_d8f4
	ldrh	r3, [r0, #4]
	add	r3, #2
	strh	r3, [r0, #4]
	mov	r0, #1
	bx	lr
.func_end Func_d8f4

.thumb_func_start Func_d900
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r3, #4]
	bl	_Func_f9080
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d900

	.section .rodata

.L13240:
	.incrom 0x13240, 0x13254
