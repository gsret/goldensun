	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f9ef8
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldrb	r1, [r5]
	mov	r0, #0x80
	tst	r0, r1
	beq	.Lf9f30
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	beq	.Lf9f2e
	mov	r6, #0
.Lf9f0c:
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lf9f26
	ldrb	r0, [r4, #1]
	mov	r3, #7
	and	r0, r3
	beq	.Lf9f24
	ldr	r3, =iwram_7ff0
	ldr	r3, [r3]
	ldr	r3, [r3, #0x2c]
	bl	Func_f9ee8
.Lf9f24:
	strb	r6, [r4]
.Lf9f26:
	str	r6, [r4, #0x2c]
	ldr	r4, [r4, #0x34]
	cmp	r4, #0
	bne	.Lf9f0c
.Lf9f2e:
	str	r4, [r5, #0x20]
.Lf9f30:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_f9ef8

.thumb_func_start Func_f9f3c
	ldrb	r1, [r4, #0x12]
	mov	r0, #0x14
	ldrsb	r2, [r4, r0]
	mov	r3, #0x80
	add	r3, r2
	mul	r3, r1
	ldrb	r0, [r5, #0x10]
	mul	r0, r3
	asr	r0, #14
	cmp	r0, #0xff
	bls	.Lf9f54
	mov	r0, #0xff
.Lf9f54:
	strb	r0, [r4, #2]
	mov	r3, #0x7f
	sub	r3, r2
	mul	r3, r1
	ldrb	r0, [r5, #0x11]
	mul	r0, r3
	asr	r0, #14
	cmp	r0, #0xff
	bls	.Lf9f68
	mov	r0, #0xff
.Lf9f68:
	strb	r0, [r4, #3]
	bx	lr
.func_end Func_f9f3c

.thumb_func_start Func_f9f6c
	push	{r4, r5, r6, r7, lr}
	mov	r4, r8
	mov	r5, r9
	mov	r6, r10
	mov	r7, r11
	push	{r4, r5, r6, r7}
	sub	sp, #0x18
	str	r1, [sp]
	mov	r5, r2
	ldr	r1, =iwram_7ff0
	ldr	r1, [r1]
	str	r1, [sp, #4]
	ldr	r1, =Data_fba14
	add	r0, r1
	ldrb	r0, [r0]
	strb	r0, [r5, #4]
	ldr	r3, [r5, #0x40]
	ldrb	r0, [r3]
	cmp	r0, #0x80
	bcs	.Lf9fb2
	strb	r0, [r5, #5]
	add	r3, #1
	ldrb	r0, [r3]
	cmp	r0, #0x80
	bcs	.Lf9fb0
	strb	r0, [r5, #6]
	add	r3, #1
	ldrb	r0, [r3]
	cmp	r0, #0x80
	bcs	.Lf9fb0
	ldrb	r1, [r5, #4]
	add	r1, r0
	strb	r1, [r5, #4]
	add	r3, #1
.Lf9fb0:
	str	r3, [r5, #0x40]
.Lf9fb2:
	mov	r0, #0
	str	r0, [sp, #0x14]
	mov	r4, r5
	add	r4, #0x24
	ldrb	r2, [r4]
	mov	r0, #0xc0
	tst	r0, r2
	beq	.Lfa004
	ldrb	r3, [r5, #5]
	mov	r0, #0x40
	tst	r0, r2
	beq	.Lf9fd2
	ldr	r1, [r5, #0x2c]
	add	r1, r3
	ldrb	r0, [r1]
	b	.Lf9fd4
.Lf9fd2:
	mov	r0, r3
.Lf9fd4:
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #2
	ldr	r0, [r5, #0x28]
	add	r1, r0
	mov	r9, r1
	mov	r6, r9
	ldrb	r1, [r6]
	mov	r0, #0xc0
	tst	r0, r1
	beq	.Lf9fec
	b	.Lfa152
.Lf9fec:
	mov	r0, #0x80
	tst	r0, r2
	beq	.Lfa008
	ldrb	r1, [r6, #3]
	mov	r0, #0x80
	tst	r0, r1
	beq	.Lfa000
	sub	r1, #0xc0
	lsl	r1, #1
	str	r1, [sp, #0x14]
.Lfa000:
	ldrb	r3, [r6, #1]
	b	.Lfa008
.Lfa004:
	mov	r9, r4
	ldrb	r3, [r5, #5]
.Lfa008:
	str	r3, [sp, #8]
	ldr	r6, [sp]
	ldrb	r1, [r6, #9]
	ldrb	r0, [r5, #0x1d]
	add	r0, r1
	cmp	r0, #0xff
	bls	.Lfa018
	mov	r0, #0xff
.Lfa018:
	str	r0, [sp, #0x10]
	mov	r6, r9
	ldrb	r0, [r6]
	mov	r6, #7
	and	r6, r0
	str	r6, [sp, #0xc]
	beq	.Lfa058
	ldr	r0, [sp, #4]
	ldr	r4, [r0, #0x1c]
	cmp	r4, #0
	bne	.Lfa030
	b	.Lfa152
.Lfa030:
	sub	r6, #1
	lsl	r0, r6, #6
	add	r4, r0
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	beq	.Lfa0ac
	mov	r0, #0x40
	tst	r0, r1
	bne	.Lfa0ac
	ldrb	r1, [r4, #0x13]
	ldr	r0, [sp, #0x10]
	cmp	r1, r0
	bcc	.Lfa0ac
	beq	.Lfa050
	b	.Lfa152
.Lfa050:
	ldr	r0, [r4, #0x2c]
	cmp	r0, r5
	bcs	.Lfa0ac
	b	.Lfa152
.Lfa058:
	ldr	r6, [sp, #0x10]
	mov	r7, r5
	mov	r2, #0
	mov	r8, r2
	ldr	r4, [sp, #4]
	ldrb	r3, [r4, #6]
	add	r4, #0x50
.Lfa066:
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	beq	.Lfa0ac
	mov	r0, #0x40
	tst	r0, r1
	beq	.Lfa080
	cmp	r2, #0
	bne	.Lfa084
	add	r2, #1
	ldrb	r6, [r4, #0x13]
	ldr	r7, [r4, #0x2c]
	b	.Lfa09e
.Lfa080:
	cmp	r2, #0
	bne	.Lfa0a0
.Lfa084:
	ldrb	r0, [r4, #0x13]
	cmp	r0, r6
	bcs	.Lfa090
	mov	r6, r0
	ldr	r7, [r4, #0x2c]
	b	.Lfa09e
.Lfa090:
	bhi	.Lfa0a0
	ldr	r0, [r4, #0x2c]
	cmp	r0, r7
	bls	.Lfa09c
	mov	r7, r0
	b	.Lfa09e
.Lfa09c:
	bcc	.Lfa0a0
.Lfa09e:
	mov	r8, r4
.Lfa0a0:
	add	r4, #0x40
	sub	r3, #1
	bgt	.Lfa066
	mov	r4, r8
	cmp	r4, #0
	beq	.Lfa152
.Lfa0ac:
	mov	r0, r4
	bl	Func_fa678
	mov	r1, #0
	str	r1, [r4, #0x30]
	ldr	r3, [r5, #0x20]
	str	r3, [r4, #0x34]
	cmp	r3, #0
	beq	.Lfa0c0
	str	r4, [r3, #0x30]
.Lfa0c0:
	str	r4, [r5, #0x20]
	str	r5, [r4, #0x2c]
	ldrb	r0, [r5, #0x1b]
	strb	r0, [r5, #0x1c]
	cmp	r0, r1
	beq	.Lfa0d2
	mov	r1, r5
	bl	Func_fa1ac
.Lfa0d2:
	ldr	r0, [sp]
	mov	r1, r5
	bl	Func_fac44
	ldr	r0, [r5, #4]
	str	r0, [r4, #0x10]
	ldr	r0, [sp, #0x10]
	strb	r0, [r4, #0x13]
	ldr	r0, [sp, #8]
	strb	r0, [r4, #8]
	ldr	r0, [sp, #0x14]
	strb	r0, [r4, #0x14]
	mov	r6, r9
	ldrb	r0, [r6]
	strb	r0, [r4, #1]
	ldr	r7, [r6, #4]
	str	r7, [r4, #0x24]
	ldr	r0, [r6, #8]
	str	r0, [r4, #4]
	ldrh	r0, [r5, #0x1e]
	strh	r0, [r4, #0xc]
	bl	Func_f9f3c
	ldrb	r1, [r4, #8]
	mov	r0, #8
	ldrsb	r0, [r5, r0]
	add	r3, r1, r0
	bpl	.Lfa10c
	mov	r3, #0
.Lfa10c:
	ldr	r6, [sp, #0xc]
	cmp	r6, #0
	beq	.Lfa13a
	mov	r6, r9
	ldrb	r0, [r6, #2]
	strb	r0, [r4, #0x1e]
	ldrb	r1, [r6, #3]
	mov	r0, #0x80
	tst	r0, r1
	bne	.Lfa126
	mov	r0, #0x70
	tst	r0, r1
	bne	.Lfa128
.Lfa126:
	mov	r1, #8
.Lfa128:
	strb	r1, [r4, #0x1f]
	ldrb	r2, [r5, #9]
	mov	r1, r3
	ldr	r0, [sp, #0xc]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0x30]
	bl	Func_f9ee8
	b	.Lfa144
.Lfa13a:
	ldrb	r2, [r5, #9]
	mov	r1, r3
	mov	r0, r7
	bl	Func_fa1fc
.Lfa144:
	str	r0, [r4, #0x20]
	mov	r0, #0x80
	strb	r0, [r4]
	ldrb	r1, [r5]
	mov	r0, #0xf0
	and	r0, r1
	strb	r0, [r5]
.Lfa152:
	add	sp, #0x18
	pop	{r0, r1, r2, r3, r4, r5, r6, r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r11, r3
	pop	{r0}
	bx	r0
.func_end Func_f9f6c

.thumb_func_start Func_fa16c
	push	{r4, r5}
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	cmp	r3, #0x80
	bcs	.Lfa17e
	strb	r3, [r1, #5]
	add	r2, #1
	str	r2, [r1, #0x40]
	b	.Lfa180
.Lfa17e:
	ldrb	r3, [r1, #5]
.Lfa180:
	ldr	r1, [r1, #0x20]
	cmp	r1, #0
	beq	.Lfa1a8
	mov	r4, #0x83
	mov	r5, #0x40
.Lfa18a:
	ldrb	r2, [r1]
	tst	r2, r4
	beq	.Lfa1a2
	tst	r2, r5
	bne	.Lfa1a2
	ldrb	r0, [r1, #0x11]
	cmp	r0, r3
	bne	.Lfa1a2
	mov	r0, #0x40
	orr	r2, r0
	strb	r2, [r1]
	b	.Lfa1a8
.Lfa1a2:
	ldr	r1, [r1, #0x34]
	cmp	r1, #0
	bne	.Lfa18a
.Lfa1a8:
	pop	{r4, r5}
	bx	lr
.func_end Func_fa16c

.thumb_func_start Func_fa1ac
	mov	r2, #0
	strb	r2, [r1, #0x16]
	strb	r2, [r1, #0x1a]
	ldrb	r2, [r1, #0x18]
	cmp	r2, #0
	bne	.Lfa1bc
	mov	r2, #0xc
	b	.Lfa1be
.Lfa1bc:
	mov	r2, #3
.Lfa1be:
	ldrb	r3, [r1]
	orr	r3, r2
	strb	r3, [r1]
	bx	lr
.func_end Func_fa1ac

.thumb_func_start Func_fa1c8
	ldr	r2, [r1, #0x40]
	add	r3, r2, #1
	str	r3, [r1, #0x40]
	ldrb	r3, [r2]
	bx	lr
.func_end Func_fa1c8

.thumb_func_start Func_fa1d4
	mov	r12, lr
	bl	Func_fa1c8
	strb	r3, [r1, #0x19]
	cmp	r3, #0
	bne	.Lfa1e4
	bl	Func_fa1ac
.Lfa1e4:
	bx	r12
.func_end Func_fa1d4

.thumb_func_start Func_fa1e8
	mov	r12, lr
	bl	Func_fa1c8
	strb	r3, [r1, #0x17]
	cmp	r3, #0
	bne	.Lfa1f8
	bl	Func_fa1ac
.Lfa1f8:
	bx	r12
.func_end Func_fa1e8

.thumb_func_start Func_fa1fc
	push	{r4, r5, r6, r7, lr}
	mov	r12, r0
	lsl	r1, #24
	lsr	r6, r1, #24
	lsl	r7, r2, #24
	cmp	r6, #0xb2
	bls	.Lfa210
	mov	r6, #0xb2
	mov	r7, #0xff
	lsl	r7, #24
.Lfa210:
	ldr	r3, =.Lfb830
	add	r0, r6, r3
	ldrb	r5, [r0]
	ldr	r4, =.Lfb8e4
	mov	r2, #0xf
	mov	r0, r5
	and	r0, r2
	lsl	r0, #2
	add	r0, r4
	lsr	r1, r5, #4
	ldr	r5, [r0]
	lsr	r5, r1
	add	r0, r6, #1
	add	r0, r3
	ldrb	r1, [r0]
	mov	r0, r1
	and	r0, r2
	lsl	r0, #2
	add	r0, r4
	lsr	r1, #4
	ldr	r0, [r0]
	lsr	r0, r1
	mov	r1, r12
	ldr	r4, [r1, #4]
	sub	r0, r5
	mov	r1, r7
	bl	Func_f95e0
	mov	r1, r0
	add	r1, r5, r1
	mov	r0, r4
	bl	Func_f95e0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_fa1fc

.thumb_func_start Func_fa260
	bx	lr
.func_end Func_fa260

.thumb_func_start Func_fa264
	mov	r2, r0
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa276
	ldr	r0, [r2, #4]
	ldr	r1, =0x7fffffff
	and	r0, r1
	str	r0, [r2, #4]
.Lfa276:
	bx	lr
.func_end Func_fa264

.thumb_func_start Func_fa280
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa298
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	mov	r0, #0x80
	lsl	r0, #1
	strh	r0, [r2, #0x28]
.Lfa298:
	bx	lr
.func_end Func_fa280

.thumb_func_start Func_fa2a0
	push	{r4, r5, r6, lr}
	ldr	r0, =Func_f9674
	mov	r1, #2
	neg	r1, r1
	and	r0, r1
	ldr	r1, =iwram_7000
	ldr	r2, =0x4000100
	bl	Func_6864
	ldr	r0, =ewram_3050
	bl	Func_fa6a0
	ldr	r0, =ewram_4090
	bl	Func_fa55c
	ldr	r0, =0x97f800
	bl	Func_fa83c
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa2ee
	ldr	r5, =Data_fc624
	mov	r6, r0
.Lfa2d2:
	ldr	r4, [r5]
	ldr	r1, [r5, #4]
	ldrb	r2, [r5, #8]
	mov	r0, r4
	bl	Func_fa9e0
	ldrh	r0, [r5, #0xa]
	strb	r0, [r4, #0xb]
	ldr	r0, =ewram_4350
	str	r0, [r4, #0x18]
	add	r5, #0xc
	sub	r6, #1
	cmp	r6, #0
	bne	.Lfa2d2
.Lfa2ee:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fa2a0

.thumb_func_start Func_fa318
	push	{lr}
	bl	Func_f95f0
	pop	{r0}
	bx	r0
.func_end Func_fa318

.thumb_func_start Func_fa324
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r0]
	mov	r0, r2
	bl	Func_faa58
	pop	{r0}
	bx	r0
.func_end Func_fa324

.thumb_func_start Func_fa350
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r1, [r1]
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	r3, r2
	beq	.Lfa384
	mov	r0, r1
	mov	r1, r2
	bl	Func_faa58
	b	.Lfa398

	.pool_aligned

.Lfa384:
	ldr	r2, [r1, #4]
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	beq	.Lfa390
	cmp	r2, #0
	bge	.Lfa398
.Lfa390:
	mov	r0, r1
	mov	r1, r3
	bl	Func_faa58
.Lfa398:
	pop	{r0}
	bx	r0
.func_end Func_fa350

.thumb_func_start Func_fa39c
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r1, [r1]
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	r3, r2
	beq	.Lfa3d0
	mov	r0, r1
	mov	r1, r2
	bl	Func_faa58
	b	.Lfa3ec

	.pool_aligned

.Lfa3d0:
	ldr	r2, [r1, #4]
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	bne	.Lfa3e2
	mov	r0, r1
	mov	r1, r3
	bl	Func_faa58
	b	.Lfa3ec
.Lfa3e2:
	cmp	r2, #0
	bge	.Lfa3ec
	mov	r0, r1
	bl	Func_fa264
.Lfa3ec:
	pop	{r0}
	bx	r0
.func_end Func_fa39c

.thumb_func_start Func_fa3f0
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r2]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.Lfa416
	mov	r0, r2
	bl	Func_fab3c
.Lfa416:
	pop	{r0}
	bx	r0
.func_end Func_fa3f0

.thumb_func_start Func_fa424
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r2]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.Lfa44a
	mov	r0, r2
	bl	Func_fa264
.Lfa44a:
	pop	{r0}
	bx	r0
.func_end Func_fa424

.thumb_func_start Func_fa458
	push	{r4, r5, lr}
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa476
	ldr	r5, =Data_fc624
	mov	r4, r0
.Lfa468:
	ldr	r0, [r5]
	bl	Func_fab3c
	add	r5, #0xc
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa468
.Lfa476:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_fa458

.thumb_func_start Func_fa484
	push	{lr}
	bl	Func_fa264
	pop	{r0}
	bx	r0
.func_end Func_fa484

.thumb_func_start Func_fa490
	push	{r4, r5, lr}
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa4ae
	ldr	r5, =Data_fc624
	mov	r4, r0
.Lfa4a0:
	ldr	r0, [r5]
	bl	Func_fa264
	add	r5, #0xc
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa4a0
.Lfa4ae:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_fa490

.thumb_func_start Func_fa4bc
	push	{lr}
	lsl	r1, #16
	lsr	r1, #16
	bl	Func_fa280
	pop	{r0}
	bx	r0
.func_end Func_fa4bc

.thumb_func_start Func_fa4cc
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa4e2
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	ldr	r0, =0x101
	strh	r0, [r2, #0x28]
.Lfa4e2:
	bx	lr
.func_end Func_fa4cc

.thumb_func_start Func_fa4ec
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa50a
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	mov	r0, #2
	strh	r0, [r2, #0x28]
	ldr	r0, [r2, #4]
	ldr	r1, =0x7fffffff
	and	r0, r1
	str	r0, [r2, #4]
.Lfa50a:
	bx	lr
.func_end Func_fa4ec

.thumb_func_start Func_fa514
	push	{r4, r5, r6, r7, lr}
	ldrb	r5, [r0, #8]
	ldr	r4, [r0, #0x2c]
	cmp	r5, #0
	ble	.Lfa556
	mov	r7, #0x80
.Lfa520:
	ldrb	r1, [r4]
	mov	r0, r7
	and	r0, r1
	cmp	r0, #0
	beq	.Lfa54e
	mov	r6, #0x40
	mov	r0, r6
	and	r0, r1
	cmp	r0, #0
	beq	.Lfa54e
	mov	r0, r4
	bl	Func_fa68c
	strb	r7, [r4]
	mov	r0, #2
	strb	r0, [r4, #0xf]
	strb	r6, [r4, #0x13]
	mov	r0, #0x16
	strb	r0, [r4, #0x19]
	mov	r1, r4
	add	r1, #0x24
	mov	r0, #1
	strb	r0, [r1]
.Lfa54e:
	sub	r5, #1
	add	r4, #0x50
	cmp	r5, #0
	bgt	.Lfa520
.Lfa556:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fa514

.thumb_func_start Func_fa55c
	push	{r4, r5, r6, lr}
	sub	sp, #4
	mov	r5, r0
	ldr	r1, =REG_SOUNDCNT_X
	mov	r0, #0x8f
	strh	r0, [r1]
	ldr	r3, =REG_SOUNDCNT_L
	mov	r2, #0
	strh	r2, [r3]
	ldr	r0, =REG_SOUND1CNT_H + 1
	mov	r1, #8
	strb	r1, [r0]
	add	r0, #6
	strb	r1, [r0]
	add	r0, #0x10
	strb	r1, [r0]
	sub	r0, #0x14
	mov	r1, #0x80
	strb	r1, [r0]
	add	r0, #8
	strb	r1, [r0]
	add	r0, #0x10
	strb	r1, [r0]
	sub	r0, #0xd
	strb	r2, [r0]
	mov	r0, #0x77
	strb	r0, [r3]
	ldr	r0, =iwram_7ff0
	ldr	r4, [r0]
	ldr	r6, [r4]
	ldr	r0, =0x68736d53
	cmp	r6, r0
	bne	.Lfa61c
	add	r0, r6, #1
	str	r0, [r4]
	ldr	r1, =ewram_4000
	ldr	r0, =Func_fb518
	str	r0, [r1, #0x20]
	ldr	r0, =Func_fa1d4
	str	r0, [r1, #0x44]
	ldr	r0, =Func_fa1e8
	str	r0, [r1, #0x4c]
	ldr	r0, =Func_fb670
	str	r0, [r1, #0x70]
	ldr	r0, =Func_fa16c
	str	r0, [r1, #0x74]
	ldr	r0, =Func_fa798
	str	r0, [r1, #0x78]
	ldr	r0, =Func_f9ef8
	str	r0, [r1, #0x7c]
	mov	r2, r1
	add	r2, #0x80
	ldr	r0, =Func_fab7c
	str	r0, [r2]
	add	r1, #0x84
	ldr	r0, =Func_fac44
	str	r0, [r1]
	str	r5, [r4, #0x1c]
	ldr	r0, =Func_fae58
	str	r0, [r4, #0x28]
	ldr	r0, =Func_fada0
	str	r0, [r4, #0x2c]
	ldr	r0, =Func_facf8
	str	r0, [r4, #0x30]
	ldr	r0, =0
	mov	r1, #0
	strb	r0, [r4, #0xc]
	str	r1, [sp]
	ldr	r2, =0x5000040
	mov	r0, sp
	mov	r1, r5
	bl	Func_6864
	mov	r0, #1
	strb	r0, [r5, #1]
	mov	r0, #0x11
	strb	r0, [r5, #0x1c]
	mov	r1, r5
	add	r1, #0x41
	mov	r0, #2
	strb	r0, [r1]
	add	r1, #0x1b
	mov	r0, #0x22
	strb	r0, [r1]
	add	r1, #0x25
	mov	r0, #3
	strb	r0, [r1]
	add	r1, #0x1b
	mov	r0, #0x44
	strb	r0, [r1]
	add	r1, #0x24
	mov	r0, #4
	strb	r0, [r1, #1]
	mov	r0, #0x88
	strb	r0, [r1, #0x1c]
	str	r6, [r4]
.Lfa61c:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fa55c

.thumb_func_start Func_fa674
	swi	0x2a
	bx	lr
.func_end Func_fa674

.thumb_func_start Func_fa678
	push	{lr}
	ldr	r1, =ewram_4088
	ldr	r1, [r1]
	bl	_call_via_r1
	pop	{r0}
	bx	r0
.func_end Func_fa678

.thumb_func_start Func_fa68c
	push	{lr}
	ldr	r1, =ewram_408c
	ldr	r1, [r1]
	bl	_call_via_r1
	pop	{r0}
	bx	r0
.func_end Func_fa68c

.thumb_func_start Func_fa6a0
	push	{r4, r5, lr}
	sub	sp, #4
	mov	r5, r0
	mov	r3, #0
	str	r3, [r5]
	ldr	r1, =REG_DMA1CNT
	ldr	r0, [r1]
	mov	r2, #0x80
	lsl	r2, #18
	and	r0, r2
	cmp	r0, #0
	beq	.Lfa6bc
	ldr	r0, =0x84400004
	str	r0, [r1]
.Lfa6bc:
	ldr	r1, =REG_DMA2CNT
	ldr	r0, [r1]
	and	r0, r2
	cmp	r0, #0
	beq	.Lfa6ca
	ldr	r0, =0x84400004
	str	r0, [r1]
.Lfa6ca:
	ldr	r0, =REG_DMA1CNT_H
	mov	r2, #0x80
	lsl	r2, #3
	mov	r1, r2
	strh	r1, [r0]
	add	r0, #0xc
	strh	r1, [r0]
	ldr	r1, =REG_SOUNDCNT_X
	mov	r0, #0x8f
	strh	r0, [r1]
	sub	r1, #2
	ldr	r2, =0xa90e
	mov	r0, r2
	strh	r0, [r1]
	ldr	r2, =REG_SOUNDBIAS + 1
	ldrb	r1, [r2]
	mov	r0, #0x3f
	and	r0, r1
	mov	r1, #0x40
	orr	r0, r1
	strb	r0, [r2]
	ldr	r1, =REG_DMA1SAD
	mov	r2, #0xd4
	lsl	r2, #2
	add	r0, r5, r2
	str	r0, [r1]
	add	r1, #4
	ldr	r0, =REG_FIFO_A
	str	r0, [r1]
	add	r1, #8
	mov	r2, #0x98
	lsl	r2, #4
	add	r0, r5, r2
	str	r0, [r1]
	add	r1, #4
	ldr	r0, =REG_FIFO_B
	str	r0, [r1]
	ldr	r0, =iwram_7ff0
	str	r5, [r0]
	str	r3, [sp]
	ldr	r2, =0x50003ec
	mov	r0, sp
	mov	r1, r5
	bl	Func_6864
	mov	r0, #8
	strb	r0, [r5, #6]
	mov	r0, #0xf
	strb	r0, [r5, #7]
	ldr	r0, =Func_f9f6c
	str	r0, [r5, #0x38]
	ldr	r0, =Func_fb790
	str	r0, [r5, #0x28]
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x30]
	str	r0, [r5, #0x3c]
	ldr	r4, =ewram_4000
	mov	r0, r4
	bl	Func_f9a80
	str	r4, [r5, #0x34]
	mov	r0, #0x80
	lsl	r0, #11
	bl	Func_fa798
	ldr	r0, =0x68736d53
	str	r0, [r5]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_fa6a0

.thumb_func_start Func_fa798
	push	{r4, r5, r6, lr}
	mov	r2, r0
	ldr	r0, =iwram_7ff0
	ldr	r4, [r0]
	mov	r0, #0xf0
	lsl	r0, #12
	and	r0, r2
	lsr	r2, r0, #16
	mov	r6, #0
	strb	r2, [r4, #8]
	ldr	r1, =.Lfb914
	sub	r0, r2, #1
	lsl	r0, #1
	add	r0, r1
	ldrh	r5, [r0]
	str	r5, [r4, #0x10]
	mov	r0, #0xc6
	lsl	r0, #3
	mov	r1, r5
	bl	Func_af0_from_thumb
	strb	r0, [r4, #0xb]
	ldr	r0, =0x91d1b
	mul	r0, r5
	ldr	r1, =0x1388
	add	r0, r1
	ldr	r1, =0x2710
	bl	Func_af0_from_thumb
	mov	r1, r0
	str	r1, [r4, #0x14]
	mov	r0, #0x80
	lsl	r0, #17
	bl	Func_af0_from_thumb
	add	r0, #1
	asr	r0, #1
	str	r0, [r4, #0x18]
	ldr	r0, =REG_TM0CNT_H
	strh	r6, [r0]
	ldr	r4, =REG_TM0CNT_L
	ldr	r0, =0x44940
	mov	r1, r5
	bl	Func_af0_from_thumb
	neg	r0, r0
	strh	r0, [r4]
	bl	Func_fa9a4
	ldr	r1, =REG_VCOUNT
.Lfa7fc:
	ldrb	r0, [r1]
	cmp	r0, #0x9f
	beq	.Lfa7fc
	ldr	r1, =REG_VCOUNT
.Lfa804:
	ldrb	r0, [r1]
	cmp	r0, #0x9f
	bne	.Lfa804
	ldr	r1, =REG_TM0CNT_H
	mov	r0, #0x80
	strh	r0, [r1]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fa798

.thumb_func_start Func_fa83c
	push	{r4, r5, lr}
	mov	r3, r0
	ldr	r0, =iwram_7ff0
	ldr	r5, [r0]
	ldr	r1, [r5]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfa8c2
	add	r0, r1, #1
	str	r0, [r5]
	mov	r4, #0xff
	and	r4, r3
	cmp	r4, #0
	beq	.Lfa85e
	mov	r0, #0x7f
	and	r4, r0
	strb	r4, [r5, #5]
.Lfa85e:
	mov	r4, #0xf0
	lsl	r4, #4
	and	r4, r3
	cmp	r4, #0
	beq	.Lfa87e
	lsr	r0, r4, #8
	strb	r0, [r5, #6]
	mov	r4, #0xc
	mov	r0, r5
	add	r0, #0x50
	mov	r1, #0
.Lfa874:
	strb	r1, [r0]
	sub	r4, #1
	add	r0, #0x40
	cmp	r4, #0
	bne	.Lfa874
.Lfa87e:
	mov	r4, #0xf0
	lsl	r4, #8
	and	r4, r3
	cmp	r4, #0
	beq	.Lfa88c
	lsr	r0, r4, #12
	strb	r0, [r5, #7]
.Lfa88c:
	mov	r4, #0xb0
	lsl	r4, #16
	and	r4, r3
	cmp	r4, #0
	beq	.Lfa8aa
	mov	r0, #0xc0
	lsl	r0, #14
	and	r0, r4
	lsr	r4, r0, #14
	ldr	r2, =REG_SOUNDBIAS + 1
	ldrb	r1, [r2]
	mov	r0, #0x3f
	and	r0, r1
	orr	r0, r4
	strb	r0, [r2]
.Lfa8aa:
	mov	r4, #0xf0
	lsl	r4, #12
	and	r4, r3
	cmp	r4, #0
	beq	.Lfa8be
	bl	Func_fa928
	mov	r0, r4
	bl	Func_fa798
.Lfa8be:
	ldr	r0, =0x68736d53
	str	r0, [r5]
.Lfa8c2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_fa83c

.thumb_func_start Func_fa8d4
	push	{r4, r5, r6, r7, lr}
	ldr	r0, =iwram_7ff0
	ldr	r6, [r0]
	ldr	r1, [r6]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfa91a
	add	r0, r1, #1
	str	r0, [r6]
	mov	r5, #0xc
	mov	r4, r6
	add	r4, #0x50
	mov	r0, #0
.Lfa8ee:
	strb	r0, [r4]
	sub	r5, #1
	add	r4, #0x40
	cmp	r5, #0
	bgt	.Lfa8ee
	ldr	r4, [r6, #0x1c]
	cmp	r4, #0
	beq	.Lfa916
	mov	r5, #1
	mov	r7, #0
.Lfa902:
	lsl	r0, r5, #24
	lsr	r0, #24
	ldr	r1, [r6, #0x2c]
	bl	_call_via_r1
	strb	r7, [r4]
	add	r5, #1
	add	r4, #0x40
	cmp	r5, #4
	ble	.Lfa902
.Lfa916:
	ldr	r0, =0x68736d53
	str	r0, [r6]
.Lfa91a:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fa8d4

.thumb_func_start Func_fa928
	push	{lr}
	sub	sp, #4
	ldr	r0, =iwram_7ff0
	ldr	r2, [r0]
	ldr	r1, [r2]
	ldr	r3, =0x978c92ad
	add	r0, r1, r3
	cmp	r0, #1
	bhi	.Lfa980
	mov	r0, r1
	add	r0, #0xa
	str	r0, [r2]
	ldr	r1, =REG_DMA1CNT
	ldr	r0, [r1]
	mov	r3, #0x80
	lsl	r3, #18
	and	r0, r3
	cmp	r0, #0
	beq	.Lfa952
	ldr	r0, =0x84400004
	str	r0, [r1]
.Lfa952:
	ldr	r1, =REG_DMA2CNT
	ldr	r0, [r1]
	and	r0, r3
	cmp	r0, #0
	beq	.Lfa960
	ldr	r0, =0x84400004
	str	r0, [r1]
.Lfa960:
	ldr	r0, =REG_DMA1CNT_H
	mov	r3, #0x80
	lsl	r3, #3
	mov	r1, r3
	strh	r1, [r0]
	add	r0, #0xc
	strh	r1, [r0]
	mov	r0, #0
	str	r0, [sp]
	mov	r0, #0xd4
	lsl	r0, #2
	add	r1, r2, r0
	ldr	r2, =0x5000318
	mov	r0, sp
	bl	Func_6864
.Lfa980:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_fa928

.thumb_func_start Func_fa9a4
	push	{r4, lr}
	ldr	r0, =iwram_7ff0
	ldr	r2, [r0]
	ldr	r3, [r2]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	beq	.Lfa9cc
	ldr	r0, =REG_DMA1CNT_H
	mov	r4, #0xb6
	lsl	r4, #8
	mov	r1, r4
	strh	r1, [r0]
	add	r0, #0xc
	strh	r1, [r0]
	ldrb	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #4]
	mov	r0, r3
	sub	r0, #0xa
	str	r0, [r2]
.Lfa9cc:
	pop	{r4}
	pop	{r0}
	bx	r0
.func_end Func_fa9a4

.thumb_func_start Func_fa9e0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	lsl	r2, #24
	lsr	r4, r2, #24
	cmp	r4, #0
	beq	.Lfaa44
	cmp	r4, #0x10
	bls	.Lfa9f4
	mov	r4, #0x10
.Lfa9f4:
	ldr	r0, =iwram_7ff0
	ldr	r5, [r0]
	ldr	r1, [r5]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfaa44
	add	r0, r1, #1
	str	r0, [r5]
	mov	r0, r7
	bl	Func_fa68c
	str	r6, [r7, #0x2c]
	strb	r4, [r7, #8]
	mov	r0, #0x80
	lsl	r0, #24
	str	r0, [r7, #4]
	cmp	r4, #0
	beq	.Lfaa28
	mov	r1, #0
.Lfaa1a:
	strb	r1, [r6]
	sub	r0, r4, #1
	lsl	r0, #24
	lsr	r4, r0, #24
	add	r6, #0x50
	cmp	r4, #0
	bne	.Lfaa1a
.Lfaa28:
	ldr	r0, [r5, #0x20]
	cmp	r0, #0
	beq	.Lfaa38
	str	r0, [r7, #0x38]
	ldr	r0, [r5, #0x24]
	str	r0, [r7, #0x3c]
	mov	r0, #0
	str	r0, [r5, #0x20]
.Lfaa38:
	str	r7, [r5, #0x24]
	ldr	r0, =Func_f9c90
	str	r0, [r5, #0x20]
	ldr	r0, =0x68736d53
	str	r0, [r5]
	str	r0, [r7, #0x34]
.Lfaa44:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fa9e0

.thumb_func_start Func_faa58
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r7, r1
	ldr	r1, [r5, #0x34]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfab2e
	ldrb	r0, [r5, #0xb]
	ldrb	r2, [r7, #2]
	cmp	r0, #0
	beq	.Lfaa9a
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.Lfaa84
	ldr	r1, [r5, #0x2c]
	mov	r0, #0x40
	ldrb	r1, [r1]
	and	r0, r1
	cmp	r0, #0
	bne	.Lfaa90
.Lfaa84:
	ldr	r1, [r5, #4]
	ldrh	r0, [r5, #4]
	cmp	r0, #0
	beq	.Lfaa9a
	cmp	r1, #0
	blt	.Lfaa9a
.Lfaa90:
	ldrb	r0, [r7, #2]
	mov	r2, r0
	ldrb	r0, [r5, #9]
	cmp	r0, r2
	bhi	.Lfab2e
.Lfaa9a:
	ldr	r0, [r5, #0x34]
	add	r0, #1
	str	r0, [r5, #0x34]
	mov	r1, #0
	str	r1, [r5, #4]
	str	r7, [r5]
	ldr	r0, [r7, #4]
	str	r0, [r5, #0x30]
	strb	r2, [r5, #9]
	str	r1, [r5, #0xc]
	mov	r0, #0x96
	strh	r0, [r5, #0x1c]
	strh	r0, [r5, #0x20]
	add	r0, #0x6a
	strh	r0, [r5, #0x1e]
	strh	r1, [r5, #0x22]
	strh	r1, [r5, #0x24]
	mov	r6, #0
	ldr	r4, [r5, #0x2c]
	ldrb	r1, [r7]
	cmp	r6, r1
	bge	.Lfaafa
	ldrb	r0, [r5, #8]
	cmp	r6, r0
	bge	.Lfab1a
	mov	r8, r6
.Lfaace:
	mov	r0, r5
	mov	r1, r4
	bl	Func_f9ef8
	mov	r0, #0xc0
	strb	r0, [r4]
	mov	r1, r8
	str	r1, [r4, #0x20]
	lsl	r1, r6, #2
	mov	r0, r7
	add	r0, #8
	add	r0, r1
	ldr	r0, [r0]
	str	r0, [r4, #0x40]
	add	r6, #1
	add	r4, #0x50
	ldrb	r0, [r7]
	cmp	r6, r0
	bge	.Lfaafa
	ldrb	r1, [r5, #8]
	cmp	r6, r1
	blt	.Lfaace
.Lfaafa:
	ldrb	r0, [r5, #8]
	cmp	r6, r0
	bge	.Lfab1a
	mov	r1, #0
	mov	r8, r1
.Lfab04:
	mov	r0, r5
	mov	r1, r4
	bl	Func_f9ef8
	mov	r0, r8
	strb	r0, [r4]
	add	r6, #1
	add	r4, #0x50
	ldrb	r1, [r5, #8]
	cmp	r6, r1
	blt	.Lfab04
.Lfab1a:
	mov	r0, #0x80
	ldrb	r1, [r7, #3]
	and	r0, r1
	cmp	r0, #0
	beq	.Lfab2a
	ldrb	r0, [r7, #3]
	bl	Func_fa83c
.Lfab2a:
	ldr	r0, =0x68736d53
	str	r0, [r5, #0x34]
.Lfab2e:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_faa58

.thumb_func_start Func_fab3c
	push	{r4, r5, r6, lr}
	mov	r6, r0
	ldr	r1, [r6, #0x34]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfab72
	add	r0, r1, #1
	str	r0, [r6, #0x34]
	ldr	r0, [r6, #4]
	mov	r1, #0x80
	lsl	r1, #24
	orr	r0, r1
	str	r0, [r6, #4]
	ldrb	r4, [r6, #8]
	ldr	r5, [r6, #0x2c]
	cmp	r4, #0
	ble	.Lfab6e
.Lfab5e:
	mov	r0, r6
	mov	r1, r5
	bl	Func_f9ef8
	sub	r4, #1
	add	r5, #0x50
	cmp	r4, #0
	bgt	.Lfab5e
.Lfab6e:
	ldr	r0, =0x68736d53
	str	r0, [r6, #0x34]
.Lfab72:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fab3c

.thumb_func_start Func_fab7c
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	ldrh	r1, [r6, #0x24]
	cmp	r1, #0
	beq	.Lfac3e
	ldrh	r0, [r6, #0x26]
	sub	r0, #1
	strh	r0, [r6, #0x26]
	ldr	r3, =0xffff
	mov	r2, r3
	lsl	r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	bne	.Lfac3e
	strh	r1, [r6, #0x26]
	ldrh	r1, [r6, #0x28]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.Lfabc0
	mov	r0, r1
	add	r0, #0x10
	strh	r0, [r6, #0x28]
	and	r0, r2
	cmp	r0, #0xff
	bls	.Lfac12
	mov	r0, #0x80
	lsl	r0, #1
	strh	r0, [r6, #0x28]
	strh	r3, [r6, #0x24]
	b	.Lfac12

	.pool_aligned

.Lfabc0:
	mov	r0, r1
	sub	r0, #0x10
	strh	r0, [r6, #0x28]
	and	r0, r2
	lsl	r0, #16
	cmp	r0, #0
	bgt	.Lfac12
	ldrb	r5, [r6, #8]
	ldr	r4, [r6, #0x2c]
	cmp	r5, #0
	ble	.Lfabf2
.Lfabd6:
	mov	r0, r6
	mov	r1, r4
	bl	Func_f9ef8
	mov	r0, #1
	ldrh	r7, [r6, #0x28]
	and	r0, r7
	cmp	r0, #0
	bne	.Lfabea
	strb	r0, [r4]
.Lfabea:
	sub	r5, #1
	add	r4, #0x50
	cmp	r5, #0
	bgt	.Lfabd6
.Lfabf2:
	mov	r0, #1
	ldrh	r1, [r6, #0x28]
	and	r0, r1
	cmp	r0, #0
	beq	.Lfac06
	ldr	r0, [r6, #4]
	mov	r1, #0x80
	lsl	r1, #24
	orr	r0, r1
	b	.Lfac0a
.Lfac06:
	mov	r0, #0x80
	lsl	r0, #24
.Lfac0a:
	str	r0, [r6, #4]
	mov	r0, #0
	strh	r0, [r6, #0x24]
	b	.Lfac3e
.Lfac12:
	ldrb	r5, [r6, #8]
	ldr	r4, [r6, #0x2c]
	cmp	r5, #0
	ble	.Lfac3e
	mov	r3, #0x80
	mov	r7, #0
	mov	r2, #3
.Lfac20:
	ldrb	r1, [r4]
	mov	r0, r3
	and	r0, r1
	cmp	r0, #0
	beq	.Lfac36
	ldrh	r7, [r6, #0x28]
	lsr	r0, r7, #2
	strb	r0, [r4, #0x13]
	mov	r0, r1
	orr	r0, r2
	strb	r0, [r4]
.Lfac36:
	sub	r5, #1
	add	r4, #0x50
	cmp	r5, #0
	bgt	.Lfac20
.Lfac3e:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fab7c

.thumb_func_start Func_fac44
	push	{r4, lr}
	mov	r2, r1
	mov	r0, #1
	ldrb	r1, [r2]
	and	r0, r1
	cmp	r0, #0
	beq	.Lfaca8
	ldrb	r3, [r2, #0x13]
	ldrb	r1, [r2, #0x12]
	mov	r0, r3
	mul	r0, r1
	lsr	r3, r0, #5
	ldrb	r4, [r2, #0x18]
	cmp	r4, #1
	bne	.Lfac6c
	mov	r0, #0x16
	ldrsb	r0, [r2, r0]
	add	r0, #0x80
	mul	r0, r3
	lsr	r3, r0, #7
.Lfac6c:
	mov	r0, #0x14
	ldrsb	r0, [r2, r0]
	lsl	r0, #1
	mov	r1, #0x15
	ldrsb	r1, [r2, r1]
	add	r1, r0, r1
	cmp	r4, #2
	bne	.Lfac82
	mov	r0, #0x16
	ldrsb	r0, [r2, r0]
	add	r1, r0
.Lfac82:
	mov	r0, #0x80
	neg	r0, r0
	cmp	r1, r0
	bge	.Lfac8e
	mov	r1, r0
	b	.Lfac94
.Lfac8e:
	cmp	r1, #0x7f
	ble	.Lfac94
	mov	r1, #0x7f
.Lfac94:
	mov	r0, r1
	add	r0, #0x80
	mul	r0, r3
	lsr	r0, #8
	strb	r0, [r2, #0x10]
	mov	r0, #0x7f
	sub	r0, r1
	mul	r0, r3
	lsr	r0, #8
	strb	r0, [r2, #0x11]
.Lfaca8:
	ldrb	r1, [r2]
	mov	r0, #4
	and	r0, r1
	mov	r3, r1
	cmp	r0, #0
	beq	.Lfacec
	mov	r0, #0xe
	ldrsb	r0, [r2, r0]
	ldrb	r1, [r2, #0xf]
	mul	r0, r1
	mov	r1, #0xc
	ldrsb	r1, [r2, r1]
	add	r1, r0
	lsl	r1, #2
	mov	r0, #0xa
	ldrsb	r0, [r2, r0]
	lsl	r0, #8
	add	r1, r0
	mov	r0, #0xb
	ldrsb	r0, [r2, r0]
	lsl	r0, #8
	add	r1, r0
	ldrb	r0, [r2, #0xd]
	add	r1, r0, r1
	ldrb	r0, [r2, #0x18]
	cmp	r0, #0
	bne	.Lface6
	mov	r0, #0x16
	ldrsb	r0, [r2, r0]
	lsl	r0, #4
	add	r1, r0
.Lface6:
	asr	r0, r1, #8
	strb	r0, [r2, #8]
	strb	r1, [r2, #9]
.Lfacec:
	mov	r0, #0xfa
	and	r0, r3
	strb	r0, [r2]
	pop	{r4}
	pop	{r0}
	bx	r0
.func_end Func_fac44

.thumb_func_start Func_facf8
	push	{r4, r5, r6, r7, lr}
	lsl	r0, #24
	lsr	r0, #24
	lsl	r1, #24
	lsr	r5, r1, #24
	lsl	r2, #24
	lsr	r2, #24
	mov	r12, r2
	cmp	r0, #4
	bne	.Lfad30
	cmp	r5, #0x14
	bhi	.Lfad14
	mov	r5, #0
	b	.Lfad22
.Lfad14:
	mov	r0, r5
	sub	r0, #0x15
	lsl	r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0x3b
	bls	.Lfad22
	mov	r5, #0x3b
.Lfad22:
	ldr	r0, =.Lfb9c8
	add	r0, r5, r0
	ldrb	r0, [r0]
	b	.Lfad92

	.pool_aligned

.Lfad30:
	cmp	r5, #0x23
	bhi	.Lfad3c
	mov	r0, #0
	mov	r12, r0
	mov	r5, #0
	b	.Lfad4e
.Lfad3c:
	mov	r0, r5
	sub	r0, #0x24
	lsl	r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0x82
	bls	.Lfad4e
	mov	r5, #0x82
	mov	r1, #0xff
	mov	r12, r1
.Lfad4e:
	ldr	r3, =.Lfb92c
	add	r0, r5, r3
	ldrb	r6, [r0]
	ldr	r4, =.Lfb9b0
	mov	r2, #0xf
	mov	r0, r6
	and	r0, r2
	lsl	r0, #1
	add	r0, r4
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	asr	r0, r6, #4
	mov	r6, r1
	asr	r6, r0
	add	r0, r5, #1
	add	r0, r3
	ldrb	r1, [r0]
	mov	r0, r1
	and	r0, r2
	lsl	r0, #1
	add	r0, r4
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	asr	r1, #4
	asr	r0, r1
	sub	r0, r6
	mov	r7, r12
	mul	r7, r0
	mov	r0, r7
	asr	r0, #8
	add	r0, r6, r0
	mov	r1, #0x80
	lsl	r1, #4
	add	r0, r1
.Lfad92:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_facf8

.thumb_func_start Func_fada0
	lsl	r0, #24
	lsr	r0, #24
	mov	r1, r0
	cmp	r0, #2
	beq	.Lfadc8
	cmp	r0, #2
	bgt	.Lfadb4
	cmp	r0, #1
	beq	.Lfadba
	b	.Lfaddc
.Lfadb4:
	cmp	r1, #3
	beq	.Lfadd0
	b	.Lfaddc
.Lfadba:
	ldr	r1, =REG_SOUND1CNT_H + 1
	mov	r0, #8
	strb	r0, [r1]
	add	r1, #2
	b	.Lfade4

	.pool_aligned

.Lfadc8:
	ldr	r1, =REG_SOUND2CNT_L + 1
	b	.Lfadde

	.pool_aligned

.Lfadd0:
	ldr	r1, =REG_SOUND3CNT_L
	mov	r0, #0
	b	.Lfade6

	.pool_aligned

.Lfaddc:
	ldr	r1, =REG_SOUND4CNT_L + 1
.Lfadde:
	mov	r0, #8
	strb	r0, [r1]
	add	r1, #4
.Lfade4:
	mov	r0, #0x80
.Lfade6:
	strb	r0, [r1]
	bx	lr
.func_end Func_fada0

.thumb_func_start Func_fadf0
	push	{r4, lr}
	mov	r1, r0
	ldrb	r0, [r1, #2]
	lsl	r2, r0, #24
	lsr	r4, r2, #24
	ldrb	r3, [r1, #3]
	lsl	r0, r3, #24
	lsr	r3, r0, #24
	cmp	r4, r3
	bcc	.Lfae10
	lsr	r0, r2, #25
	cmp	r0, r3
	bcc	.Lfae1c
	mov	r0, #0xf
	strb	r0, [r1, #0x1b]
	b	.Lfae2a
.Lfae10:
	lsr	r0, #25
	cmp	r0, r4
	bcc	.Lfae1c
	mov	r0, #0xf0
	strb	r0, [r1, #0x1b]
	b	.Lfae2a
.Lfae1c:
	mov	r0, #0xff
	strb	r0, [r1, #0x1b]
	ldrb	r2, [r1, #3]
	ldrb	r3, [r1, #2]
	add	r0, r2, r3
	lsr	r0, #4
	b	.Lfae3a
.Lfae2a:
	ldrb	r2, [r1, #3]
	ldrb	r3, [r1, #2]
	add	r0, r2, r3
	lsr	r0, #4
	strb	r0, [r1, #0xa]
	cmp	r0, #0xf
	bls	.Lfae3c
	mov	r0, #0xf
.Lfae3a:
	strb	r0, [r1, #0xa]
.Lfae3c:
	ldrb	r2, [r1, #6]
	ldrb	r3, [r1, #0xa]
	mov	r0, r2
	mul	r0, r3
	add	r0, #0xf
	asr	r0, #4
	strb	r0, [r1, #0x19]
	ldrb	r0, [r1, #0x1c]
	ldrb	r2, [r1, #0x1b]
	and	r0, r2
	strb	r0, [r1, #0x1b]
	pop	{r4}
	pop	{r0}
	bx	r0
.func_end Func_fadf0

.thumb_func_start Func_fae58
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x1c
	ldr	r0, =iwram_7ff0
	ldr	r0, [r0]
	str	r0, [sp, #4]
	ldrb	r0, [r0, #0xa]
	cmp	r0, #0
	beq	.Lfae7c
	sub	r0, #1
	ldr	r1, [sp, #4]
	strb	r0, [r1, #0xa]
	b	.Lfae82

	.pool_aligned

.Lfae7c:
	mov	r0, #0xe
	ldr	r2, [sp, #4]
	strb	r0, [r2, #0xa]
.Lfae82:
	mov	r6, #1
	ldr	r0, [sp, #4]
	ldr	r4, [r0, #0x1c]
.Lfae88:
	ldrb	r1, [r4]
	mov	r0, #0xc7
	and	r0, r1
	add	r2, r6, #1
	mov	r10, r2
	mov	r2, #0x40
	add	r2, r4
	mov	r9, r2
	cmp	r0, #0
	bne	.Lfae9e
	b	.Lfb288
.Lfae9e:
	cmp	r6, #2
	beq	.Lfaed0
	cmp	r6, #2
	bgt	.Lfaeac
	cmp	r6, #1
	beq	.Lfaeb2
	b	.Lfaf08
.Lfaeac:
	cmp	r6, #3
	beq	.Lfaee8
	b	.Lfaf08
.Lfaeb2:
	ldr	r0, =REG_SOUND1CNT_L
	str	r0, [sp, #8]
	ldr	r7, =REG_SOUND1CNT_H
	ldr	r2, =REG_SOUND1CNT_H + 1
	str	r2, [sp, #0xc]
	add	r0, #4
	str	r0, [sp, #0x10]
	add	r2, #2
	b	.Lfaf18

	.pool_aligned

.Lfaed0:
	ldr	r0, =REG_SOUND1CNT_L + 1
	str	r0, [sp, #8]
	ldr	r7, =REG_SOUND2CNT_L
	ldr	r2, =REG_SOUND2CNT_L + 1
	b	.Lfaf10

	.pool_aligned

.Lfaee8:
	ldr	r0, =REG_SOUND3CNT_L
	str	r0, [sp, #8]
	ldr	r7, =REG_SOUND3CNT_H
	ldr	r2, =REG_SOUND3CNT_H + 1
	str	r2, [sp, #0xc]
	add	r0, #4
	str	r0, [sp, #0x10]
	add	r2, #2
	b	.Lfaf18

	.pool_aligned

.Lfaf08:
	ldr	r0, =REG_SOUND3CNT_L + 1
	str	r0, [sp, #8]
	ldr	r7, =REG_SOUND4CNT_L
	ldr	r2, =REG_SOUND4CNT_L + 1
.Lfaf10:
	str	r2, [sp, #0xc]
	add	r0, #0xb
	str	r0, [sp, #0x10]
	add	r2, #4
.Lfaf18:
	str	r2, [sp, #0x14]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #0xa]
	str	r0, [sp]
	ldr	r2, [sp, #0xc]
	ldrb	r0, [r2]
	mov	r8, r0
	mov	r2, r1
	mov	r0, #0x80
	and	r0, r2
	cmp	r0, #0
	beq	.Lfb00e
	mov	r3, #0x40
	mov	r0, r3
	and	r0, r2
	lsl	r0, #24
	lsr	r5, r0, #24
	add	r0, r6, #1
	mov	r10, r0
	mov	r1, #0x40
	add	r1, r4
	mov	r9, r1
	cmp	r5, #0
	bne	.Lfb032
	mov	r0, #3
	strb	r0, [r4]
	strb	r0, [r4, #0x1d]
	mov	r0, r4
	str	r3, [sp, #0x18]
	bl	Func_fadf0
	ldr	r3, [sp, #0x18]
	cmp	r6, #2
	beq	.Lfaf80
	cmp	r6, #2
	bgt	.Lfaf74
	cmp	r6, #1
	beq	.Lfaf7a
	b	.Lfafd4

	.pool_aligned

.Lfaf74:
	cmp	r6, #3
	beq	.Lfaf8c
	b	.Lfafd4
.Lfaf7a:
	ldrb	r0, [r4, #0x1f]
	ldr	r2, [sp, #8]
	strb	r0, [r2]
.Lfaf80:
	ldr	r0, [r4, #0x24]
	lsl	r0, #6
	ldrb	r1, [r4, #0x1e]
	add	r0, r1, r0
	strb	r0, [r7]
	b	.Lfafe0
.Lfaf8c:
	ldr	r1, [r4, #0x24]
	ldr	r0, [r4, #0x28]
	cmp	r1, r0
	beq	.Lfafb4
	ldr	r2, [sp, #8]
	strb	r3, [r2]
	ldr	r1, =REG_WAVE_RAM
	ldr	r2, [r4, #0x24]
	ldr	r0, [r2]
	str	r0, [r1]
	add	r1, #4
	ldr	r0, [r2, #4]
	str	r0, [r1]
	add	r1, #4
	ldr	r0, [r2, #8]
	str	r0, [r1]
	add	r1, #4
	ldr	r0, [r2, #0xc]
	str	r0, [r1]
	str	r2, [r4, #0x28]
.Lfafb4:
	ldr	r0, [sp, #8]
	strb	r5, [r0]
	ldrb	r0, [r4, #0x1e]
	strb	r0, [r7]
	ldrb	r0, [r4, #0x1e]
	cmp	r0, #0
	beq	.Lfafcc
	mov	r0, #0xc0
	b	.Lfafee

	.pool_aligned

.Lfafcc:
	mov	r1, #0x80
	neg	r1, r1
	strb	r1, [r4, #0x1a]
	b	.Lfaff0
.Lfafd4:
	ldrb	r0, [r4, #0x1e]
	strb	r0, [r7]
	ldr	r0, [r4, #0x24]
	lsl	r0, #3
	ldr	r2, [sp, #0x10]
	strb	r0, [r2]
.Lfafe0:
	ldrb	r0, [r4, #4]
	add	r0, #8
	mov	r8, r0
	ldrb	r0, [r4, #0x1e]
	cmp	r0, #0
	beq	.Lfafee
	mov	r0, #0x40
.Lfafee:
	strb	r0, [r4, #0x1a]
.Lfaff0:
	ldrb	r1, [r4, #4]
	mov	r2, #0
	strb	r1, [r4, #0xb]
	mov	r0, #0xff
	and	r0, r1
	add	r1, r6, #1
	mov	r10, r1
	mov	r1, #0x40
	add	r1, r4
	mov	r9, r1
	cmp	r0, #0
	bne	.Lfb00a
	b	.Lfb146
.Lfb00a:
	strb	r2, [r4, #9]
	b	.Lfb174
.Lfb00e:
	mov	r0, #4
	and	r0, r2
	cmp	r0, #0
	beq	.Lfb040
	ldrb	r0, [r4, #0xd]
	sub	r0, #1
	strb	r0, [r4, #0xd]
	mov	r2, #0xff
	and	r0, r2
	lsl	r0, #24
	add	r1, r6, #1
	mov	r10, r1
	mov	r2, #0x40
	add	r2, r4
	mov	r9, r2
	cmp	r0, #0
	ble	.Lfb032
	b	.Lfb186
.Lfb032:
	lsl	r0, r6, #24
	lsr	r0, #24
	bl	Func_fada0
	mov	r0, #0
	strb	r0, [r4]
	b	.Lfb284
.Lfb040:
	mov	r0, #0x40
	and	r0, r1
	add	r2, r6, #1
	mov	r10, r2
	mov	r2, #0x40
	add	r2, r4
	mov	r9, r2
	cmp	r0, #0
	beq	.Lfb080
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb080
	mov	r0, #0xfc
	and	r0, r1
	mov	r2, #0
	strb	r0, [r4]
	ldrb	r1, [r4, #7]
	strb	r1, [r4, #0xb]
	mov	r0, #0xff
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb0b2
	mov	r0, #1
	ldrb	r1, [r4, #0x1d]
	orr	r0, r1
	strb	r0, [r4, #0x1d]
	cmp	r6, #3
	beq	.Lfb174
	ldrb	r2, [r4, #7]
	mov	r8, r2
	b	.Lfb174
.Lfb080:
	ldrb	r0, [r4, #0xb]
	cmp	r0, #0
	bne	.Lfb174
	cmp	r6, #3
	bne	.Lfb092
	mov	r0, #1
	ldrb	r1, [r4, #0x1d]
	orr	r0, r1
	strb	r0, [r4, #0x1d]
.Lfb092:
	mov	r0, r4
	bl	Func_fadf0
	mov	r0, #3
	ldrb	r2, [r4]
	and	r0, r2
	cmp	r0, #0
	bne	.Lfb0e6
	ldrb	r0, [r4, #9]
	sub	r0, #1
	strb	r0, [r4, #9]
	mov	r1, #0xff
	and	r0, r1
	lsl	r0, #24
	cmp	r0, #0
	bgt	.Lfb0e2
.Lfb0b2:
	ldrb	r2, [r4, #0xc]
	ldrb	r1, [r4, #0xa]
	mov	r0, r2
	mul	r0, r1
	add	r0, #0xff
	asr	r0, #8
	mov	r1, #0
	strb	r0, [r4, #9]
	lsl	r0, #24
	cmp	r0, #0
	beq	.Lfb032
	mov	r0, #4
	ldrb	r2, [r4]
	orr	r0, r2
	strb	r0, [r4]
	mov	r0, #1
	ldrb	r1, [r4, #0x1d]
	orr	r0, r1
	strb	r0, [r4, #0x1d]
	cmp	r6, #3
	beq	.Lfb186
	mov	r2, #8
	mov	r8, r2
	b	.Lfb186
.Lfb0e2:
	ldrb	r0, [r4, #7]
	b	.Lfb172
.Lfb0e6:
	cmp	r0, #1
	bne	.Lfb0f2
.Lfb0ea:
	ldrb	r0, [r4, #0x19]
	strb	r0, [r4, #9]
	mov	r0, #7
	b	.Lfb172
.Lfb0f2:
	cmp	r0, #2
	bne	.Lfb136
	ldrb	r0, [r4, #9]
	sub	r0, #1
	strb	r0, [r4, #9]
	mov	r1, #0xff
	and	r0, r1
	lsl	r0, #24
	ldrb	r2, [r4, #0x19]
	lsl	r1, r2, #24
	cmp	r0, r1
	bgt	.Lfb132
.Lfb10a:
	ldrb	r0, [r4, #6]
	cmp	r0, #0
	bne	.Lfb11a
	mov	r0, #0xfc
	ldrb	r1, [r4]
	and	r0, r1
	strb	r0, [r4]
	b	.Lfb0b2
.Lfb11a:
	ldrb	r0, [r4]
	sub	r0, #1
	strb	r0, [r4]
	mov	r0, #1
	ldrb	r2, [r4, #0x1d]
	orr	r0, r2
	strb	r0, [r4, #0x1d]
	cmp	r6, #3
	beq	.Lfb0ea
	mov	r0, #8
	mov	r8, r0
	b	.Lfb0ea
.Lfb132:
	ldrb	r0, [r4, #5]
	b	.Lfb172
.Lfb136:
	ldrb	r0, [r4, #9]
	add	r0, #1
	strb	r0, [r4, #9]
	mov	r1, #0xff
	and	r0, r1
	ldrb	r2, [r4, #0xa]
	cmp	r0, r2
	bcc	.Lfb170
.Lfb146:
	ldrb	r0, [r4]
	sub	r0, #1
	mov	r2, #0
	strb	r0, [r4]
	ldrb	r1, [r4, #5]
	strb	r1, [r4, #0xb]
	mov	r0, #0xff
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb10a
	mov	r0, #1
	ldrb	r1, [r4, #0x1d]
	orr	r0, r1
	strb	r0, [r4, #0x1d]
	ldrb	r0, [r4, #0xa]
	strb	r0, [r4, #9]
	cmp	r6, #3
	beq	.Lfb174
	ldrb	r2, [r4, #5]
	mov	r8, r2
	b	.Lfb174
.Lfb170:
	ldrb	r0, [r4, #4]
.Lfb172:
	strb	r0, [r4, #0xb]
.Lfb174:
	ldrb	r0, [r4, #0xb]
	sub	r0, #1
	strb	r0, [r4, #0xb]
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.Lfb186
	sub	r0, #1
	str	r0, [sp]
	b	.Lfb080
.Lfb186:
	mov	r0, #2
	ldrb	r1, [r4, #0x1d]
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb1fe
	cmp	r6, #3
	bgt	.Lfb1c6
	mov	r0, #8
	ldrb	r2, [r4, #1]
	and	r0, r2
	cmp	r0, #0
	beq	.Lfb1c6
	ldr	r0, =REG_SOUNDBIAS + 1
	ldrb	r0, [r0]
	cmp	r0, #0x3f
	bgt	.Lfb1b8
	ldr	r0, [r4, #0x20]
	add	r0, #2
	ldr	r1, =0x7fc
	b	.Lfb1c2

	.pool_aligned

.Lfb1b8:
	cmp	r0, #0x7f
	bgt	.Lfb1c6
	ldr	r0, [r4, #0x20]
	add	r0, #1
	ldr	r1, =0x7fe
.Lfb1c2:
	and	r0, r1
	str	r0, [r4, #0x20]
.Lfb1c6:
	cmp	r6, #4
	beq	.Lfb1d8
	ldr	r0, [r4, #0x20]
	ldr	r1, [sp, #0x10]
	strb	r0, [r1]
	b	.Lfb1e6

	.pool_aligned

.Lfb1d8:
	ldr	r2, [sp, #0x10]
	ldrb	r0, [r2]
	mov	r1, #8
	and	r1, r0
	ldr	r0, [r4, #0x20]
	orr	r0, r1
	strb	r0, [r2]
.Lfb1e6:
	mov	r0, #0xc0
	ldrb	r1, [r4, #0x1a]
	and	r0, r1
	mov	r1, r4
	add	r1, #0x21
	ldrb	r1, [r1]
	add	r0, r1, r0
	strb	r0, [r4, #0x1a]
	mov	r2, #0xff
	and	r0, r2
	ldr	r1, [sp, #0x14]
	strb	r0, [r1]
.Lfb1fe:
	mov	r0, #1
	ldrb	r2, [r4, #0x1d]
	and	r0, r2
	cmp	r0, #0
	beq	.Lfb284
	ldr	r1, =REG_SOUNDCNT_L + 1
	ldrb	r0, [r1]
	ldrb	r2, [r4, #0x1c]
	bic	r0, r2
	ldrb	r2, [r4, #0x1b]
	orr	r0, r2
	strb	r0, [r1]
	cmp	r6, #3
	bne	.Lfb250
	ldr	r0, =.Lfba04
	ldrb	r1, [r4, #9]
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r2, [sp, #0xc]
	strb	r0, [r2]
	mov	r1, #0x80
	mov	r0, r1
	ldrb	r2, [r4, #0x1a]
	and	r0, r2
	cmp	r0, #0
	beq	.Lfb284
	ldr	r0, [sp, #8]
	strb	r1, [r0]
	ldrb	r0, [r4, #0x1a]
	ldr	r1, [sp, #0x14]
	strb	r0, [r1]
	mov	r0, #0x7f
	ldrb	r2, [r4, #0x1a]
	and	r0, r2
	strb	r0, [r4, #0x1a]
	b	.Lfb284

	.pool_aligned

.Lfb250:
	mov	r0, #0xf
	mov	r1, r8
	and	r1, r0
	mov	r8, r1
	ldrb	r2, [r4, #9]
	lsl	r0, r2, #4
	add	r0, r8
	ldr	r1, [sp, #0xc]
	strb	r0, [r1]
	mov	r2, #0x80
	ldrb	r0, [r4, #0x1a]
	orr	r0, r2
	ldr	r1, [sp, #0x14]
	strb	r0, [r1]
	cmp	r6, #1
	bne	.Lfb284
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	bne	.Lfb284
	ldrb	r0, [r4, #0x1a]
	orr	r0, r2
	ldr	r1, [sp, #0x14]
	strb	r0, [r1]
.Lfb284:
	mov	r0, #0
	strb	r0, [r4, #0x1d]
.Lfb288:
	mov	r6, r10
	mov	r4, r9
	cmp	r6, #4
	bgt	.Lfb292
	b	.Lfae88
.Lfb292:
	add	sp, #0x1c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fae58

.thumb_func_start Func_fb2a4
	push	{r4, lr}
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfb2c0
	strh	r1, [r2, #0x1e]
	ldrh	r4, [r2, #0x1c]
	mov	r0, r1
	mul	r0, r4
	asr	r0, #8
	strh	r0, [r2, #0x20]
.Lfb2c0:
	pop	{r4}
	pop	{r0}
	bx	r0
.func_end Func_fb2a4

.thumb_func_start Func_fb2cc
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r4, r0
	lsl	r1, #16
	lsr	r7, r1, #16
	lsl	r6, r2, #16
	ldr	r3, [r4, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfb324
	add	r0, r3, #1
	str	r0, [r4, #0x34]
	ldrb	r2, [r4, #8]
	ldr	r1, [r4, #0x2c]
	mov	r5, #1
	cmp	r2, #0
	ble	.Lfb320
	mov	r0, #0x80
	mov	r8, r0
	lsr	r6, #18
	mov	r0, #3
	mov	r12, r0
.Lfb2fc:
	mov	r0, r7
	and	r0, r5
	cmp	r0, #0
	beq	.Lfb316
	ldrb	r3, [r1]
	mov	r0, r8
	and	r0, r3
	cmp	r0, #0
	beq	.Lfb316
	strb	r6, [r1, #0x13]
	mov	r0, r12
	orr	r0, r3
	strb	r0, [r1]
.Lfb316:
	sub	r2, #1
	add	r1, #0x50
	lsl	r5, #1
	cmp	r2, #0
	bgt	.Lfb2fc
.Lfb320:
	ldr	r0, =0x68736d53
	str	r0, [r4, #0x34]
.Lfb324:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fb2cc

.thumb_func_start Func_fb334
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, r0
	lsl	r1, #16
	lsr	r1, #16
	mov	r12, r1
	lsl	r2, #16
	lsr	r6, r2, #16
	ldr	r3, [r4, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfb396
	add	r0, r3, #1
	str	r0, [r4, #0x34]
	ldrb	r2, [r4, #8]
	ldr	r3, [r4, #0x2c]
	mov	r5, #1
	cmp	r2, #0
	ble	.Lfb392
	mov	r0, #0x80
	mov	r9, r0
	lsl	r0, r6, #16
	asr	r7, r0, #24
	mov	r0, #0xc
	mov	r8, r0
.Lfb36c:
	mov	r0, r12
	and	r0, r5
	cmp	r0, #0
	beq	.Lfb388
	ldrb	r1, [r3]
	mov	r0, r9
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb388
	strb	r7, [r3, #0xb]
	strb	r6, [r3, #0xd]
	mov	r0, r8
	orr	r0, r1
	strb	r0, [r3]
.Lfb388:
	sub	r2, #1
	add	r3, #0x50
	lsl	r5, #1
	cmp	r2, #0
	bgt	.Lfb36c
.Lfb392:
	ldr	r0, =0x68736d53
	str	r0, [r4, #0x34]
.Lfb396:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fb334

.thumb_func_start Func_fb3a8
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r4, r0
	lsl	r1, #16
	lsr	r7, r1, #16
	lsl	r2, #24
	lsr	r6, r2, #24
	ldr	r3, [r4, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfb400
	add	r0, r3, #1
	str	r0, [r4, #0x34]
	ldrb	r2, [r4, #8]
	ldr	r1, [r4, #0x2c]
	mov	r5, #1
	cmp	r2, #0
	ble	.Lfb3fc
	mov	r0, #0x80
	mov	r8, r0
	mov	r0, #3
	mov	r12, r0
.Lfb3d8:
	mov	r0, r7
	and	r0, r5
	cmp	r0, #0
	beq	.Lfb3f2
	ldrb	r3, [r1]
	mov	r0, r8
	and	r0, r3
	cmp	r0, #0
	beq	.Lfb3f2
	strb	r6, [r1, #0x15]
	mov	r0, r12
	orr	r0, r3
	strb	r0, [r1]
.Lfb3f2:
	sub	r2, #1
	add	r1, #0x50
	lsl	r5, #1
	cmp	r2, #0
	bgt	.Lfb3d8
.Lfb3fc:
	ldr	r0, =0x68736d53
	str	r0, [r4, #0x34]
.Lfb400:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fb3a8

.thumb_func_start Func_fb410
	mov	r1, r0
	mov	r2, #0
	mov	r0, #0
	strb	r0, [r1, #0x1a]
	strb	r0, [r1, #0x16]
	ldrb	r0, [r1, #0x18]
	cmp	r0, #0
	bne	.Lfb424
	mov	r0, #0xc
	b	.Lfb426
.Lfb424:
	mov	r0, #3
.Lfb426:
	ldrb	r2, [r1]
	orr	r0, r2
	strb	r0, [r1]
	bx	lr
.func_end Func_fb410

.thumb_func_start Func_fb430
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r0
	lsl	r1, #16
	lsr	r1, #16
	mov	r10, r1
	lsl	r2, #24
	lsr	r2, #24
	mov	r8, r2
	ldr	r1, [r6, #0x34]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfb490
	add	r0, r1, #1
	str	r0, [r6, #0x34]
	ldrb	r5, [r6, #8]
	ldr	r4, [r6, #0x2c]
	mov	r7, #1
	cmp	r5, #0
	ble	.Lfb48c
	mov	r9, r8
.Lfb460:
	mov	r0, r10
	and	r0, r7
	cmp	r0, #0
	beq	.Lfb482
	mov	r0, #0x80
	ldrb	r1, [r4]
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb482
	mov	r0, r8
	strb	r0, [r4, #0x17]
	mov	r1, r9
	cmp	r1, #0
	bne	.Lfb482
	mov	r0, r4
	bl	Func_fb410
.Lfb482:
	sub	r5, #1
	add	r4, #0x50
	lsl	r7, #1
	cmp	r5, #0
	bgt	.Lfb460
.Lfb48c:
	ldr	r0, =0x68736d53
	str	r0, [r6, #0x34]
.Lfb490:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fb430

.thumb_func_start Func_fb4a4
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r0
	lsl	r1, #16
	lsr	r1, #16
	mov	r10, r1
	lsl	r2, #24
	lsr	r2, #24
	mov	r8, r2
	ldr	r1, [r6, #0x34]
	ldr	r0, =0x68736d53
	cmp	r1, r0
	bne	.Lfb504
	add	r0, r1, #1
	str	r0, [r6, #0x34]
	ldrb	r5, [r6, #8]
	ldr	r4, [r6, #0x2c]
	mov	r7, #1
	cmp	r5, #0
	ble	.Lfb500
	mov	r9, r8
.Lfb4d4:
	mov	r0, r10
	and	r0, r7
	cmp	r0, #0
	beq	.Lfb4f6
	mov	r0, #0x80
	ldrb	r1, [r4]
	and	r0, r1
	cmp	r0, #0
	beq	.Lfb4f6
	mov	r0, r8
	strb	r0, [r4, #0x19]
	mov	r1, r9
	cmp	r1, #0
	bne	.Lfb4f6
	mov	r0, r4
	bl	Func_fb410
.Lfb4f6:
	sub	r5, #1
	add	r4, #0x50
	lsl	r7, #1
	cmp	r5, #0
	bgt	.Lfb4d4
.Lfb500:
	ldr	r0, =0x68736d53
	str	r0, [r6, #0x34]
.Lfb504:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fb4a4

.thumb_func_start Func_fb518
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	ldr	r1, [r6, #0x40]
	ldrb	r5, [r1]
	add	r2, r1, #1
	str	r2, [r6, #0x40]
	ldr	r0, [r4, #0x18]
	ldrb	r1, [r1, #1]
	add	r3, r1, r0
	add	r0, r2, #1
	str	r0, [r6, #0x40]
	ldrb	r2, [r2, #1]
	add	r0, #1
	str	r0, [r6, #0x40]
	cmp	r5, #0x11
	bls	.Lfb53c
	b	.Lfb66a
.Lfb53c:
	lsl	r0, r5, #2
	ldr	r1, =.Lfb54c
	add	r0, r1
	ldr	r0, [r0]
	mov	pc, r0

	.pool_aligned

.Lfb54c:
	.word	.Lfb594
	.word	.Lfb598
	.word	.Lfb5a0
	.word	.Lfb5a8
	.word	.Lfb5b2
	.word	.Lfb5c0
	.word	.Lfb5ce
	.word	.Lfb5d6
	.word	.Lfb5de
	.word	.Lfb5e6
	.word	.Lfb5ee
	.word	.Lfb5f6
	.word	.Lfb5fe
	.word	.Lfb60c
	.word	.Lfb61a
	.word	.Lfb628
	.word	.Lfb636
	.word	.Lfb644
.Lfb594:
	strb	r2, [r3]
	b	.Lfb66a
.Lfb598:
	ldrb	r1, [r3]
	add	r0, r1, r2
	strb	r0, [r3]
	b	.Lfb66a
.Lfb5a0:
	ldrb	r1, [r3]
	sub	r0, r1, r2
	strb	r0, [r3]
	b	.Lfb66a
.Lfb5a8:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r0, [r0]
	strb	r0, [r3]
	b	.Lfb66a
.Lfb5b2:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r1, [r3]
	ldrb	r0, [r0]
	add	r0, r1, r0
	strb	r0, [r3]
	b	.Lfb66a
.Lfb5c0:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r1, [r3]
	ldrb	r0, [r0]
	sub	r0, r1, r0
	strb	r0, [r3]
	b	.Lfb66a
.Lfb5ce:
	ldrb	r3, [r3]
	cmp	r3, r2
	beq	.Lfb650
	b	.Lfb664
.Lfb5d6:
	ldrb	r3, [r3]
	cmp	r3, r2
	bne	.Lfb650
	b	.Lfb664
.Lfb5de:
	ldrb	r3, [r3]
	cmp	r3, r2
	bhi	.Lfb650
	b	.Lfb664
.Lfb5e6:
	ldrb	r3, [r3]
	cmp	r3, r2
	bcs	.Lfb650
	b	.Lfb664
.Lfb5ee:
	ldrb	r3, [r3]
	cmp	r3, r2
	bls	.Lfb650
	b	.Lfb664
.Lfb5f6:
	ldrb	r3, [r3]
	cmp	r3, r2
	bcc	.Lfb650
	b	.Lfb664
.Lfb5fe:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r3, [r3]
	ldrb	r0, [r0]
	cmp	r3, r0
	beq	.Lfb650
	b	.Lfb664
.Lfb60c:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r3, [r3]
	ldrb	r0, [r0]
	cmp	r3, r0
	bne	.Lfb650
	b	.Lfb664
.Lfb61a:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r3, [r3]
	ldrb	r0, [r0]
	cmp	r3, r0
	bhi	.Lfb650
	b	.Lfb664
.Lfb628:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r3, [r3]
	ldrb	r0, [r0]
	cmp	r3, r0
	bcs	.Lfb650
	b	.Lfb664
.Lfb636:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r3, [r3]
	ldrb	r0, [r0]
	cmp	r3, r0
	bls	.Lfb650
	b	.Lfb664
.Lfb644:
	ldr	r0, [r4, #0x18]
	add	r0, r2
	ldrb	r3, [r3]
	ldrb	r0, [r0]
	cmp	r3, r0
	bcs	.Lfb664
.Lfb650:
	ldr	r0, =ewram_4004
	ldr	r2, [r0]
	mov	r0, r4
	mov	r1, r6
	bl	_call_via_r2
	b	.Lfb66a

	.pool_aligned

.Lfb664:
	ldr	r0, [r6, #0x40]
	add	r0, #4
	str	r0, [r6, #0x40]
.Lfb66a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fb518

.thumb_func_start Func_fb670
	push	{lr}
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	add	r2, #1
	str	r2, [r1, #0x40]
	ldr	r2, =.Lfba48
	lsl	r3, #2
	add	r3, r2
	ldr	r2, [r3]
	bl	_call_via_r2
	pop	{r0}
	bx	r0
.func_end Func_fb670

.thumb_func_start Func_fb690
	push	{lr}
	ldr	r2, =ewram_4000
	ldr	r2, [r2]
	bl	_call_via_r2
	pop	{r0}
	bx	r0
.func_end Func_fb690

.thumb_func_start Func_fb6a4
	push	{r4, lr}
	ldr	r2, [r1, #0x40]
	ldr	r0, =0xffffff00
	and	r4, r0
	ldrb	r0, [r2]
	orr	r4, r0
	ldrb	r0, [r2, #1]
	lsl	r3, r0, #8
	ldr	r0, =0xffff00ff
	and	r4, r0
	orr	r4, r3
	ldrb	r0, [r2, #2]
	lsl	r3, r0, #16
	ldr	r0, =0xff00ffff
	and	r4, r0
	orr	r4, r3
	ldrb	r0, [r2, #3]
	lsl	r3, r0, #24
	ldr	r0, =0xffffff
	and	r4, r0
	orr	r4, r3
	str	r4, [r1, #0x28]
	add	r2, #4
	str	r2, [r1, #0x40]
	pop	{r4}
	pop	{r0}
	bx	r0
.func_end Func_fb6a4

.thumb_func_start Func_fb6ec
	ldr	r0, [r1, #0x40]
	ldrb	r2, [r0]
	mov	r0, r1
	add	r0, #0x24
	strb	r2, [r0]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb6ec

.thumb_func_start Func_fb700
	ldr	r0, [r1, #0x40]
	ldrb	r2, [r0]
	mov	r0, r1
	add	r0, #0x2c
	strb	r2, [r0]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb700

.thumb_func_start Func_fb714
	ldr	r0, [r1, #0x40]
	ldrb	r0, [r0]
	mov	r2, r1
	add	r2, #0x2d
	strb	r0, [r2]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb714

.thumb_func_start Func_fb728
	ldr	r0, [r1, #0x40]
	ldrb	r0, [r0]
	mov	r2, r1
	add	r2, #0x2e
	strb	r0, [r2]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb728

.thumb_func_start Func_fb73c
	ldr	r0, [r1, #0x40]
	ldrb	r0, [r0]
	mov	r2, r1
	add	r2, #0x2f
	strb	r0, [r2]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb73c

.thumb_func_start Func_fb750
	ldr	r0, [r1, #0x40]
	ldrb	r2, [r0]
	strb	r2, [r1, #0x1e]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb750

.thumb_func_start Func_fb75c
	ldr	r0, [r1, #0x40]
	ldrb	r2, [r0]
	strb	r2, [r1, #0x1f]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb75c

.thumb_func_start Func_fb768
	ldr	r0, [r1, #0x40]
	ldrb	r0, [r0]
	mov	r2, r1
	add	r2, #0x26
	strb	r0, [r2]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb768

.thumb_func_start Func_fb77c
	ldr	r0, [r1, #0x40]
	ldrb	r0, [r0]
	mov	r2, r1
	add	r2, #0x27
	strb	r0, [r2]
	ldr	r0, [r1, #0x40]
	add	r0, #1
	str	r0, [r1, #0x40]
	bx	lr
.func_end Func_fb77c

.thumb_func_start Func_fb790
	bx	lr
.func_end Func_fb790

	.section .rodata

.Lfb830:
	.incrom 0xfb830, 0xfb8e4
.Lfb8e4:
	.incrom 0xfb8e4, 0xfb914
.Lfb914:
	.incrom 0xfb914, 0xfb92c
.Lfb92c:
	.incrom 0xfb92c, 0xfb9b0
.Lfb9b0:
	.incrom 0xfb9b0, 0xfb9c8
.Lfb9c8:
	.incrom 0xfb9c8, 0xfba04
.Lfba04:
	.incrom 0xfba04, 0xfba14

	.incdata Data_fba14, 0xfba14, 0xfba48

.Lfba48:
	.incrom 0xfba48, 0xfc624
