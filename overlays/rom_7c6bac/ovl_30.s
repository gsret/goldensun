	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #5
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_40
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L58
	ldr	r0, =.L1738
	b	.L6e
.L58:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L62
	ldr	r0, =.L17c8
	b	.L6e
.L62:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L6c
	ldr	r0, =.L1840
	b	.L6e
.L6c:
	ldr	r0, =.L1708
.L6e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_40

.thumb_func_start OvlFunc_94
	mov	r0, #0
	bx	lr
.func_end OvlFunc_94

.thumb_func_start OvlFunc_98
	ldr	r0, =.L18a0
	bx	lr
.func_end OvlFunc_98

.thumb_func_start OvlFunc_a0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lc6
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc2
	ldr	r0, =.L1ba4
	b	.L10a
.Lc2:
	ldr	r0, =.L1acc
	b	.L10a
.Lc6:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Le0
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldc
	ldr	r0, =.L19c4
	b	.L10a
.Ldc:
	ldr	r0, =.L18ec
	b	.L10a
.Le0:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L108
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf6
	ldr	r0, =.L1dcc
	b	.L10a
.Lf6:
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L104
	ldr	r0, =.L1d24
	b	.L10a
.L104:
	ldr	r0, =.L1c7c
	b	.L10a
.L108:
	ldr	r0, =.L18d4
.L10a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a0

.thumb_func_start OvlFunc_144
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8aa
	bl	__Func_79358
	mov	r1, #0xc4
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0xcc
	mov	r2, #0x94
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_144

.thumb_func_start OvlFunc_19c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L1c2
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1be
	ldr	r0, =.L1fa0
	b	.L206
.L1be:
	ldr	r0, =.L1e80
	b	.L206
.L1c2:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L1dc
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d8
	ldr	r0, =.L2120
	b	.L206
.L1d8:
	ldr	r0, =.L2018
	b	.L206
.L1dc:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L204
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1f2
	ldr	r0, =.L2390
	b	.L206
.L1f2:
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L200
	ldr	r0, =.L230c
	b	.L206
.L200:
	ldr	r0, =.L224c
	b	.L206
.L204:
	ldr	r0, =.L1e74
.L206:
	pop	{r1}
	bx	r1
.func_end OvlFunc_19c

.thumb_func_start OvlFunc_240
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1cf8
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_240

.thumb_func_start OvlFunc_260
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8a6
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2b4
	ldr	r0, =0x1cfd
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L29a
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8a6
	bl	__Func_79358
	b	.L2c2
.L29a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	b	.L2c2
.L2b4:
	ldr	r0, =0x1cfe
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
.L2c2:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_260

.thumb_func_start OvlFunc_2dc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	bl	__Func_916b0
	ldr	r0, =0x8a7
	bl	__Func_79338
	cmp	r0, #0
	beq	.L316
	ldr	r0, =0x8a9
	bl	__Func_79338
	cmp	r0, #0
	beq	.L316
	ldr	r0, =0x1d23
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
.L316:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2dc

.thumb_func_start OvlFunc_328
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__Func_916b0
	ldr	r0, =0x8a7
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3de
	ldr	r0, =0x8a9
	bl	__Func_79338
	cmp	r0, #0
	beq	.L378
	ldr	r0, =0x1d23
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92c40
	b	.L496

	.pool_aligned

.L378:
	ldr	r5, =0x1d20
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3ce
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xa1
	mov	r0, #0xc
	mov	r1, #0x58
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x8a9
	bl	__Func_79358
	b	.L496
