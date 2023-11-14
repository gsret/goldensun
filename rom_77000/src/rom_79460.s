	.include "macros.inc"

.thumb_func_start Func_79460
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r1
	mov	r5, r11
	sub	sp, #0x24
	mov	r9, r0
	mov	r8, r2
	sub	r5, #8
	cmp	r0, #0x7f
	bgt	.L79482
	mov	r0, #0
	b	.L795da
.L79482:
	mov	r2, r9
	mov	r0, #0
	cmp	r2, #0x86
	ble	.L7948c
	b	.L795da
.L7948c:
	cmp	r5, #0xf2
	bls	.L79492
	b	.L795da
.L79492:
	mov	r0, r9
	bl	Func_77394
	mov	r1, #0xa6
	ldr	r3, =Func_8d4
	lsl	r1, #1
	mov	r6, r0
	bl	_call_via_r3
	cmp	r5, #0xa4
	bls	.L794aa
	mov	r5, #0
.L794aa:
	mov	r3, #0x54
	mov	r2, r5
	mul	r2, r3
	ldr	r3, =Data_80ec8
	add	r7, r2, r3
	ldrb	r3, [r7, #0xf]
	strb	r3, [r6, #0xf]
	ldrh	r3, [r7, #0x10]
	strh	r3, [r6, #0x10]
	strh	r3, [r6, #0x38]
	strh	r3, [r6, #0x34]
	ldrh	r3, [r7, #0x12]
	strh	r3, [r6, #0x12]
	strh	r3, [r6, #0x3a]
	strh	r3, [r6, #0x36]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r6, #0x14]
	strh	r3, [r6, #0x16]
	ldrh	r3, [r7, #0x14]
	strh	r3, [r6, #0x18]
	ldrh	r3, [r7, #0x16]
	strh	r3, [r6, #0x1a]
	ldrh	r3, [r7, #0x18]
	strh	r3, [r6, #0x1c]
	ldrb	r3, [r7, #0x1a]
	strb	r3, [r6, #0x1e]
	ldrb	r3, [r7, #0x1b]
	ldrb	r2, [r7, #0x1c]
	strb	r3, [r6, #0x1f]
	mov	r3, r6
	add	r3, #0x20
	strb	r2, [r3]
	ldr	r0, =0x28f
	ldrb	r3, [r7, #0x1d]
	mov	r2, r6
	add	r4, sp, #4
	add	r2, #0x21
	strb	r3, [r2]
	add	r0, r5, r0
	mov	r1, r4
	mov	r2, #0xf
	str	r4, [sp]
	bl	_Func_196c4
	ldr	r4, [sp]
	mov	r5, #0
	ldrh	r3, [r4, r5]
	cmp	r3, #0
	beq	.L79528
	mov	r0, r4
	mov	r1, r6
	mov	r2, #0
.L79514:
	ldrh	r3, [r2, r0]
	add	r5, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r5, #0xd
	bgt	.L79528
	ldrh	r3, [r2, r4]
	cmp	r3, #0
	bne	.L79514
.L79528:
	mov	r3, r8
	cmp	r3, #8
	bgt	.L79534
	add	r3, #0x31
	strb	r3, [r6, r5]
	add	r5, #1
.L79534:
	mov	r3, #0
	strb	r3, [r6, r5]
	mov	r2, #0x28
	mov	r3, #0
	strb	r3, [r6, #0xe]
	mov	r8, r3
	mov	r10, r2
	mov	r3, #0x28
	mov	r2, #0x30
	add	r3, r7
	add	r2, r7
	mov	r14, r3
	mov	r5, #3
	mov	r12, r2
	mov	r0, r6
.L79552:
	mov	r2, r14
	ldrh	r3, [r2]
	mov	r2, #2
	add	r14, r2
	cmp	r3, #0
	beq	.L79586
	mov	r2, r12
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L79586
	mov	r2, r0
	mov	r4, r10
	mov	r1, r3
	add	r2, #0xd8
.L7956e:
	mov	r3, r8
	cmp	r3, #0xe
	bgt	.L79580
	ldrh	r3, [r7, r4]
	strh	r3, [r2]
	mov	r3, #1
	add	r2, #2
	add	r0, #2
	add	r8, r3
.L79580:
	sub	r1, #1
	cmp	r1, #0
	bne	.L7956e
.L79586:
	mov	r2, #2
	mov	r3, #1
	sub	r5, #1
	add	r10, r2
	add	r12, r3
	cmp	r5, #0
	bge	.L79552
	mov	r3, #0x90
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, [r7, #0x20]
	str	r3, [r2]
	ldr	r3, =0x129
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, #0x94
	lsl	r2, #1
	add	r5, r6, r2
	mov	r3, r11
	mov	r1, r6
	strb	r3, [r5]
	add	r1, #0x24
	mov	r0, r9
	bl	Func_798e0
	mov	r0, r9
	bl	Func_77428
	mov	r3, #0x95
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	strb	r3, [r2]
	ldrb	r3, [r5]
	cmp	r3, #0xab
	bgt	.L795d8
	cmp	r3, #0x9e
	blt	.L795d8
	mov	r3, #2
	strb	r3, [r2]
.L795d8:
	mov	r0, #1
.L795da:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_79460

.thumb_func_start Func_795fc
	push	{r5, r6, lr}
	mov	r6, #0
	mov	r5, #0
.L79602:
	mov	r0, r5
	bl	Func_79338
	cmp	r0, #0
	beq	.L7960e
	add	r6, #1
.L7960e:
	add	r5, #1
	cmp	r5, #7
	ble	.L79602
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_795fc

.thumb_func_start Func_7961c
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_795fc
	mov	r5, r0
	mov	r0, r6
	bl	Func_79358
	mov	r2, #0
	cmp	r2, r5
	bge	.L7964e
	ldr	r0, =ewram_240
	mov	r3, #0xfc
	lsl	r3, #1
	add	r1, r0, r3
.L7963a:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, r6
	beq	.L7964a
	add	r2, #1
	cmp	r2, r5
	blt	.L7963a
	b	.L79650
.L7964a:
	mov	r0, r5
	b	.L7965a
.L7964e:
	ldr	r0, =ewram_240
.L79650:
	mov	r1, #0xfc
	lsl	r1, #1
	add	r3, r2, r1
	strb	r6, [r0, r3]
	add	r0, r5, #1
.L7965a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_7961c

.thumb_func_start Func_79664
	push	{r5, r6, lr}
	mov	r5, r0
	bl	Func_795fc
	mov	r6, r0
	mov	r0, r5
	bl	Func_79374
	mov	r1, #0
	cmp	r1, r6
	bge	.L79696
	ldr	r0, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	ldrb	r3, [r0, r2]
	cmp	r3, r5
	beq	.L79696
	add	r2, r0, r2
.L79688:
	add	r1, #1
	cmp	r1, r6
	bge	.L79696
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, r5
	bne	.L79688
.L79696:
	sub	r0, r6, #1
	cmp	r1, r0
	bge	.L796b4
	ldr	r3, =ewram_240
	mov	r4, #0xfc
	add	r3, r1, r3
	lsl	r4, #1
	add	r2, r3, r4
	sub	r1, r0, r1
.L796a8:
	ldrb	r3, [r2, #1]
	sub	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, #0
	bne	.L796a8
.L796b4:
	bl	Func_795fc
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_79664

.thumb_func_start Func_796c4
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L796f2
	bl	Func_795fc
	mov	r1, #0
	cmp	r0, #0
	beq	.L796ee
	ldr	r3, =ewram_240
	mov	r4, #0xfc
	lsl	r4, #1
	add	r2, r3, r4
.L796e0:
	ldrb	r3, [r2]
	add	r1, #1
	strh	r3, [r5]
	add	r2, #1
	add	r5, #2
	cmp	r1, r0
	bne	.L796e0
.L796ee:
	ldr	r3, .L796f8	@ 0xff
	strh	r3, [r5]
.L796f2:
	pop	{r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L796f8:
	.word	0xff
.func_end Func_796c4

.thumb_func_start Func_79700
	push	{lr}
	ldr	r1, =ewram_240
	ldr	r3, [r1, #0x10]
	ldr	r2, =0xf423f
	add	r3, r0
	cmp	r3, r2
	ble	.L79710
	mov	r3, r2
.L79710:
	cmp	r3, #0
	bge	.L79716
	mov	r3, #0
.L79716:
	str	r3, [r1, #0x10]
	mov	r0, r3
	pop	{r1}
	bx	r1
.func_end Func_79700

.thumb_func_start Func_79728
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r2
	ldr	r2, [r3]
	ldr	r1, =0xf423f
	add	r2, r0
	cmp	r2, r1
	ble	.L7973e
	mov	r2, r1
.L7973e:
	cmp	r2, #0
	bge	.L79744
	mov	r2, #0
.L79744:
	str	r2, [r3]
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_79728

.thumb_func_start Func_79754
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	add	r2, r0
	cmp	r2, #0x1c
	ble	.L7976a
	mov	r2, #0x1c
.L7976a:
	cmp	r2, #0
	bge	.L79770
	mov	r2, #0
.L79770:
	strb	r2, [r3]
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_79754

.thumb_func_start Func_7977c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, =.L84a8c
	mov	r3, #0xf
	add	r3, r7
	mov	r10, r3
	mov	r3, #1
	sub	sp, #4
	mov	r5, r0
	mov	r1, #0
	mov	r8, r3
.L79796:
	mov	r0, #0
	ldrb	r6, [r7]
	str	r1, [sp]
	bl	Func_77330
	mov	r2, r8
	ldr	r3, [r0]
	lsl	r2, r6
	and	r3, r2
	add	r7, #1
	ldr	r1, [sp]
	cmp	r3, #0
	beq	.L797b6
	strb	r6, [r5]
	add	r1, #1
	add	r5, #1
.L797b6:
	cmp	r7, r10
	bls	.L79796
	mov	r3, #0x20
	mov	r0, r1
	strb	r3, [r5]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7977c

.thumb_func_start Func_797d4
	push	{lr}
	cmp	r0, #0xf
	bls	.L797de
	mov	r0, #0
	b	.L797e4
.L797de:
	ldr	r3, =.L84a9c
	lsl	r0, #3
	add	r0, r3
.L797e4:
	pop	{r1}
	bx	r1
.func_end Func_797d4

.thumb_func_start Func_797ec
	lsl	r0, #2
	ldr	r3, =.L88db8
	add	r0, r1
	lsl	r0, #2
	ldr	r0, [r3, r0]
	bx	lr
.func_end Func_797ec

.thumb_func_start Func_797fc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r2
	cmp	r7, #7
	ble	.L79838
	bl	Func_773d8
	add	r0, #0x34
	ldrb	r1, [r0]
	cmp	r1, #0x2b
	bls	.L79814
	mov	r1, #0
.L79814:
	lsl	r3, r1, #1
	add	r3, r1
	ldr	r2, =.L88e38
	lsl	r3, #3
	add	r3, r2
	mov	r5, #0
	mov	r0, r6
	add	r1, r3, #4
.L79824:
	ldrb	r2, [r1]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	add	r5, #1
	add	r1, #1
	stmia	r0!, {r3}
	cmp	r5, #3
	ble	.L79824
	b	.L79870
.L79838:
	mov	r0, r6
	add	r1, #0x24
	mov	r5, #3
.L7983e:
	ldrb	r2, [r1]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	sub	r5, #1
	add	r1, #1
	stmia	r0!, {r3}
	cmp	r5, #0
	bge	.L7983e
	cmp	r7, #7
	bgt	.L79870
	mov	r5, #0
.L79856:
	mov	r0, r7
	bl	Func_78ed8
	mov	r3, r5
	add	r3, #0x90
	add	r0, #2
	ldrb	r2, [r0, r3]
	ldr	r3, [r6]
	add	r5, #1
	add	r3, r2
	stmia	r6!, {r3}
	cmp	r5, #3
	ble	.L79856
.L79870:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_797fc

.thumb_func_start Func_7987c
	push	{r5, r6, lr}
	mov	r6, r1
	sub	sp, #0x10
	bl	Func_77394
	mov	r1, r0
	mov	r0, #0
	cmp	r6, #3
	bgt	.L798aa
	mov	r2, #0x94
	lsl	r2, #1
	add	r3, r1, r2
	mov	r5, sp
	ldrb	r0, [r3]
	add	r1, #0xf8
	mov	r2, r5
	bl	Func_797fc
	lsl	r3, r6, #2
	ldr	r0, [r5, r3]
	mov	r1, #0xa
	bl	Func_af0_from_thumb
.L798aa:
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_7987c

.thumb_func_start Func_798b4
	push	{lr}
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_773d8
	add	r0, #0x34
	ldrb	r1, [r0]
	cmp	r1, #0x2b
	bls	.L798cc
	mov	r1, #0
.L798cc:
	lsl	r2, r1, #1
	ldr	r3, =.L88e38
	add	r2, r1
	lsl	r2, #3
	ldr	r0, [r3, r2]
	pop	{r1}
	bx	r1
.func_end Func_798b4

.thumb_func_start Func_798e0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x14
	mov	r9, r1
	bl	Func_77394
	mov	r2, r0
	ldr	r0, =0x129
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79932
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	Func_773d8
	add	r0, #0x34
	ldrb	r0, [r0]
	cmp	r0, #0x2b
	bls	.L79914
	mov	r0, #0
.L79914:
	lsl	r3, r0, #1
	ldr	r2, =.L88e38
	add	r3, r0
	lsl	r3, #3
	add	r3, r2
	mov	r2, r3
	mov	r7, #0
	mov	r1, r9
	add	r2, #8
.L79926:
	ldmia	r2!, {r3}
	add	r7, #1
	stmia	r1!, {r3}
	cmp	r7, #3
	ble	.L79926
	b	.L79994
.L79932:
	mov	r0, #0x94
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r0, [r3]
	add	r3, sp, #4
	mov	r1, r2
	mov	r8, r3
	add	r1, #0xf8
	mov	r2, r8
	bl	Func_797fc
	ldr	r0, =.L88df8
	mov	r4, #0
	mov	r10, r0
	mov	r7, #3
.L79950:
	mov	r1, r8
	ldr	r5, [r4, r1]
	mov	r1, #0xa
	mov	r0, r5
	str	r4, [sp]
	bl	Func_b1c_from_thumb
	mov	r1, #0xa
	mov	r6, r0
	mov	r0, r5
	bl	Func_af0_from_thumb
	ldr	r4, [sp]
	cmp	r0, #0xf
	ble	.L79970
	mov	r0, #0xf
.L79970:
	cmp	r0, #0
	bge	.L79976
	mov	r0, #0
.L79976:
	lsl	r2, r0, #2
	mov	r3, r9
	mov	r0, r10
	add	r1, r4, r3
	ldrh	r3, [r0, r2]
	add	r3, r6
	strh	r3, [r1]
	add	r2, r10
	ldrh	r3, [r2, #2]
	sub	r7, #1
	add	r3, r6
	strh	r3, [r1, #2]
	add	r4, #4
	cmp	r7, #0
	bge	.L79950
.L79994:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_798e0

.thumb_func_start Func_799b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #1
	mov	r5, r0
	neg	r2, r2
	sub	sp, #0x14
	mov	r8, r2
	mov	r0, #0
	cmp	r5, #7
	bgt	.L79aba
	add	r6, sp, #4
	mov	r0, r5
	mov	r2, r6
	bl	Func_797fc
	mov	r0, #0x20
	bl	Func_79338
	cmp	r0, #0
	beq	.L799ee
	mov	r0, #0xc8
	cmp	r5, #0
	beq	.L79aba
	mov	r0, #0xc9
	cmp	r5, #1
	beq	.L79aba
.L799ee:
	mov	r0, #0xca
	cmp	r5, #5
	beq	.L79aba
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L79aba
	mov	r12, r8
	mov	r5, r8
	mov	r0, #0
	mov	r2, r6
.L79a04:
	ldmia	r2!, {r3}
	cmp	r12, r3
	bge	.L79a0e
	mov	r12, r3
	mov	r5, r0
.L79a0e:
	add	r0, #1
	cmp	r0, #3
	ble	.L79a04
	mov	r4, #1
	neg	r4, r4
	mov	r12, r4
	mov	r0, #0
	mov	r2, r6
.L79a1e:
	cmp	r0, r5
	beq	.L79a2c
	ldr	r3, [r2]
	cmp	r12, r3
	bge	.L79a2c
	mov	r12, r3
	mov	r4, r0
.L79a2c:
	add	r0, #1
	add	r2, #4
	cmp	r0, #3
	ble	.L79a1e
	lsl	r3, r4, #2
	ldr	r3, [r6, r3]
	mov	r1, r5
	cmp	r3, #9
	ble	.L79a46
	mov	r1, r4
	b	.L79a46
.L79a42:
	mov	r8, r0
	b	.L79aac
.L79a46:
	mov	r0, r5
	bl	Func_797ec
	ldr	r3, =.L84b1c
	ldr	r7, =0x424c
	mov	r10, r3
	mov	r14, r10
	str	r6, [sp]
	ldr	r5, =0x4248
	mov	r11, r0
	mov	r9, r6
	mov	r0, #0xca
	add	r7, r14
.L79a60:
	mov	r6, r10
	ldr	r3, [r5, r6]
	cmp	r3, r11
	bne	.L79aa2
	ldrb	r3, [r7]
	ldr	r1, [sp]
	lsl	r2, r3, #2
	add	r2, r3
	ldr	r3, [r1]
	lsl	r2, #1
	mov	r4, #0
	cmp	r3, r2
	blt	.L79a9e
	mov	r2, r14
	add	r3, r5, r2
	mov	r12, r9
	add	r1, r3, #4
.L79a82:
	add	r4, #1
	cmp	r4, #3
	bgt	.L79a9e
	add	r1, #1
	ldrb	r3, [r1]
	lsl	r2, r3, #2
	add	r2, r3
	mov	r3, #4
	add	r12, r3
	mov	r6, r12
	ldr	r3, [r6]
	lsl	r2, #1
	cmp	r3, r2
	bge	.L79a82
.L79a9e:
	cmp	r4, #4
	beq	.L79a42
.L79aa2:
	sub	r0, #1
	sub	r7, #0x54
	sub	r5, #0x54
	cmp	r0, #0
	bge	.L79a60
.L79aac:
	mov	r1, #1
	neg	r1, r1
	cmp	r8, r1
	bne	.L79ab8
	mov	r2, #0
	mov	r8, r2
.L79ab8:
	mov	r0, r8
.L79aba:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_799b0

.thumb_func_start Func_79ad8
	mov	r3, #0x54
	mul	r0, r3
	ldr	r3, =.L84b1c
	add	r0, r3
	bx	lr
.func_end Func_79ad8

.thumb_func_start Func_79ae8
	push	{r5, r6, lr}
	mov	r5, r0
	bl	Func_77394
	mov	r2, #0x94
	mov	r6, r0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, r6
	add	r1, #0xf8
	ldrb	r0, [r3]
	bl	Func_799b0
	ldr	r2, =0x129
	add	r3, r6, r2
	strb	r0, [r3]
	mov	r0, r5
	bl	Func_78bf0
	mov	r1, r6
	add	r1, #0x24
	mov	r0, r5
	bl	Func_798e0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_79ae8

.thumb_func_start Func_79b24
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =.L89258
	mov	r8, r1
	mov	r1, #0
	ldrsh	r2, [r5, r1]
	mov	r6, r0
	mov	r4, #0x10
	ldrsh	r3, [r5, r4]
	mov	r0, #5
	cmp	r6, r2
	ble	.L79b42
	mov	r6, r2
	b	.L79b48
.L79b42:
	cmp	r6, r3
	bge	.L79b48
	mov	r6, r3
.L79b48:
	mov	r1, #0
	mov	r4, #0
	cmp	r1, r0
	bge	.L79b78
	mov	r7, #0
	ldrsh	r3, [r5, r7]
	cmp	r6, r3
	bgt	.L79b72
	mov	r12, r5
	mov	r2, #0
.L79b5c:
	add	r1, #1
	add	r2, #4
	cmp	r1, r0
	bge	.L79b76
	mov	r4, r2
	mov	r3, r12
	ldrsh	r3, [r4, r3]
	mov	r14, r3
	cmp	r6, r14
	ble	.L79b5c
	b	.L79b78
.L79b72:
	mov	r4, #0
	b	.L79b78
.L79b76:
	lsl	r4, r1, #2
.L79b78:
	cmp	r1, r0
	bne	.L79b82
	sub	r3, r4, #2
	ldrsh	r0, [r5, r3]
	b	.L79b9e
.L79b82:
	sub	r3, r4, #4
	ldrsh	r1, [r5, r3]
	ldrsh	r0, [r5, r4]
	sub	r3, r4, #2
	ldrsh	r2, [r5, r3]
	add	r3, r4, #2
	ldrsh	r5, [r5, r3]
	sub	r1, r0
	sub	r2, r5
	sub	r0, r6, r0
	mul	r0, r2
	bl	Func_af0_from_thumb
	add	r0, r5
.L79b9e:
	mov	r7, r8
	cmp	r7, #0
	beq	.L79bae
	cmp	r7, #1
	bne	.L79bae
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r0, r3, #1
.L79bae:
	mov	r1, #0x80
	lsl	r1, #1
	add	r0, r1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_79b24

.thumb_func_start Func_79bc4
	ldr	r1, =ewram_23a8
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
.func_end Func_79bc4

.thumb_func_start Func_79be8
	push	{lr}
	bl	Func_79bc4
	mov	r3, #0x64
	mul	r0, r3
	lsr	r0, #16
	pop	{r1}
	bx	r1
.func_end Func_79be8

.thumb_func_start Func_79bf8
	push	{r5, r6, lr}
	mov	r5, r0
	sub	r5, r1
	mov	r6, r2
	mov	r0, r3
	cmp	r5, #0
	bge	.L79c08
	mov	r5, #0
.L79c08:
	mov	r1, #1
	bl	Func_79b24
	lsl	r3, r6, #1
	add	r3, r5, r3
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c1c
	ldr	r3, =0x1ff
	add	r0, r3
.L79c1c:
	asr	r0, #9
	cmp	r0, #0
	bge	.L79c24
	mov	r0, #0
.L79c24:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_79bf8

.thumb_func_start Func_79c30
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, r1
	mov	r1, #0
	mov	r5, r2
	bl	Func_79b24
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c4e
	ldr	r3, =0xffff
	add	r0, r3
.L79c4e:
	asr	r0, #16
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_79c30

.thumb_func_start Func_79c5c
	push	{r5, r6, lr}
	lsl	r1, #1
	sub	r1, #0xc8
	mov	r6, r0
	mov	r0, r1
	mov	r1, #0
	mov	r5, r2
	bl	Func_79b24
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c7e
	ldr	r3, =0xffff
	add	r0, r3
.L79c7e:
	asr	r0, #16
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_79c5c

.thumb_func_start Func_79c8c
	push	{lr}
	bl	Func_77394
	ldr	r2, =0x129
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79ca2
	bl	Func_798b4
	b	.L79cb2
.L79ca2:
	mov	r1, #1
	bl	Func_7882c
	cmp	r0, #0
	beq	.L79cb0
	ldr	r0, [r0, #0x14]
	b	.L79cb2
.L79cb0:
	mov	r0, #4
.L79cb2:
	pop	{r1}
	bx	r1
.func_end Func_79c8c

.thumb_func_start Func_79cbc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0x80
	lsl	r2, #2
	sub	sp, #4
	mov	r7, r0
	mov	r6, #0
	mov	r5, #0xd8
	mov	r8, r2
	mov	r1, #0xe
.L79cd2:
	ldrh	r3, [r5, r7]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L79cfe
	ldrh	r0, [r5, r7]
	str	r1, [sp]
	bl	Func_78414
	ldr	r1, [sp]
	add	r0, #0x18
	mov	r2, #3
.L79cea:
	ldrb	r3, [r0]
	cmp	r3, #0x17
	bne	.L79cf6
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	add	r6, r3
.L79cf6:
	sub	r2, #1
	add	r0, #4
	cmp	r2, #0
	bge	.L79cea
.L79cfe:
	sub	r1, #1
	add	r5, #2
	cmp	r1, #0
	bge	.L79cd2
	cmp	r6, #0
	bge	.L79d0c
	mov	r6, #0
.L79d0c:
	mov	r0, r6
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_79cbc

.thumb_func_start Func_79d1c
	push	{r5, r6, lr}
	ldr	r2, =0x129
	mov	r5, r0
	add	r3, r5, r2
	ldrb	r3, [r3]
	mov	r0, #1
	cmp	r3, #0
	beq	.L79d6c
	mov	r0, r5
	mov	r1, #1
	bl	Func_7882c
	mov	r6, r0
	mov	r0, #1
	cmp	r6, #0
	beq	.L79d6c
	ldrh	r3, [r6, #0xe]
	cmp	r3, #0
	beq	.L79d6c
	mov	r0, r5
	bl	Func_79cbc
	ldrb	r2, [r6, #0xb]
	lsl	r3, r2, #2
	add	r3, r2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #16
	bl	Func_af0_from_thumb
	mov	r5, r0
	bl	Func_79bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.L79d6a
	ldrh	r0, [r6, #0xe]
	b	.L79d6c
.L79d6a:
	mov	r0, #1
.L79d6c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_79d1c

.thumb_func_start Func_79d7c
	push	{lr}
	sub	r0, #8
	cmp	r0, #0x31
	bls	.L79d86
	b	.L79e90
.L79d86:
	ldr	r2, =.L79d90
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L79d90:
	.word	.L79e8c
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e90
	.word	.L79e58
	.word	.L79e58
	.word	.L79e90
	.word	.L79e90
	.word	.L79e5c
	.word	.L79e5c
	.word	.L79e6c
	.word	.L79e6c
	.word	.L79e78
	.word	.L79e7c
	.word	.L79e60
	.word	.L79e64
	.word	.L79e68
	.word	.L79e6c
	.word	.L79e70
	.word	.L79e74
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e90
	.word	.L79e78
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e7c
	.word	.L79e80
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e84
	.word	.L79e88
.L79e58:
	mov	r0, #0x46
	b	.L79e94
.L79e5c:
	mov	r0, #0x4b
	b	.L79e94
.L79e60:
	mov	r0, #0x1e
	b	.L79e94
.L79e64:
	mov	r0, #0x28
	b	.L79e94
.L79e68:
	mov	r0, #0x2d
	b	.L79e94
.L79e6c:
	mov	r0, #0x37
	b	.L79e94
.L79e70:
	mov	r0, #0x19
	b	.L79e94
.L79e74:
	mov	r0, #0x14
	b	.L79e94
.L79e78:
	mov	r0, #0x41
	b	.L79e94
.L79e7c:
	mov	r0, #0x23
	b	.L79e94
.L79e80:
	mov	r0, #0x32
	b	.L79e94
.L79e84:
	mov	r0, #0x3c
	b	.L79e92
.L79e88:
	mov	r0, #0x5a
	b	.L79e92
.L79e8c:
	mov	r0, #0x3c
	b	.L79e94
.L79e90:
	mov	r0, #0x64
.L79e92:
	neg	r0, r0
.L79e94:
	pop	{r1}
	bx	r1
.func_end Func_79d7c

.thumb_func_start Func_79e9c
	push	{r5, lr}
	mov	r5, r1
	ldr	r1, =0x129
	mov	r2, r0
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79eca
	sub	r1, #1
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	Func_773d8
	mov	r2, #0
	add	r0, #0x48
.L79eba:
	ldrb	r3, [r0]
	cmp	r3, r5
	beq	.L79ee0
	add	r2, #1
	add	r0, #1
	cmp	r2, #2
	ble	.L79eba
	b	.L79eea
.L79eca:
	ldr	r1, =0x129
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	Func_79ad8
	mov	r2, #0
	add	r0, #0x50
.L79ed8:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, r5
	bne	.L79ee4
.L79ee0:
	mov	r0, #1
	b	.L79eec
.L79ee4:
	add	r2, #1
	cmp	r2, #2
	ble	.L79ed8
.L79eea:
	mov	r0, #0
.L79eec:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_79e9c

.thumb_func_start Func_79ef8
	push	{lr}
	cmp	r0, #5
	beq	.L79f06
	cmp	r0, #0x38
	beq	.L79f06
	cmp	r0, #0x39
	bne	.L79f0a
.L79f06:
	mov	r0, #1
	b	.L79f0c
.L79f0a:
	mov	r0, #0
.L79f0c:
	pop	{r1}
	bx	r1
.func_end Func_79ef8

.thumb_func_start Func_79f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r1
	mov	r5, r0
	mov	r0, r9
	mov	r8, r3
	mov	r11, r2
	bl	Func_77394
	mov	r6, r0
	mov	r0, #1
	mov	r10, r0
	mov	r0, r8
	bl	Func_79ef8
	cmp	r0, #0
	beq	.L79f48
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r0, #0
	cmp	r3, #0
	beq	.L79f48
	b	.L7a0a8
.L79f48:
	mov	r2, r8
	cmp	r2, #3
	bne	.L79f8a
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L79f8a
	b	.L7a0a6
.L79f5e:
	ldr	r7, =0x13b
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r1, =0x13d
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r2, =0x141
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	b	.L7a0a6
.L79f8a:
	mov	r3, r8
	cmp	r3, #4
	bne	.L79fb2
	mov	r4, #0x9c
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r7, =0x139
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	mov	r0, #0x9d
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L79f5e
.L79fb2:
	ldr	r1, =0x131
	ldr	r7, =0x139
	add	r3, r6, r1
	add	r1, r6, r7
	add	r7, #2
	add	r7, r6
	mov	r4, #0x9c
	lsl	r4, #1
	mov	r12, r7
	mov	r7, #0x9e
	lsl	r7, #1
	add	r2, r6, r4
	add	r4, #2
	add	r0, r6, r4
	add	r4, r6, r7
	mov	r7, r8
	cmp	r7, #0x40
	bne	.L7a022
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L7a022
	mov	r0, r12
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L7a022
	ldr	r1, =0x13d
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7a022
	ldr	r2, =0x141
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7a022
	mov	r4, #0xa0
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L7a0a8
.L7a022:
	mov	r7, r8
	cmp	r7, #0x1c
	bne	.L7a034
	ldr	r0, =0x141
	add	r3, r6, r0
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #1
	beq	.L7a0a8
.L7a034:
	mov	r0, r8
	bl	Func_79d7c
	mov	r7, r0
	cmp	r7, #0
	ble	.L7a078
	mov	r0, r5
	mov	r1, r11
	bl	Func_7987c
	mov	r1, r11
	mov	r5, r0
	mov	r0, r9
	bl	Func_7987c
	mov	r3, r6
	add	r3, #0x42
	ldrb	r3, [r3]
	sub	r5, r0
	lsr	r3, #1
	sub	r5, r3
	lsl	r3, r5, #1
	add	r3, r5
	mov	r0, r6
	mov	r1, r8
	add	r7, r3
	bl	Func_79e9c
	cmp	r0, #0
	beq	.L7a07a
	add	r7, #0x19
	b	.L7a07a
.L7a074:
	mov	r0, #1
	b	.L7a0a8
.L7a078:
	neg	r7, r7
.L7a07a:
	mov	r1, r8
	cmp	r1, #0x43
	bne	.L7a084
	mov	r2, #3
	mov	r10, r2
.L7a084:
	mov	r6, #0
	cmp	r6, r10
	bge	.L7a0a6
	ldr	r3, [sp, #0x20]
	mul	r7, r3
.L7a08e:
	mov	r0, r7
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	mov	r5, r0
	bl	Func_79be8
	cmp	r5, r0
	bge	.L7a074
	add	r6, #1
	cmp	r6, r10
	blt	.L7a08e
.L7a0a6:
	mov	r0, #0
.L7a0a8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_79f10

.thumb_func_start Func_7a0cc
	push	{lr}
	mov	r3, #0
	cmp	r0, #3
	bhi	.L7a0e0
	cmp	r1, #0x13
	bhi	.L7a0e0
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	add	r3, r1
.L7a0e0:
	lsl	r0, r3, #1
	add	r0, r3
	ldr	r3, =.L8926c
	lsl	r0, #2
	add	r0, r3
	pop	{r1}
	bx	r1
.func_end Func_7a0cc

.thumb_func_start Func_7a0f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	lsl	r3, r7, #2
	add	r3, r7
	mov	r10, r1
	lsl	r3, #2
	add	r3, r10
	add	r3, #0x30
	mov	r11, r3
	ldr	r3, =0x3e7
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	mov	r8, r3
	bl	Func_79338
	cmp	r0, #0
	beq	.L7a12a
	mov	r0, #1
	neg	r0, r0
	b	.L7a19a
.L7a12a:
	bl	Func_795fc
	cmp	r9, r0
	bge	.L7a172
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L7a13c:
	ldrb	r0, [r6]
	bl	Func_77394
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #9
	bhi	.L7a16a
	add	r0, r2
	mov	r1, #0
	mov	r2, #3
.L7a154:
	ldrb	r3, [r0]
	sub	r2, #1
	add	r0, #1
	add	r1, r3
	cmp	r2, #0
	bge	.L7a154
	cmp	r8, r1
	ble	.L7a16a
	ldrb	r3, [r6]
	mov	r8, r1
	mov	r9, r3
.L7a16a:
	sub	r5, #1
	add	r6, #1
	cmp	r5, #0
	bne	.L7a13c
.L7a172:
	ldr	r2, =0x3e7
	cmp	r8, r2
	bne	.L7a17e
	mov	r0, #2
	neg	r0, r0
	b	.L7a19a
.L7a17e:
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	Func_7a1b4
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	Func_7a458
	mov	r0, r11
	bl	Func_79358
	mov	r0, r9
.L7a19a:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a0f4

.thumb_func_start Func_7a1b4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r2
	bl	Func_77394
	mov	r3, #0x8c
	lsl	r3, #1
	add	r6, r5, r3
	ldrb	r4, [r0, r6]
	mov	r3, r4
	cmp	r3, #9
	bhi	.L7a1de
	lsl	r3, r5, #2
	mov	r1, r3
	add	r1, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r1]
	lsl	r2, r7
	and	r3, r2
	cmp	r3, #0
	beq	.L7a1e4
.L7a1de:
	mov	r0, #1
	neg	r0, r0
	b	.L7a1f0
.L7a1e4:
	add	r3, r4, #1
	strb	r3, [r0, r6]
	ldr	r3, [r0, r1]
	orr	r3, r2
	str	r3, [r0, r1]
	mov	r0, #0
.L7a1f0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a1b4

.thumb_func_start Func_7a1f8
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r2
	mov	r7, r0
	bl	Func_77394
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #0
	beq	.L7a2b2
	mov	r3, #0x8e
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r0, r2]
	cmp	r3, #9
	bls	.L7a222
	mov	r3, #0xa
	strb	r3, [r0, r2]
	b	.L7a2b2
.L7a222:
	lsl	r1, r5, #2
	mov	r3, r1
	add	r3, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r3]
	lsl	r2, r6
	and	r3, r2
	cmp	r3, #0
	beq	.L7a2b2
	mov	r4, #0x84
	lsl	r4, #1
	add	r3, r1, r4
	ldr	r3, [r0, r3]
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.L7a2b4
	cmp	r7, #7
	bls	.L7a24a
	mov	r0, #1
.L7a24a:
	bl	Func_77330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	mov	r1, r3
	add	r3, r2
	ldr	r3, [r3]
	mov	r4, #0
	add	r1, #8
	cmp	r4, r3
	bge	.L7a28c
	ldrb	r3, [r1]
	cmp	r5, r3
	bne	.L7a26e
	ldrb	r3, [r1, #1]
	cmp	r6, r3
	beq	.L7a28c
.L7a26e:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	add	r4, #1
	cmp	r4, r3
	bge	.L7a28c
	lsl	r2, r4, #2
	ldrb	r3, [r1, r2]
	cmp	r5, r3
	bne	.L7a26e
	add	r3, r1, r2
	ldrb	r3, [r3, #1]
	cmp	r6, r3
	bne	.L7a26e
.L7a28c:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L7a2ae
	lsl	r3, r4, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bgt	.L7a2b2
	mov	r4, #2
	neg	r4, r4
	cmp	r3, r4
	beq	.L7a2b2
.L7a2ae:
	mov	r0, #1
	b	.L7a2b4
.L7a2b2:
	mov	r0, #0
.L7a2b4:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a1f8

.thumb_func_start Func_7a2bc
	push	{r5, r6, lr}
	mov	r6, r2
	mov	r5, r1
	bl	Func_77394
	mov	r3, #0x84
	lsl	r3, #1
	lsl	r5, #2
	add	r5, r3
	ldr	r3, [r0, r5]
	mov	r2, #1
	lsl	r2, r6
	and	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_7a2bc

.thumb_func_start Func_7a2e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
	bl	Func_77394
	mov	r1, r6
	mov	r5, r0
	mov	r2, r8
	mov	r0, r7
	bl	Func_7a1f8
	mov	r10, r0
	cmp	r0, #0
	beq	.L7a340
	lsl	r2, r6, #2
	mov	r3, r2
	add	r3, #0xf8
	mov	r1, #1
	mov	r0, r8
	ldr	r3, [r5, r3]
	lsl	r1, r0
	and	r3, r1
	cmp	r3, #0
	beq	.L7a32a
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r3
	ldr	r3, [r5, r2]
	orr	r3, r1
	str	r3, [r5, r2]
	b	.L7a32e
.L7a32a:
	mov	r0, #0
	b	.L7a342
.L7a32e:
	mov	r0, #0x8e
	lsl	r0, #1
	add	r2, r6, r0
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
	mov	r0, r7
	bl	Func_79ae8
.L7a340:
	mov	r0, r10
.L7a342:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a2e4

.thumb_func_start Func_7a350
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r6, r1
	mov	r10, r2
	bl	Func_77394
	mov	r1, r6
	mov	r5, r0
	mov	r2, r10
	mov	r0, r7
	bl	Func_7a2bc
	mov	r8, r0
	cmp	r0, #0
	beq	.L7a39a
	mov	r3, #0x8e
	lsl	r3, #1
	add	r2, r6, r3
	ldrb	r3, [r5, r2]
	add	r3, #0xff
	strb	r3, [r5, r2]
	mov	r3, #0x84
	lsl	r3, #1
	lsl	r1, r6, #2
	add	r1, r3
	mov	r2, #1
	mov	r3, r10
	lsl	r2, r3
	ldr	r3, [r5, r1]
	bic	r3, r2
	str	r3, [r5, r1]
	mov	r0, r7
	bl	Func_79ae8
.L7a39a:
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a350

.thumb_func_start Func_7a3a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0
	mov	r10, r2
	mov	r9, r1
	mov	r3, #0
	cmp	r0, #7
	bls	.L7a3c2
	mov	r3, #1
.L7a3c2:
	mov	r0, r3
	bl	Func_77330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	mov	r2, #8
	add	r2, r3
	add	r7, r3, r1
	mov	r12, r2
	ldr	r2, [r7]
	mov	r4, #0
	add	r0, #9
	mov	r5, #0
	mov	r1, r12
	cmp	r9, r2
	bge	.L7a448
	ldrb	r3, [r1]
	mov	r14, r3
	mov	r6, r9
	cmp	r8, r14
	bne	.L7a3fe
	ldrb	r3, [r0]
	cmp	r10, r3
	bne	.L7a3fe
	sub	r3, r2, #1
	mov	r1, #1
	str	r3, [r7]
	mov	r9, r1
	b	.L7a422
.L7a3fe:
	ldr	r2, [r7]
	add	r4, #1
	add	r0, #4
	add	r1, #4
	add	r5, #4
	cmp	r4, r2
	bge	.L7a448
	ldrb	r3, [r1]
	mov	r6, r5
	cmp	r8, r3
	bne	.L7a3fe
	ldrb	r3, [r0]
	cmp	r10, r3
	bne	.L7a3fe
	sub	r3, r2, #1
	str	r3, [r7]
	mov	r2, #1
	mov	r9, r2
.L7a422:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r12
	ldr	r3, [r3]
	cmp	r4, r3
	bge	.L7a448
	mov	r2, #0x80
	lsl	r2, #1
	add	r2, r12
	b	.L7a438
.L7a436:
	lsl	r6, r4, #2
.L7a438:
	mov	r1, r12
	add	r3, r6, #4
	ldr	r3, [r1, r3]
	str	r3, [r1, r6]
	ldr	r3, [r2]
	add	r4, #1
	cmp	r4, r3
	blt	.L7a436
.L7a448:
	mov	r0, r9
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a3a8

.thumb_func_start Func_7a458
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r7, r2
	bl	Func_7a3a8
	mov	r0, #0
	cmp	r5, #7
	bls	.L7a46c
	mov	r0, #1
.L7a46c:
	bl	Func_77330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	add	r0, r3, r1
	ldr	r1, [r0]
	mov	r2, r3
	add	r2, #8
	lsl	r3, r1, #2
	strb	r6, [r2, r3]
	add	r1, #1
	add	r2, r3
	mov	r3, #0xff
	strb	r7, [r2, #1]
	strb	r5, [r2, #2]
	strb	r3, [r2, #3]
	str	r1, [r0]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a458

.thumb_func_start Func_7a498
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	mov	r5, r1
	mov	r11, r3
	sub	sp, #4
	mov	r10, r0
	bl	Func_77394
	mov	r2, #1
	lsl	r3, r5, #2
	mov	r9, r2
	add	r3, #0xf8
	mov	r8, r3
	mov	r3, r9
	lsl	r3, r6
	mov	r2, r8
	mov	r7, r0
	mov	r9, r3
	ldr	r3, [r7, r2]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L7a538
	mov	r1, r5
	mov	r2, r6
	mov	r0, r10
	bl	Func_7a2bc
	mov	r1, r5
	str	r0, [sp]
	mov	r2, r6
	mov	r0, r11
	bl	Func_7a1b4
	cmp	r0, #0
	bne	.L7a538
	mov	r2, r6
	mov	r0, r10
	mov	r1, r5
	bl	Func_7a350
	mov	r2, r8
	ldr	r3, [r7, r2]
	mov	r2, r9
	bic	r3, r2
	mov	r2, r8
	str	r3, [r7, r2]
	mov	r3, #0x8c
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r7, r2]
	add	r3, #0xff
	strb	r3, [r7, r2]
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.L7a520
	mov	r0, r11
	mov	r1, r5
	mov	r2, r6
	bl	Func_7a2e4
	b	.L7a534
.L7a520:
	mov	r1, r5
	mov	r2, r6
	mov	r0, r10
	bl	Func_7a3a8
	mov	r0, r11
	mov	r1, r5
	mov	r2, r6
	bl	Func_7a458
.L7a534:
	mov	r0, #0
	b	.L7a53c
.L7a538:
	mov	r0, #1
	neg	r0, r0
.L7a53c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a498

.thumb_func_start Func_7a550
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0
	bl	Func_77330
	mov	r2, r0
	mov	r1, r2
	mov	r6, #0
	add	r1, #8
	cmp	r5, #0
	beq	.L7a574
	add	r3, r5, #3
	strb	r6, [r3]
	add	r3, r5, #2
	strb	r6, [r3]
	add	r3, r5, #1
	strb	r6, [r3]
	strb	r6, [r5]
.L7a574:
	mov	r3, #0x84
	lsl	r3, #1
	add	r0, r2, r3
	ldr	r3, [r0]
	mov	r4, #0
	cmp	r3, #0
	beq	.L7a5a6
	mov	r7, #1
	neg	r7, r7
.L7a586:
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, r7
	bne	.L7a59c
	cmp	r5, #0
	beq	.L7a59a
	ldrb	r2, [r1]
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
.L7a59a:
	add	r6, #1
.L7a59c:
	ldr	r3, [r0]
	add	r4, #1
	add	r1, #4
	cmp	r4, r3
	bne	.L7a586
.L7a5a6:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a550

.thumb_func_start Func_7a5b0
	push	{lr}
	bl	Func_7a0cc
	ldrh	r0, [r0]
	pop	{r1}
	bx	r1
.func_end Func_7a5b0

.thumb_func_start Func_7a5bc
	push	{r5, r6, r7, lr}
	sub	sp, #0x24
	add	r6, sp, #4
	mov	r7, r0
	mov	r0, r6
	mov	r5, #0
	bl	Func_796c4
	cmp	r5, r0
	bge	.L7a61c
	mov	r1, r6
	mov	r6, r0
.L7a5d4:
	ldrh	r0, [r1]
	add	r1, #2
	str	r1, [sp]
	bl	Func_77394
	mov	r2, r0
	mov	r0, #1
	neg	r0, r0
	ldr	r1, [sp]
	cmp	r7, r0
	bne	.L7a60c
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	b	.L7a614
.L7a60c:
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r7, r0
	ldrb	r3, [r2, r3]
.L7a614:
	add	r5, r3
	sub	r6, #1
	cmp	r6, #0
	bne	.L7a5d4
.L7a61c:
	mov	r0, r5
	add	sp, #0x24
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7a5bc

.thumb_func_start Func_7a628
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r8, r1
	bl	Func_77394
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_78588
	mov	r6, #0
	add	r5, #0xd8
.L7a644:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.L7a654
	mov	r0, r7
	mov	r1, r6
	bl	Func_78708
.L7a654:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L7a644
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_7a628

.thumb_func_start Func_7a664
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =ewram_1078
	ldr	r2, =0x6774
	ldrh	r3, [r0]
	sub	sp, #4
	mov	r8, r0
	cmp	r3, r2
	bne	.L7a682
	b	.L7a780
.L7a682:
	mov	r1, r8
	ldr	r3, =ewram_240
	mov	r0, #0x88
	strh	r2, [r1]
	lsl	r0, #2
	mov	r2, #2
	add	r8, r2
	add	r2, r3, r0
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r9, r1
	ldr	r1, =0x222
	add	r3, r1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r1, #0
	mov	r11, r2
	mov	r10, r1
.L7a6a6:
	mov	r0, r10
	bl	Func_77394
	mov	r7, r0
	mov	r2, r7
	add	r2, #0xd8
	mov	r5, #0xe
.L7a6b4:
	ldrh	r3, [r2]
	mov	r0, r8
	mov	r1, #2
	sub	r5, #1
	add	r2, #2
	strh	r3, [r0]
	add	r8, r1
	cmp	r5, #0
	bge	.L7a6b4
	ldr	r2, .L7a6f4	@ 0
	mov	r6, #0xd8
	mov	r5, #0xe
.L7a6cc:
	ldrh	r0, [r6, r7]
	str	r2, [sp]
	bl	Func_78414
	ldrb	r3, [r0, #2]
	ldr	r2, [sp]
	cmp	r3, #6
	beq	.L7a6de
	strh	r2, [r6, r7]
.L7a6de:
	sub	r5, #1
	add	r6, #2
	cmp	r5, #0
	bge	.L7a6cc
	mov	r0, r7
	add	r0, #0xd8
	mov	r5, #0
	mov	r4, r0
	mov	r1, r0
	mov	r6, #0xe
	b	.L7a708

	.align	2, 0
.L7a6f4:
	.word	0
	.pool

.L7a708:
	ldrh	r2, [r4]
	lsl	r3, r2, #16
	add	r4, #2
	cmp	r3, #0
	beq	.L7a718
	strh	r2, [r1]
	add	r5, #1
	add	r1, #2
.L7a718:
	sub	r6, #1
	cmp	r6, #0
	bge	.L7a708
	cmp	r5, #0xe
	bgt	.L7a73c
	lsl	r3, r5, #1
	add	r0, r3, r0
	ldr	r2, =0
	mov	r3, #0xf
	sub	r5, r3, r5
.L7a72c:
	sub	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0
	bne	.L7a72c
	b	.L7a73c

	.pool_aligned

.L7a73c:
	mov	r0, r10
	bl	Func_79ae8
	mov	r0, r10
	bl	Func_77428
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #3
	ble	.L7a6a6
	mov	r2, #2
	mov	r1, r8
	mov	r0, r9
	add	r8, r2
	strh	r0, [r1]
	mov	r3, r11
	mov	r0, r8
	strh	r3, [r0]
	ldr	r0, =ewram_438
	add	r8, r2
	ldrh	r3, [r0]
	mov	r1, r8
	strh	r3, [r1]
	ldrh	r3, [r0, #2]
	mov	r2, r8
	mov	r0, #0
	strh	r3, [r2, #2]
	mov	r1, #0x10
	bl	Func_7a628
	ldr	r0, =0x952
	bl	Func_79358
.L7a780:
	mov	r0, #1
	bl	Func_7808c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_7a664

.thumb_func_start Func_7a7a0
	push	{r5, r6, lr}
	ldr	r5, =ewram_1078
	ldrh	r3, [r5]
	ldr	r1, =0x6774
	mov	r12, r3
	add	r5, #2
	cmp	r12, r1
	bne	.L7a812
	mov	r6, #0
.L7a7b2:
	mov	r0, r6
	bl	Func_77394
	mov	r2, #0xe
	add	r0, #0xd8
.L7a7bc:
	ldrh	r3, [r5]
	sub	r2, #1
	strh	r3, [r0]
	add	r5, #2
	add	r0, #2
	cmp	r2, #0
	bge	.L7a7bc
	mov	r0, r6
	bl	Func_79ae8
	mov	r0, r6
	add	r6, #1
	bl	Func_77428
	cmp	r6, #3
	ble	.L7a7b2
	ldr	r0, =ewram_240
	mov	r4, #0x88
	ldrh	r2, [r5]
	lsl	r4, #2
	add	r3, r0, r4
	strh	r2, [r3]
	add	r5, #2
	ldrh	r2, [r5]
	add	r4, #2
	add	r3, r0, r4
	strh	r2, [r3]
	mov	r3, #0xfc
	add	r5, #2
	lsl	r3, #1
	add	r2, r0, r3
	ldrh	r3, [r5]
	strh	r3, [r2]
	sub	r4, #0x28
	ldrh	r3, [r5, #2]
	ldr	r5, =ewram_1078
	add	r2, r0, r4
	mov	r1, #0
	strh	r3, [r2]
	ldr	r0, =0x952
	strh	r1, [r5]
	bl	Func_79374
.L7a812:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_7a7a0

	.section .rodata

.L84a8c:
	.incrom 0x84a8c, 0x84a9c
.L84a9c:
	.incrom 0x84a9c, 0x84b1c
.L84b1c:
	.incrom 0x84b1c, 0x88db8
.L88db8:
	.incrom 0x88db8, 0x88df8
.L88df8:
	.incrom 0x88df8, 0x88e38
.L88e38:
	.incrom 0x88e38, 0x89258
.L89258:
	.incrom 0x89258, 0x8926c
.L8926c:
	.incrom 0x8926c, 0x89624
