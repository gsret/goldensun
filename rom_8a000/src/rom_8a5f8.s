	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8a5f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_240
	mov	r8, r0
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x14]
	bl	_call_via_r0
	ldr	r1, =0x3e7
	mov	r2, #0
	mov	r6, r0
	mov	r9, r2
	cmp	r8, r1
	beq	.L8a6bc
	ldmia	r6!, {r5}
	ldr	r3, =0xfffff000
	and	r3, r5
	cmp	r3, #0
	bne	.L8a68e
	ldr	r3, =0xfff
	and	r5, r3
	ldr	r3, =0x1ff
	cmp	r5, r3
	beq	.L8a6a2
.L8a638:
	cmp	r5, r7
	bne	.L8a68e
	mov	r10, r6
	b	.L8a65a
.L8a640:
	cmp	r2, #0xff
	beq	.L8a648
	cmp	r2, r8
	bne	.L8a65a
.L8a648:
	cmp	r0, #0
	beq	.L8a654
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8a65a
.L8a654:
	mov	r1, r5
	mov	r9, r7
	b	.L8a6a2
.L8a65a:
	ldmia	r6!, {r3}
	mov	r2, #0xff
	lsl	r2, #12
	and	r2, r3
	lsr	r7, r2, #12
	mov	r0, #0x80
	mov	r2, #0xff
	ldr	r5, =0xfff
	lsl	r2, #20
	lsl	r0, #21
	and	r2, r3
	and	r0, r3
	and	r5, r3
	lsr	r2, #20
	cmp	r0, #0
	beq	.L8a67c
	ldmia	r6!, {r0}
.L8a67c:
	ldr	r3, =0x1ff
	cmp	r5, r3
	beq	.L8a686
	cmp	r2, #0
	bne	.L8a640
.L8a686:
	mov	r0, r10
	ldr	r1, [r0]
	and	r1, r3
	b	.L8a6a2
.L8a68e:
	ldmia	r6!, {r5}
	ldr	r3, =0xfffff000
	and	r3, r5
	cmp	r3, #0
	bne	.L8a68e
	ldr	r3, =0xfff
	ldr	r2, =0x1ff
	and	r5, r3
	cmp	r5, r2
	bne	.L8a638
.L8a6a2:
	ldr	r3, =0x3e7
	cmp	r1, r3
	beq	.L8a6bc
	ldr	r2, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r9
	strh	r2, [r3]
.L8a6bc:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8a5f8

.thumb_func_start Func_8a6e4
	push	{r5, r6, lr}
	ldr	r1, =ewram_240
	ldr	r2, =0x236
	mov	r4, #1
	add	r3, r1, r2
	neg	r4, r4
	strh	r0, [r3]
	cmp	r0, r4
	beq	.L8a6f8
	b	.L8a846