.L3ce:
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	b	.L496
.L3de:
	mov	r2, #0x80
	lsl	r3, r5, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L49a
	ldr	r0, =0x1d16
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8a5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L48e
	mov	r0, #0xeb
	bl	__Func_78698
	mov	r1, #0xeb
	mov	r5, r0
	bl	__Func_78664
	mov	r1, #3
	mov	r6, r0
	mov	r0, #0xc
	bl	__Func_92548
	mov	r2, #0xa1
	mov	r0, #0xc
	mov	r1, #0x58
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r6
	mov	r0, r5
	bl	__Func_78948
	ldr	r0, =0x8a7
	bl	__Func_79358
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r2, #0xa3
	mov	r0, #0
	lsl	r2, #3
	bl	__Func_921c4
	mov	r2, #0xa3
	mov	r0, #0
	mov	r1, #0x48
	lsl	r2, #3
	bl	__Func_921c4
	mov	r2, #0xa3
	mov	r0, #0xc
	mov	r1, #0x58
	lsl	r2, #3
	bl	__Func_921c4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	b	.L496
.L48e:
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
.L496:
	bl	__Func_91750
.L49a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_328

.thumb_func_start OvlFunc_4b8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8a7
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d8
	ldr	r0, =0x1d1f
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92c40
	b	.L500
.L4d8:
	ldr	r0, =0x8a5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4f2
	ldr	r0, =0x1d1b
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	b	.L500
.L4f2:
	ldr	r0, =0x1d19
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
.L500:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b8

