	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f2028
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1efc
	ldr	r6, [r3]
	ldr	r3, =iwram_1d20
	ldrb	r3, [r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Lf2056
	ldr	r2, [r6, #0xc]
	mov	r3, #3
	add	r2, #1
	and	r3, r2
	str	r2, [r6, #0xc]
	cmp	r3, #0
	bne	.Lf2056
	ldr	r3, [r6, #0x14]
	add	r3, #1
	str	r3, [r6, #0x14]
.Lf2056:
	ldr	r3, =iwram_1ad0
	ldrh	r2, [r3, #6]
	mov	r3, #0x30
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	mov	r10, r3
	mov	r3, #0x90
	sub	r1, r3, r2
	mov	r2, #0x8c
	ldr	r3, [r6, #8]
	lsl	r2, #1
	cmp	r3, r2
	blt	.Lf2072
	b	.Lf23ae
.Lf2072:
	ldr	r3, [r6, #0xc]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf207e
	b	.Lf2208
.Lf207e:
	ldr	r3, =.Lf39ab
	mov	r2, r10
	ldrb	r3, [r3]
	sub	r2, r1, r2
	mov	r7, r3
	mov	r9, r2
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	Func_af0_from_thumb
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf20aa
	ldr	r3, =0xffffff00
.Lf20a4:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf20a4
.Lf20aa:
	cmp	r5, #0
	bge	.Lf20b8
	mov	r3, #0x80
	lsl	r3, #1
.Lf20b2:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf20b2
.Lf20b8:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r3, r0
	ldr	r2, =0x40002400
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x14
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x50002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x10
	mov	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0x60002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0x70002400
	mov	r4, #0x28
	orr	r1, r2
	str	r0, [r6, r4]
	mov	r2, #0xe8
	orr	r1, r3
	mov	r0, #0x30
	mov	r3, #0x1c
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	mov	r3, #0x24
	str	r2, [r6, r3]
	mov	r3, #0x2c
	str	r2, [r6, r3]
	mov	r3, #0x34
	str	r2, [r6, r3]
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #2]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	Func_af0_from_thumb
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf212e
	ldr	r3, =0xffffff00
.Lf2128:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf2128
.Lf212e:
	cmp	r5, #0
	bge	.Lf213c
	mov	r3, #0x80
	lsl	r3, #1
.Lf2136:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf2136
.Lf213c:
	add	r3, r7, #4
	ldr	r2, =0x80002400
	lsl	r3, #16
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x38
	str	r3, [r6, r1]
	mov	r2, #0x3c
	mov	r3, #0x80
	str	r3, [r6, r2]
	mov	r3, #5
	mov	r8, r3
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #4]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	Func_af0_from_thumb
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x20
	sub	r7, #0x20
	cmp	r5, #0xff
	ble	.Lf217a
	ldr	r3, =0xffffff00
.Lf2174:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf2174
.Lf217a:
	cmp	r5, #0
	bge	.Lf2188
	mov	r3, #0x80
	lsl	r3, #1
.Lf2182:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf2182
.Lf2188:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r1, r8
	mov	r3, r0
	ldr	r2, =0x80002400
	lsl	r1, #3
	orr	r3, r5
	mov	r12, r1
	orr	r3, r2
	add	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x24
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x90002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	mov	r4, r12
	add	r2, #0x20
	add	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0xa0002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0xb0002400
	orr	r1, r2
	add	r4, #8
	str	r0, [r6, r4]
	orr	r1, r3
	mov	r0, r12
	mov	r3, r12
	mov	r2, #0xc0
	b	.Lf2396

	.pool_aligned

.Lf2208:
	ldr	r3, =.Lf39ab
	mov	r2, r10
	ldrb	r3, [r3, #1]
	sub	r2, r1, r2
	mov	r7, r3
	mov	r9, r2
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	Func_af0_from_thumb
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf2234
	ldr	r3, =0xffffff00
.Lf222e:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf222e
.Lf2234:
	cmp	r5, #0
	bge	.Lf2242
	mov	r3, #0x80
	lsl	r3, #1
.Lf223c:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf223c
.Lf2242:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r3, r0
	ldr	r2, =0x40002400
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x14
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x50002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x10
	mov	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0x60002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0x70002400
	mov	r4, #0x28
	orr	r1, r2
	str	r0, [r6, r4]
	mov	r2, #0xe8
	orr	r1, r3
	mov	r0, #0x30
	mov	r3, #0x1c
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	mov	r3, #0x24
	str	r2, [r6, r3]
	mov	r3, #0x2c
	str	r2, [r6, r3]
	mov	r3, #0x34
	str	r2, [r6, r3]
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #3]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	Func_af0_from_thumb
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf22b8
	ldr	r3, =0xffffff00
.Lf22b2:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf22b2
.Lf22b8:
	cmp	r5, #0
	bge	.Lf22c6
	mov	r3, #0x80
	lsl	r3, #1
.Lf22c0:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf22c0
.Lf22c6:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r3, r0
	ldr	r2, =0x40002400
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x38
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x14
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x50002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x10
	mov	r4, #0x40
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0x60002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0x70002400
	mov	r4, #0x48
	orr	r1, r2
	str	r0, [r6, r4]
	mov	r2, #0xe0
	orr	r1, r3
	mov	r0, #0x50
	mov	r3, #0x3c
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	mov	r3, #0x44
	str	r2, [r6, r3]
	mov	r3, #0x4c
	str	r2, [r6, r3]
	mov	r3, #0x54
	str	r2, [r6, r3]
	mov	r3, #8
	mov	r8, r3
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #5]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	Func_af0_from_thumb
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x20
	sub	r7, #0x20
	cmp	r5, #0xff
	ble	.Lf2340
	ldr	r3, =0xffffff00
.Lf233a:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf233a
.Lf2340:
	cmp	r5, #0
	bge	.Lf234e
	mov	r3, #0x80
	lsl	r3, #1
.Lf2348:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf2348
.Lf234e:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r1, r8
	mov	r3, r0
	ldr	r2, =0x80002400
	lsl	r1, #3
	orr	r3, r5
	mov	r12, r1
	orr	r3, r2
	add	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x24
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x90002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	mov	r4, r12
	add	r2, #0x20
	add	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0xa0002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0xb0002400
	orr	r1, r2
	add	r4, #8
	str	r0, [r6, r4]
	orr	r1, r3
	mov	r0, r12
	mov	r3, r12
	mov	r2, #0xa0
.Lf2396:
	add	r3, #0x1c
	add	r0, #0x30
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	add	r3, #8
	str	r2, [r6, r3]
	add	r3, #8
	str	r2, [r6, r3]
	add	r3, #8
	str	r2, [r6, r3]
	mov	r2, #4
	add	r8, r2
.Lf23ae:
	mov	r3, r8
	cmp	r3, #0x77
	bhi	.Lf23c8
	lsl	r3, #3
	ldr	r2, =0x400020a0
	add	r3, #0x18
.Lf23ba:
	mov	r1, #1
	add	r8, r1
	mov	r1, r8
	str	r2, [r6, r3]
	add	r3, #8
	cmp	r1, #0x77
	bls	.Lf23ba
.Lf23c8:
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lf23fc	@ 0x3f50
	strh	r3, [r2]
	ldr	r3, .Lf2400	@ 0xe0e
	add	r2, #2
	strh	r3, [r2]
	mov	r2, r8
	lsl	r5, r2, #3
	mov	r7, r6
	mov	r4, #0x84
	lsr	r2, r5, #2
	lsl	r4, #24
	add	r7, #0x18
	mov	r1, #0xe0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	lsl	r1, #19
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1ad0
	ldrh	r2, [r3, #6]
	mov	r3, #0x20
	sub	r2, r3, r2
	b	.Lf243c

	.align	2, 0
.Lf23fc:
	.word	0x3f50
.Lf2400:
	.word	0xe0e
	.pool

.Lf243c:
	cmp	r2, #0xff
	ble	.Lf2448
	ldr	r3, =0xffffff00
.Lf2442:
	add	r2, r3
	cmp	r2, #0xff
	bgt	.Lf2442
.Lf2448:
	cmp	r2, #0
	bge	.Lf2456
	mov	r3, #0x80
	lsl	r3, #1
.Lf2450:
	add	r2, r3
	cmp	r2, #0
	blt	.Lf2450
.Lf2456:
	ldr	r3, =0xc05c2000
	mov	r4, #0xe0
	orr	r2, r3
	mov	r3, #0x80
	lsl	r3, #4
	lsl	r4, #19
	mov	r0, r6
	str	r2, [r6, #0x78]
	add	r0, #0x78
	str	r3, [r6, #0x7c]
	add	r1, r5, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r7
	mov	r1, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f2028

.thumb_func_start Func_f24a0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1efc
	ldr	r6, .Lf24e0	@ 0
	ldr	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #19
	strh	r6, [r3]
	ldr	r0, =0x15
	bl	Func_2f40
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x5000200
	strh	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	mov	r8, r3
	ldr	r5, =ewram_10000
	add	r4, r8
	mov	r1, r5
	mov	r0, r4
	bl	Func_53e8
	ldr	r3, =REG_DMA3SAD
	b	.Lf24fc

	.align	2, 0
.Lf24e0:
	.word	0
	.pool

.Lf24fc:
	mov	r0, r5
	ldr	r1, =0x6010000
	ldr	r2, =0x80000f00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x17
	bl	Func_2f40
	mov	r1, #0xa0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xa0
	lsl	r3, #19
	add	r4, r8
	strh	r6, [r3]
	mov	r1, r5
	mov	r0, r4
	bl	Func_53e8
	mov	r1, #0xc0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_12940
	lsl	r1, #19
	ldr	r2, =0x80002760
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =ewram_1a140
	ldr	r1, =0x6004ec0
	ldr	r2, =0x80004ec0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =0x1ff
	ldr	r1, =0x600f000
	ldr	r3, =0x267
	mov	r4, #0
.Lf254a:
	mov	r0, #0x1d
.Lf254c:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf254c
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0xa
	ble	.Lf254a
	ldr	r3, =0x13b
	mov	r4, #0xb
.Lf2574:
	mov	r0, #0x1d
.Lf2576:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf2576
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0x1f
	ble	.Lf2574
	mov	r3, #0x96
	ldr	r1, =0x600f800
	lsl	r3, #1
	mov	r4, #0
.Lf25a2:
	mov	r0, #0x1d
.Lf25a4:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf25a4
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0xa
	ble	.Lf25a2
	mov	r3, #0
	mov	r4, #0xb
.Lf25cc:
	mov	r0, #0x1d
.Lf25ce:
	mov	r2, r3
	mov	r6, #0x80
	lsl	r3, r2, #16
	lsl	r6, #9
	add	r3, r6
	sub	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0
	bge	.Lf25ce
	strh	r5, [r1]
	add	r4, #1
	add	r1, #2
	strh	r5, [r1]
	add	r1, #2
	cmp	r4, #0x1f
	ble	.Lf25cc
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lf2620	@ 0x1f43
	strh	r3, [r2]
	ldr	r3, .Lf2624	@ 0x1e81
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, .Lf2628	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lf262c	@ 0x9f
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lf2630	@ 0x1616
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r2, #0
	mov	r4, #3
	b	.Lf2680

	.align	2, 0
.Lf2620:
	.word	0x1f43
.Lf2624:
	.word	0x1e81
.Lf2628:
	.word	0xf0
.Lf262c:
	.word	0x9f
.Lf2630:
	.word	0x1616
	.pool

.Lf2680:
	sub	r4, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r4, #0
	bge	.Lf2680
	ldr	r0, =iwram_1ad0
	mov	r3, #0
	mov	r2, #0x60
	strh	r2, [r0, #6]
	strh	r2, [r0, #0xa]
	str	r3, [r7, #8]
	str	r3, [r7]
	str	r3, [r7, #4]
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x14]
	str	r3, [r7, #0x10]
	ldr	r1, =REG_BG0HOFS
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, .Lf26c0	@ 0x3fbf
	add	r1, #0x40
	strh	r3, [r1]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lf26c4	@ 0x1010
	strh	r3, [r2]
	ldr	r3, .Lf26c8	@ 0x3f44
	strh	r3, [r1]
	b	.Lf26e0

	.align	2, 0
.Lf26c0:
	.word	0x3fbf
.Lf26c4:
	.word	0x1010
.Lf26c8:
	.word	0x3f44
	.pool

.Lf26e0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f24a0

.thumb_func_start Func_f26ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0xc]
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r5, =iwram_1f58
	ldrb	r3, [r5]
	mov	r1, #0xe0
	mov	r0, #0x2b
	str	r3, [sp, #4]
	bl	Func_48b0
	mov	r8, r0
	bl	Func_4760
	bl	Func_403c
	mov	r0, #1
	bl	Func_30f8
	bl	Func_40e8
	add	r1, sp, #8
	ldrb	r1, [r1]
	ldr	r3, =iwram_1d18
	mov	r2, r1
	strb	r1, [r3]
	strb	r2, [r5]
	bl	Func_f24a0
	bl	Func_f377c
	mov	r1, #0
	mov	r0, #2
	bl	Func_f3824
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lf276e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0xf740
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lf276e:
	strh	r4, [r0]
	mov	r0, #0x3c
	bl	Func_f3858
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_f2028
	bl	Func_41d8
	ldr	r0, =iwram_1ad0
	mov	r1, #0x12
	mov	r3, #1
	add	r1, sp
	mov	r9, r3
	mov	r10, r0
	mov	r11, r1
.Lf278e:
	mov	r2, r8
	ldr	r1, [r2, #8]
	mov	r3, r1
	sub	r3, #0x15
	cmp	r3, #0xd9
	bhi	.Lf27b2
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lf27b2
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #0x10]
	mov	r3, #0xef
	str	r3, [r0, #8]
	mov	r1, #0xef
.Lf27b2:
	mov	r2, #0x8b
	add	r3, r1, #1
	lsl	r2, #1
	mov	r1, r8
	str	r3, [r1, #8]
	cmp	r3, r2
	ble	.Lf27c2
	b	.Lf28fa
.Lf27c2:
	ldr	r5, [r1, #0xc]
	mov	r1, #3
	mov	r0, r5
	bl	Func_b1c_from_thumb
	cmp	r0, #0
	bne	.Lf280a
	mov	r0, r10
	ldrh	r3, [r0, #6]
	ldr	r1, =0xffff
	mov	r2, r10
	add	r3, r1
	strh	r3, [r2, #6]
	ldrh	r3, [r2, #6]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lf280a
	mov	r0, r8
	ldr	r3, [r0]
	lsl	r2, r3, #4
	sub	r2, r3
	ldr	r0, =ewram_12580
	ldr	r1, =0x6004b00
	lsl	r2, #6
	sub	r0, r2
	sub	r1, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x800001e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	ldr	r5, [r1, #0xc]
.Lf280a:
	mov	r3, r9
	and	r3, r5
	cmp	r3, #0
	bne	.Lf28ec
	mov	r2, r10
	ldrh	r3, [r2, #0xa]
	ldr	r0, =0xffff
	mov	r1, r10
	add	r3, r0
	strh	r3, [r1, #0xa]
	ldrh	r2, [r1, #0xa]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.Lf28ec
	mov	r0, r8
	ldr	r3, [r0, #4]
	lsl	r1, r3, #3
	cmp	r1, #0x18
	bgt	.Lf288c
	lsl	r1, r3, #4
	sub	r1, r3
	ldr	r2, =0x600e4c0
	ldr	r0, =ewram_199c0
	lsl	r1, #7
	sub	r0, r1
	ldr	r3, =REG_DMA3SAD
	sub	r1, r2, r1
	ldr	r2, =0x800003c0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Lf28e4

	.pool_aligned

.Lf288c:
	mov	r3, r11
	mov	r0, #0xa0
	strh	r2, [r3]
	sub	r0, r1
	mov	r1, #0xa0
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #4
	sub	r1, r0
	ldr	r2, =0x6004ec0
	lsl	r1, #4
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r11
	ldr	r2, =0x810003c0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0x600f6c0
	ldr	r3, .Lf28d0	@ 0x13b
	mov	r7, #0
.Lf28b4:
	mov	r6, #0
.Lf28b6:
	add	r6, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r6, #0x1d
	bls	.Lf28b6
	strh	r3, [r1]
	add	r7, #1
	add	r1, #2
	strh	r3, [r1]
	add	r1, #2
	cmp	r7, #4
	bls	.Lf28b4
	b	.Lf28e4

	.align	2, 0
.Lf28d0:
	.word	0x13b
	.pool

.Lf28e4:
	mov	r0, r8
	ldr	r3, [r0, #4]
	add	r3, #1
	str	r3, [r0, #4]
.Lf28ec:
	mov	r1, r8
	ldr	r3, [r1, #8]
	cmp	r3, #0xef
	bne	.Lf29bc
	mov	r2, r9
	str	r2, [r1, #0x10]
	b	.Lf29bc
.Lf28fa:
	ldr	r0, =0x119
	cmp	r3, r0
	bne	.Lf2908
	mov	r3, #2
	mov	r1, r8
	str	r3, [r1, #0x10]
	b	.Lf29bc
.Lf2908:
	ldr	r2, =0x121
	cmp	r3, r2
	bne	.Lf2920
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x10]
	b	.Lf29bc

	.pool_aligned

.Lf2920:
	mov	r1, #0x8c
	lsl	r1, #1
	cmp	r3, r1
	bne	.Lf29bc
	mov	r0, #1
	bl	Func_3bf8
	ldr	r0, =Func_f2028
	bl	Func_4278
	ldr	r3, =iwram_1d18
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2978	@ 0x681
	strh	r3, [r2]
	ldr	r3, .Lf297c	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, .Lf2980	@ 0
	mov	r0, r10
	strh	r3, [r0, #0xa]
	ldr	r0, =0x16
	bl	Func_2f40
	mov	r1, #0xa0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000078
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	lsl	r2, #2
	ldr	r5, =ewram_10000
	mov	r3, #0xa0
	add	r4, r2
	lsl	r3, #19
	strh	r1, [r3]
	mov	r0, r4
	b	.Lf29a0

	.align	2, 0
.Lf2978:
	.word	0x681
.Lf297c:
	.word	0x1440
.Lf2980:
	.word	0
	.pool

.Lf29a0:
	mov	r1, r5
	bl	Func_53e8
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6004000
	ldr	r2, =0x80004b00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r7, #0
	b	.Lf29ea
.Lf29bc:
	mov	r0, #1
	bl	Func_30f8
	b	.Lf278e
.Lf29c4:
	mov	r6, #0
.Lf29c6:
	mov	r2, r3
	mov	r0, #0x80
	lsl	r3, r2, #16
	lsl	r0, #9
	add	r3, r0
	add	r6, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r6, #0x1d
	bls	.Lf29c6
	ldr	r2, =0x1ff
	ldr	r0, =0x1ff
	strh	r2, [r1]
	add	r1, #2
	strh	r0, [r1]
	add	r7, #1
	add	r1, #2
.Lf29ea:
	cmp	r7, #0x13
	bls	.Lf29c4
	bl	Func_479c
	bl	Func_4760
	ldr	r1, [sp, #0xc]
	cmp	r1, #0
	beq	.Lf2a40
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_48f4
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =.Lf38bc
	bl	Func_53e8
	mov	r5, r8
	add	r5, #0x80
	mov	r7, #0
.Lf2a16:
	bl	Func_4080
	lsl	r2, r7, #8
	lsr	r2, #1
	add	r2, r6, r2
	mov	r1, #0x80
	bl	Func_3fa4
	mov	r2, r5
	mov	r3, #0
	stmia	r2!, {r3}
	ldr	r3, =0x40004000
	stmia	r2!, {r3}
	add	r7, #1
	add	r5, #0xc
	str	r0, [r2]
	cmp	r7, #4
	bls	.Lf2a16
	mov	r0, #0xe
	bl	Func_2dd8
.Lf2a40:
	mov	r0, #0x1e
	bl	Func_3c3c
	bl	Func_3ce0
	ldr	r3, .Lf2a6c	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, [sp, #0xc]
	mov	r2, #0x96
	lsl	r2, #1
	mov	r9, r2
	cmp	r3, #0
	beq	.Lf2a8c
	mov	r0, #0xe1
	lsl	r0, #4
	mov	r9, r0
	b	.Lf2a8c
.Lf2a66:
	mov	r1, #1
	str	r1, [sp, #8]
	b	.Lf2b1c

	.align	2, 0
.Lf2a6c:
	.word	0x1540
	.pool

.Lf2a8c:
	mov	r7, #0
	cmp	r7, r9
	bcs	.Lf2b1c
	ldr	r2, =REG_BLDALPHA
	mov	r11, r2
.Lf2a96:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.Lf2b04
	ldr	r0, =0xfffffe00
	mov	r5, r8
	add	r5, #0x80
	mov	r6, #0
	mov	r4, #0x50
	mov	r10, r0
.Lf2aa8:
	ldr	r3, .Lf2ae0	@ 0x1ff
	mov	r2, r4
	and	r2, r3
	ldrh	r3, [r5, #6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	mov	r3, #0x7c
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0
	str	r4, [sp]
	bl	Func_3dec
	ldr	r4, [sp]
	add	r6, #1
	add	r4, #0x20
	add	r5, #0xc
	cmp	r6, #2
	bls	.Lf2aa8
	mov	r1, #0x3c
	mov	r0, r7
	bl	Func_b50_from_thumb
	ldr	r2, =.Lf39b1
	b	.Lf2af0

	.align	2, 0
.Lf2ae0:
	.word	0x1ff
	.pool

.Lf2af0:
	ldr	r3, =0x2f50
	ldrb	r1, [r2, r0]
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r3, #0x10
	sub	r3, r1
	lsl	r3, #8
	add	r3, r1
	mov	r0, r11
	strh	r3, [r0]
.Lf2b04:
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	bne	.Lf2a66
	mov	r0, #1
	add	r7, #1
	bl	Func_30f8
	cmp	r7, r9
	bcc	.Lf2a96
.Lf2b1c:
	add	r1, sp, #4
	ldrb	r1, [r1]
	ldr	r3, =iwram_1f58
	mov	r0, #0x2b
	b	.Lf2b38

	.pool_aligned

.Lf2b38:
	strb	r1, [r3]
	bl	Func_2dd8
	ldr	r2, =0
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [sp, #8]
	add	sp, #0x14
	b	.Lf2b5c

	.pool_aligned

.Lf2b5c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f26ec

.thumb_func_start Func_f2b6c
	bx	lr
.func_end Func_f2b6c

.thumb_func_start Func_f2b70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r0, #0x6e
	bl	_Func_f9080
	ldr	r2, =iwram_1d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r5, =0x18
	bl	Func_40e8
	mov	r0, #1
	bl	Func_3b70
	bl	Func_4760
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2bd0	@ 0x681
	strh	r3, [r2]
	ldr	r3, .Lf2bd4	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r6, #0
	strh	r6, [r3, #0xa]
	mov	r0, r5
	bl	Func_2f40
	mov	r1, #0xa0
	ldr	r7, =0x1ff
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	ldr	r5, =ewram_10000
	add	r4, r3
	mov	r1, r5
	mov	r0, r4
	b	.Lf2bf8

	.align	2, 0
.Lf2bd0:
	.word	0x681
.Lf2bd4:
	.word	0x1440
	.pool

.Lf2bf8:
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6004000
	ldr	r2, =0x84002580
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r5, #0
.Lf2c10:
	mov	r0, #0
.Lf2c12:
	mov	r2, r3
	mov	r4, #0x80
	lsl	r3, r2, #16
	lsl	r4, #9
	add	r3, r4
	add	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0x1d
	bls	.Lf2c12
	strh	r7, [r1]
	add	r5, #1
	add	r1, #2
	strh	r7, [r1]
	add	r1, #2
	cmp	r5, #0x13
	bls	.Lf2c10
	ldr	r3, =iwram_1ad0
	mov	r5, #0
	mov	r2, #0
.Lf2c3c:
	add	r5, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r5, #3
	bls	.Lf2c3c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_479c
	bl	Func_4760
	ldr	r3, .Lf2c80	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r3, r8
	cmp	r3, #0
	bne	.Lf2cc2
	mov	r0, #1
	bl	Func_3bb4
	bl	Func_3ce0
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	mov	r5, #0
	b	.Lf2cb8

	.align	2, 0
.Lf2c80:
	.word	0x1540
	.pool

.Lf2ca4:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x77
	bhi	.Lf2d42
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
.Lf2cb8:
	cmp	r3, #0
	beq	.Lf2ca4
	mov	r6, #1
	neg	r6, r6
	b	.Lf2d42
.Lf2cc2:
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	mov	r5, #0
	b	.Lf2ce2
.Lf2cce:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x3b
	bhi	.Lf2cea
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
.Lf2ce2:
	cmp	r3, #0
	beq	.Lf2cce
	mov	r6, #1
	neg	r6, r6
.Lf2cea:
	cmp	r6, #0
	beq	.Lf2cf6
	mov	r0, #8
	bl	Func_3bb4
	b	.Lf2cfc
.Lf2cf6:
	mov	r0, #0x3c
	bl	Func_3bb4
.Lf2cfc:
	bl	Func_3ce0
	cmp	r6, #0
	bne	.Lf2d30
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	mov	r5, #0
	b	.Lf2d24
.Lf2d10:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0xb3
	bhi	.Lf2d2c
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
.Lf2d24:
	cmp	r3, #0
	beq	.Lf2d10
	mov	r6, #1
	neg	r6, r6
.Lf2d2c:
	cmp	r6, #0
	beq	.Lf2d38
.Lf2d30:
	mov	r0, #8
	bl	Func_3b70
	b	.Lf2d3e
.Lf2d38:
	mov	r0, #0x3c
	bl	Func_3b70
.Lf2d3e:
	bl	Func_3ce0
.Lf2d42:
	mov	r0, r6
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f2b70

.thumb_func_start Func_f2d54
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r2, =iwram_1d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r6, =0x19
	bl	Func_40e8
	mov	r0, #1
	bl	Func_3b70
	bl	Func_4760
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2db0	@ 0x685
	strh	r3, [r2]
	ldr	r3, .Lf2db4	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r5, #0
	strh	r5, [r3, #0xa]
	ldr	r5, =ewram_10000
	mov	r0, r6
	mov	r8, r3
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	mov	r6, r5
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r6, r3
	b	.Lf2dd4

	.align	2, 0
.Lf2db0:
	.word	0x685
.Lf2db4:
	.word	0x1440
	.pool

.Lf2dd4:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6003000
	ldr	r2, =0x84000200
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #4
	add	r6, r3
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6004000
	ldr	r2, =0x84001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #7
	add	r6, r3
	mov	r5, #0
	mov	r2, #0
	mov	r3, r8
.Lf2dfe:
	add	r5, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r5, #3
	bls	.Lf2dfe
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_479c
	bl	Func_4760
	mov	r0, #1
	bl	Func_3c3c
	bl	Func_3ce0
	ldr	r3, .Lf2e40	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	mov	r3, #3
	lsr	r0, #3
	and	r0, r3
	lsl	r0, #10
	mov	r5, #0
	b	.Lf2e80

	.align	2, 0
.Lf2e40:
	.word	0x1540
	.pool

.Lf2e68:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x77
	bhi	.Lf2e98
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	mov	r3, #3
	lsr	r0, #3
	and	r0, r3
	lsl	r0, #10
.Lf2e80:
	ldr	r3, =REG_DMA3SAD
	add	r0, r6
	ldr	r1, =0x6004100
	ldr	r2, =0x840000d0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lf2e68
.Lf2e98:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_f2d54

.thumb_func_start Func_f2eb8
	bx	lr
.func_end Func_f2eb8

.thumb_func_start Func_f2ebc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r8, r3
	cmp	r3, #0
	ble	.Lf2efa
	ldr	r1, =Func_af0
	ldr	r2, =0x5ff
	mov	r10, r1
.Lf2ed8:
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r1, #0
	ldrsh	r0, [r6, r1]
	str	r2, [sp]
	sub	r0, r3
	mov	r1, r8
	bl	_call_via_r10
	ldr	r2, [sp]
	sub	r2, #1
	strh	r0, [r5]
	add	r7, #2
	add	r6, #2
	add	r5, #2
	cmp	r2, #0
	bge	.Lf2ed8
.Lf2efa:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f2ebc

.thumb_func_start Func_f2f10
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ed0
	mov	r1, #0xe0
	ldr	r5, [r3]
	ldr	r2, =0x3001
	lsl	r1, #5
	add	r4, r5, r1
	add	r1, r5, r2
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lf2f2a
	b	.Lf3060
.Lf2f2a:
	add	r2, #1
	add	r3, r5, r2
	ldrb	r2, [r3]
	add	r2, #1
	strb	r2, [r3]
	lsl	r2, #24
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	asr	r2, #24
	cmp	r2, r3
	bge	.Lf2f6c
	mov	r3, #0x80
	lsl	r3, #3
	ldr	r6, =0x5ff
	add	r1, r5, r3
	mov	r0, #0
.Lf2f4a:
	ldrh	r3, [r1]
	ldrh	r2, [r4]
	add	r0, #1
	add	r3, r2
	strh	r3, [r1]
	add	r4, #2
	add	r1, #2
	cmp	r0, r6
	ble	.Lf2f4a
	b	.Lf2f88

	.pool_aligned

.Lf2f6c:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #5
	lsl	r2, #3
	add	r0, r5, r1
	ldr	r3, =REG_DMA3SAD
	add	r1, r5, r2
	ldr	r2, =0x84000300
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x3001
	add	r2, r5, r3
	mov	r3, #0
	strb	r3, [r2]
.Lf2f88:
	mov	r1, #0xc0
	lsl	r1, #6
	add	r3, r5, r1
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r3, #10
	mov	r2, #0xa0
	add	r3, r5, r3
	lsl	r2, #6
	add	r4, r3, r2
	mov	r3, #0xf8
	mov	r2, #0x80
	lsl	r3, #7
	mov	r0, #0x80
	lsl	r2, #3
	ldr	r7, .Lf2fb4	@ 0x3e0
	ldr	r6, .Lf2fb8	@ 0x1f
	mov	r12, r3
	lsl	r0, #2
	add	r1, r5, r2
	b	.Lf2fc8

	.align	2, 0
.Lf2fb4:
	.word	0x3e0
.Lf2fb8:
	.word	0x1f
	.pool

.Lf2fc8:
	ldrh	r3, [r1]
	mov	r2, r12
	and	r2, r3
	ldrh	r3, [r1, #2]
	lsl	r3, #16
	asr	r3, #21
	and	r3, r7
	orr	r2, r3
	ldrh	r3, [r1, #4]
	lsl	r3, #16
	asr	r3, #26
	and	r3, r6
	orr	r2, r3
	sub	r0, #1
	strh	r2, [r4]
	add	r1, #6
	add	r4, #2
	cmp	r0, #0
	bne	.Lf2fc8
	mov	r3, #0xc0
	lsl	r3, #6
	add	r1, r5, r3
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	ldrb	r3, [r1]
	mov	r1, #0xa0
	lsl	r3, #10
	add	r0, r5, r3
	lsl	r1, #6
	ldr	r5, =ewram_2090
	add	r6, r0, r1
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r1, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.Lf3032
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r5
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r6}
	strh	r2, [r5]
	mov	r2, #0xa0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000080
	str	r2, [r3]
.Lf3032:
	strh	r1, [r4]
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.Lf305e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r1, #0xa8
	add	r2, #1
	add	r3, r5
	lsl	r1, #6
	add	r3, #4
	strh	r2, [r5]
	add	r2, r0, r1
	stmia	r3!, {r2}
	ldr	r2, =0x5000200
	stmia	r3!, {r2}
	ldr	r2, =0x84000080
	str	r2, [r3]
.Lf305e:
	strh	r6, [r4]
.Lf3060:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f2f10

.thumb_func_start Func_f3078
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, r3
	mov	r3, #0x80
	sub	sp, #0x28
	lsl	r1, #2
	lsl	r3, #8
	str	r1, [sp, #0x24]
	cmp	r0, r3
	bne	.Lf30a0
	mov	r1, r10
	ldrh	r0, [r1]
.Lf30a0:
	cmp	r2, #1
	bne	.Lf30ac
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [sp, #0x24]
	b	.Lf30c2
.Lf30ac:
	cmp	r2, #2
	bne	.Lf30c2
	mov	r1, #0xc0
	lsl	r1, #3
	add	r8, r1
	mov	r1, #0x80
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #2
	str	r1, [sp, #0x24]
	add	r10, r3
.Lf30c2:
	mov	r3, #0x80
	lsl	r3, #8
	cmp	r0, r3
	bcs	.Lf311a
	ldr	r2, =0x7c00
	mov	r3, r0
	and	r3, r2
	mov	r2, #2
	mov	r1, r8
	add	r8, r2
	ldr	r2, =0x3e0
	strh	r3, [r1]
	mov	r3, r0
	and	r3, r2
	mov	r1, r8
	lsl	r3, #5
	strh	r3, [r1]
	ldr	r3, =0x1f
	mov	r2, #2
	add	r8, r2
	and	r0, r3
	lsl	r3, r0, #10
	mov	r1, r8
	strh	r3, [r1]
	ldr	r3, [sp, #0x24]
	sub	r3, #1
	add	r8, r2
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #1
	mov	r4, #0x80
	lsl	r4, #24
	b	.Lf3110

	.pool_aligned

.Lf3110:
	mov	r0, r8
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
	sub	r0, #6
	b	.Lf375e
.Lf311a:
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r0, r3
	bcc	.Lf3124
	b	.Lf3546
.Lf3124:
	ldr	r1, =0xfffeffff
	add	r0, r1
	cmp	r0, #6
	bls	.Lf312e
	b	.Lf34f8
.Lf312e:
	ldr	r2, =.Lf3138
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lf3138:
	.word	.Lf3154
	.word	.Lf31a2
	.word	.Lf323e
	.word	.Lf32bc
	.word	.Lf3356
	.word	.Lf33d8
	.word	.Lf346c
.Lf3154:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf3160
	b	.Lf3766
.Lf3160:
	ldr	r6, =Func_af0
	mov	r5, r8
.Lf3164:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, #0xf8
	lsl	r0, r4, #11
	lsl	r3, #8
	mov	r2, #2
	and	r0, r3
	mov	r3, #0xf8
	lsl	r3, #9
	add	r10, r2
	lsl	r2, r4, #7
	and	r2, r3
	mov	r3, #0xf8
	lsl	r3, #7
	and	r3, r4
	add	r0, r2
	add	r0, r3
	mov	r1, #7
	bl	_call_via_r6
	mov	r4, r0
	strh	r4, [r5]
	strh	r4, [r5, #2]
	strh	r4, [r5, #4]
	mov	r3, #1
	ldr	r1, [sp, #0x24]
	add	r9, r3
	add	r5, #6
	cmp	r9, r1
	bcc	.Lf3164
	b	.Lf3766
.Lf31a2:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf31ae
	b	.Lf3766
.Lf31ae:
	mov	r1, #0x1f
	ldr	r2, =.Lf3a2e
	mov	r11, r1
.Lf31b4:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r1, #2
	mov	r7, r4
	mov	r3, r11
	lsr	r0, r4, #5
	and	r7, r3
	and	r0, r3
	add	r10, r1
	lsr	r3, r4, #10
	mov	r1, r11
	and	r3, r1
	add	r0, r7, r0
	add	r0, r3
	str	r2, [sp]
	ldr	r3, =Func_af0
	mov	r1, #0xa
	bl	_call_via_r3
	mov	r4, r0
	lsl	r3, r4, #2
	add	r7, r3, #5
	lsl	r3, r4, #1
	add	r3, r4
	add	r5, r3, #5
	mov	r6, r5
	ldr	r2, [sp]
	cmp	r7, #7
	bgt	.Lf31f0
	mov	r7, #8
.Lf31f0:
	cmp	r5, #7
	bgt	.Lf31fc
	mov	r6, #8
	cmp	r5, #7
	bgt	.Lf31fc
	mov	r5, #8
.Lf31fc:
	cmp	r7, #0x1c
	ble	.Lf3202
	mov	r7, #0x1c
.Lf3202:
	cmp	r6, #0x1c
	ble	.Lf3208
	mov	r6, #0x1c
.Lf3208:
	cmp	r5, #0x1c
	ble	.Lf320e
	mov	r5, #0x1c
.Lf320e:
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	mov	r1, #1
	ldr	r3, [sp, #0x24]
	add	r9, r1
	cmp	r9, r3
	bcc	.Lf31b4
	b	.Lf3766
.Lf323e:
	mov	r1, #0
	ldr	r2, [sp, #0x24]
	mov	r9, r1
	cmp	r9, r2
	bcc	.Lf324a
	b	.Lf3766
.Lf324a:
	mov	r3, #0x1f
	mov	r11, r3
.Lf324e:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, r11
	mov	r7, r4
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	and	r6, r3
	and	r7, r3
	mov	r2, #2
	mov	r1, #3
	and	r5, r3
	mov	r0, r6
	lsr	r3, r7, #1
	sub	r7, r3
	add	r10, r2
	bl	Func_af0_from_thumb
	add	r7, #6
	sub	r6, r0
	mov	r0, r7
	bl	Func_f3898
	add	r6, #4
	mov	r7, r0
	mov	r0, r6
	bl	Func_f3898
	sub	r5, #6
	mov	r6, r0
	mov	r0, r5
	bl	Func_f3898
	ldr	r2, =.Lf3a6e
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r2, =.Lf3a2e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	ldr	r2, =.Lf39ee
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r1, #4]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #6
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.Lf324e
	b	.Lf3766
.Lf32bc:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf32c8
	b	.Lf3766
.Lf32c8:
	ldr	r1, =.Lf39ee
	mov	r11, r1
.Lf32cc:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r7, r4
	mov	r3, #2
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	and	r7, r1
	add	r10, r3
	and	r6, r1
	and	r5, r1
	cmp	r7, #9
	bgt	.Lf32e8
	mov	r7, #0xa
.Lf32e8:
	cmp	r6, #0xf
	bgt	.Lf32ee
	mov	r6, #0x10
.Lf32ee:
	cmp	r5, #0xf
	bgt	.Lf32f4
	mov	r5, #0x10
.Lf32f4:
	cmp	r7, #0x1c
	ble	.Lf32fa
	mov	r7, #0x1c
.Lf32fa:
	cmp	r6, #0x18
	ble	.Lf3300
	mov	r6, #0x18
.Lf3300:
	cmp	r5, #0x1a
	ble	.Lf3306
	mov	r5, #0x1a
.Lf3306:
	mov	r0, r7
	bl	Func_f3898
	add	r6, #2
	mov	r7, r0
	mov	r0, r6
	bl	Func_f3898
	add	r5, #2
	mov	r6, r0
	mov	r0, r5
	bl	Func_f3898
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r2, #2
	mov	r1, r11
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #2
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.Lf32cc
	b	.Lf3766
.Lf3356:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf3362
	b	.Lf3766
.Lf3362:
	ldr	r1, =.Lf3a6e
	mov	r11, r1
.Lf3366:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r7, r4
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	and	r7, r1
	and	r6, r1
	and	r5, r1
	add	r0, r7, r6
	mov	r1, #3
	mov	r3, #2
	add	r0, r5
	add	r10, r3
	bl	Func_af0_from_thumb
	bl	Func_f3898
	asr	r3, r7, #1
	add	r7, r3, r0
	asr	r3, r6, #1
	add	r6, r3, r0
	asr	r3, r5, #1
	add	r5, r3, r0
	mov	r0, r7
	bl	Func_f3898
	mov	r7, r0
	mov	r0, r6
	bl	Func_f3898
	mov	r6, r0
	mov	r0, r5
	bl	Func_f3898
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	mov	r1, r11
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf3366
	b	.Lf3766
.Lf33d8:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.Lf33e4
	b	.Lf3766
.Lf33e4:
	mov	r2, #0x1f
	mov	r11, r2
.Lf33e8:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	mov	r7, r4
	and	r6, r2
	and	r5, r2
	and	r7, r2
	asr	r3, r6, #3
	asr	r2, r5, #3
	add	r3, r2
	add	r7, r3
	mov	r1, #2
	mov	r0, r7
	add	r10, r1
	bl	Func_f3898
	mov	r1, #3
	mov	r7, r0
	mov	r0, r6
	bl	Func_af0_from_thumb
	mov	r1, #3
	sub	r6, r0
	mov	r0, r5
	bl	Func_af0_from_thumb
	ldr	r1, =.Lf39ee
	sub	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1, #2]
	ldr	r2, =.Lf3a2e
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf33e8
	b	.Lf3766

	.pool_aligned

.Lf346c:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.Lf3478
	b	.Lf3766
.Lf3478:
	mov	r2, #0x1f
	mov	r11, r2
.Lf347c:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	mov	r7, r4
	lsr	r6, r4, #5
	and	r7, r2
	and	r6, r2
	mov	r1, #2
	lsr	r3, r7, #1
	lsr	r5, r4, #10
	mov	r0, r6
	add	r10, r1
	mov	r1, #3
	and	r5, r2
	sub	r7, r3
	bl	Func_af0_from_thumb
	add	r7, #6
	sub	r6, r0
	mov	r0, r7
	bl	Func_f3898
	add	r6, #4
	mov	r7, r0
	mov	r0, r6
	bl	Func_f3898
	sub	r5, #6
	mov	r6, r0
	mov	r0, r5
	bl	Func_f3898
	ldr	r2, =.Lf3a6e
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r2, =.Lf3a2e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	ldr	r2, =.Lf39ee
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r1, #4]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #6
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.Lf347c
	b	.Lf3766

	.pool_aligned

.Lf34f8:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf3504
	b	.Lf3766
.Lf3504:
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.Lf351c

	.pool_aligned

.Lf351c:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r3, #2
	add	r10, r3
	mov	r3, r4
	and	r3, r5
	strh	r3, [r1]
	mov	r3, r4
	and	r3, r0
	lsl	r3, #5
	and	r4, r2
	strh	r3, [r1, #2]
	lsl	r3, r4, #10
	strh	r3, [r1, #4]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [sp, #0x24]
	add	r1, #6
	cmp	r9, r3
	bcc	.Lf351c
	b	.Lf3766
.Lf3546:
	mov	r3, #0x80
	lsl	r3, #14
	and	r3, r0
	cmp	r3, #0
	beq	.Lf35e6
	mov	r3, #0x1f
	str	r0, [sp, #0x20]
	mov	r1, r0
	lsr	r2, r0, #5
	lsr	r0, #10
	and	r1, r3
	mov	r11, r0
	and	r2, r3
	str	r1, [sp, #0x20]
	mov	r1, r11
	and	r1, r3
	str	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x24]
	mov	r2, #0
	mov	r9, r2
	mov	r11, r1
	cmp	r9, r3
	bcc	.Lf3576
	b	.Lf3766
.Lf3576:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, #0xf8
	lsl	r0, r4, #11
	lsl	r3, #8
	mov	r2, #2
	and	r0, r3
	mov	r3, #0xf8
	lsl	r3, #9
	add	r10, r2
	lsl	r2, r4, #7
	and	r2, r3
	mov	r3, #0xf8
	lsl	r3, #7
	and	r3, r4
	add	r0, r2
	add	r0, r3
	mov	r1, #0x60
	ldr	r3, =Func_af0
	bl	_call_via_r3
	ldr	r1, [sp, #0x20]
	mov	r4, r0
	mov	r7, r1
	mul	r7, r4
	ldr	r2, [sp, #0x1c]
	mov	r0, r7
	mov	r6, r2
	mul	r6, r4
	mov	r5, r11
	mul	r5, r4
	bl	Func_f38ac
	mov	r7, r0
	mov	r0, r6
	bl	Func_f38ac
	mov	r6, r0
	mov	r0, r5
	bl	Func_f38ac
	mov	r3, r8
	mov	r1, r8
	mov	r2, r8
	mov	r5, r0
	strh	r5, [r3]
	strh	r6, [r1, #2]
	strh	r7, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf3576
	b	.Lf3766
.Lf35e6:
	mov	r3, #0x80
	lsl	r3, #15
	and	r3, r0
	cmp	r3, #0
	bne	.Lf35f2
	b	.Lf36f0
.Lf35f2:
	mov	r3, #0x1f
	str	r0, [sp, #0x18]
	mov	r1, r0
	lsr	r2, r0, #5
	lsr	r0, #10
	and	r1, r3
	mov	r11, r0
	and	r2, r3
	str	r1, [sp, #0x18]
	mov	r1, r11
	and	r1, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x24]
	mov	r2, #0
	mov	r9, r2
	mov	r11, r1
	cmp	r9, r3
	bcc	.Lf3618
	b	.Lf3766
.Lf3618:
	ldr	r2, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	add	r1, r2
	str	r1, [sp, #4]
	lsl	r1, r2, #16
	mov	r2, r11
	lsl	r3, #16
	lsl	r2, #16
	str	r3, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
.Lf3630:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, #0x1f
	mov	r7, r4
	lsr	r0, r4, #5
	and	r7, r2
	and	r0, r2
	lsr	r3, r4, #10
	mov	r1, #2
	and	r3, r2
	add	r10, r1
	add	r0, r7, r0
	ldr	r1, [sp, #4]
	add	r0, r3
	add	r1, r11
	ldr	r3, =Func_af0
	lsl	r0, #4
	bl	_call_via_r3
	ldr	r3, [sp, #0x18]
	mov	r4, r0
	mov	r0, r3
	mul	r0, r4
	ldr	r2, [sp, #0x10]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	ldr	r3, =Func_888
	.call_via r3
	ldr	r1, [sp, #0x14]
	mov	r7, r0
	mov	r0, r1
	mul	r0, r4
	ldr	r2, [sp, #0xc]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	.call_via r3
	mov	r6, r0
	mov	r0, r11
	mul	r0, r4
	ldr	r3, [sp, #8]
	lsr	r0, #4
	asr	r1, r3, #4
	lsl	r0, #16
	ldr	r3, =Func_888
	.call_via r3
	mov	r5, r0
	lsr	r0, r7, #16
	bl	Func_f3898
	mov	r7, r0
	lsr	r0, r6, #16
	bl	Func_f3898
	mov	r6, r0
	lsr	r0, r5, #16
	bl	Func_f3898
	ldr	r1, =.Lf39ee
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, =.Lf39ee
	mov	r2, #2
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #2
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf3630
	b	.Lf3766

	.pool_aligned

.Lf36f0:
	mov	r3, #0x80
	lsl	r3, #16
	and	r3, r0
	cmp	r3, #0
	beq	.Lf3746
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcs	.Lf3766
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.Lf371c

	.pool_aligned

.Lf371c:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r3, #2
	add	r10, r3
	mov	r3, r4
	and	r3, r5
	strh	r3, [r1]
	mov	r3, r4
	and	r3, r0
	lsl	r3, #5
	and	r4, r2
	strh	r3, [r1, #2]
	lsl	r3, r4, #10
	strh	r3, [r1, #4]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [sp, #0x24]
	add	r1, #6
	cmp	r9, r3
	bcc	.Lf371c
	b	.Lf3766
.Lf3746:
	cmp	r2, #2
	bne	.Lf3750
	mov	r1, #0xc0
	lsl	r1, #3
	add	r0, r1
.Lf3750:
	ldr	r3, [sp, #0x24]
	lsl	r2, r3, #1
	add	r2, r3
	mov	r4, #0x84
	lsl	r4, #24
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
.Lf375e:
	mov	r1, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lf3766:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f3078

.thumb_func_start Func_f377c
	push	{lr}
	ldr	r1, =0x3004
	mov	r0, #0x20
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000c01
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xa0
	lsl	r0, #19
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	lsl	r2, #2
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #5
	mov	r0, #0x80
	add	r2, r4, r3
	mov	r1, r4
	mov	r3, #0
	lsl	r0, #9
	bl	Func_f3078
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_f2f10
	bl	Func_41d8
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_f377c

.thumb_func_start Func_f37ec
	push	{lr}
	ldr	r0, =Func_f2f10
	bl	Func_4278
	mov	r0, #0x20
	bl	Func_2dd8
	pop	{r0}
	bx	r0
.func_end Func_f37ec

.thumb_func_start Func_f3804
	push	{lr}
	ldr	r3, =iwram_1ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lf381c
	mov	r3, #0x80
	lsl	r3, #5
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_f3078
.Lf381c:
	pop	{r0}
	bx	r0
.func_end Func_f3804

.thumb_func_start Func_f3824
	push	{lr}
	ldr	r3, =iwram_1ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lf383c
	mov	r3, #0x80
	lsl	r3, #3
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_f3078
.Lf383c:
	pop	{r0}
	bx	r0
.func_end Func_f3824

.thumb_func_start Func_f3844
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lf3850
	strh	r0, [r3]
.Lf3850:
	pop	{r0}
	bx	r0
.func_end Func_f3844

.thumb_func_start Func_f3858
	push	{r5, lr}
	ldr	r3, =iwram_1ed0
	ldr	r4, [r3]
	mov	r5, r0
	cmp	r4, #0
	beq	.Lf388a
	ldr	r1, =0x3001
	add	r3, r4, r1
	add	r1, #1
	mov	r2, #0
	strb	r5, [r3]
	add	r3, r4, r1
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, #0x80
	add	r1, r4, r3
	mov	r3, #0xe0
	lsl	r2, #3
	lsl	r3, #5
	add	r0, r4, r2
	add	r2, r4, r3
	mov	r3, r5
	bl	Func_f2ebc
.Lf388a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_f3858

.thumb_func_start Func_f3898
	push	{lr}
	cmp	r0, #0x1f
	ble	.Lf38a2
	mov	r0, #0x1f
	b	.Lf38a8
.Lf38a2:
	cmp	r0, #0
	bge	.Lf38a8
	mov	r0, #0
.Lf38a8:
	pop	{r1}
	bx	r1
.func_end Func_f3898

.thumb_func_start Func_f38ac
	push	{lr}
	mov	r3, #0xf8
	lsl	r3, #7
	cmp	r0, r3
	ble	.Lf38b8
	mov	r0, r3
.Lf38b8:
	pop	{r1}
	bx	r1
.func_end Func_f38ac

	.section .rodata

.Lf38bc:
	.incrom 0xf38bc, 0xf39ab
.Lf39ab:
	.incrom 0xf39ab, 0xf39b1
.Lf39b1:
	.incrom 0xf39b1, 0xf39ee
.Lf39ee:
	.incrom 0xf39ee, 0xf3a2e
.Lf3a2e:
	.incrom 0xf3a2e, 0xf3a6e
.Lf3a6e:
	.incrom 0xf3a6e, 0xf3aae
