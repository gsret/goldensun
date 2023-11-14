	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_11568
	ldr	r2, =0x682
	ldr	r3, =REG_BG1CNT
	strh	r2, [r3]
	add	r3, #0xca
	ldr	r0, =ewram_10000
	ldr	r1, =0x6006a00
	ldr	r2, =0x84002580
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_11568

.thumb_func_start Func_11590
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e6c
	ldmia	r3!, {r5}
	ldr	r7, [r3]
	mov	r3, r7
	add	r3, #0xfc
	mov	r6, #1
	strb	r6, [r3]
	ldr	r0, =Func_1179c
	bl	Func_42c8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x6004000
	ldr	r1, =ewram_1c000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	and	r2, r6
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #10
	add	r5, r3
	mov	r3, #0xc8
	lsl	r3, #4
	add	r5, r3
	ldr	r1, =ewram_10000
	mov	r0, r5
	bl	Func_12388
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xc8
	strh	r3, [r2]
	add	r3, #0x3a
	add	r2, r7, r3
	mov	r3, #0xff
	strh	r3, [r2]
	ldr	r2, =iwram_1cfc
	ldr	r3, =Func_11568
	str	r3, [r2]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_11590

.thumb_func_start Func_1161c
	ldr	r2, =0x501
	ldr	r3, =REG_BG1CNT
	strh	r2, [r3]
	add	r3, #0xca
	ldr	r0, =ewram_38000
	ldr	r1, =0x6008000
	ldr	r2, =0x84002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_1161c

