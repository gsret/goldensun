	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1948
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	push	{r5, r6, lr}
	ldr	r5, =REG_IME
	ldrh	r6, [r5]
	strh	r5, [r5]
	bl	__Func_6358
	bl	__Func_5d10
	strh	r6, [r5]
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_58
	ldr	r0, =.L19f0
	bx	lr
.func_end OvlFunc_58

.thumb_func_start OvlFunc_60
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.L76
	cmp	r3, #9
	bne	.L7a
.L76:
	ldr	r0, =.L1c04
	b	.L7c
.L7a:
	ldr	r0, =.L19f4
.L7c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_60

.thumb_func_start OvlFunc_8c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	mov	r5, #1
	and	r3, r2
	mov	r7, r0
	neg	r5, r5
	cmp	r3, #3
	bne	.Lee
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	ldr	r0, =0x303
	lsl	r3, #26
	lsr	r5, r3, #30
	bl	__Func_79358
	b	.Lf4
.Lb0:
	ldr	r3, =.L1928
	lsl	r2, r7, #2
	add	r6, r2, r3
	cmp	r5, #0
	beq	.Lc2
	ldr	r0, =0x302
	bl	__Func_79358
	b	.Lc8
.Lc2:
	ldr	r0, =0x302
	bl	__Func_79374
.Lc8:
	ldr	r0, =0x302
	bl	__Func_79338
	mov	r3, #1
	eor	r0, r3
	lsl	r2, r0, #1
	ldr	r3, =ewram_2024
	add	r2, r0
	lsl	r2, #3
	add	r2, r3
	ldr	r3, =.L1940
	ldrb	r3, [r3, r7]
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r6]
	cmp	r2, r3
	bne	.L102
	mov	r0, #1
	b	.L104
.Lee:
	ldr	r0, =0x303
	bl	__Func_79374
.Lf4:
	cmp	r5, #0
	blt	.L102
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb0
.L102:
	mov	r0, #0
.L104:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_8c

.thumb_func_start OvlFunc_128
	ldr	r3, =.L1940
	ldr	r2, =.L1928
	lsl	r1, r0, #2
	ldrb	r3, [r3, r0]
	ldr	r4, =ewram_2224
	ldr	r2, [r1, r2]
	lsl	r3, #2
	str	r2, [r3, r4]
	bx	lr
.func_end OvlFunc_128

