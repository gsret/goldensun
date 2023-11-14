	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L1120
	b	.L54
.L48:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L1288
	b	.L54
.L52:
	ldr	r0, =.L10f0
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_70
	mov	r0, #0
	bx	lr
.func_end OvlFunc_70

.thumb_func_start OvlFunc_74
	ldr	r0, =.L1390
	bx	lr
.func_end OvlFunc_74

.thumb_func_start OvlFunc_7c
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lac
	ldr	r0, =0x909
	bl	__Func_79338
	cmp	r0, #0
	beq	.La8
	ldr	r3, =.L140c
	mov	r1, r3
	mov	r2, #0
	add	r1, #0x8e
	add	r3, #0xa6
	strb	r2, [r1]
	strb	r2, [r3]
.La8:
	ldr	r0, =.L140c
	b	.Lee
.Lac:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lec
	ldr	r0, =0x8fd
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc4
	ldr	r3, =.L15bc
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.Lc4:
	ldr	r0, =0x8fe
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld8
	ldr	r0, =0x907
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le0
.Ld8:
	ldr	r3, =.L15bc
	mov	r2, #1
	add	r3, #0x5e
	strb	r2, [r3]
.Le0:
	ldr	r5, =.L15bc
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	b	.Lee
.Lec:
	ldr	r0, =.L13f4
.Lee:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_11c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.L134
	ldr	r0, =.L1730
	b	.L140
.L134:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.L13e
	ldr	r0, =.L19f4
	b	.L140
.L13e:
	ldr	r0, =.L1724
.L140:
	pop	{r1}
	bx	r1
.func_end OvlFunc_11c

.thumb_func_start OvlFunc_15c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x18bd
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L186
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L19e
.L186:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93054
.L19e:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_15c

.thumb_func_start OvlFunc_1b0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1918
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b0

.thumb_func_start OvlFunc_1d0
	push	{r5, r6, lr}
	bl	__Func_916b0
	ldr	r0, =0x909
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1f0
	ldr	r0, =0x191f
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93054
	b	.L27e