.thumb_func_start Func_11644
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	ldr	r2, =ewram_10000
	ldr	r7, [r3]
	mov	r10, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r7, r2
	mov	r6, #0xa0
	ldr	r5, [r3]
	lsl	r6, #19
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	ldr	r0, [r5]
	mov	r8, r3
	bl	Func_2f40
	mov	r1, r10
	bl	Func_53e8
	mov	r3, r8
	mov	r2, r10
	strh	r3, [r2]
	mov	r0, r10
	ldr	r3, =REG_DMA3SAD
	mov	r1, r6
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [r5, #4]
	bl	Func_2f40
	ldr	r1, =ewram_38000
	bl	Func_5340
	ldr	r0, [r5, #8]
	bl	Func_2f40
	ldr	r1, =ewram_3a000
	bl	Func_5340
	ldr	r0, [r5, #0xc]
	bl	Func_2f40
	ldr	r1, =ewram_3c000
	bl	Func_5340
	ldr	r0, [r5, #0x10]
	bl	Func_2f40
	ldr	r1, =ewram_3e000
	bl	Func_5340
	ldr	r2, =iwram_1cfc
	ldr	r3, =Func_1161c
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x9f
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0xd5
	bl	Func_2f40
	mov	r1, r10
	bl	Func_5340
	ldr	r5, .L116fc	@ 0
	bl	Func_113e4
	mov	r3, r7
	add	r3, #0xfc
	strb	r5, [r3]
	ldr	r0, =Func_1179c
	bl	Func_439c
	mov	r0, #1
	bl	Func_30f8
	b	.L11730

	.align	2, 0
.L116fc:
	.word	0
	.pool

.L11730:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_11644

.thumb_func_start Func_1173c
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r2, =iwram_1cfc
	ldr	r1, [r3]
	ldr	r3, =Func_1161c
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x9f
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0xd5
	bl	Func_2f40
	ldr	r1, =ewram_10000
	bl	Func_5340
	bl	Func_113e4
	ldr	r0, =Func_1179c
	bl	Func_439c
	mov	r0, #1
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_1173c

.thumb_func_start Func_1179c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r2, =0x6004000
	mov	r8, r3
	ldr	r3, =0xffff
	mov	r1, #0
	mov	r6, #0x84
	mov	r5, r8
	ldr	r7, =0x6008000
	mov	r10, r1
	lsl	r6, #24
	mov	r12, r2
	add	r5, #0x18
	mov	r14, r3
.L117c0:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L11872
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.L11872
.L117cc:
	ldrh	r2, [r5, #8]
	mov	r3, r2
	cmp	r3, #0
	bne	.L1186c
	ldr	r4, [r5, #4]
	ldrh	r0, [r4]
	add	r4, #2
	cmp	r0, r14
	bne	.L117e4
	ldr	r3, [r5]
	str	r3, [r5, #4]
	b	.L117cc
.L117e4:
	mov	r3, #0xff
	lsl	r3, #8
	mov	r1, #0xfe
	and	r3, r0
	lsl	r1, #8
	cmp	r3, r1
	bne	.L11804
	mov	r2, #0xff
	and	r2, r0
	cmp	r2, #0xff
	beq	.L11872
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5, #4]
	b	.L117cc
.L11804:
	ldrh	r2, [r4]
	add	r4, #2
	ldrh	r3, [r4, #2]
	ldrh	r1, [r4]
	strh	r3, [r5, #8]
	mov	r4, r8
	ldrb	r3, [r4, #0x16]
	cmp	r3, #0
	bne	.L1183c
	mov	r3, #0xc0
	lsl	r3, #3
	cmp	r0, r3
	bcc	.L1182e
	ldr	r4, =ewram_1c000
	lsl	r2, #3
	lsl	r0, #5
	lsl	r1, #5
	ldr	r3, =REG_DMA3SAD
	add	r0, r4
	add	r1, r12
	b	.L1185e
.L1182e:
	lsl	r2, #3
	lsl	r0, #5
	lsl	r1, #5
	ldr	r3, =REG_DMA3SAD
	add	r0, r12
	add	r1, r12
	b	.L1185e
.L1183c:
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r0, r3
	bcc	.L11852
	ldr	r4, =ewram_20000
	lsl	r2, #4
	lsl	r0, #6
	lsl	r1, #6
	ldr	r3, =REG_DMA3SAD
	add	r0, r4
	b	.L1185c
.L11852:
	lsl	r2, #4
	lsl	r0, #6
	lsl	r1, #6
	ldr	r3, =REG_DMA3SAD
	add	r0, r7
.L1185c:
	add	r1, r7
.L1185e:
	orr	r2, r6
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [r5, #4]
	add	r3, #8
	str	r3, [r5, #4]
	b	.L117cc
.L1186c:
	mov	r1, r14
	add	r3, r2, r1
	strh	r3, [r5, #8]
.L11872:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r5, #0xc
	cmp	r3, #0xf
	bls	.L117c0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1179c

.thumb_func_start Func_118a8
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0
	strh	r3, [r2, #0x22]
	bx	lr
.func_end Func_118a8

.thumb_func_start Func_118c0
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2, #0x22]
	bx	lr
.func_end Func_118c0

.thumb_func_start Func_118d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	ldr	r5, [r3]
	sub	sp, #4
	mov	r4, r0
	mov	r6, #0
	mov	r0, sp
	mov	r1, r5
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	add	r1, #0x18
	ldr	r2, =0x85000030
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r1, [r4]
	ldr	r2, =0xffff
	add	r4, #2
	cmp	r1, r2
	beq	.L11954
	mov	r3, #0xff
	mov	r2, #0xfd
	lsl	r3, #8
	lsl	r2, #8
	mov	r10, r3
	mov	r8, r2
	mov	r3, #0xf
	mov	r2, #0x80
	mov	r14, r3
	mov	r12, r2
	mov	r7, #0
.L1191a:
	mov	r3, r1
	mov	r2, r10
	and	r3, r2
	cmp	r3, r8
	bne	.L1194a
	mov	r3, r14
	mov	r2, r1
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	mov	r0, #0
	cmp	r3, #0
	beq	.L11936
	mov	r0, #1
.L11936:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r5, r3
	add	r3, #0x18
	str	r4, [r3]
	str	r4, [r3, #4]
	strh	r7, [r3, #8]
	strh	r0, [r3, #0xa]
	add	r6, #1
.L1194a:
	ldrh	r1, [r4]
	ldr	r2, =0xffff
	add	r4, #2
	cmp	r1, r2
	bne	.L1191a
.L11954:
	cmp	r6, #0
	beq	.L11962
	mov	r1, #0xc8
	ldr	r0, =Func_1179c
	lsl	r1, #4
	bl	Func_41d8
.L11962:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_118d8

.thumb_func_start Func_11984
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	add	r3, #0xfc
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L1199c
	ldr	r0, =Func_1179c
	bl	Func_42c8
.L1199c:
	pop	{r0}
	bx	r0
.func_end Func_11984

.thumb_func_start Func_119a8
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	add	r3, #0xfc
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L119c0
	ldr	r0, =Func_1179c
	bl	Func_439c
.L119c0:
	pop	{r0}
	bx	r0
.func_end Func_119a8

.thumb_func_start Func_119cc
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r12, r3
	mov	r4, r12
	add	r4, #0xd8
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L11a66
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.L11a66
.L119e4:
	ldrh	r2, [r4, #8]
	mov	r3, r2
	cmp	r3, #0
	bne	.L11a60
	ldr	r0, [r4, #4]
	ldr	r2, =0xffff
	ldrh	r1, [r0]
	add	r0, #2
	cmp	r1, r2
	bne	.L119fe
	ldr	r3, [r4]
	str	r3, [r4, #4]
	b	.L119e4
.L119fe:
	mov	r3, #0xff
	lsl	r3, #8
	mov	r2, #0xfe
	and	r3, r1
	lsl	r2, #8
	cmp	r3, r2
	bne	.L11a1e
	mov	r2, #0xff
	and	r2, r1
	cmp	r2, #0xff
	beq	.L11a66
	ldr	r3, [r4]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r4, #4]
	b	.L119e4
.L11a1e:
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, #0xc0
	and	r3, r1
	lsl	r2, #6
	cmp	r3, r2
	bne	.L11a3e
	ldr	r3, =REG_BLDCNT
	strh	r1, [r3]
	ldr	r3, =0x103
	add	r3, r12
	strb	r1, [r3]
	ldr	r3, [r4, #4]
	add	r3, #2
	str	r3, [r4, #4]
	b	.L119e4
.L11a3e:
	ldr	r3, =0x103
	add	r3, r12
	ldrb	r2, [r3]
	mov	r3, #0xc0
	and	r3, r2
	cmp	r3, #0x40
	bne	.L11a50
	ldr	r3, =REG_BLDALPHA
	b	.L11a52
.L11a50:
	ldr	r3, =REG_BLDY
.L11a52:
	strh	r1, [r3]
	ldrh	r3, [r0]
	strh	r3, [r4, #8]
	ldr	r3, [r4, #4]
	add	r3, #4
	str	r3, [r4, #4]
	b	.L119e4
.L11a60:
	ldr	r1, =0xffff
	add	r3, r2, r1
	strh	r3, [r4, #8]
.L11a66:
	pop	{r0}
	bx	r0
.func_end Func_119cc

.thumb_func_start Func_11a84
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	sub	sp, #4
	mov	r4, r3
	mov	r5, r0
	mov	r6, #0
	mov	r0, sp
	add	r4, #0xd8
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	ldr	r2, =0xffff
	cmp	r3, r2
	beq	.L11ab4
	str	r5, [r4]
	str	r5, [r4, #4]
	strh	r6, [r4, #8]
	strh	r6, [r4, #0xa]
	mov	r6, #1
.L11ab4:
	cmp	r6, #0
	beq	.L11ac2
	mov	r1, #0xc8
	ldr	r0, =Func_119cc
	lsl	r1, #4
	bl	Func_41d8
.L11ac2:
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_11a84

.thumb_func_start Func_11ae0
	push	{lr}
	ldr	r0, =Func_119cc
	bl	Func_42c8
	pop	{r0}
	bx	r0
.func_end Func_11ae0

.thumb_func_start Func_11af0
	push	{lr}
	ldr	r0, =Func_119cc
	bl	Func_439c
	pop	{r0}
	bx	r0
.func_end Func_11af0

.thumb_func_start Func_11b00
	push	{r5, r6, lr}
	mov	r1, #0xb4
	mov	r0, #0x1c
	bl	Func_48f4
	mov	r5, r0
	mov	r1, r5
	mov	r0, #0
	mov	r4, #0
.L11b12:
	str	r4, [r1]
	strh	r4, [r1, #4]
	strh	r4, [r1, #6]
	strh	r4, [r1, #8]
	strh	r4, [r1, #0xa]
	mov	r3, #0
.L11b1e:
	lsr	r2, r3, #16
	lsl	r3, r2, #1
	mov	r6, #0x80
	add	r2, #1
	add	r3, #0xc
	lsl	r2, #16
	lsl	r6, #13
	strh	r4, [r1, r3]
	mov	r3, r2
	cmp	r2, r6
	bne	.L11b1e
	mov	r2, #0x80
	lsl	r2, #9
	mov	r6, #0x80
	add	r3, r0, r2
	lsl	r6, #11
	add	r1, #0x2c
	mov	r0, r3
	cmp	r3, r6
	bne	.L11b12
	mov	r2, r5
	add	r2, #0xb0
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_11b00

.thumb_func_start Func_11b54
	push	{r5, r6, r7, lr}
	lsl	r2, #16
	lsl	r3, #16
	asr	r7, r2, #16
	asr	r2, r3, #16
	ldr	r3, =iwram_1ec0
	ldr	r4, [r3]
	mov	r5, r4
	lsl	r1, #16
	add	r5, #0xb0
	asr	r6, r1, #16
	ldrh	r1, [r5]
	lsl	r0, #16
	asr	r0, #16
	cmp	r1, #3
	bls	.L11b7a
	mov	r0, #1
	neg	r0, r0
	b	.L11bb8
.L11b7a:
	mov	r3, #0x2c
	mul	r1, r3
	lsl	r0, #16
	lsl	r3, r6, #16
	lsr	r3, #16
	lsr	r0, #12
	add	r0, r3
	mov	r3, #0xa0
	add	r1, r4, r1
	lsl	r3, #19
	lsl	r0, #1
	lsl	r2, #16
	mov	r4, #0x80
	add	r0, r3
	lsr	r2, #16
	mov	r3, #0
	lsl	r4, #24
	strh	r3, [r1, #4]
	strh	r3, [r1, #6]
	strh	r2, [r1, #0xa]
	str	r0, [r1]
	strh	r7, [r1, #8]
	ldr	r3, =REG_DMA3SAD
	add	r1, #0xc
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	mov	r0, #0
.L11bb8:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_11b54

.thumb_func_start Func_11bc8
	push	{lr}
	ldr	r0, =Func_11bf4
	bl	Func_4278
	mov	r0, #0x1c
	bl	Func_2dd8
	pop	{r0}
	bx	r0
.func_end Func_11bc8

.thumb_func_start Func_11be0
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_11bf4
	bl	Func_41d8
	pop	{r0}
	bx	r0
.func_end Func_11be0

.thumb_func_start Func_11bf4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ec0
	ldr	r3, [r3]
	mov	r10, r3
	add	r3, #0xb0
	ldrh	r3, [r3]
	mov	r2, #3
	mov	r1, #0
	mov	r14, r1
	and	r2, r3
	sub	sp, #0x20
	cmp	r14, r2
	bcs	.L11cc2
	mov	r9, r2
.L11c18:
	mov	r3, #0x2c
	mov	r2, r14
	mul	r2, r3
	mov	r1, r10
	mov	r3, r2
	add	r5, r1, r3
	ldrh	r2, [r5, #6]
	mov	r3, r2
	cmp	r3, #0
	bne	.L11cae
	mov	r2, #4
	ldrsh	r7, [r5, r2]
	mov	r3, #0xa
	ldrsh	r2, [r5, r3]
	sub	r3, r2, r7
	lsl	r3, #24
	ldr	r1, [r5]
	lsl	r6, r2, #16
	mov	r4, r5
	lsr	r0, r3, #24
	lsr	r3, r6, #16
	mov	r8, r1
	add	r4, #0xc
	cmp	r0, r3
	bcs	.L11c60
	mov	r1, sp
	mov	r12, r3
.L11c4e:
	ldrh	r3, [r4]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
	add	r3, r0, #1
	lsl	r3, #24
	lsr	r0, r3, #24
	add	r4, #2
	cmp	r0, r12
	bcc	.L11c4e
.L11c60:
	lsl	r1, r7, #16
	mov	r7, r1
	lsr	r2, r6, #16
	lsr	r3, r7, #16
	mov	r0, #0
	sub	r2, r3
	cmp	r0, r2
	bge	.L11c86
	mov	r1, sp
	mov	r12, r2
.L11c74:
	ldrh	r3, [r4]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
	add	r3, r0, #1
	lsl	r3, #24
	lsr	r0, r3, #24
	add	r4, #2
	cmp	r0, r12
	blt	.L11c74
.L11c86:
	mov	r2, #0x80
	lsr	r4, r6, #16
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	mov	r0, sp
	mov	r1, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	lsl	r2, #9
	add	r1, r7, r2
	lsr	r3, r1, #16
	cmp	r3, r4
	bcc	.L11ca6
	mov	r1, #0
.L11ca6:
	lsr	r3, r1, #16
	strh	r3, [r5, #4]
	ldrh	r3, [r5, #8]
	b	.L11cb2
.L11cae:
	ldr	r1, =0xffff
	add	r3, r2, r1
.L11cb2:
	strh	r3, [r5, #6]
	mov	r3, r14
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r14, r3
	cmp	r14, r9
	bcc	.L11c18
.L11cc2:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_11bf4
