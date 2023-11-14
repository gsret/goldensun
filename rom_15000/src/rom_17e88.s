	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_17e88
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x20
	mov	r10, r0
	mov	r5, r1
	mov	r0, r2
	ldr	r1, [sp, #0x3c]
	ldr	r2, [sp, #0x44]
	mov	r7, r3
	mov	r3, r10
	mov	r8, r1
	mov	r14, r2
	cmp	r3, #0
	beq	.L17ec8
	ldr	r3, .L17edc	@ 0x20
	lsl	r2, r0, #1
	strh	r3, [r2, r7]
	ldr	r2, =0x1ff
	add	r0, #1
	and	r0, r2
	lsl	r3, r0, #1
	ldr	r1, .L17ee0	@ 0xa
	add	r0, #1
	and	r0, r2
	strh	r1, [r3, r7]
	lsl	r3, r0, #1
	strh	r1, [r3, r7]
	add	r0, #1
	and	r0, r2
.L17ec8:
	mov	r4, r8
	cmp	r4, #1
	beq	.L17ee8
	cmp	r4, #3
	bne	.L17f6a
	ldr	r6, [sp, #0x40]
	cmp	r6, #0
	bne	.L17f6a
	b	.L17ee8

	.align	2, 0
.L17edc:
	.word	0x20
.L17ee0:
	.word	0xa
	.pool

.L17ee8:
	mov	r9, sp
	ldr	r3, =.L33e40
	mov	r1, #0
	mov	r2, r9
	mov	r12, r1
	ldmia	r3!, {r1, r4, r6}
	stmia	r2!, {r1, r4, r6}
	ldmia	r3!, {r1, r4, r6}
	stmia	r2!, {r1, r4, r6}
	ldmia	r3!, {r4, r6}
	stmia	r2!, {r4, r6}
	ldrh	r2, [r5]
	cmp	r2, #0x1d
	bne	.L17f0c
	ldrh	r3, [r5, #2]
	sub	r3, #1
	mov	r12, r3
	add	r5, #4
.L17f0c:
	mov	r1, r12
	cmp	r1, #0
	bne	.L17f2e
	cmp	r2, #0x41
	beq	.L17f2a
	cmp	r2, #0x49
	beq	.L17f2a
	cmp	r2, #0x55
	beq	.L17f2a
	cmp	r2, #0x45
	beq	.L17f2a
	mov	r3, #1
	mov	r12, r3
	cmp	r2, #0x4f
	bne	.L17f2e
.L17f2a:
	mov	r4, #2
	mov	r12, r4
.L17f2e:
	mov	r3, #7
	mov	r6, r12
	and	r6, r3
	lsl	r3, r6, #2
	mov	r1, r9
	ldr	r4, [r1, r3]
	ldrb	r3, [r4]
	lsl	r1, r3, #24
	mov	r6, #0
	add	r4, #1
	cmp	r1, #0
	beq	.L17f74
	ldr	r2, =0x1ff
	mov	r12, r2
.L17f4a:
	lsl	r2, r0, #1
	asr	r3, r1, #24
	strh	r3, [r2, r7]
	add	r0, #1
	mov	r3, r12
	add	r6, #1
	and	r0, r3
	cmp	r6, #7
	bgt	.L17f74
	ldrb	r3, [r4]
	lsl	r3, #24
	add	r4, #1
	mov	r1, r3
	cmp	r3, #0
	bne	.L17f4a
	b	.L17f74
.L17f6a:
	ldrh	r3, [r5]
	ldrh	r2, [r5]
	cmp	r3, #0x1d
	bne	.L17f76
	add	r5, #4
.L17f74:
	ldrh	r2, [r5]
.L17f76:
	mov	r3, r2
	cmp	r3, #0
	beq	.L17fb8
	ldr	r6, =0x1ff
	mov	r4, #1
	mov	r1, #0
.L17f82:
	lsl	r2, #16
	asr	r2, #16
	lsl	r3, r0, #1
	strh	r2, [r3, r7]
	lsl	r2, #16
	add	r0, #1
	lsr	r2, #16
	add	r5, #2
	and	r0, r6
	cmp	r2, #0x53
	beq	.L17f9c
	cmp	r2, #0x73
	bne	.L17fac
.L17f9c:
	mov	r2, r14
	str	r4, [r2]
	b	.L17fb0

	.pool_aligned

.L17fac:
	mov	r3, r14
	str	r1, [r3]
.L17fb0:
	ldrh	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L17f82
.L17fb8:
	mov	r4, r8
	cmp	r4, #2
	beq	.L17fc8
	cmp	r4, #3
	bne	.L17fe8
	ldr	r6, [sp, #0x40]
	cmp	r6, #0
	beq	.L17fe8
.L17fc8:
	mov	r1, r14
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L17fdc
	ldr	r2, .L18004	@ 0x65
	lsl	r3, r0, #1
	strh	r2, [r3, r7]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
.L17fdc:
	ldr	r2, .L18008	@ 0x73
	lsl	r3, r0, #1
	strh	r2, [r3, r7]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
.L17fe8:
	mov	r2, r10
	cmp	r2, #0
	beq	.L18024
	ldr	r1, =0x1ff
	ldr	r3, .L1800c	@ 0xa
	lsl	r2, r0, #1
	add	r0, #1
	strh	r3, [r2, r7]
	and	r0, r1
	ldr	r3, .L18010	@ 8
	lsl	r2, r0, #1
	add	r0, #1
	strh	r3, [r2, r7]
	b	.L18018

	.align	2, 0
.L18004:
	.word	0x65
.L18008:
	.word	0x73
.L1800c:
	.word	0xa
.L18010:
	.word	8
	.pool

.L18018:
	and	r0, r1
	ldr	r3, =0x20
	lsl	r2, r0, #1
	strh	r3, [r2, r7]
	add	r0, #1
	and	r0, r1
.L18024:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_17e88

.thumb_func_start Func_18038
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x84
	str	r0, [sp, #0x30]
	ldr	r0, =iwram_1e8c
	mov	r11, r1
	ldr	r1, [r0]
	mov	r2, #1
	mov	r3, #0
	ldr	r5, =0x12b2
	str	r1, [sp, #0x2c]
	str	r2, [sp, #0x28]
	str	r3, [sp, #0x24]
	add	r3, r1, r5
	ldrh	r3, [r3]
	str	r2, [sp, #0x14]
	mov	r2, #0xeb
	str	r3, [sp, #0x20]
	mov	r6, r3
	lsl	r2, #4
	mov	r5, #1
	ldr	r3, [sp, #0x30]
	mov	r10, r0
	mov	r7, #0
	mov	r0, #0
	add	r1, r2
	neg	r5, r5
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x18]
	str	r7, [sp, #0x34]
	mov	r8, r1
	str	r0, [sp, #0x10]
	cmp	r3, r5
	bne	.L18092
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x12b4
	add	r3, r0, r1
	ldrh	r3, [r3]
	str	r3, [sp, #0x20]
	b	.L1865a
.L18092:
	ldr	r5, =0x140
	mov	r0, #0x32
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_15430
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r10
	add	r2, sp, #0x38
	add	r3, #0x8c
	ldr	r3, [r3]
	mov	r10, r2
	mov	r0, r10
	ldr	r1, [sp, #0x30]
	mov	r9, r3
	bl	Func_19bac
	mov	r3, sp
	add	r3, #0x54
	str	r3, [sp, #0xc]
.L180c8:
	mov	r0, r10
	bl	_call_via_r9
	mov	r5, r7
	mov	r7, r0
	cmp	r7, #0xff
	bls	.L180d8
	mov	r7, #0x40
.L180d8:
	ldr	r0, [sp, #0x10]
	cmp	r0, #0
	beq	.L18188
	cmp	r7, #0x1f
	bls	.L180e4
	b	.L18614
.L180e4:
	cmp	r7, #0x12
	beq	.L1815e
	cmp	r7, #0x12
	bhi	.L1810e
	cmp	r7, #9
	bhi	.L18102
	cmp	r7, #8
	bcs	.L1815e
	cmp	r7, #1
	beq	.L18166
	cmp	r7, #1
	bcc	.L1813c
	cmp	r7, #2
	beq	.L1813c
	b	.L18614
.L18102:
	cmp	r7, #0x10
	bne	.L18108
	b	.L18614
.L18108:
	cmp	r7, #0x11
	beq	.L1815e
	b	.L18614
.L1810e:
	cmp	r7, #0x16
	beq	.L18142
	cmp	r7, #0x16
	bhi	.L18128
	cmp	r7, #0x14
	beq	.L18146
	cmp	r7, #0x14
	bhi	.L18150
	mov	r0, r10
	bl	_call_via_r9
	mov	r0, #3
	b	.L18156
.L18128:
	cmp	r7, #0x1d
	beq	.L1815e
	cmp	r7, #0x1d
	bhi	.L18136
	cmp	r7, #0x17
	beq	.L18154
	b	.L18614
.L18136:
	cmp	r7, #0x1e
	beq	.L1813c
	b	.L18614
.L1813c:
	mov	r1, #0
	str	r1, [sp, #0x14]
	b	.L18614
.L18142:
	mov	r0, #5
	b	.L18156
.L18146:
	mov	r0, r10
	bl	_call_via_r9
	mov	r0, #2
	b	.L18156
.L18150:
	mov	r0, #4
	b	.L18156
.L18154:
	mov	r0, #6
.L18156:
	mov	r1, r11
	bl	Func_19944
	b	.L18614
.L1815e:
	mov	r0, r10
	bl	_call_via_r9
	b	.L18614
.L18166:
	mov	r2, #0
	str	r2, [sp, #0x14]
	mov	r7, #2
	b	.L18614

	.pool_aligned

.L18188:
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x12fa
	add	r3, r0, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L181b0
	ldr	r2, [sp, #0x28]
	cmp	r2, #0
	bne	.L181b0
	cmp	r7, #0xde
	beq	.L181b0
	cmp	r7, #0xdf
	beq	.L181b0
	ldr	r3, .L181cc	@ 5
	lsl	r2, r6, #1
	mov	r0, r8
	ldr	r1, =0x1ff
	add	r6, #1
	strh	r3, [r2, r0]
	and	r6, r1
.L181b0:
	ldr	r2, [sp, #0x2c]
	ldr	r0, =0x12fb
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1820e
	ldr	r1, [sp, #0x28]
	cmp	r1, #0
	bne	.L1820e
	cmp	r7, #0xde
	beq	.L1820e
	cmp	r7, #0xdf
	beq	.L1820e
	b	.L181dc

	.align	2, 0
.L181cc:
	.word	5
	.pool

.L181dc:
	mov	r2, #0x80
	lsl	r2, #1
	cmp	r5, r2
	bhi	.L1820e
	cmp	r5, #0x7f
	bls	.L1820e
	cmp	r5, #0xde
	beq	.L1820e
	cmp	r5, #0xdf
	beq	.L1820e
	cmp	r5, #0x20
	beq	.L1820e
	cmp	r5, #0xa5
	beq	.L1820e
	cmp	r5, #0xa1
	beq	.L1820e
	cmp	r5, #0xa4
	beq	.L1820e
	ldr	r3, =0xde
	lsl	r2, r6, #1
	mov	r5, r8
	ldr	r0, =0x1ff
	add	r6, #1
	strh	r3, [r2, r5]
	and	r6, r0
.L1820e:
	cmp	r7, #0x1f
	bls	.L1828c
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x12fa
	add	r3, r1, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L18268
	cmp	r7, #0x20
	beq	.L18228
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0xa
	bls	.L18268
.L18228:
	ldr	r0, =0x1ff
	b	.L18238

	.pool_aligned

.L18238:
	lsl	r3, r6, #1
	ldr	r2, =0x2e
	add	r6, #1
	and	r6, r0
	mov	r5, r8
	strh	r2, [r3, r5]
	lsl	r3, r6, #1
	add	r6, #1
	and	r6, r0
	mov	r1, r8
	strh	r2, [r3, r1]
	lsl	r3, r6, #1
	strh	r2, [r3, r5]
	add	r6, #1
	ldr	r1, [sp, #0x1c]
	and	r6, r0
	mov	r0, #1
	str	r0, [sp, #0x10]
	cmp	r1, #0xa
	bls	.L18268
	mov	r7, #0x20
	b	.L18268

	.pool_aligned

.L18268:
	cmp	r7, #0x22
	bne	.L1827a
	ldr	r2, [sp, #0x24]
	mov	r3, #1
	eor	r2, r3
	str	r2, [sp, #0x24]
	cmp	r2, #0
	beq	.L1827a
	mov	r7, #0x8e
.L1827a:
	ldr	r0, =0x1ff
	lsl	r3, r6, #1
	mov	r5, r8
	add	r6, #1
	mov	r1, #0
	strh	r7, [r3, r5]
	and	r6, r0
	str	r1, [sp, #0x28]
	b	.L18614
.L1828c:
	cmp	r7, #0x14
	bne	.L18292
	b	.L183d8
.L18292:
	cmp	r7, #0x14
	bhi	.L182d2
	cmp	r7, #9
	bhi	.L182b4
	cmp	r7, #8
	bcs	.L18320
	cmp	r7, #1
	bne	.L182a4
	b	.L185f0
.L182a4:
	cmp	r7, #1
	bcc	.L1831a
	cmp	r7, #2
	beq	.L1831a
	cmp	r7, #3
	bne	.L182b2
	b	.L185f0
.L182b2:
	b	.L185f4
.L182b4:
	cmp	r7, #0x11
	bne	.L182ba
	b	.L184e4
.L182ba:
	cmp	r7, #0x11
	bhi	.L182c6
	cmp	r7, #0x10
	bne	.L182c4
	b	.L18486
.L182c4:
	b	.L185f4
.L182c6:
	cmp	r7, #0x12
	bne	.L182cc
	b	.L184aa
.L182cc:
	cmp	r7, #0x13
	beq	.L183a6
	b	.L185f4
.L182d2:
	cmp	r7, #0x19
	bne	.L182d8
	b	.L18588
.L182d8:
	cmp	r7, #0x19
	bhi	.L182f4
	cmp	r7, #0x16
	beq	.L18344
	cmp	r7, #0x16
	bcs	.L182e6
	b	.L1840e
.L182e6:
	cmp	r7, #0x17
	bne	.L182ec
	b	.L18448
.L182ec:
	cmp	r7, #0x18
	bne	.L182f2
	b	.L18546
.L182f2:
	b	.L185f4
.L182f4:
	cmp	r7, #0x1d
	beq	.L18320
	cmp	r7, #0x1d
	bhi	.L1830a
	cmp	r7, #0x1a
	bne	.L18302
	b	.L1851e
.L18302:
	cmp	r7, #0x1b
	bne	.L18308
	b	.L185c0
.L18308:
	b	.L185f4
.L1830a:
	cmp	r7, #0x1e
	beq	.L1831a
	mov	r2, #1
	neg	r2, r2
	cmp	r7, r2
	bne	.L18318
	b	.L18614
.L18318:
	b	.L185f4
.L1831a:
	mov	r3, #0
	str	r3, [sp, #0x14]
	b	.L18614
.L18320:
	ldr	r0, =0x1ff
	lsl	r3, r6, #1
	mov	r5, r8
	add	r6, #1
	and	r6, r0
	strh	r7, [r3, r5]
	mov	r0, r10
	bl	_call_via_r9
	ldr	r1, =0xffff
	lsl	r3, r6, #1
	add	r0, r1
	mov	r2, r8
	strh	r0, [r3, r2]
	ldr	r3, =0x1ff
	add	r6, #1
	and	r6, r3
	b	.L18614
.L18344:
	mov	r1, r11
	mov	r0, #5
	bl	Func_19944
	mov	r1, r0
	mov	r3, r1
	cmp	r1, #0
	bge	.L18356
	neg	r3, r1
.L18356:
	mov	r5, #1
	str	r5, [sp, #0x18]
	cmp	r3, #1
	bgt	.L18362
	mov	r0, #0
	str	r0, [sp, #0x18]
.L18362:
	add	r5, sp, #0x44
	mov	r0, r5
	mov	r2, #0
	bl	Func_17dd4
	sub	r4, r0, r5
	cmp	r4, #0x10
	bne	.L18374
	b	.L18614
.L18374:
	ldrb	r3, [r5, r4]
	cmp	r3, #0
	bne	.L1837c
	b	.L18614
.L1837c:
	ldr	r1, =0x1ff
	add	r0, r4, r5
	mov	r12, r1
	mov	r1, r0
.L18384:
	ldrb	r3, [r1]
	lsl	r2, r6, #1
	mov	r5, r8
	strh	r3, [r2, r5]
	add	r6, #1
	mov	r2, r12
	add	r4, #1
	add	r1, #1
	and	r6, r2
	cmp	r4, #0x10
	bne	.L1839c
	b	.L18614
.L1839c:
	add	r0, #1
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L18384
	b	.L18614
.L183a6:
	mov	r0, r10
	bl	_call_via_r9
	mov	r1, r11
	sub	r5, r0, #1
	mov	r0, #3
	bl	Func_19944
	mov	r2, r0
	ldr	r0, =0x741
	ldr	r1, [sp, #0xc]
	add	r0, r2, r0
	mov	r2, #0x18
	bl	Func_196c4
	ldr	r3, [sp, #0x18]
	str	r3, [sp, #4]
	add	r3, sp, #0x34
	str	r3, [sp, #8]
	mov	r2, r6
	mov	r0, #0
	ldr	r1, [sp, #0xc]
	mov	r3, r8
	str	r5, [sp]
	b	.L18516
.L183d8:
	mov	r0, r10
	bl	_call_via_r9
	mov	r1, r11
	sub	r5, r0, #1
	mov	r0, #2
	bl	Func_19944
	mov	r2, r0
	ldr	r0, =0x1ff
	and	r2, r0
	ldr	r0, =0x182
	ldr	r1, [sp, #0xc]
	add	r0, r2, r0
	mov	r2, #0x18
	bl	Func_196c4
	ldr	r1, [sp, #0x18]
	add	r3, sp, #0x34
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	mov	r2, r6
	mov	r0, #0
	ldr	r1, [sp, #0xc]
	mov	r3, r8
	str	r5, [sp]
	b	.L18516
.L1840e:
	mov	r1, r11
	mov	r0, #4
	bl	Func_19944
	mov	r2, r0
	ldr	r0, =0x333
	ldr	r1, [sp, #0xc]
	add	r0, r2, r0
	mov	r2, #0x18
	bl	Func_196c4
	ldr	r1, [sp, #0xc]
	ldrh	r2, [r1]
	mov	r3, r2
	mov	r0, r6
	cmp	r3, #0
	beq	.L1851a
	ldr	r4, =0x1ff
.L18432:
	lsl	r3, r0, #1
	mov	r5, r8
	strh	r2, [r3, r5]
	add	r1, #2
	ldrh	r2, [r1]
	add	r0, #1
	mov	r3, r2
	and	r0, r4
	cmp	r3, #0
	bne	.L18432
	b	.L1851a
.L18448:
	mov	r1, r11
	mov	r0, #6
	bl	Func_19944
	mov	r1, #1
	bl	_Func_8b158
	ldr	r3, =0x99b
	ldr	r1, [sp, #0xc]
	add	r0, r3
	mov	r2, #0x18
	bl	Func_196c4
	ldr	r1, [sp, #0xc]
	ldrh	r2, [r1]
	mov	r3, r2
	mov	r0, r6
	cmp	r3, #0
	beq	.L1851a
	ldr	r4, =0x1ff
.L18470:
	lsl	r3, r0, #1
	mov	r5, r8
	strh	r2, [r3, r5]
	add	r1, #2
	ldrh	r2, [r1]
	add	r0, #1
	mov	r3, r2
	and	r0, r4
	cmp	r3, #0
	bne	.L18470
	b	.L1851a
.L18486:
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	_Func_77394
	add	r1, sp, #0x54
	mov	r2, r1
	mov	r4, #0
.L1849a:
	ldrb	r3, [r0]
	add	r4, #1
	strh	r3, [r2]
	add	r0, #1
	add	r2, #2
	cmp	r4, #0xe
	bls	.L1849a
	b	.L18506
.L184aa:
	mov	r0, r10
	bl	_call_via_r9
	mov	r1, r11
	sub	r5, r0, #1
	mov	r0, #1
	bl	Func_19944
	bl	_Func_77394
	add	r1, sp, #0x54
	mov	r2, r1
	mov	r4, #0
.L184c4:
	ldrb	r3, [r0]
	add	r4, #1
	strh	r3, [r2]
	add	r0, #1
	add	r2, #2
	cmp	r4, #0xe
	bls	.L184c4
	ldr	r2, [sp, #0x18]
	add	r3, sp, #0x34
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	mov	r2, r6
	mov	r0, #0
	mov	r3, r8
	str	r5, [sp]
	b	.L18516
.L184e4:
	mov	r0, r10
	bl	_call_via_r9
	sub	r2, r0, #1
	mov	r0, r2
	bl	_Func_77394
	add	r1, sp, #0x54
	mov	r2, r1
	mov	r4, #0
.L184f8:
	ldrb	r3, [r0]
	add	r4, #1
	strh	r3, [r2]
	add	r0, #1
	add	r2, #2
	cmp	r4, #0xe
	bls	.L184f8
.L18506:
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r3, sp, #0x34
	str	r3, [sp, #8]
	mov	r2, r6
	mov	r0, #0
	mov	r3, r8
.L18516:
	bl	Func_17e88
.L1851a:
	mov	r6, r0
	b	.L18614
.L1851e:
	mov	r0, r10
	bl	_call_via_r9
	sub	r0, #1
	lsl	r0, #1
	ldr	r1, =0x1ff
	lsl	r3, r6, #1
	mov	r2, r0
	add	r6, #1
	add	r2, #0x80
	and	r6, r1
	mov	r5, r8
	strh	r2, [r3, r5]
	add	r0, #0x81
	lsl	r3, r6, #1
	mov	r2, r8
	add	r6, #1
	strh	r0, [r3, r2]
	and	r6, r1
	b	.L18614
.L18546:
	ldr	r3, .L18564	@ 0x8f
	ldr	r0, =0x1ff
	lsl	r2, r6, #1
	mov	r5, r8
	add	r6, #1
	strh	r3, [r2, r5]
	and	r6, r0
	ldr	r3, .L18568	@ 0x2d
	lsl	r2, r6, #1
	mov	r1, r8
	add	r6, #1
	strh	r3, [r2, r1]
	and	r6, r0
	b	.L18614

	.align	2, 0
.L18564:
	.word	0x8f
.L18568:
	.word	0x2d
	.pool

.L18588:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	beq	.L18614
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.L185a2
	ldr	r3, .L185b4	@ 0x65
	lsl	r2, r6, #1
	mov	r5, r8
	ldr	r0, =0x1ff
	add	r6, #1
	strh	r3, [r2, r5]
	and	r6, r0
.L185a2:
	ldr	r3, .L185b8	@ 0x73
	lsl	r2, r6, #1
	mov	r1, r8
	strh	r3, [r2, r1]
	ldr	r2, =0x1ff
	add	r6, #1
	and	r6, r2
	b	.L18614

	.align	2, 0
.L185b4:
	.word	0x65
.L185b8:
	.word	0x73
	.pool

.L185c0:
	ldr	r2, .L185e4	@ 0x27
	lsl	r3, r6, #1
	mov	r5, r8
	strh	r2, [r3, r5]
	ldr	r1, =0x1ff
	ldr	r3, [sp, #0x34]
	add	r6, #1
	and	r6, r1
	cmp	r3, #0
	bne	.L18614
	ldr	r3, .L185e8	@ 0x73
	lsl	r2, r6, #1
	mov	r0, r8
	add	r6, #1
	strh	r3, [r2, r0]
	and	r6, r1
	b	.L18614

	.align	2, 0
.L185e4:
	.word	0x27
.L185e8:
	.word	0x73
	.pool

.L185f0:
	mov	r1, #1
	str	r1, [sp, #0x28]
.L185f4:
	lsl	r3, r6, #1
	mov	r2, r8
	strh	r7, [r3, r2]
	ldr	r3, =0x1ff
	add	r6, #1
	and	r6, r3
	cmp	r7, #0x73
	beq	.L18608
	cmp	r7, #0x53
	bne	.L18610
.L18608:
	mov	r3, #1
	b	.L18612

	.pool_aligned

.L18610:
	mov	r3, #0
.L18612:
	str	r3, [sp, #0x34]
.L18614:
	ldr	r5, [sp, #0x1c]
	ldr	r0, [sp, #0x14]
	add	r5, #1
	str	r5, [sp, #0x1c]
	cmp	r0, #0
	beq	.L18628
	ldr	r1, =0x1ff
	cmp	r5, r1
	bhi	.L18628
	b	.L180c8
.L18628:
	ldr	r1, =0x1ff
	lsl	r3, r6, #1
	mov	r2, r8
	add	r6, #1
	strh	r7, [r3, r2]
	and	r6, r1
	ldr	r3, .L18668	@ 0
	lsl	r2, r6, #1
	mov	r5, r8
	strh	r3, [r2, r5]
	add	r3, r6, #1
	and	r3, r1
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x12b2
	add	r2, r0, r1
	strh	r3, [r2]
	mov	r0, #0x32
	bl	Func_2dd8
	ldr	r5, =0x12b4
	ldr	r2, [sp, #0x2c]
	add	r0, sp, #0x20
	ldrh	r0, [r0]
	add	r3, r2, r5
	strh	r0, [r3]
.L1865a:
	mov	r1, r11
	cmp	r1, #0
	beq	.L18678
	bl	Func_198dc
	b	.L18678

	.align	2, 0
.L18668:
	.word	0
	.pool

.L18678:
	ldr	r0, [sp, #0x20]
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_18038

.thumb_func_start Func_1868c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	str	r2, [sp]
	mov	r5, r3
	ldr	r3, =iwram_1e8c
	ldr	r2, [sp, #0x24]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r9, r3
	mov	r2, #0x1e
	ldr	r3, [sp]
	mov	r10, r2
	ldr	r2, [sp, #0x2c]
	ldr	r7, [r3]
	mov	r3, #2
	and	r3, r2
	mov	r11, r1
	ldr	r4, [sp, #0x28]
	ldr	r6, [r1]
	cmp	r3, #0
	bne	.L186e0
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L186d6
	mov	r1, r5
	mov	r2, r8
	mov	r3, r4
	bl	Func_18a50
	b	.L186e0
.L186d6:
	mov	r1, r5
	mov	r2, r8
	mov	r3, r4
	bl	Func_18850
.L186e0:
	ldr	r1, [r5]
	cmp	r1, #0
	bne	.L186ee
	mov	r0, r8
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L18776
.L186ee:
	ldr	r2, [sp, #0x2c]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L18724
	mov	r3, r1
	add	r3, #0x13
	lsr	r3, #3
	str	r3, [r5]
	mov	r0, r8
	ldr	r3, [r0]
	add	r3, #0xf
	lsr	r3, #3
	str	r3, [r0]
	ldr	r3, =0xea4
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L18722
	ldr	r3, [r5]
	mov	r2, #0x1d
	add	r3, #2
	str	r3, [r5]
	mov	r10, r2
	mov	r1, r3
	b	.L18724
.L18722:
	ldr	r1, [r5]
.L18724:
	add	r3, r6, r1
	cmp	r3, r10
	ble	.L18738
	mov	r0, r10
	sub	r3, r0
	sub	r3, r6, r3
	mov	r6, r3
	cmp	r3, #0
	bge	.L18738
	mov	r6, #0
.L18738:
	mov	r3, r8
	ldr	r2, [r3]
	add	r3, r7, r2
	cmp	r3, #0x14
	ble	.L1874e
	sub	r3, #0x14
	sub	r3, r7, r3
	mov	r7, r3
	cmp	r3, #0
	bge	.L1874e
	mov	r7, #0
.L1874e:
	cmp	r6, #0
	bge	.L18754
	mov	r6, #0
.L18754:
	cmp	r7, #0
	bge	.L1875a
	mov	r7, #0
.L1875a:
	mov	r0, r10
	sub	r3, r0, r1
	cmp	r6, r3
	bls	.L18764
	mov	r6, r3
.L18764:
	mov	r3, #0x14
	sub	r2, r3, r2
	cmp	r7, r2
	bls	.L1876e
	mov	r7, r2
.L1876e:
	mov	r2, r11
	str	r6, [r2]
	ldr	r3, [sp]
	str	r7, [r3]
.L18776:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1868c

.thumb_func_start Func_18790
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	mov	r1, #0
	bl	Func_18038
	mov	r1, r5
	mov	r2, r6
	mov	r3, #0
	bl	Func_18850
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_18790

.thumb_func_start Func_187ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	mov	r6, r1
	mov	r1, #0
	ldr	r5, [r3]
	mov	r7, r2
	sub	sp, #0xc
	bl	Func_18038
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r3, [r5, r3]
	cmp	r3, #0
	bne	.L187d6
	mov	r0, #0
	b	.L187ec
.L187d6:
	ldr	r3, [sp, #0x20]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_1868c
	mov	r0, #1
.L187ec:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_187ac

.thumb_func_start Func_187fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	mov	r6, r1
	mov	r1, #0
	ldr	r5, [r3]
	mov	r7, r2
	sub	sp, #0xc
	bl	Func_18038
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r3, [r5, r3]
	cmp	r3, #0
	bne	.L18826
	mov	r0, #0
	b	.L1883e
.L18826:
	ldr	r3, [sp, #0x20]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_1868c
	mov	r0, #1
.L1883e:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_187fc

.thumb_func_start Func_18850
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	mov	r6, r3
	ldr	r3, .L189f0	@ iwram_1e8c
	ldr	r4, [r3]
	ldr	r3, .L189f4	@ .L188d4
	mov	r2, #0
	mov	r10, r2
	mov	r14, r3
	mov	r2, #0x18
	mov	r3, #0x10
	mov	r1, #0xf
	mov	r5, #0
	add	r2, sp
	add	r3, sp
	mov	r11, r1
	mov	r7, #0
	mov	r1, #0
	mov	r8, r2
	mov	r12, r5
	mov	r9, r3
.L1888a:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r4, r3]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	cmp	r2, #0x1f
	bls	.L188c6
	cmp	r2, #0x20
	bne	.L188a8
	add	r1, #5
	add	r5, #1
	b	.L1888a
.L188a8:
	ldr	r3, =Data_32224
	sub	r2, #0x20
	lsl	r2, #5
	ldrh	r2, [r3, r2]
	ldr	r3, =0xeac
	add	r3, r4, r3
	ldrh	r3, [r3]
	str	r3, [sp]
	cmp	r3, #1
	beq	.L188c0
	cmp	r3, #5
	bne	.L188c2
.L188c0:
	add	r2, #1
.L188c2:
	add	r1, r2
	b	.L1888a
.L188c6:
	cmp	r2, #0x1c
	bhi	.L1888a
	lsl	r3, r2, #2
	mov	r2, r14
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L188d4:
	.word	.L189a2
	.word	.L189a2
	.word	.L1888a
	.word	.L18948
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1897e
	.word	.L18986
	.word	.L1897e
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L18978
	.word	.L1897e
	.word	.L1888a
	.word	.L1897e
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L1888a
	.word	.L18978

.L18948:
	mov	r3, r8
	mov	r2, r12
	add	r5, #1
	strh	r5, [r3, r2]
	mov	r3, r9
	strh	r1, [r3, r2]
	cmp	r7, r1
	bcs	.L1895a
	mov	r7, r1
.L1895a:
	mov	r3, r10
	cmp	r3, #2
	bhi	.L1896a
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	lsl	r2, #1
	mov	r12, r2
.L1896a:
	ldr	r2, .L189f4	@ .L188d4
	mov	r3, #0xf
	mov	r5, #0
	mov	r1, #0
	add	r11, r3
	mov	r14, r2
	b	.L1888a
.L18978:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
.L1897e:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	b	.L1888a
.L18986:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r4, r3]
	ldr	r3, =0xeac
	add	r3, r4
	strh	r2, [r3]
	ldr	r3, =0x1ff
	ldr	r2, .L189f4	@ .L188d4
	add	r0, #1
	and	r0, r3
	mov	r14, r2
	b	.L1888a
.L189a2:
	mov	r3, r8
	mov	r2, r12
	add	r5, #1
	strh	r5, [r3, r2]
	mov	r3, r9
	strh	r1, [r3, r2]
	cmp	r7, r1
	bcs	.L189b4
	mov	r7, r1
.L189b4:
	ldr	r1, =0xea4
	add	r3, r4, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L189c0
	add	r7, #2
.L189c0:
	ldr	r2, [sp, #0xc]
	str	r7, [r2]
	ldr	r1, [sp, #8]
	mov	r3, r11
	str	r3, [r1]
	mov	r3, r7
	add	r3, #0x13
	lsr	r7, r3, #3
	lsl	r3, r7, #3
	mov	r7, r3
	sub	r7, #0x10
	cmp	r6, #0
	beq	.L18a3e
	mov	r2, #0
	mov	r5, #0
.L189de:
	mov	r1, r8
	ldrh	r3, [r5, r1]
	cmp	r3, #1
	bhi	.L18a08
	ldr	r3, .L189ec	@ 0
	strh	r3, [r6]
	b	.L18a34

	.align	2, 0
.L189ec:
	.word	0
.L189f0:
	.word	iwram_1e8c
.L189f4:
	.word	.L188d4
	.pool

.L18a08:
	mov	r1, r9
	ldrh	r3, [r5, r1]
	sub	r0, r7, r3
	sub	r0, #4
	cmp	r0, #0
	bge	.L18a16
	mov	r0, #0
.L18a16:
	mov	r3, r8
	ldrh	r1, [r5, r3]
	lsl	r0, #8
	sub	r1, #1
	str	r2, [sp, #4]
	bl	Func_af0_from_thumb
	mov	r1, #0xc0
	lsl	r1, #4
	ldr	r2, [sp, #4]
	cmp	r0, r1
	bls	.L18a32
	mov	r0, #0x80
	lsl	r0, #2
.L18a32:
	strh	r0, [r6]
.L18a34:
	add	r6, #2
	add	r2, #1
	add	r5, #2
	cmp	r2, r10
	bls	.L189de
.L18a3e:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_18850

.thumb_func_start Func_18a50
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x5c
	str	r1, [sp, #8]
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	add	r1, sp, #0x1c
	ldr	r5, [r3]
	mov	r3, #0xf
	str	r3, [r1]
	str	r3, [r1, #4]
	str	r3, [r1, #8]
	str	r3, [r1, #0xc]
	str	r3, [r1, #0x10]
	str	r3, [r1, #0x14]
	str	r3, [r1, #0x18]
	str	r3, [r1, #0x1c]
	str	r3, [r1, #0x20]
	str	r3, [r1, #0x24]
	str	r3, [r1, #0x28]
	str	r3, [r1, #0x2c]
	str	r3, [r1, #0x30]
	str	r3, [r1, #0x34]
	str	r3, [r1, #0x38]
	str	r3, [r1, #0x3c]
	add	r3, sp, #0x14
	mov	r14, r2
	mov	r9, r3
	mov	r2, #0
	add	r3, sp, #0xc
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r4, #0
	mov	r6, #0
	mov	r7, #0
	mov	r12, r2
	mov	r11, r3
.L18aa4:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r5, r3]
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	cmp	r2, #0x1f
	bls	.L18ae0
	cmp	r2, #0x20
	bne	.L18ac2
	add	r4, #5
	add	r6, #1
	b	.L18aa4
.L18ac2:
	ldr	r3, =Data_32224
	sub	r2, #0x20
	lsl	r2, #5
	ldrh	r2, [r3, r2]
	ldr	r3, =0xeac
	add	r3, r5, r3
	ldrh	r3, [r3]
	str	r3, [sp]
	cmp	r3, #1
	beq	.L18ada
	cmp	r3, #5
	bne	.L18adc
.L18ada:
	add	r2, #1
.L18adc:
	add	r4, r2
	b	.L18aa4
.L18ae0:
	cmp	r2, #0x1c
	bhi	.L18aa4
	lsl	r3, r2, #2
	ldr	r2, =.L18aec
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L18aec:
	.word	.L18b92
	.word	.L18bac
	.word	.L18aa4
	.word	.L18b60
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18bde
	.word	.L18bce
	.word	.L18bde
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18bc6
	.word	.L18bde
	.word	.L18aa4
	.word	.L18bde
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18aa4
	.word	.L18bc6

.L18b60:
	mov	r3, r9
	mov	r2, r12
	add	r6, #1
	strh	r6, [r3, r2]
	mov	r3, r11
	strh	r4, [r3, r2]
	cmp	r7, #0
	bne	.L18b76
	cmp	r10, r4
	bcs	.L18b76
	mov	r10, r4
.L18b76:
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L18b84
	add	r3, #1
	str	r3, [sp, #4]
	lsl	r3, #1
	mov	r12, r3
.L18b84:
	lsl	r2, r7, #2
	ldr	r3, [r1, r2]
	add	r3, #0xf
	mov	r6, #0
	mov	r4, #0
	str	r3, [r1, r2]
	b	.L18aa4
.L18b92:
	mov	r2, r9
	mov	r3, r12
	add	r6, #1
	strh	r6, [r2, r3]
	mov	r2, r11
	strh	r4, [r2, r3]
	cmp	r7, #0
	bne	.L18ba8
	cmp	r10, r4
	bcs	.L18ba8
	mov	r10, r4
.L18ba8:
	add	r7, #1
	b	.L18be6
.L18bac:
	mov	r2, r9
	mov	r3, r12
	add	r6, #1
	strh	r6, [r2, r3]
	mov	r2, r11
	strh	r4, [r2, r3]
	cmp	r7, #0
	bne	.L18bc2
	cmp	r10, r4
	bcs	.L18bc2
	mov	r10, r4
.L18bc2:
	add	r7, #1
	b	.L18aa4
.L18bc6:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	b	.L18bde
.L18bce:
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r5, r3]
	ldr	r3, =0xeac
	add	r3, r5, r3
	strh	r2, [r3]
.L18bde:
	ldr	r3, =0x1ff
	add	r0, #1
	and	r0, r3
	b	.L18aa4
.L18be6:
	ldr	r2, =0xea4
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L18bf4
	mov	r3, #2
	add	r10, r3
.L18bf4:
	mov	r4, #0
	cmp	r4, r7
	bcs	.L18c20
	mov	r0, r1
	mov	r5, r0
.L18bfe:
	cmp	r4, #0
	bne	.L18c0a
	ldr	r3, [r5]
	mov	r2, r14
	str	r3, [r2]
	b	.L18c18
.L18c0a:
	mov	r2, r14
	ldr	r3, [r2]
	ldr	r2, [r0]
	cmp	r3, r2
	bcs	.L18c18
	mov	r3, r14
	str	r2, [r3]
.L18c18:
	add	r4, #1
	add	r0, #4
	cmp	r4, r7
	bcc	.L18bfe
.L18c20:
	ldr	r3, [sp, #8]
	mov	r2, r10
	str	r2, [r3]
	mov	r3, r10
	add	r3, #0x13
	lsr	r3, #3
	lsl	r3, #3
	sub	r3, #0x10
	mov	r2, r8
	mov	r10, r3
	cmp	r2, #0
	beq	.L18c9a
	mov	r6, #0
	mov	r5, #0
.L18c3c:
	mov	r2, r9
	ldrh	r3, [r5, r2]
	cmp	r3, #1
	bhi	.L18c6c
	ldr	r3, .L18c50	@ 0
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	b	.L18c8e

	.align	2, 0
.L18c50:
	.word	0
	.pool

.L18c6c:
	mov	r2, r11
	ldrh	r3, [r5, r2]
	mov	r2, r10
	sub	r0, r2, r3
	sub	r0, #4
	cmp	r0, #0
	bge	.L18c7c
	mov	r0, #0
.L18c7c:
	mov	r3, r9
	ldrh	r1, [r5, r3]
	lsl	r0, #8
	sub	r1, #1
	bl	Func_af0_from_thumb
	mov	r2, r8
	mov	r3, #2
	strh	r0, [r2]
.L18c8e:
	add	r8, r3
	ldr	r2, [sp, #4]
	add	r6, #1
	add	r5, #2
	cmp	r6, r2
	bls	.L18c3c
.L18c9a:
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_18a50

	.section .rodata

.L33e40:
	.incrom 0x33e40, 0x33e60