.thumb_func_start OvlFunc_51c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0x96
	lsl	r2, #2
	sub	sp, #4
	mov	r8, r2
	bl	__Func_916b0
	ldr	r0, =0x8a5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L548
	ldr	r0, =0x1d0b
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L664
.L548:
	ldr	r0, =0x1d04
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L56e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	b	.L660
.L56e:
	ldr	r7, =iwram_1ebc
	mov	r3, #0xec
	ldr	r2, [r7]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, r8
	mov	r1, #5
	bl	__Func_19908
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #0xb
	mov	r3, #4
	mov	r0, #0x13
	bl	__Func_162d4
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =0xc8a
	mov	r2, #0
	mov	r3, #0
	bl	__Func_1e7c0
	ldr	r6, =ewram_240
	mov	r3, #8
	ldr	r0, [r6, #0x10]
	mov	r1, #6
	str	r3, [sp]
	mov	r2, r5
	mov	r3, #0x18
	bl	__Func_1ea08
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L5e4
	mov	r0, r5
	mov	r1, #2
	bl	__Func_16418
	mov	r1, #4
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	b	.L614
.L5e4:
	ldr	r3, [r6, #0x10]
	cmp	r8, r3
	bls	.L61e
	mov	r0, r5
	mov	r1, #2
	bl	__Func_16418
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r0, #0x71
	strh	r3, [r2]
	bl	__Func_f9080
.L614:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L660
.L61e:
	mov	r0, r5
	mov	r1, #2
	bl	__Func_16418
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r3, [r7]
	mov	r2, #0xec
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #3
	strh	r2, [r3]
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #0xeb
	bl	__Func_91a58
	ldr	r0, =0x8a5
	bl	__Func_79358
	mov	r3, r8
	neg	r0, r3
	bl	__Func_79700
.L660:
	bl	__Func_91750
.L664:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_51c

.thumb_func_start OvlFunc_688
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1f09
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_688

.thumb_func_start OvlFunc_6a8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1f15
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_6a8

.thumb_func_start OvlFunc_6c8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8a8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L6fc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1f1c
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L7c2
.L6fc:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1f18
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8a6
	bl	__Func_79338
	cmp	r0, #0
	beq	.L7a8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L772
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8a8
	bl	__Func_79358
	b	.L7be
.L772:
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	b	.L7be
.L7a8:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
.L7be:
	bl	__Func_91750
.L7c2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_6c8

.thumb_func_start OvlFunc_7dc
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92b08
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L82a
	mov	r1, #0x98
	mov	r2, #0xae
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_9218c
	ldr	r0, =.L16b8
	mov	r1, #0x4e
	mov	r2, #0x56
	bl	__Func_10560
	b	.L844
.L82a:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L844
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xc0
	bl	__Func_9218c
	ldr	r0, =.L16ce
	mov	r1, #0x4a
	mov	r2, #9
	bl	__Func_10560
.L844:
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #3
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_7dc

.thumb_func_start OvlFunc_86c
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.L886
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79358
.L886:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L89c
	bl	OvlFunc_8cc
	b	.L8b2
.L89c:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L8a8
	bl	OvlFunc_958
	b	.L8b2
.L8a8:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L8b2
	bl	OvlFunc_ad4
.L8b2:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_86c

.thumb_func_start OvlFunc_8cc
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L8f2
	ldr	r0, =0x8ac
	bl	__Func_79338
	cmp	r0, #0
	bne	.L8f2
	ldr	r0, =0x8ac
	bl	__Func_79358
	bl	OvlFunc_ba0
.L8f2:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L910
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L910
	ldr	r0, =0x8a9
	bl	__Func_79374
.L910:
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L93c
	ldr	r0, =0x8a9
	bl	__Func_79338
	cmp	r0, #0
	bne	.L93c
	mov	r1, #0xb0
	mov	r2, #0xa3
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #19
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
.L93c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8cc

.thumb_func_start OvlFunc_958
	push	{r5, r6, lr}
	sub	sp, #8
	bl	OvlFunc_af8
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L974
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_92950
.L974:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #3
	bne	.L98e
	ldr	r0, =0x12f
	bl	__Func_79374
	ldrh	r2, [r5]
.L98e:
	lsl	r3, r2, #16
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r3, r2
	bne	.L99e
	ldr	r0, =0x8aa
	bl	__Func_79374
.L99e:
	ldr	r0, =0x8aa
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9c2
	mov	r1, #0xcc
	mov	r2, #0x94
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L9c2:
	ldr	r0, =0x8ab
	bl	__Func_79338
	cmp	r0, #0
	beq	.La98
	mov	r1, #0x8c
	mov	r2, #0x94
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r2, #0x8c
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xe0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe8
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf0
	mov	r2, #0x9c
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x59
	mov	r2, r0
	strb	r1, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0xc0
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r6, .La84	@ 0
	mov	r3, r0
	add	r3, #0x23
	strb	r6, [r3]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	orr	r3, r5
	strb	r3, [r2, #0x15]
	b	.La98

	.align	2, 0
.La84:
	.word	0
	.pool

.La98:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.Laca
	mov	r3, #0xe
	mov	r5, #0x12
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
.Laca:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_958

.thumb_func_start OvlFunc_ad4
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_ad4

.thumb_func_start OvlFunc_af8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xe
	sub	sp, #8
	bl	__Func_92054
	ldr	r0, [r0, #8]
	mov	r8, r0
	mov	r3, r8
	asr	r3, #20
	mov	r0, #0xf
	mov	r8, r3
	bl	__Func_92054
	mov	r3, #5
	ldr	r5, [r0, #8]
	mov	r6, #0xb
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #5
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_10704
	asr	r5, #20
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	mov	r0, #1
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xe
	bl	OvlFunc_b68
	mov	r0, #0xf
	bl	OvlFunc_b68
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_af8

.thumb_func_start OvlFunc_b68
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #3
	bl	__Func_92b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r6, #0x23
	ldrb	r2, [r6]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b68

.thumb_func_start OvlFunc_ba0
	push	{lr}
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r1, #0xa4
	mov	r2, #0xb2
	lsl	r1, #17
	lsl	r2, #19
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r3, #0x80
	lsl	r3, #8
	neg	r1, r1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9233c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1f89
	bl	__Func_92b94
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0xb2
	mov	r0, #1
	mov	r1, #0xe8
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #19
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0xf
	bl	__Func_92560
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #6
	bl	__Func_92560
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xb5
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #19
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0x84
	mov	r2, #0xb2
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x84
	mov	r2, #0xb7
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ldcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.Ldcc:
	mov	r0, #1
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #8
	bl	__Func_92054
	ldr	r2, [r0, #8]
	cmp	r2, #0
	bge	.Le06
	ldr	r3, =0xffff
	add	r2, r3
.Le06:
	mov	r3, r0
	asr	r2, #16
	add	r3, #0x64
	strh	r2, [r3]
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bge	.Le18
	ldr	r3, =0xffff
	add	r2, r3
.Le18:
	mov	r3, r0
	asr	r2, #16
	add	r3, #0x66
	strh	r2, [r3]
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_ba0

.thumb_func_start OvlFunc_e40
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x8ab
	bl	__Func_79358
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x23eb
	bl	__Func_92b94
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	mov	r10, r1
	mov	r3, r0
	mov	r2, r10
	add	r3, #0x23
	strb	r2, [r3]
	ldr	r2, [r0, #0x50]
	mov	r1, #0xc
	ldrb	r3, [r2, #9]
	mov	r8, r1
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r2, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	orr	r3, r1
	strb	r3, [r2, #0x15]
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	ldr	r1, =0x107
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	ldr	r1, =0x103
	mov	r2, #0x37
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x18
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0x10
	strb	r3, [r0]
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_922c4
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #0xd
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0xd
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x81
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x9b
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x9b
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x9b
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92560
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #8
	mov	r0, #0x10
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0x37
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #8
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #8
	mov	r0, #0x10
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0xa
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	b	.L126c

	.pool_aligned

.L126c:
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x10
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #8
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #0xa
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x18
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0x85
	bl	__Func_f9080
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_92560
	ldr	r1, =.L16e4
	mov	r0, #0x10
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #6
	mov	r0, #0xa
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc
	neg	r1, r1
	mov	r2, #4
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, r0
	mov	r3, r1
	mov	r2, r10
	add	r3, #0x59
	strb	r2, [r3]
	mov	r2, r1
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	mov	r0, r8
	orr	r3, r0
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	mov	r2, r10
	add	r3, #0x26
	strb	r2, [r3]
	mov	r5, #0xc0
	ldr	r3, [r1, #0x50]
	lsl	r5, #8
	mov	r1, #0xc
	strh	r5, [r3, #0x1e]
	mov	r0, #0xa
	neg	r1, r1
	mov	r2, #4
	bl	__Func_92304
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, r5
	mov	r0, #0xb
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0xb
	mov	r1, #0x18
	mov	r2, #0
	bl	__Func_92304
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x10
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x18
	mov	r0, #0x10
	mov	r1, #0x18
	neg	r2, r2
	bl	__Func_92304
	mov	r0, #0x10
	mov	r1, #8
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0xd
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e40

	.section .data

.L16b8:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16b8, (0x16ce-0x16b8)
.L16ce:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16ce, (0x16e4-0x16ce)
.L16e4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x16e4, (0x1708-0x16e4)
.L1708:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1708, (0x1738-0x1708)
.L1738:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1738, (0x17c8-0x1738)
.L17c8:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x17c8, (0x1840-0x17c8)
.L1840:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1840, (0x18a0-0x1840)
.L18a0:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18a0, (0x18d4-0x18a0)
.L18d4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18d4, (0x18ec-0x18d4)
.L18ec:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x18ec, (0x19c4-0x18ec)
.L19c4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x19c4, (0x1acc-0x19c4)
.L1acc:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1acc, (0x1ba4-0x1acc)
.L1ba4:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1ba4, (0x1c7c-0x1ba4)
.L1c7c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1c7c, (0x1d24-0x1c7c)
.L1d24:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1d24, (0x1dcc-0x1d24)
.L1dcc:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1dcc, (0x1e74-0x1dcc)
.L1e74:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1e74, (0x1e80-0x1e74)
.L1e80:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1e80, (0x1fa0-0x1e80)
.L1fa0:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x1fa0, (0x2018-0x1fa0)
.L2018:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2018, (0x2120-0x2018)
.L2120:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2120, (0x224c-0x2120)
.L224c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x224c, (0x230c-0x224c)
.L230c:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x230c, (0x2390-0x230c)
.L2390:
	.incbin "overlays/rom_7c6bac/orig.bin", 0x2390