.thumb_func_start OvlFunc_148
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r2, #1
	mov	r0, #0
	mov	r8, r3
	mov	r10, r2
	bl	__Func_92054
	mov	r2, #0xe0
	ldr	r3, [r0, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L172
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
.L172:
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.L240
	mov	r0, #0
	bl	OvlFunc_8c
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1c0
	ldr	r2, =.L1f4c
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x19
	ble	.L1c6
	ldr	r7, =Func_8d4
	ldr	r6, =ewram_2024
	mov	r5, #3
.L1a2:
	mov	r0, r6
	mov	r1, #0x14
	sub	r5, #1
	bl	_call_via_r7
	add	r6, #0x18
	cmp	r5, #0
	bge	.L1a2
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
	mov	r0, #4
	bl	OvlFunc_128
	b	.L1c6
.L1c0:
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
.L1c6:
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L216
	mov	r0, #0
	bl	OvlFunc_8c
	cmp	r0, #0
	beq	.L20c
	mov	r0, #1
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.L1ec
	mov	r0, #2
	bl	OvlFunc_8c
	cmp	r0, #0
	beq	.L20c
.L1ec:
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L206
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.L206:
	mov	r3, #1
	mov	r10, r3
	b	.L216
.L20c:
	ldr	r0, =0x201
	bl	__Func_79374
	mov	r2, #0
	mov	r10, r2
.L216:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L240
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L240
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L240
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.L240:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L254
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L292
.L254:
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	bne	.L292
	mov	r0, #0
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.L292
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0x18
	ble	.L292
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
	ldr	r0, =0x205
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	mov	r0, #4
	bl	OvlFunc_128
.L292:
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2a6
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
.L2a6:
	mov	r0, r10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_148

.thumb_func_start OvlFunc_2d8
	push	{lr}
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	bne	.L32e
	ldr	r2, =.L1f50
	ldr	r3, [r2]
	mov	r1, #0x96
	add	r3, #1
	lsl	r1, #1
	str	r3, [r2]
	cmp	r3, r1
	bne	.L2fe
	str	r0, [r2]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
.L2fe:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L32e
	bl	__Func_916b0
	ldr	r0, =0x292e
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #5
	bl	__Func_30f8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_91750
.L32e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2d8

.thumb_func_start OvlFunc_340
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #4
	ldr	r5, [r3]
	bl	OvlFunc_128
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x203
	bl	__Func_79374
	bl	__Func_916b0
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r0, =0x2927
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	ldr	r0, =0x205
	bl	__Func_79374
	bl	__Func_91750
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_340

.thumb_func_start OvlFunc_398
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0xaa
	lsl	r2, #1
	mov	r8, r2
	mov	r0, r8
	sub	sp, #0x30
	bl	__Func_4970
	mov	r7, #0xe1
	mov	r3, #0
	mov	r11, r0
	mov	r9, r3
	lsl	r7, #2
	mov	r10, r3
	b	.L474
.L3c2:
	ldr	r3, =ewram_2238
	ldrh	r3, [r3]
	cmp	r3, r8
	bls	.L3cc
	b	.L4dc
.L3cc:
	mov	r0, #1
	sub	r7, #1
	bl	__Func_30f8
	cmp	r7, #0
	blt	.L3e4
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L3ea
.L3e4:
	add	r5, #1
	cmp	r5, #0x18
	bgt	.L4a0
.L3ea:
	bl	__Func_64f4
	cmp	r0, #0
	bne	.L3c2
	ldr	r3, =ewram_2238
	ldrh	r3, [r3]
	mov	r12, r3
	cmp	r12, r8
	bne	.L4dc
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L40c
	mov	r3, #1
	add	r9, r3
.L40c:
	mov	r0, #2
	bl	__Func_30f8
	ldr	r0, =0x80c
	mov	r1, sp
	bl	__Func_1964c
	mov	r0, #0
	mov	r5, sp
	ldrh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L434
	mov	r2, r5
.L426:
	add	r0, #1
	cmp	r0, #4
	bgt	.L434
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L426
.L434:
	mov	r4, r0
	mov	r0, #0xe
	cmp	r0, r4
	blt	.L454
	sub	r3, r6, r4
	mov	r1, r6
	mov	r2, r3
	add	r1, #0xe
	add	r2, #0xe
.L446:
	ldrb	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	sub	r2, #1
	sub	r1, #1
	cmp	r0, r4
	bge	.L446
.L454:
	cmp	r4, #0
	ble	.L46c
	mov	r1, r6
	mov	r2, r5
	mov	r0, r4
.L45e:
	ldrh	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r0, #0
	bne	.L45e
.L46c:
	mov	r3, #0
	mov	r2, #1
	strb	r3, [r6, #0xe]
	add	r10, r2
.L474:
	mov	r3, r10
	cmp	r3, #2
	bgt	.L4ec
	mov	r0, r10
	add	r0, #0x80
	bl	__Func_77394
	mov	r6, r0
	bl	__Func_6408
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L3ea
	b	.L514
.L494:
	ldr	r3, =ewram_2238
	mov	r2, #0xa0
	ldrh	r3, [r3]
	lsl	r2, #1
	cmp	r3, r2
	ble	.L4a8
.L4a0:
	mov	r3, #1
	neg	r3, r3
	mov	r9, r3
	b	.L516
.L4a8:
	mov	r0, #1
	sub	r7, #1
	bl	__Func_30f8
	cmp	r7, #0
	blt	.L4c0
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L4c6
.L4c0:
	add	r5, #1
	cmp	r5, #0x18
	bgt	.L4dc
.L4c6:
	bl	__Func_64f4
	cmp	r0, #0
	bne	.L494
	ldr	r3, =ewram_2238
	ldrh	r3, [r3]
	mov	r12, r3
	mov	r3, #0xa0
	lsl	r3, #1
	cmp	r12, r3
	beq	.L4e4
.L4dc:
	mov	r2, #1
	neg	r2, r2
	mov	r9, r2
	b	.L516
.L4e4:
	mov	r0, #2
	bl	__Func_30f8
	b	.L516
.L4ec:
	mov	r0, r11
	bl	__Func_2df0
	mov	r3, #0xa0
	lsl	r3, #1
	mov	r8, r3
	mov	r0, r8
	bl	__Func_4970
	mov	r11, r0
	mov	r0, #1
	bl	__Func_77330
	bl	__Func_6408
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L4c6
.L514:
	mov	r9, r0
.L516:
	mov	r0, r11
	bl	__Func_2df0
	mov	r0, r9
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_398

.thumb_func_start OvlFunc_53c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_795fc
	cmp	r0, #3
	ble	.L54a
	mov	r0, #3
.L54a:
	cmp	r0, #0
	ble	.L56a
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r3, r2
	mov	r1, r0
.L558:
	ldrb	r2, [r3]
	add	r3, #1
	cmp	r5, #0
	beq	.L564
	strh	r2, [r5]
	add	r5, #2
.L564:
	sub	r1, #1
	cmp	r1, #0
	bne	.L558
.L56a:
	cmp	r5, #0
	beq	.L572
	ldr	r3, .L578	@ 0xff
	strh	r3, [r5]
.L572:
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.L578:
	.word	0xff
	.pool
.func_end OvlFunc_53c

.thumb_func_start OvlFunc_580
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, #0xaa
	lsl	r5, #1
	mov	r0, r5
	sub	sp, #0x20
	bl	__Func_4970
	add	r5, sp, #0x10
	mov	r1, #0
	mov	r8, r0
	mov	r0, r5
	str	r1, [sp, #4]
	bl	OvlFunc_53c
	mov	r2, sp
	add	r2, #8
	str	r2, [sp]
	ldr	r1, [sp]
	mov	r6, #0x96
	mov	r3, sp
	lsl	r6, #2
	mov	r11, r0
	mov	r2, #0
	add	r3, #0xf
	mov	r12, r1
.L5be:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.L5be
	mov	r7, #0
	cmp	r7, r11
	bge	.L68a
	mov	r2, #0
	mov	r9, r5
	mov	r10, r2
.L5d2:
	mov	r3, r10
	mov	r1, r9
	ldrh	r0, [r3, r1]
	bl	__Func_77394
	mov	r2, #0xaa
	mov	r1, r0
	lsl	r2, #1
	ldr	r3, =iwram_1388
	mov	r0, r8
	bl	_call_via_r3
	mov	r2, #0x95
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r10
	mov	r3, r9
	ldrh	r2, [r1, r3]
	ldr	r1, [sp]
	mov	r3, r7
	sub	r3, #0x80
	strb	r3, [r1, r2]
	mov	r1, #0xaa
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_63bc
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L63a
	str	r0, [sp, #4]
	b	.L78e
.L61a:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	blt	.L632
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L63a
.L632:
	add	r5, #1
	cmp	r5, #0x18
	ble	.L63a
	b	.L772
.L63a:
	bl	__Func_64f4
	cmp	r0, #0
	bne	.L61a
	mov	r0, #2
	bl	__Func_30f8
	add	r7, #1
	mov	r1, #2
	add	r10, r1
	cmp	r7, r11
	blt	.L5d2
	b	.L68a
.L654:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	blt	.L66c
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L67a
.L66c:
	add	r5, #1
	cmp	r5, #0x18
	ble	.L67a
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.L78e
.L67a:
	bl	__Func_64f4
	cmp	r0, #0
	bne	.L654
	mov	r0, #2
	bl	__Func_30f8
	add	r7, #1
.L68a:
	cmp	r7, #2
	bgt	.L6ae
	mov	r3, #0x95
	lsl	r3, #1
	add	r3, r8
	mov	r5, #0
	mov	r1, #0xaa
	strb	r5, [r3]
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_63bc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L67a
	str	r0, [sp, #4]
	b	.L78e
.L6ae:
	mov	r5, #0xa0
	mov	r0, r8
	lsl	r5, #1
	bl	__Func_2df0
	mov	r0, r5
	bl	__Func_4970
	mov	r8, r0
	mov	r0, #0
	bl	__Func_77330
	ldr	r3, =iwram_1388
	mov	r1, r0
	mov	r2, r5
	mov	r0, r8
	bl	_call_via_r3
	mov	r5, r8
	mov	r2, #0x84
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0
	ldr	r3, [r2]
	mov	r10, r1
	mov	r7, #0x96
	mov	r1, #0x80
	add	r5, #8
	lsl	r7, #2
	mov	r4, #0
	lsl	r1, #1
	cmp	r10, r3
	bge	.L73a
	ldr	r3, [sp]
	mov	r6, r2
	mov	r12, r3
	mov	r0, r5
.L6f8:
	ldrb	r3, [r0, #2]
	mov	r2, r12
	ldrb	r3, [r2, r3]
	strb	r3, [r0, #2]
	lsl	r3, #24
	cmp	r3, #0
	bne	.L72c
	ldr	r3, [r6]
	sub	r3, #1
	cmp	r4, r3
	bge	.L722
	ldr	r2, [r5, r1]
	lsl	r3, r4, #2
	sub	r2, #1
	add	r1, r3, r5
	sub	r2, r4
.L718:
	ldr	r3, [r1, #4]
	sub	r2, #1
	stmia	r1!, {r3}
	cmp	r2, #0
	bne	.L718
.L722:
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
	sub	r0, #4
	sub	r4, #1
.L72c:
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r3, [r5, r1]
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	blt	.L6f8
.L73a:
	mov	r1, #0xa0
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_63bc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L77a
	str	r0, [sp, #4]
	b	.L78e
.L750:
	mov	r0, #1
	sub	r7, #1
	bl	__Func_30f8
	cmp	r7, #0
	blt	.L768
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L77a
.L768:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x18
	ble	.L77a
.L772:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #4]
	b	.L78e
.L77a:
	bl	__Func_64f4
	cmp	r0, #0
	bne	.L750
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #2
	bl	__Func_30f8
.L78e:
	mov	r0, r8
	bl	__Func_2df0
	ldr	r0, [sp, #4]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_580

.thumb_func_start OvlFunc_7b0
	push	{r5, r6, lr}
	mov	r6, #0
	ldr	r0, =0x302
	bl	__Func_79338
	ldr	r3, =ewram_23a0
	strb	r6, [r3]
	cmp	r0, #0
	bne	.L7e6
	mov	r0, #5
	bl	__Func_30f8
	bl	OvlFunc_580
	mov	r6, r0
	cmp	r6, #0
	blt	.L812
	mov	r0, #5
	bl	__Func_30f8
	bl	OvlFunc_398
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	bge	.L802
	b	.L80e
.L7e6:
	bl	OvlFunc_398
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	blt	.L812
	mov	r0, #0xa
	bl	__Func_30f8
	bl	OvlFunc_580
	mov	r6, r0
	cmp	r6, #0
	blt	.L812
.L802:
	mov	r0, #0xfc
	lsl	r0, #2
	mov	r1, r5
	bl	__Func_793c8
	mov	r6, r5
.L80e:
	cmp	r5, #0
	bge	.L836
.L812:
	ldr	r1, =ewram_2220
	ldr	r0, =REG_IME
	ldrh	r4, [r0]
	strh	r0, [r0]
	mov	r2, #0
	mov	r3, #0x80
	strb	r3, [r1, #1]
	ldr	r3, =ewram_2080
	str	r2, [r3]
	ldr	r3, =ewram_2008
	strh	r2, [r3]
	ldr	r3, =ewram_23ac
	str	r2, [r3]
	ldr	r3, =ewram_2238
	strb	r2, [r1, #3]
	strb	r2, [r1, #2]
	strh	r2, [r3]
	strh	r4, [r0]
.L836:
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7b0

.thumb_func_start OvlFunc_860
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r2, #0
	ldr	r0, =0x173
	mov	r8, r2
	mov	r7, #0
	mov	r10, r3
	mov	r6, #0
	bl	__Func_79338
	cmp	r0, #0
	beq	.L886
	bl	__Func_916b0
	b	.L95a
.L886:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L894
	b	.Lb88
.L894:
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L8d0
	b	.Lb88
.L8a0:
	mov	r2, #0xc1
	lsl	r2, #1
	mov	r3, #2
	add	r2, r10
	strh	r3, [r2]
	ldr	r0, =0x205
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	mov	r0, #4
	bl	OvlFunc_128
	mov	r0, #0x80
	mov	r3, #1
	lsl	r0, #2
	mov	r8, r3
	bl	__Func_79374
	b	.L948
.L8d0:
	bl	__Func_916b0
	ldr	r0, =0x203
	bl	__Func_79358
	mov	r0, #2
	bl	OvlFunc_128
	mov	r0, #2
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.L93e
	ldr	r0, =0x2928
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_17658
	mov	r7, r0
	b	.L93e
.L8fa:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x201
	mov	r5, #0
	bl	__Func_79338
	cmp	r0, #0
	bne	.L90e
	mov	r5, #1
.L90e:
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L91a
	mov	r5, #1
.L91a:
	mov	r0, #2
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.L938
	mov	r0, #1
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.L938
	add	r6, #1
	cmp	r6, #0x19
	ble	.L93a
	mov	r5, #1
	b	.L93a
.L938:
	mov	r6, #0
.L93a:
	cmp	r5, #0
	bne	.L8a0
.L93e:
	mov	r0, #2
	bl	OvlFunc_8c
	cmp	r0, #0
	beq	.L8fa
.L948:
	cmp	r7, #0
	beq	.L954
	mov	r0, r7
	mov	r1, #1
	bl	__Func_16418
.L954:
	mov	r0, #5
	bl	__Func_30f8
.L95a:
	mov	r2, r8
	cmp	r2, #0
	beq	.L962
	b	.Lb5c
.L962:
	mov	r1, #0xf9
	lsl	r1, #3
	mov	r0, #0x36
	bl	__Func_48f4
	ldr	r5, =OvlFunc_148
	mov	r6, r0
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #5
	bl	__Func_118a8
	mov	r0, #8
	bl	__Func_30f8
	mov	r0, #5
	bl	__Func_118c0
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9e8
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	ldr	r0, =0x293b
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0x2d
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xd8
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	b	.Lab6
.L9e8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_9218c
	bl	OvlFunc_7b0
	cmp	r0, #0
	bge	.Laa2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xc8
	mov	r1, #0xd8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #5
	bl	__Func_118a8
	mov	r0, #8
	bl	__Func_30f8
	mov	r0, #5
	bl	__Func_118c0
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x36
	bl	__Func_2dd8
	mov	r0, #0
	bl	OvlFunc_128
	mov	r0, #4
	bl	OvlFunc_128
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r1, #1
	mov	r0, r5
	bl	__Func_4358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	ldr	r0, =0x203
	bl	__Func_79374
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r10
	mov	r3, #2
	strh	r3, [r2]
	b	.Lb5c
.Laa2:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_923c4
.Lab6:
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb0c
	ldr	r5, =0xbe
	mov	r1, #8
	mov	r0, r5
	bl	__Func_91f90
	mov	r0, r5
	mov	r1, #9
	bl	__Func_91fa8
	b	.Lb1e

	.pool_aligned

.Lb0c:
	ldr	r5, =0xbe
	mov	r1, #0xa
	mov	r0, r5
	bl	__Func_91f90
	mov	r0, r5
	mov	r1, #0xb
	bl	__Func_91fa8
.Lb1e:
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #4
	strb	r2, [r3]
	mov	r0, #1
	mov	r1, #1
	bl	__Func_91eb0
	ldr	r2, =ewram_2224
	ldr	r3, .Lb64	@ 0x58
	ldr	r1, .Lb68	@ 0x45
	strh	r3, [r2, #2]
	ldr	r3, .Lb6c	@ 0x43
	strh	r1, [r2]
	strh	r1, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r4, =0x7c7
	ldr	r2, =ewram_18000
	mov	r1, #0
	mov	r0, r6
.Lb48:
	ldrb	r3, [r0]
	add	r1, #1
	strb	r3, [r2]
	add	r0, #1
	add	r2, #1
	cmp	r1, r4
	bls	.Lb48
	mov	r0, #0x36
	bl	__Func_2dd8
.Lb5c:
	bl	__Func_91750
	b	.Lb88

	.align	2, 0
.Lb64:
	.word	0x58
.Lb68:
	.word	0x45
.Lb6c:
	.word	0x43
	.pool

.Lb88:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_860

.thumb_func_start OvlFunc_b94
	push	{r5, r6, r7, lr}
	ldr	r6, =0x2930
	bl	__Func_916b0
	ldr	r7, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r7, r2
	mov	r0, #8
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.Lbbe
	mov	r0, #1
	bl	__Func_30f8
.Lbbe:
	mov	r0, #0
	bl	OvlFunc_8c
	cmp	r0, #0
	bne	.Lc40
	mov	r0, #5
	bl	OvlFunc_128
	bl	OvlFunc_3c
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc74
	add	r0, r6, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc28
	mov	r0, #0xfa
	mov	r1, #0
	lsl	r0, #2
	bl	__Func_793c8
	ldr	r0, =0x173
	bl	__Func_79358
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__Func_79374
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79358
	ldr	r2, =0x2aa
	add	r3, r7, r2
	add	r0, r6, #7
	strh	r5, [r3]
	b	.Lc76
.Lc28:
	ldr	r0, =0x173
	bl	__Func_79374
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0
	bl	OvlFunc_128
	add	r0, r6, #6
	b	.Lc76
.Lc40:
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc6a
	mov	r0, #0
	bl	OvlFunc_128
	ldr	r0, =0x293d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	ldr	r0, =0x202
	bl	__Func_79374
	ldr	r0, =0x173
	bl	__Func_79374
.Lc6a:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc84
.Lc74:
	add	r0, r6, #3
.Lc76:
	bl	__Func_92b94
.Lc7a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
	b	.Ld3c
.Lc84:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcb2
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcb2
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	b	.Ld3c
.Lcb2:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lccc
	add	r0, r6, #2
	bl	__Func_92b94
	b	.Lcd2
.Lccc:
	add	r0, r6, #1
	bl	__Func_92b94
.Lcd2:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Ld2e
	mov	r0, #0
	bl	OvlFunc_8c
	cmp	r0, #0
	beq	.Ld26
	mov	r0, #0xb6
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld12
	add	r0, r6, #3
	bl	__Func_92b94
	b	.Ld18
.Ld12:
	add	r0, r6, #4
	bl	__Func_92b94
.Ld18:
	mov	r0, #1
	bl	OvlFunc_128
	ldr	r0, =0x202
	bl	__Func_79358
	b	.Lc7a
.Ld26:
	ldr	r0, =0x205
	bl	__Func_79358
	b	.Ld3c
.Ld2e:
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
.Ld3c:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_b94

.thumb_func_start OvlFunc_d68
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r6, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r7
	bl	__Func_9280c
	ldr	r3, =0xffff5fff
	ldr	r2, =0x3ffe
	add	r5, r3
	cmp	r5, r2
	bhi	.Ldac
	mov	r2, #0xab
	ldr	r3, =0x297b
	lsl	r2, #2
	add	r5, r6, r2
	mov	r8, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.Ldba
	ldr	r0, =0x2988
	b	.Ldca
.Ldac:
	ldr	r2, =0x2b2
	ldr	r3, =0x297d
	add	r5, r6, r2
	mov	r8, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Ldd8
.Ldba:
	bl	__Func_198dc
	mov	r1, #5
	ldrh	r0, [r5]
	bl	__Func_19908
	mov	r0, r8
	add	r0, #1
.Ldca:
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	b	.Lde6
.Ldd8:
	ldr	r0, =0x2989
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.Lde6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_d68

.thumb_func_start OvlFunc_e10
	push	{r5, r6, r7, lr}
	sub	sp, #4
	mov	r5, r0
	bl	__Func_916b0
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r5
	bl	__Func_9280c
	ldr	r0, =0x989
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	bl	__Func_162d4
	mov	r7, #1
	mov	r6, r0
	mov	r5, #0
	neg	r7, r7
	b	.Le64
.Le54:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lebe
	mov	r0, #1
	bl	__Func_30f8
.Le64:
	cmp	r5, r7
	beq	.Le7e
	mov	r0, r6
	bl	__Func_16478
	mov	r3, #0
	mov	r0, r5
	mov	r1, #3
	mov	r2, r6
	str	r3, [sp]
	bl	__Func_1e9a0
	mov	r7, r5
.Le7e:
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Le8c
	sub	r5, #1
.Le8c:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Le98
	add	r5, #1
.Le98:
	cmp	r5, #0
	bge	.Le9e
	mov	r5, #0
.Le9e:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Le54
.Leaa:
	mov	r0, r6
	mov	r1, #1
	bl	__Func_16418
	cmp	r5, #0
	blt	.Lec4
	mov	r0, r5
	bl	__Func_b5368
	b	.Lec8
.Lebe:
	mov	r5, #1
	neg	r5, r5
	b	.Leaa
.Lec4:
	ldr	r0, =0x98a
	b	.Lece
.Lec8:
	cmp	r0, #0
	beq	.Ledc
	ldr	r0, =0x98b
.Lece:
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	b	.Leea
.Ledc:
	ldr	r0, =0x98c
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
.Leea:
	mov	r0, #0xa
	bl	__Func_30f8
	bl	__Func_91750
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_e10

.thumb_func_start OvlFunc_f18
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, r5
	bl	__Func_b29a8
	bl	__Func_91750
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f18

.thumb_func_start OvlFunc_f30
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	__Func_795fc
	mov	r5, r0
	mov	r0, #0xb9
	lsl	r0, #1
	mov	r6, #3
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf4a
	mov	r6, #4
.Lf4a:
	cmp	r5, r6
	ble	.Lf50
	mov	r5, r6
.Lf50:
	mov	r1, #0
	cmp	r1, r5
	bge	.Lf7a
	ldr	r3, =ewram_240
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, r3, r0
	mov	r0, r2
.Lf60:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0xff
	beq	.Lf7a
	ldrb	r3, [r2]
	cmp	r3, r7
	bne	.Lf72
	mov	r0, #1
	b	.Lf7c
.Lf72:
	add	r1, #1
	add	r2, #1
	cmp	r1, r5
	blt	.Lf60
.Lf7a:
	mov	r0, #0
.Lf7c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f30

.thumb_func_start OvlFunc_f88
	bx	lr
.func_end OvlFunc_f88

.thumb_func_start OvlFunc_f8c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0
	ldr	r5, =0x294e
	bl	OvlFunc_f30
	mov	r8, r0
	mov	r0, r6
	bl	OvlFunc_f30
	mov	r7, r0
	bl	__Func_916b0
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r6
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lffe
	mov	r0, #0xbc
	lsl	r0, #2
	bl	__Func_79338
	mov	r3, #0xbc
	lsl	r3, #2
	add	r0, r6, r3
	bl	__Func_79338
	mov	r5, r0
	ldr	r0, =0x305
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lff2
	cmp	r5, #0
	beq	.Lfee
	ldr	r5, =0x2967
	b	.L100e
.Lfee:
	ldr	r5, =0x296c
	b	.L100e
.Lff2:
	cmp	r5, #0
	beq	.Lffa
	ldr	r5, =0x2971
	b	.L100e
.Lffa:
	ldr	r5, =0x2976
	b	.L100e
.Lffe:
	mov	r2, r8
	cmp	r2, #0
	beq	.L100c
	cmp	r7, #0
	bne	.L100e
	ldr	r5, =0x2953
	b	.L100e
.L100c:
	ldr	r5, =0x2958
.L100e:
	add	r0, r5, r6
	sub	r0, #1
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f8c

.thumb_func_start OvlFunc_1050
	push	{lr}
	bl	__Func_6358
	mov	r0, #2
	bl	__Func_37d4
	ldr	r0, =1
	mov	r1, #1
	bl	__Func_91e3c
	pop	{r1}
	bx	r1
.func_end OvlFunc_1050

.thumb_func_start OvlFunc_106c
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, #0
	bl	__Func_916b0
	cmp	r5, #0xd
	beq	.L1086
	cmp	r5, #0xd
	bgt	.L108a
	cmp	r5, #0xc
	bne	.L108a
	ldr	r7, =0x2985
	b	.L108c
.L1086:
	ldr	r7, =0x297f
	b	.L108c
.L108a:
	ldr	r7, =0x2982
.L108c:
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r5
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10bc
	ldr	r0, =0x305
	bl	__Func_79338
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r6, r3
	mov	r3, #2
	sub	r6, r3, r6
.L10bc:
	add	r0, r7, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_106c

.thumb_func_start OvlFunc_10e8
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r6
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1126
	bl	__Func_795fc
	cmp	r0, #3
	bgt	.L111a
	ldr	r5, =0x298d
	b	.L111c
.L111a:
	ldr	r5, =0x298c
.L111c:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79358
	b	.L1130
.L1126:
	mov	r0, #0x81
	lsl	r0, #2
	ldr	r5, =0x298e
	bl	__Func_79374
.L1130:
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_10e8

.thumb_func_start OvlFunc_1158
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r6
	bl	__Func_9280c
	mov	r3, #0xaa
	lsl	r3, #2
	add	r2, r5, r3
	ldrh	r3, [r2]
	cmp	r3, #0
	beq	.L118e
	mov	r0, r3
	mov	r1, #5
	bl	__Func_19908
	ldr	r0, =0x298a
	bl	__Func_92b94
	b	.L1194
.L118e:
	ldr	r0, =0x298b
	bl	__Func_92b94
.L1194:
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1158

.thumb_func_start OvlFunc_11b4
	ldr	r0, =.L1e14
	bx	lr
.func_end OvlFunc_11b4

.thumb_func_start OvlFunc_11bc
	push	{r5, lr}
	mov	r0, #0x55
	bl	__Func_f9080
	ldr	r0, =0x292a
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_17658
	mov	r5, r0
	b	.L11da
.L11d4:
	mov	r0, #1
	bl	__Func_30f8
.L11da:
	bl	__Func_17364
	cmp	r0, #0
	beq	.L11d4
	bl	__Func_1faa8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_16418
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x292b
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_17658
	mov	r5, r0
	b	.L120a
.L1204:
	mov	r0, #1
	bl	__Func_30f8
.L120a:
	bl	__Func_17364
	cmp	r0, #0
	beq	.L1204
	mov	r0, r5
	mov	r1, #1
	bl	__Func_16418
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_11bc

.thumb_func_start OvlFunc_1228
	push	{r5, lr}
	mov	r0, #0x55
	bl	__Func_f9080
	ldr	r0, =0x292c
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_17658
	mov	r5, r0
	b	.L1246
.L1240:
	mov	r0, #1
	bl	__Func_30f8
.L1246:
	bl	__Func_17364
	cmp	r0, #0
	beq	.L1240
	bl	__Func_1faa8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_16418
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x292d
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_17658
	mov	r5, r0
	b	.L1276
.L1270:
	mov	r0, #1
	bl	__Func_30f8
.L1276:
	bl	__Func_17364
	cmp	r0, #0
	beq	.L1270
	mov	r0, r5
	mov	r1, #1
	bl	__Func_16418
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1228

.thumb_func_start OvlFunc_1294
	push	{r5, r6, r7, lr}
	ldr	r3, =0x3e7
	mov	r5, r0
	sub	sp, #8
	cmp	r5, r3
	ble	.L12a2
	mov	r5, r3
.L12a2:
	mov	r6, #0
	mov	r7, #1
.L12a6:
	mov	r0, r5
	mov	r1, #0xa
	bl	_Func_b1c
	mov	r2, #0x10
	mov	r1, r0
	sub	r2, r6
	mov	r0, #0x1b
	mov	r3, #8
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	__Func_10424
	mov	r0, r5
	mov	r1, #0xa
	bl	_Func_af0
	add	r6, #1
	mov	r5, r0
	cmp	r6, #2
	ble	.L12a6
	bl	__Func_fe9c
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1294

.thumb_func_start OvlFunc_12e0
	push	{r5, r6, r7, lr}
	ldr	r3, =.L1f50
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L1f4c
	str	r2, [r3]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r0, #2
	sub	sp, #8
	bl	__Func_37d4
	ldr	r3, =ewram_240
	mov	r2, #0xac
	lsl	r2, #2
	add	r3, r2
	ldrh	r0, [r3]
	bl	OvlFunc_1294
	mov	r3, #0xd
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0xb
	mov	r0, #0xb
	bl	__Func_10704
	mov	r0, #4
	bl	OvlFunc_128
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #5
	bl	__Func_118c0
	ldr	r2, =ewram_2224
	ldr	r3, .L1368	@ 0x54
	strh	r3, [r2, #8]
	ldr	r3, .L136c	@ 0x41
	strh	r3, [r2, #0xa]
	ldr	r3, .L1370	@ 0x4c
	strh	r3, [r2, #0xc]
	ldr	r3, .L1374	@ 0x4b
	strh	r3, [r2, #0xe]
	mov	r6, #0
.L134a:
	mov	r3, #0xbc
	lsl	r3, #2
	add	r5, r6, r3
	mov	r0, r5
	bl	__Func_79374
	mov	r0, r6
	bl	OvlFunc_f30
	cmp	r0, #0
	beq	.L138c
	mov	r0, r5
	bl	__Func_79358
	b	.L138c

	.align	2, 0
.L1368:
	.word	0x54
.L136c:
	.word	0x41
.L1370:
	.word	0x4c
.L1374:
	.word	0x4b
	.pool

.L138c:
	add	r6, #1
	cmp	r6, #7
	ble	.L134a
	ldr	r6, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L13a4
	b	.L14a0
.L13a4:
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #5
	bl	OvlFunc_128
	mov	r3, #0xa9
	lsl	r3, #2
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r3, =0x2aa
	add	r2, r6, r3
	ldrh	r3, [r2]
	mov	r0, #0xfe
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #2
	bl	__Func_793b8
	lsl	r0, #24
	asr	r6, r0, #24
	lsl	r3, r6, #1
	add	r5, r3, #2
	cmp	r5, #0xe
	ble	.L13e2
	mov	r5, #0xe
.L13e2:
	mov	r0, #0xfa
	lsl	r0, #2
	bl	__Func_793b8
	cmp	r0, #2
	bne	.L13fe
	mov	r0, #0xfa
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	add	r6, #1
	add	r5, #1
	b	.L1408
.L13fe:
	add	r1, r0, #1
	mov	r0, #0xfa
	lsl	r0, #2
	bl	__Func_793c8
.L1408:
	ldr	r7, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	ldr	r0, =0x293e
	add	r0, r5, r0
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1448
	cmp	r6, #0x5a
	ble	.L143c
	mov	r6, #0x5a
.L143c:
	mov	r0, #0xfe
	lsl	r0, #2
	mov	r1, r6
	bl	__Func_793c8
	b	.L1530
.L1448:
	ldr	r0, =0x173
	bl	__Func_79374
	mov	r0, #0xfe
	mov	r1, #1
	lsl	r0, #2
	neg	r1, r1
	bl	__Func_793c8
	ldr	r3, =0x2aa
	add	r5, r7, r3
	ldrh	r0, [r5]
	mov	r1, #5
	bl	__Func_19908
	mov	r3, #0xaa
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r5, [r5]
	ldrh	r3, [r2]
	cmp	r3, r5
	bcs	.L148a
	strh	r5, [r2]
	ldr	r0, =0x293c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	bl	OvlFunc_1228
	b	.L1498
.L148a:
	ldr	r0, =0x2939
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
.L1498:
	mov	r0, #0
	bl	OvlFunc_128
	b	.L1530
.L14a0:
	cmp	r3, #9
	bne	.L1536
	ldr	r3, =0x2a6
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #5
	bl	OvlFunc_128
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	ldr	r3, =0x2aa
	add	r5, r6, r3
	ldrh	r0, [r5]
	mov	r1, #5
	bl	__Func_19908
	mov	r3, #0xaa
	lsl	r3, #2
	add	r2, r6, r3
	ldrh	r5, [r5]
	ldrh	r3, [r2]
	cmp	r3, r5
	bcs	.L1500
	strh	r5, [r2]
	ldr	r0, =0x293c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	bl	OvlFunc_1228
	b	.L150e
.L1500:
	ldr	r0, =0x293a
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
.L150e:
	ldr	r3, =ewram_240
	ldr	r2, =0x2aa
	add	r3, r2
	mov	r2, #0
	strh	r2, [r3]
	ldr	r0, =0x173
	bl	__Func_79374
	mov	r0, #0xfe
	mov	r1, #1
	lsl	r0, #2
	neg	r1, r1
	bl	__Func_793c8
	mov	r0, #0
.L152c:
	bl	OvlFunc_128
.L1530:
	bl	__Func_91750
	b	.L1680
.L1536:
	cmp	r3, #0xa
	bne	.L15d2
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	OvlFunc_128
	mov	r0, #4
	bl	OvlFunc_128
	mov	r0, #0xfa
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1590
	ldr	r3, =iwram_1ebc
	mov	r0, #0xfa
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_79374
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r0, #0xc1
	mov	r3, #2
	strh	r3, [r2]
	lsl	r0, #2
	bl	__Func_79374
	mov	r0, #0x14
	bl	__Func_30f8
	bl	OvlFunc_3c
	mov	r0, #0
	bl	OvlFunc_128
	mov	r0, #4
	b	.L152c
.L1590:
	mov	r3, #0xab
	lsl	r3, #2
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r3, =0x2b2
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r1, r3, #1
	strh	r1, [r2]
	mov	r2, #0xac
	lsl	r2, #2
	add	r5, r6, r2
	lsl	r3, r1, #16
	ldrh	r2, [r5]
	lsr	r3, #16
	cmp	r2, r3
	bcs	.L15b8
	strh	r1, [r5]
.L15b8:
	ldrh	r0, [r5]
	bl	OvlFunc_1294
	bl	OvlFunc_11bc
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x305
	bl	__Func_79358
	b	.L1530
.L15d2:
	cmp	r3, #0xb
	bne	.L161c
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	OvlFunc_128
	mov	r0, #4
	bl	OvlFunc_128
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	bne	.L160c
	ldr	r2, =0x2ae
	add	r3, r6, r2
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	ldr	r2, =0x2b2
	add	r3, r6, r2
	strh	r0, [r3]
	bl	OvlFunc_11bc
.L160c:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x305
	bl	__Func_79374
	b	.L1530
.L161c:
	bl	__Func_5d10
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__Func_79374
	mov	r0, #0xfe
	mov	r1, #1
	lsl	r0, #2
	neg	r1, r1
	bl	__Func_793c8
	ldr	r3, =0x22a
	add	r5, r6, r3
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L166c
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	ldr	r0, =0x2929
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L166c:
	ldr	r3, =iwram_1d08
	mov	r2, #0
	strb	r2, [r5]
	mov	r0, #0
	strb	r2, [r3]
	bl	OvlFunc_128
	mov	r0, #4
	bl	OvlFunc_128
.L1680:
	ldr	r5, =OvlFunc_148
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_4358
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L16ae
	ldr	r0, =0x173
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16b8
.L16ae:
	mov	r0, #1
	bl	__Func_7808c
	bl	__Func_bf65c
.L16b8:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_12e0

	.section .data

.L1928:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1928, (0x1940-0x1928)
.L1940:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1940, (0x1948-0x1940)
.L1948:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1948, (0x19f0-0x1948)
.L19f0:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x19f0, (0x19f4-0x19f0)
.L19f4:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x19f4, (0x1c04-0x19f4)
.L1c04:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1c04, (0x1e14-0x1c04)
.L1e14:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1e14

	.section .bss

	.lcomm	.L1f4c, 4
	.lcomm	.L1f50, 4
