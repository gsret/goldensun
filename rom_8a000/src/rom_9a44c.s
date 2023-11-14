	.include "macros.inc"

.thumb_func_start Func_9a44c
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x44]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x48]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, [r0, #0x4c]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r2, [r0, #0x30]
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldr	r1, [r0, #0x50]
	add	r0, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r0]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	bx	lr
.func_end Func_9a44c

.thumb_func_start Func_9a484
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r1
	ldr	r1, [sp, #0x30]
	mov	r5, r0
	mov	r0, #0
	mov	r8, r2
	str	r3, [sp, #4]
	mov	r10, r1
	ldr	r7, [sp, #0x34]
	bl	Func_92054
	mov	r3, #0x80
	lsl	r3, #13
	mov	r2, r10
	and	r3, r2
	mov	r9, r0
	cmp	r3, #0
	beq	.L9a4c2
	cmp	r7, #0
	beq	.L9a4c2
	mov	r3, #0x18
	ldrsh	r0, [r7, r3]
	mov	r2, r6
	b	.L9a4c6
.L9a4c2:
	mov	r2, r6
	mov	r0, #0xde
.L9a4c6:
	mov	r1, r5
	mov	r3, r8
	bl	_Func_c150
	mov	r6, r0
	cmp	r6, #0
	bne	.L9a4d6
	b	.L9a63e
.L9a4d6:
	ldr	r1, [r6, #0x50]
	mov	r8, r1
	mov	r1, r10
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	mov	r0, r6
	bl	_Func_c300
	mov	r3, r10
	ldr	r2, =.La012c
	and	r3, r5
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, r6
	mov	r11, r3
	bl	_Func_c2d8
	mov	r3, r6
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, r8
	add	r3, #0x26
	strb	r0, [r3]
	ldr	r3, =Func_9a44c
	str	r3, [r6, #0x6c]
	ldr	r3, [sp, #4]
	str	r3, [r6, #0x44]
	ldr	r3, [sp, #0x28]
	str	r3, [r6, #0x48]
	ldr	r3, [sp, #0x2c]
	mov	r1, r9
	str	r3, [r6, #0x4c]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r8
	ldrb	r1, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	mov	r9, r3
	and	r3, r1
	orr	r3, r2
	mov	r2, r6
	mov	r1, r8
	add	r2, #0x64
	strb	r3, [r1, #9]
	mov	r3, r2
	str	r0, [r6, #0x30]
	str	r0, [r6, #0x34]
	str	r2, [sp]
	strh	r0, [r3]
	ldr	r3, =0xffff0000
	mov	r1, r10
	and	r3, r1
	mov	r5, #3
	cmp	r3, #0
	beq	.L9a63e
	cmp	r7, #0
	beq	.L9a63e
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L9a564
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	Func_929d8
.L9a564:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a590
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r8
	ldrb	r2, [r7]
	ldrb	r1, [r3, #9]
	and	r2, r5
	mov	r3, r9
	and	r3, r1
	lsl	r2, #2
	orr	r3, r2
	mov	r1, r8
	strb	r3, [r1, #9]
.L9a590:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r10
	and	r2, r3
	cmp	r2, #0
	beq	.L9a5a4
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L9a5a4:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L9a5ee
	ldr	r3, =.La012c
	mov	r1, r11
	ldr	r5, [r3, r1]
	cmp	r2, #0
	beq	.L9a5d2
	ldr	r0, [r7, #0x10]
	ldr	r3, [r6, #0x18]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r3, [r6, #0x1c]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	b	.L9a5e8
.L9a5d2:
	ldr	r0, [r7, #0x10]
	ldr	r2, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r2
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r3
.L9a5e8:
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x34]
.L9a5ee:
	mov	r3, #0x80
	lsl	r3, #14
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L9a60a
	mov	r0, r6
	mov	r1, #1
	bl	_Func_c300
	ldr	r1, [r7, #0x1c]
	mov	r0, r6
	bl	_Func_c2d8
.L9a60a:
	mov	r3, #0x80
	lsl	r3, #15
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a61c
	ldrh	r3, [r7, #0x20]
	mov	r1, r8
	strh	r3, [r1, #0x1e]
.L9a61c:
	mov	r3, #0x80
	lsl	r3, #16
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a62e
	ldrh	r3, [r7, #0x22]
	ldr	r1, [sp]
	strh	r3, [r1]
.L9a62e:
	mov	r3, #0x80
	lsl	r3, #17
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a63e
	ldr	r3, [r7, #0x24]
	str	r3, [r6, #0x6c]
.L9a63e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a484

.thumb_func_start Func_9a65c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.L9a68c
	add	r3, #0xf
.L9a68c:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a65c

.thumb_func_start Func_9a6b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x44
	mov	r10, r0
	add	r0, sp, #0x1c
	mov	r3, #0
	str	r3, [r0, #4]
	ldr	r3, =Func_9a65c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	add	r6, sp, #0x10
.L9a6da:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	Func_231c
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6]
	mov	r0, r5
	mov	r3, #0
	str	r3, [r6, #4]
	bl	Func_2322
	str	r0, [r6, #8]
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r1, [r2, #0xc]
	ldr	r3, [r6]
	ldr	r2, [r2, #0x10]
	ldr	r4, [r6, #4]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r0, [sp, #8]
	mov	r0, r8
	str	r0, [sp, #0xc]
	add	r7, #1
	mov	r0, r5
	str	r4, [sp]
	bl	Func_9a484
	cmp	r7, #0x10
	bls	.L9a6da
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a6b8

.thumb_func_start Func_9a738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	bl	Func_4458
	ldrh	r2, [r7, #6]
	mov	r1, #0x80
	mov	r8, r2
	lsl	r1, #10
	mov	r6, r0
	mov	r0, r8
	add	r6, r1
	bl	Func_231c
	ldr	r5, =Func_888
	mov	r1, r0
	mov	r0, r6
	.call_via r5
	mov	r10, r0
	mov	r0, r8
	bl	Func_2322
	mov	r1, r0
	mov	r0, r6
	.call_via r5
	ldr	r3, [r7, #8]
	add	r3, r10
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	ldr	r1, =0xfff0
	ldrh	r3, [r7, #6]
	add	r3, r1
	strh	r3, [r7, #6]
	mov	r5, r7
	add	r5, #0x66
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	beq	.L9a7a6
	sub	r3, r2, #1
	strh	r3, [r5]
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	strh	r3, [r7, #6]
	b	.L9a7be
.L9a7a6:
	bl	Func_4458
	lsl	r0, #5
	lsr	r0, #16
	cmp	r0, #0
	bne	.L9a7be
	bl	Func_4458
	lsl	r0, #4
	lsr	r0, #16
	add	r0, #8
	strh	r0, [r5]
.L9a7be:
	mov	r2, r7
	add	r2, #0x64
	ldrh	r3, [r2]
	mov	r1, #0xca
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	bne	.L9a7da
	ldr	r1, =Data_9f0b0
	mov	r0, r7
	bl	_Func_c2d8
.L9a7da:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a738

.thumb_func_start Func_9a7f4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldr	r0, [r7, #0x68]
	ldrh	r6, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r0
	mov	r0, r6
	mov	r10, r2
	bl	Func_231c
	ldr	r5, =Func_888
	mov	r1, r0
	mov	r0, r10
	.call_via r5
	mov	r8, r0
	mov	r0, r6
	bl	Func_2322
	mov	r1, r0
	mov	r0, r10
	.call_via r5
	mov	r2, r9
	ldr	r3, [r2, #8]
	add	r3, r8
	str	r3, [r7, #8]
	ldr	r3, [r2, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	mov	r0, #0x80
	ldrh	r3, [r7, #6]
	lsl	r0, #4
	add	r3, r0
	strh	r3, [r7, #6]
	mov	r2, r7
	add	r2, #0x64
	ldrh	r3, [r2]
	mov	r0, #0xf2
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #15
	lsl	r3, #16
	mov	r1, #0
	cmp	r3, r0
	bne	.L9a876
	ldr	r3, =Func_9a738
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x66
	strh	r1, [r2]
	strh	r1, [r3]
	ldr	r3, =0x1999
	str	r3, [r7, #0x48]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x28]
	bl	Func_4458
	strh	r0, [r7, #6]
.L9a876:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a7f4

.thumb_func_start Func_9a890
	push	{r5, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x18]
	mov	r2, #0x80
	sub	r3, #0x80
	lsl	r2, #8
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	cmp	r3, r2
	bge	.L9a8b2
	mov	r3, #0
	mov	r1, #0
	mov	r2, #0
	bl	_Func_d130
	mov	r3, #0
	str	r3, [r5, #0x6c]
.L9a8b2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_9a890

.thumb_func_start Func_9a8b8
	push	{lr}
	bl	Func_9a8c4
	pop	{r0}
	bx	r0
.func_end Func_9a8b8

.thumb_func_start Func_9a8c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r2, [r3, #0x10]
	mov	r10, r3
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r3, #0
	sub	sp, #0x24
	mov	r8, r3
	ldr	r3, [r2, #8]
	add	r5, sp, #0xc
	str	r3, [r5]
	ldr	r3, [r2, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r2, r10
	ldr	r3, [r2, #4]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r2, #8]
	ldr	r2, =0xfffc0000
	add	r3, r2
	str	r3, [r6, #4]
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	mov	r0, #0xda
	str	r3, [r6, #8]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	Func_96c80
	mov	r7, r0
	cmp	r7, #0
	bne	.L9a91c
	b	.L9aa64
.L9a91c:
	bl	Func_97384
	mov	r0, r7
	mov	r1, #2
	bl	_Func_c300
	mov	r9, r5
.L9a92a:
	mov	r2, r9
	ldr	r5, [r2]
	ldr	r3, [r6]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #8]
	mov	r2, r9
	ldr	r5, [r2, #4]
	ldr	r3, [r6, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r9
	ldr	r5, [r2, #8]
	ldr	r3, [r6, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	ldr	r3, =0x10ccc
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r8
	mul	r0, r3
	str	r5, [r7, #0x10]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	add	r0, r3
	str	r0, [r7, #0x18]
	str	r0, [r7, #0x1c]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xb
	blt	.L9a92a
	ldr	r3, =0x1b333
	str	r3, [r7, #0x18]
	ldr	r3, =0x14ccc
	mov	r0, #0xa3
	str	r3, [r7, #0x1c]
	bl	_Func_f9080
	mov	r0, #0x14
	bl	Func_30f8
	mov	r3, r10
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L9aa40
	mov	r2, r11
	cmp	r2, #0
	beq	.L9a9be
	ldr	r3, =Func_9a890
	str	r3, [r2, #0x6c]
.L9a9be:
	mov	r3, #0
	mov	r8, r3
	add	r6, sp, #0x18
.L9a9c4:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, =0xcccc
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [r7, #0xc]
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	mov	r3, #0xc0
	lsl	r5, r0, #2
	lsl	r3, #10
	add	r5, r0
	add	r5, r3
	bl	Func_4458
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	mov	r0, #0xf9
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L9aa24
	ldr	r3, =Func_9a7f4
	str	r3, [r5, #0x6c]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	str	r7, [r5, #0x68]
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	bl	Func_4458
	strh	r0, [r5, #6]
.L9aa24:
	mov	r0, #6
	bl	Func_30f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xf
	ble	.L9a9c4
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #0x78
	bl	Func_30f8
.L9aa40:
	mov	r1, #1
	mov	r0, r7
	bl	_Func_c300
	mov	r0, #0x1e
	bl	Func_30f8
	mov	r0, #0x88
	bl	_Func_f9080
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, r7
	bl	_Func_c0f4
	bl	Func_9748c
.L9aa64:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a8c4

.thumb_func_start Func_9aa98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r2, #0x40
	add	r2, r7
	sub	sp, #0xc
	mov	r8, r3
	mov	r10, r2
.L9aab0:
	mov	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	cmp	r6, #0
	bne	.L9ab06
	ldr	r3, [r7, #0x14]
	str	r3, [sp]
	ldr	r3, [r7, #0x18]
	mov	r8, sp
	str	r3, [sp, #8]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	lsl	r5, #16
	mov	r3, r0
	lsl	r0, r3, #4
	asr	r5, #16
	sub	r0, r3
	mov	r2, #0xa0
	lsl	r5, #16
	lsl	r2, #14
	lsl	r0, #1
	lsr	r5, #16
	add	r0, r2
	mov	r1, r5
	mov	r2, r8
	bl	Func_447c
	mov	r2, r8
	ldr	r3, [r2]
	str	r3, [r7, #0xc]
	ldr	r3, [r2, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	b	.L9ab66
.L9ab06:
	cmp	r6, #1
	bne	.L9ab1e
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9aab0
.L9ab1e:
	cmp	r6, #2
	bne	.L9ab70
	mov	r2, r8
	ldr	r3, [r2, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #4]
	mov	r2, r8
	ldr	r3, [r2, #0xc]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_974d8
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, r7
	strh	r3, [r7, #0x32]
	add	r2, #0x42
	mov	r3, #1
	strb	r3, [r2]
.L9ab66:
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9ab84
.L9ab70:
	cmp	r6, #3
	bne	.L9ab84
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r0, r7
	bl	Func_9bb34
.L9ab84:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9aa98

.thumb_func_start Func_9ab98
	push	{lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
	bl	Func_9abb4
	pop	{r0}
	bx	r0
.func_end Func_9ab98

.thumb_func_start Func_9abb4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r5, [r3, #0x10]
	mov	r9, r3
	ldr	r3, [r5, #0xc]
	mov	r0, r9
	str	r3, [r0, #8]
	mov	r1, #0
	mov	r0, #0xfa
	mov	r2, #0
	mov	r3, #0
	sub	sp, #0x24
	bl	Func_96c80
	mov	r1, #0
	mov	r6, r0
	mov	r7, #0
	bl	_Func_c300
	cmp	r6, #0
	bne	.L9abea
	b	.L9ad52
.L9abea:
	bl	Func_97384
	ldr	r3, [r5, #8]
	add	r1, sp, #0xc
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r1, #8]
	mov	r0, r9
	ldr	r3, [r0, #4]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #8]
	mov	r0, #0x80
	lsl	r0, #12
	add	r3, r0
	str	r3, [r2, #4]
	mov	r0, r9
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #8]
	mov	r10, r1
	mov	r8, r2
.L9ac1e:
	mov	r2, r8
	mov	r0, r10
	ldr	r3, [r2]
	ldr	r5, [r0]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #8]
	mov	r2, r8
	mov	r0, r10
	ldr	r3, [r2, #4]
	ldr	r5, [r0, #4]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #0xc]
	mov	r2, r8
	mov	r0, r10
	ldr	r3, [r2, #8]
	ldr	r5, [r0, #8]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r3, #0xc0
	lsl	r3, #8
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r7
	mul	r0, r3
	str	r5, [r6, #0x10]
	bl	Func_af0_from_thumb
	mov	r2, #0x80
	lsl	r2, #7
	add	r0, r2
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	add	r7, #1
	mov	r0, #1
	bl	Func_30f8
	cmp	r7, #0xb
	blt	.L9ac1e
	mov	r0, #5
	bl	Func_30f8
	mov	r1, #1
	mov	r0, r6
	bl	_Func_c300
	mov	r0, #0x6c
	bl	_Func_f9080
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0x6c
	bl	_Func_f9080
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0x6c
	bl	_Func_f9080
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0x6d
	bl	_Func_f9080
	add	r3, sp, #0x18
	mov	r5, r9
	mov	r8, r3
	mov	r0, #0xf
	add	r5, #0x58
	mov	r7, r8
	mov	r10, r0
.L9acd0:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #12
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	bl	Func_974d8
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0x80
	lsl	r0, #11
	mov	r2, r7
	bl	Func_447c
	ldr	r3, [r7, #8]
	ldr	r2, [r7]
	mov	r0, r5
	ldr	r1, =0x11d
	bl	Func_9ba90
	mov	r0, r5
	ldr	r1, =Func_9aa98
	bl	Func_9ba7c
	ldr	r0, [r5]
	mov	r1, #7
	bl	_Func_b684
	mov	r3, #1
	neg	r3, r3
	add	r10, r3
	mov	r0, r10
	add	r5, #0x48
	cmp	r0, #0
	bge	.L9acd0
	ldr	r3, [r6, #8]
	mov	r2, r8
	str	r3, [r2]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r2, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #8
	str	r3, [r2, #8]
	bl	Func_30f8
	mov	r0, r6
	bl	_Func_c0f4
	mov	r0, #4
	bl	Func_30f8
	mov	r0, #0x1e
	bl	Func_30f8
	bl	Func_9748c
.L9ad52:
	add	sp, #0x24
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9abb4

	.section .rodata

.La012c:
	.incrom 0xa012c, 0xa0138