.L1f0:
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	ldr	r0, =0x18c7
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	ldr	r0, =0x8ff
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L276
	mov	r0, #0x12
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_93554
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r3, #1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	bl	__Func_93530
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #0xc]
	ldr	r2, [r0, #0x10]
	mov	r0, r3
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
.L276:
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_92548
.L27e:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d0

.thumb_func_start OvlFunc_298
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1924
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_298

.thumb_func_start OvlFunc_2b8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1932
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b8

.thumb_func_start OvlFunc_2d8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x18d9
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d8

.thumb_func_start OvlFunc_2f8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x18e1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f8

.thumb_func_start OvlFunc_318
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x194a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_318

.thumb_func_start OvlFunc_338
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	mov	r0, #1
	cmp	r3, r2
	bls	.L352
	mov	r0, #0
.L352:
	pop	{r1}
	bx	r1
.func_end OvlFunc_338

.thumb_func_start OvlFunc_360
	push	{lr}
	ldr	r0, =0x242
	bl	__Func_79338
	cmp	r0, #0
	bne	.L384
	bl	__Func_916b0
	ldr	r0, =0x18e7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_93054
	bl	__Func_91750
	b	.L3bc
.L384:
	bl	OvlFunc_338
	cmp	r0, #0
	beq	.L396
	mov	r0, #0x13
	mov	r1, #0xf
	bl	__Func_b0278
	b	.L3bc
.L396:
	bl	__Func_916b0
	ldr	r0, =0x18ea
	bl	__Func_92b94
	ldr	r0, =0x909
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3b0
	ldr	r0, =0x1941
	bl	__Func_92b94
.L3b0:
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L3bc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_360

.thumb_func_start OvlFunc_3d4
	push	{lr}
	ldr	r0, =0x241
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3f8
	bl	__Func_916b0
	ldr	r0, =0x18ed
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L430
.L3f8:
	bl	OvlFunc_338
	cmp	r0, #0
	beq	.L40a
	mov	r0, #0x14
	mov	r1, #0x11
	bl	__Func_b0278
	b	.L430
.L40a:
	bl	__Func_916b0
	ldr	r0, =0x18ee
	bl	__Func_92b94
	ldr	r0, =0x909
	bl	__Func_79338
	cmp	r0, #0
	beq	.L424
	ldr	r0, =0x1943
	bl	__Func_92b94
.L424:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L430:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d4

.thumb_func_start OvlFunc_448
	push	{lr}
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L46e
	bl	__Func_916b0
	ldr	r0, =0x18f1
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L4a6
.L46e:
	bl	OvlFunc_338
	cmp	r0, #0
	beq	.L480
	mov	r0, #0x15
	mov	r1, #0x10
	bl	__Func_b0278
	b	.L4a6
.L480:
	bl	__Func_916b0
	ldr	r0, =0x18f2
	bl	__Func_92b94
	ldr	r0, =0x909
	bl	__Func_79338
	cmp	r0, #0
	beq	.L49a
	ldr	r0, =0x1945
	bl	__Func_92b94
.L49a:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L4a6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_448

.thumb_func_start OvlFunc_4bc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L4dc
	mov	r0, #6
	mov	r1, #0x12
	bl	__Func_b3284
	b	.L50c
.L4dc:
	bl	__Func_916b0
	ldr	r0, =0x909
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4fa
	ldr	r0, =0x1947
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	b	.L508
.L4fa:
	ldr	r0, =0x18f5
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93054
.L508:
	bl	__Func_91750
.L50c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bc

.thumb_func_start OvlFunc_524
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	sub	sp, #8
	mov	r9, r3
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.L53e:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L54e
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L54e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L53e
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	sub	r3, #2
	lsl	r3, #16
	asr	r3, #16
	ldr	r5, =.L1e70
	lsl	r6, r3, #3
	mov	r10, r3
	add	r3, r6, #4
	ldrsh	r1, [r5, r3]
	add	r3, r5
	mov	r2, r10
	mov	r8, r1
	mov	r1, #2
	ldrsh	r7, [r3, r1]
	cmp	r2, #1
	bne	.L5d4
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, r8
	mov	r3, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r6, r8
	add	r6, #2
	mov	r1, #0x23
	mov	r2, r6
	mov	r3, r7
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, r8
	mov	r3, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	mov	r1, #0x23
	mov	r2, r6
	mov	r3, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	b	.L5fe
.L5d4:
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r3, r10
	cmp	r3, #3
	bne	.L5f4
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x21
	mov	r1, #0x2a
	mov	r2, #8
	mov	r3, #0x11
	bl	__Func_10424
.L5f4:
	ldr	r0, [r5, r6]
	mov	r1, r8
	mov	r2, r7
	bl	__Func_10560
.L5fe:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x80
	add	r3, r1
	lsl	r2, #1
	str	r2, [r3]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, r10
	cmp	r2, #6
	bne	.L642
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92208
	b	.L66a
.L642:
	mov	r3, r10
	cmp	r3, #1
	beq	.L656
	mov	r2, #4
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_92208
	b	.L66a
.L656:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r2, #4
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
.L66a:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r9
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_524

.thumb_func_start OvlFunc_6a4
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r2, #0x10
	mov	r1, #2
	neg	r2, r2
	mov	r0, #0
	bl	__Func_92208
	mov	r3, #0xb6
	lsl	r3, #1
	add	r5, r3
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6a4

.thumb_func_start OvlFunc_6f0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L71e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L71e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
.L71e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.L766
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c300
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L75e
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.L75c
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r3, #4
	mov	r1, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_12330
	ldr	r2, [r5, #0x14]
.L75c:
	str	r2, [r5, #0xc]
.L75e:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.L76c
.L766:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.L76c:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L796
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r3, #1
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x68]
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldrh	r2, [r6]
.L796:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.L7a8
	mov	r3, #0
	strh	r3, [r6]
.L7a8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6f0

.thumb_func_start OvlFunc_7b8
	push	{lr}
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, r0
	mov	r3, r1
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r3, =0x6666
	str	r3, [r1, #0x48]
	ldr	r3, =OvlFunc_6f0
	mov	r0, #0x12
	str	r3, [r1, #0x6c]
	ldr	r2, =0x9999
	ldr	r1, =0x13333
	bl	__Func_92064
	mov	r2, #0xe6
	mov	r0, #0x12
	mov	r1, #0x1c
	lsl	r2, #1
	bl	__Func_92158
	mov	r2, #0xe0
	mov	r1, #0x18
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_92158
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x12
	bl	__Func_92924
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_7b8

.thumb_func_start OvlFunc_84c
	push	{lr}
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x16
	bne	.L864
	ldr	r0, =0x906
	bl	__Func_79358
	b	.L86a
.L864:
	ldr	r0, =0x906
	bl	__Func_79374
.L86a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_84c

.thumb_func_start OvlFunc_874
	push	{lr}
	ldr	r0, =0x8fd
	bl	__Func_79338
	cmp	r0, #0
	beq	.L888
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79358
.L888:
	ldr	r0, =0x8fe
	bl	__Func_79338
	cmp	r0, #0
	bne	.L89c
	ldr	r0, =0x907
	bl	__Func_79338
	cmp	r0, #0
	beq	.L8a2
.L89c:
	ldr	r0, =0x241
	bl	__Func_79358
.L8a2:
	ldr	r0, =0x8fe
	bl	__Func_79338
	cmp	r0, #0
	beq	.L8bc
	ldr	r0, =0x907
	bl	__Func_79338
	cmp	r0, #0
	beq	.L8bc
	ldr	r0, =0x242
	bl	__Func_79358
.L8bc:
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.L8d4
	bl	OvlFunc_904
	b	.L8de
.L8d4:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.L8de
	bl	OvlFunc_b2c
.L8de:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_874

.thumb_func_start OvlFunc_904
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r7, r0
	ldr	r0, =0x242
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L942
	mov	r3, #0x20
	mov	r0, #0x40
	mov	r1, #0x20
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__Func_10424
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	bl	__Func_10704
	mov	r0, #0x14
	b	.L9ac
.L942:
	ldr	r0, =0x241
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	beq	.L978
	mov	r3, #0x20
	mov	r0, #0x40
	mov	r1, #0
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__Func_10424
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0x40
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x11
	bl	__Func_92924
	mov	r0, #0x14
	b	.L9ac
.L978:
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9b8
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x10
	bl	__Func_92924
	mov	r0, #0x11
.L9ac:
	bl	__Func_92924
	mov	r0, #0x15
	bl	__Func_92924
	b	.L9da
.L9b8:
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	bl	__Func_10704
	mov	r0, #0xf
	bl	__Func_92924
	mov	r0, #0x10
	bl	__Func_92924
	mov	r0, #0x11
	bl	__Func_92924
.L9da:
	ldr	r0, =0x8ff
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9ec
	mov	r0, #0x12
	bl	__Func_92924
	b	.La0c
.L9ec:
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_92950
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d08
	lsl	r1, #4
	bl	__Func_41d8
.La0c:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.La22
	ldr	r0, =0x12f
	bl	__Func_79374
.La22:
	mov	r3, #0x14
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #3
	bl	__Func_10704
	ldr	r0, =0x906
	bl	__Func_79338
	cmp	r0, #0
	beq	.La4e
	mov	r1, #0xb4
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
.La4e:
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x16
	mov	r1, #0xf
	bl	__Func_92950
	mov	r0, #0x17
	mov	r1, #0xf
	bl	__Func_92950
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_92950
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #8
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_92b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_92b08
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_916b0
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	mov	r3, #0
	bl	__Func_933f8
	bl	__Func_fe9c
	bl	__Func_91750
	mov	r0, #1
	bl	__Func_30f8
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_904

.thumb_func_start OvlFunc_b2c
	push	{lr}
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb5c
	mov	r1, #0xca
	lsl	r1, #18
	ldr	r2, =0x2d70000
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r1, =0x31a0000
	mov	r0, #9
	ldr	r2, =0x3390000
	bl	__Func_923e4
.Lb5c:
	ldr	r0, =0x241
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb8a
	mov	r1, #0x8c
	lsl	r1, #18
	ldr	r2, =0x2c60000
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #5
	mov	r1, #0x90
	strh	r3, [r0, #6]
	lsl	r1, #18
	mov	r0, #0xb
	ldr	r2, =0x2c60000
	bl	__Func_923e4
.Lb8a:
	ldr	r0, =0x242
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbae
	mov	r2, #0xba
	mov	r0, #0xf
	ldr	r1, =0x1270000
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	b	.Lbc0
.Lbae:
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lbc0:
	mov	r0, #0x11
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lbd6
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lbd6:
	mov	r0, #0x10
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lbec
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lbec:
	pop	{r0}
	bx	r0
.func_end OvlFunc_b2c

.thumb_func_start OvlFunc_c0c
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #3
	bl	__Func_929d8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, =0x4ccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c0c

.thumb_func_start OvlFunc_c44
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_4458
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.Lc92
	bl	__Func_4458
	ldr	r3, [r5, #0x10]
	lsl	r0, #15
	ldr	r1, =0xffff0000
	lsr	r0, #16
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0x10]
	ldr	r2, =0x2666
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff5c3
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.Lca8
.Lc92:
	ldr	r3, [r5, #0x10]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.Lca8:
	str	r3, [r5, #0x1c]
	bl	__Func_4458
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lcc6
	mov	r0, r5
	mov	r1, #7
	bl	__Func_929d8
	ldrh	r2, [r6]
.Lcc6:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.Lcd0
	sub	r3, r2, #1
	b	.Lcde
.Lcd0:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.Lcde:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.Lcf2
	mov	r0, r5
	str	r3, [r5, #0x6c]
	bl	__Func_c0f4
.Lcf2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c44

.thumb_func_start OvlFunc_d08
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.Ld4a
	mov	r1, #0x80
	mov	r3, #0xc8
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Ld4a
	mov	r3, r5
	mov	r2, #0x14
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	str	r2, [r5, #0x68]
	bl	OvlFunc_c0c
	ldr	r3, =OvlFunc_c44
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #1
	bl	__Func_c300
.Ld4a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d08

.thumb_func_start OvlFunc_d58
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xfc
	mov	r1, #1
	mov	r2, #0xe1
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #14
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r0, #1
	neg	r0, r0
	bl	__Func_91ff0
	ldr	r0, =OvlFunc_d08
	bl	__Func_4278
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x12
	bl	__Func_92adc
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	bl	OvlFunc_7b8
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	bl	__Func_93530
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	ldr	r0, =0x8ff
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_d58

	.section .data

	.incbin "overlays/rom_7b8cb0/orig.bin", 0xfc8, (0x10f0-0xfc8)
.L10f0:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x10f0, (0x1120-0x10f0)
.L1120:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1120, (0x1288-0x1120)
.L1288:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1288, (0x1390-0x1288)
.L1390:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1390, (0x13f4-0x1390)
.L13f4:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x13f4, (0x140c-0x13f4)
.L140c:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x140c, (0x15bc-0x140c)
.L15bc:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x15bc, (0x1724-0x15bc)
.L1724:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1724, (0x1730-0x1724)
.L1730:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1730, (0x19f4-0x1730)
.L19f4:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x19f4, (0x1e70-0x19f4)
.L1e70:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1e70