.L8a6f8:
	mov	r4, #0xfa
	lsl	r4, #1
	add	r3, r1, r4
	ldr	r0, [r3]
	bl	_Func_77394
	mov	r6, r0
	mov	r5, #0x38
	ldrsh	r3, [r6, r5]
	cmp	r3, #0
	bne	.L8a774
	mov	r5, #1
	strh	r5, [r6, #0x38]
	lsl	r5, #14
	mov	r0, #0x34
	ldrsh	r1, [r6, r0]
	mov	r0, r5
	bl	Func_af0_from_thumb
	mov	r1, #0x80
	lsl	r1, #7
	cmp	r0, r1
	bgt	.L8a72e
	mov	r5, #0
	cmp	r0, #0
	blt	.L8a72e
	mov	r5, r0
.L8a72e:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L8a742
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L8a742
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L8a742:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r4, #0x36
	ldrsh	r1, [r6, r4]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8a760
	mov	r3, #0
	cmp	r0, #0
	blt	.L8a760
	mov	r3, r0
.L8a760:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8a774
	mov	r5, #0x3a
	ldrsh	r3, [r6, r5]
	cmp	r3, #0
	beq	.L8a774
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L8a774:
	mov	r0, #0x20
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8a7f6
	mov	r5, #0
.L8a780:
	mov	r0, r5
	bl	_Func_77394
	mov	r6, r0
	ldrh	r1, [r6, #0x34]
	ldrh	r3, [r6, #0x36]
	strh	r1, [r6, #0x38]
	strh	r3, [r6, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8a7aa
	mov	r3, #0
	cmp	r0, #0
	blt	.L8a7aa
	mov	r3, r0
.L8a7aa:
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8a7be
	mov	r0, #0x38
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	beq	.L8a7be
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L8a7be:
	mov	r1, #0x3a
	ldrsh	r0, [r6, r1]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8a7dc
	mov	r3, #0
	cmp	r0, #0
	blt	.L8a7dc
	mov	r3, r0
.L8a7dc:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8a7f0
	mov	r4, #0x3a
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.L8a7f0
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L8a7f0:
	add	r5, #1
	cmp	r5, #1
	ble	.L8a780
.L8a7f6:
	ldr	r1, =ewram_240
	mov	r5, #0xe9
	lsl	r5, #1
	mov	r4, #0xea
	add	r3, r1, r5
	lsl	r4, #1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	add	r3, r1, r4
	mov	r5, #0
	ldrsh	r0, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r2, r3
	bne	.L8a836
	cmp	r0, r2
	bne	.L8a83e
	sub	r4, #0x10
	add	r3, r1, r4
	mov	r5, #0xe0
	ldrh	r2, [r3]
	lsl	r5, #1
	add	r3, r1, r5
	mov	r0, #0xe3
	strh	r2, [r3]
	lsl	r0, #1
	add	r3, r1, r0
	ldrh	r3, [r3]
	sub	r4, #2
	add	r2, r1, r4
	strh	r3, [r2]
	b	.L8a8c2
.L8a836:
	mov	r5, #0xe0
	lsl	r5, #1
	add	r3, r1, r5
	b	.L8a874
.L8a83e:
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r1, r2
	b	.L8a86c
.L8a846:
	mov	r0, #0xe7
	lsl	r0, #1
	add	r3, r1, r0
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	add	r0, #2
	add	r3, r1, r0
	mov	r5, #0
	ldrsh	r0, [r3, r5]
	cmp	r2, r4
	bne	.L8a862
	cmp	r0, r2
	beq	.L8a89e
	b	.L8a866
.L8a862:
	mov	r4, #0xe0
	b	.L8a870
.L8a866:
	mov	r5, #0xe4
	lsl	r5, #1
	add	r3, r1, r5
.L8a86c:
	mov	r4, #0xe0
	ldrh	r2, [r3]
.L8a870:
	lsl	r4, #1
	add	r3, r1, r4
.L8a874:
	strh	r2, [r3]
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	beq	.L8a88a
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	strh	r0, [r3]
	b	.L8a8c2
.L8a88a:
	ldr	r2, =ewram_240
	mov	r4, #0xe5
	lsl	r4, #1
	add	r3, r2, r4
	mov	r5, #0xe1
	ldrh	r3, [r3]
	lsl	r5, #1
	add	r2, r5
	strh	r3, [r2]
	b	.L8a8c2
.L8a89e:
	mov	r0, #0xe4
	lsl	r0, #1
	add	r3, r1, r0
	mov	r4, #0xe0
	ldrh	r2, [r3]
	lsl	r4, #1
	add	r3, r1, r4
	mov	r5, #0xe5
	strh	r2, [r3]
	lsl	r5, #1
	add	r3, r1, r5
	sub	r0, #6
	ldrh	r3, [r3]
	add	r2, r1, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	_Func_79358
.L8a8c2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8a6e4

.thumb_func_start Func_8a8d0
	ldr	r3, =.L9f1a8
	lsl	r0, #3
	add	r0, r3
	ldrb	r0, [r0, #2]
	lsl	r0, #24
	asr	r0, #24
	bx	lr
.func_end Func_8a8d0

.thumb_func_start Func_8a8e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f54
	ldr	r1, =.L9f1a8
	ldrb	r3, [r3]
	mov	r11, r1
	cmp	r3, #0
	beq	.L8a932
	cmp	r0, #1
	bne	.L8a918
	ldr	r1, =ewram_240
	mov	r4, #0xe0
	ldr	r2, =5
	lsl	r4, #1
	add	r3, r1, r4
	strh	r2, [r3]
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	strh	r0, [r3]
	b	.L8a94c
.L8a918:
	cmp	r0, #2
	bne	.L8a932
	ldr	r1, =ewram_240
	mov	r4, #0xe0
	ldr	r3, =1
	lsl	r4, #1
	mov	r0, #0xe1
	add	r2, r1, r4
	lsl	r0, #1
	strh	r3, [r2]
	add	r2, r1, r0
	mov	r3, #1
	b	.L8a94a
.L8a932:
	bl	_Func_77d38
	ldr	r1, =ewram_240
	mov	r4, #0xe0
	ldr	r3, =0
	lsl	r4, #1
	mov	r0, #0xe1
	add	r2, r1, r4
	lsl	r0, #1
	strh	r3, [r2]
	add	r2, r1, r0
	mov	r3, #2
.L8a94a:
	strh	r3, [r2]
.L8a94c:
	ldr	r3, =ewram_240
	ldr	r1, =0x205
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	_Func_1ccc0
	bl	Func_403c
	bl	Func_40e8
	bl	Func_40e8
	ldr	r3, =0x50001c0
	mov	r9, r3
.L8a96e:
	ldr	r0, =0x101
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8a9a8
	ldr	r0, =0x101
	bl	_Func_79374
	b	.L8a9b0

	.pool_aligned

.L8a9a8:
	mov	r0, #0x90
	lsl	r0, #1
	bl	_Func_f9080
.L8a9b0:
	ldr	r7, =ewram_240
	mov	r4, #0xe0
	lsl	r4, #1
	add	r4, r7
	mov	r0, #0
	ldrsh	r3, [r4, r0]
	mov	r1, #0xe1
	lsl	r3, #3
	add	r3, r11
	lsl	r1, #1
	mov	r10, r3
	add	r3, r7, r1
	ldr	r1, =REG_DMA0SAD
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldrh	r3, [r1, #0xa]
	ldr	r2, .L8aa08	@ 0xc5ff
	and	r3, r2
	strh	r3, [r1, #0xa]
	ldr	r2, .L8aa0c	@ 0x7fff
	ldrh	r3, [r1, #0xa]
	and	r3, r2
	strh	r3, [r1, #0xa]
	mov	r8, r4
	ldrh	r3, [r1, #0xa]
	bl	Func_40e8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	bl	Func_4858
	bl	Func_4760
	bl	Func_403c
	b	.L8aa18

	.align	2, 0
.L8aa08:
	.word	0xc5ff
.L8aa0c:
	.word	0x7fff
	.pool

.L8aa18:
	mov	r0, r8
	mov	r1, #0xfd
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	lsl	r1, #1
	cmp	r3, r1
	ble	.L8aaa8
	mov	r2, #0xfe
	lsl	r2, #1
	cmp	r3, r2
	beq	.L8aa6e
	cmp	r3, r2
	bgt	.L8aa3a
	sub	r2, #1
	cmp	r3, r2
	beq	.L8aa9e
	b	.L8aaa0
.L8aa3a:
	ldr	r4, =0x1fd
	cmp	r3, r4
	beq	.L8aa52
	mov	r0, #0xff
	lsl	r0, #1
	cmp	r3, r0
	bne	.L8aaa0
	mov	r0, r6
	bl	_Func_b63c8
	mov	r6, r0
	b	.L8aaa0
.L8aa52:
	mov	r0, #0x40
	bl	Func_4938
	mov	r5, r0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r9
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	bl	_Func_f4008
	b	.L8aa88
.L8aa6e:
	mov	r0, #0x40
	bl	Func_4938
	mov	r5, r0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r9
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	bl	_Func_f6008
.L8aa88:
	ldr	r3, =REG_DMA3SAD
	mov	r6, r0
	mov	r1, r9
	mov	r0, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	bl	Func_2df0
	b	.L8aaa0
.L8aa9e:
	mov	r6, #0
.L8aaa0:
	mov	r0, r6
	bl	Func_8a6e4
	b	.L8a96e
.L8aaa8:
	ldr	r5, =0x109
	mov	r0, r5
	bl	_Func_79338
	mov	r3, r8
	mov	r1, r0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	Func_8ab74
	bl	Func_8b090
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8aaf0
	mov	r0, #0x8d
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8aae6
	ldr	r0, =0x11b
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8aae6
	bl	Func_8acc4
	b	.L8ab0a
.L8aae6:
	mov	r0, #0x8d
	lsl	r0, #1
	bl	_Func_79374
	b	.L8ab0a
.L8aaf0:
	ldr	r4, =0x21e
	add	r3, r7, r4
	mov	r2, #1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ab06
	bl	_Func_f9080
	b	.L8ab0a
.L8ab06:
	bl	Func_8acc4
.L8ab0a:
	mov	r4, r10
	ldr	r3, =ewram_240
	mov	r0, #0xed
	ldrh	r2, [r4, #4]
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
	mov	r0, #0
	bl	Func_8ab48
	mov	r0, r6
	bl	Func_8c4f8
	bl	Func_8a5f8
	b	.L8a96e
.func_end Func_8a8e4

	.pool_aligned

.thumb_func_start Func_8ab48
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	ldrsh	r0, [r3, r2]
	ldr	r1, =__start_overlay
	bl	Func_2fb0
	pop	{r0}
	bx	r0
.func_end Func_8ab48

.thumb_func_start Func_8ab74
	push	{r5, r6, lr}
	ldr	r5, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	add	r3, r2
	mov	r6, #2
	ldrsb	r6, [r3, r6]
	cmp	r1, #0
	bne	.L8ac54
	mov	r5, #0x80
	lsl	r5, #2
.L8ab94:
	mov	r0, r5
	bl	_Func_79374
	ldr	r3, =0x2ff
	add	r5, #1
	cmp	r5, r3
	ble	.L8ab94
	ldr	r3, =ewram_240
	mov	r1, #0xe6
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r6, r3
	beq	.L8ac16
	mov	r5, #0xc0
	lsl	r5, #2
.L8abb6:
	mov	r0, r5
	bl	_Func_79374
	ldr	r3, =0x3ff
	add	r5, #1
	cmp	r5, r3
	ble	.L8abb6
	ldr	r0, =0x12f
	bl	_Func_79358
	ldr	r5, =ewram_240
	mov	r1, #0x8e
	lsl	r1, #2
	mov	r2, #0
	add	r3, r5, r1
	sub	r1, #6
	str	r2, [r3]
	mov	r0, #0x88
	add	r3, r5, r1
	strh	r2, [r3]
	lsl	r0, #1
	bl	_Func_79374
	ldr	r0, =0x111
	bl	_Func_79374
	mov	r0, #0x89
	lsl	r0, #1
	bl	_Func_79374
	ldr	r0, =0x113
	bl	_Func_79374
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0x90
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	strh	r2, [r3]
.L8ac16:
	mov	r5, #0x80
.L8ac18:
	mov	r0, r5
	add	r5, #1
	bl	_Func_79374
	cmp	r5, #0xdf
	ble	.L8ac18
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79374
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_Func_79374
	ldr	r0, =0x161
	bl	_Func_79374
	ldr	r0, =0x123
	bl	_Func_79374
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_Func_79374
	ldr	r1, =ewram_240
	ldr	r3, =0x21e
	add	r2, r1, r3
	ldr	r3, =0xffff
	strh	r3, [r2]
	mov	r5, r1
.L8ac54:
	mov	r1, #0xe6
	lsl	r1, #1
	add	r3, r5, r1
	strh	r6, [r3]
	mov	r2, #0xc0
	mov	r3, #0x7f
	lsl	r2, #1
	and	r6, r3
	add	r0, r6, r2
	bl	_Func_79358
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	add	r3, r2
	mov	r2, #3
	ldrsb	r2, [r3, r2]
	add	r1, #0x7e
	add	r3, r5, r1
	strh	r2, [r3]
	cmp	r2, #2
	bne	.L8ac8e
	ldr	r0, =0x123
	bl	_Func_79358
.L8ac8e:
	bl	_Func_77c10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8ab74

.thumb_func_start Func_8acc4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xf8
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_f9080
	pop	{r0}
	bx	r0
.func_end Func_8acc4

	.section .rodata

.L9f1a8:
	.incrom 0x9f1a8, 0x9f810
