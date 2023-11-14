	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	mov	r0, #0xc
	mov	r1, #2
	mov	r2, #3
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_40
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.L9e
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	cmp	r0, #1
	beq	.L74
	cmp	r0, #1
	bcc	.L6a
	cmp	r0, #4
	bhi	.L8c
	cmp	r0, #3
	bcc	.L8c
	b	.L7e
.L6a:
	mov	r0, r5
	mov	r1, #3
	bl	__Func_c300
	b	.L8c
.L74:
	mov	r0, r5
	mov	r1, #4
	bl	__Func_c300
	b	.L8c
.L7e:
	bl	__Func_4458
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
.L8c:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.La4
.L9e:
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
.La4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_40

.thumb_func_start OvlFunc_ac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Le0
	bl	__Func_4458
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.Le4
	mov	r2, r3
.Le0:
	sub	r3, r2, #1
	strh	r3, [r6]
.Le4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ac

.thumb_func_start OvlFunc_ec
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L104
	ldr	r0, =.L42c8
	b	.L138
.L104:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L10e
	ldr	r0, =.L4448
	b	.L138
.L10e:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L118
	ldr	r0, =.L44a8
	b	.L138
.L118:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.L122
	ldr	r0, =.L4520
	b	.L138
.L122:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L12c
	ldr	r0, =.L4580
	b	.L138
.L12c:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L136
	ldr	r0, =.L4628
	b	.L138
.L136:
	ldr	r0, =.L4298
.L138:
	pop	{r1}
	bx	r1
.func_end OvlFunc_ec

.thumb_func_start OvlFunc_174
	mov	r0, #0
	bx	lr
.func_end OvlFunc_174

.thumb_func_start OvlFunc_178
	ldr	r0, =.L46b8
	bx	lr
.func_end OvlFunc_178

.thumb_func_start OvlFunc_180
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L198
	ldr	r0, =.L4768
	b	.L1b8
.L198:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L1a2
	ldr	r0, =.L4a20
	b	.L1b8
.L1a2:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L1ac
	ldr	r0, =.L4a80
	b	.L1b8
.L1ac:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L1b6
	ldr	r0, =.L4b58
	b	.L1b8
.L1b6:
	ldr	r0, =.L4750
.L1b8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_180

.thumb_func_start OvlFunc_1e4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29df
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e4

.thumb_func_start OvlFunc_20c
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_923e4
	ldr	r0, =0xfd6
	bl	__Func_79358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_91a58
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_20c

.thumb_func_start OvlFunc_240
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L258
	ldr	r0, =.L4bf4
	b	.L28c
.L258:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L262
	ldr	r0, =.L4e88
	b	.L28c
.L262:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L26c
	ldr	r0, =.L4edc
	b	.L28c
.L26c:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.L276
	ldr	r0, =.L4f24
	b	.L28c
.L276:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L280
	ldr	r0, =.L4f54
	b	.L28c
.L280:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L28a
	ldr	r0, =.L4f9c
	b	.L28c
.L28a:
	ldr	r0, =.L4be8
.L28c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_240

.thumb_func_start OvlFunc_2c8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1a7c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c8

.thumb_func_start OvlFunc_2e8
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xfffff000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #23
	cmp	r3, r2
	bls	.L364
	bl	__Func_916b0
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x2584
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L340
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L360
.L340:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r0, #8
	mov	r1, #3
	strh	r3, [r2]
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
.L360:
	bl	__Func_91750
.L364:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e8

.thumb_func_start OvlFunc_374
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x25b3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_374

.thumb_func_start OvlFunc_394
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bls	.L3b6
	mov	r0, #0x16
	mov	r1, #0x16
	bl	__Func_b0278
	b	.L3cc
.L3b6:
	bl	__Func_916b0
	ldr	r0, =0x1acf
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L3cc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_394

.thumb_func_start OvlFunc_3d8
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffff9fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x7ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L3f8
	mov	r0, #0x17
	mov	r1, #0x17
	bl	__Func_b0278
	b	.L40e
.L3f8:
	bl	__Func_916b0
	ldr	r0, =0x1ad1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_93054
	bl	__Func_91750
.L40e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d8

.thumb_func_start OvlFunc_420
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bls	.L442
	mov	r0, #0x18
	mov	r1, #0x18
	bl	__Func_b0278
	b	.L458
.L442:
	bl	__Func_916b0
	ldr	r0, =0x1ad5
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L458:
	pop	{r0}
	bx	r0
.func_end OvlFunc_420

.thumb_func_start OvlFunc_464
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.L472:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L482
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L482:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L472
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	mov	r0, #0x9e
	sub	r5, #1
	bl	__Func_f9080
	lsl	r5, #3
	ldr	r0, =.L50e0
	add	r3, r5, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r5]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #8
	mov	r1, #2
	neg	r2, r2
	mov	r0, #0
	bl	__Func_92208
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_464

.thumb_func_start OvlFunc_504
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r5, #2
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r3, #0xc
	mov	r0, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #5
	bl	__Func_30f8
	mov	r3, #0xc
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r0, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #5
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_504

.thumb_func_start OvlFunc_590
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r0, #0x91
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L5ae
	bl	.L151c
.L5ae:
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5bc
	bl	.L151c
.L5bc:
	ldr	r0, =.L4948
	bl	__Func_917ac
	mov	r1, #0xfc
	mov	r2, #0x88
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x8e
	mov	r2, #0x84
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x8e
	mov	r2, #0x8c
	mov	r0, #0x1c
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x96
	mov	r2, #0x84
	mov	r0, #0x1d
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x96
	mov	r2, #0x8c
	mov	r0, #0x1e
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x9e
	mov	r2, #0x84
	mov	r0, #0x20
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x9e
	mov	r2, #0x8c
	mov	r0, #0x1f
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa6
	mov	r2, #0x84
	mov	r0, #0x21
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa6
	mov	r2, #0x8c
	mov	r0, #0x22
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xb6
	mov	r2, #0x88
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_93304
	mov	r2, #0
	mov	r1, #1
	ldr	r0, =0x1a91
	bl	__Func_19aa0
	mov	r0, #9
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	bne	.L6b4
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	b	.L6c6

	.pool_aligned

.L6b4:
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_933d4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
.L6c6:
	mov	r0, #0x14
	ldr	r1, =0x11999
	ldr	r2, =0x8ccc
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1c
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x1d
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__Func_92064
	mov	r0, #0x1e
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__Func_92064
	mov	r0, #0x20
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x1f
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x21
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #0x22
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	ldr	r2, =0x4ccc
	mov	r0, #0x15
	ldr	r1, =0x9999
	bl	__Func_92064
	ldr	r5, =.L3dc4
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1b
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1c
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1d
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1e
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x20
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1f
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x21
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x22
	bl	__Func_9207c
	mov	r0, #0x15
	bl	__Func_92054
	mov	r6, r0
	mov	r3, #0
	add	r6, #0x64
	strh	r3, [r6]
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0x88
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_920e8
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
.L7b4:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L7b4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x1b
	bl	__Func_92adc
	ldr	r0, =0x1a92
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x1c
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x1c
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1c
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #0xa
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x20
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x20
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0x1f
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xb0
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x1f
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x1f
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1f
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1f
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x1f
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x20
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x1f
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x20
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	mov	r2, #0x84
	strb	r3, [r0]
	mov	r1, #0xac
	lsl	r2, #1
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0x1b
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x20
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x1f
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0x88
	and	r5, r3
	mov	r1, #0xac
	lsl	r2, #1
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0x88
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #0xb4
	mov	r0, #0x14
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0
	mov	r0, #0x22
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0x22
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x22
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0x22
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x21
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0x21
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x21
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0xa
	mov	r0, #0x21
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0x8d
	mov	r0, #0x15
	ldr	r1, =0x109
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x8e
	mov	r0, #0x15
	mov	r1, #0xfb
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xf6
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	bl	OvlFunc_1e6c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xe4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xd4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xc0
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #8
	b	.Laf0

	.pool_aligned

.Laf0:
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x8f
	mov	r0, #0x15
	mov	r1, #0xb8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	ldr	r2, =0xcccc
	mov	r0, #0x14
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r1, =.L3fb0
	mov	r0, #0x14
	bl	__Func_920fc
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xe4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xd4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xc0
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	ldr	r5, =0x1a9e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	bl	OvlFunc_1ed8
	mov	r2, #0x88
	mov	r0, #0x14
	mov	r1, #0xb2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0xf0
	bl	__Func_9163c
	mov	r0, #0x1b
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x1b
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1b
	bl	__Func_93040
	mov	r0, #0x1b
	bl	OvlFunc_1ea4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x1c
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x1c
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1c
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1c
	bl	__Func_93040
	mov	r0, #0x1c
	bl	OvlFunc_1ea4
	mov	r0, #0xa0
	bl	__Func_9163c
	mov	r0, #0x20
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xa0
	mov	r0, #0x20
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x20
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x20
	bl	__Func_93040
	mov	r0, #0x20
	bl	OvlFunc_1ea4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x1e
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x1e
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x1e
	bl	__Func_925cc
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1e
	bl	__Func_93040
	ldr	r0, =OvlFunc_1f14
	bl	__Func_4278
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x15
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, r8
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r2, r8
	add	r0, #0x64
	strh	r2, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0x14
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r2, =0x6666
	mov	r0, #0x15
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r1, =.L4034
	mov	r0, #0x14
	bl	__Func_9207c
	ldr	r1, =.L40cc
	mov	r0, #0x15
	bl	__Func_9207c
	mov	r0, #0x1d
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x1d
	lsl	r1, #7
	bl	__Func_92adc
	add	r5, #5
	mov	r1, #2
	mov	r0, #0x1d
	bl	__Func_925cc
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x1d
	bl	OvlFunc_1ea4
	mov	r0, #0x1e
	bl	OvlFunc_1ea4
.Ldc8:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Ldc8
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #1
	bne	.Ldc8
	ldr	r1, =.L4164
	mov	r0, #0x14
	bl	__Func_9207c
	ldr	r1, =.L41ac
	mov	r0, #0x15
	bl	__Func_9207c
	mov	r0, #0x1f
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x1f
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x1f
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #4
	mov	r0, #0x1f
	bl	__Func_92548
	ldr	r5, =0x1aa2
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1f
	bl	__Func_93040
	mov	r0, #0x1f
	bl	OvlFunc_1ea4
	mov	r0, #0x22
	bl	__Func_920a0
	mov	r0, #0x21
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x22
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0x21
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xb0
	mov	r0, #0x22
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x21
	lsl	r1, #7
	bl	__Func_92adc
	add	r5, #3
	mov	r1, #4
	mov	r0, #0x22
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #0x22
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x21
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x21
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x21
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x22
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	ldr	r0, =0x1ab2
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x14
	bl	__Func_93040
	mov	r0, #0x1b
	bl	__Func_920a0
	mov	r0, #0x1c
	bl	__Func_920a0
	mov	r0, #0x1d
	bl	__Func_920a0
	mov	r0, #0x1e
	bl	__Func_920a0
	mov	r0, #0x20
	bl	__Func_920a0
	mov	r0, #0x1f
	bl	__Func_920a0
	mov	r0, #0x21
	bl	__Func_920a0
	mov	r0, #0x22
	bl	__Func_920a0
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x15
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x1b
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x1c
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x1d
	mov	r1, #2
	mov	r2, #0
	b	.Lf78

	.pool_aligned

.Lf78:
	bl	__Func_92560
	mov	r0, #0x1e
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x20
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x1f
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x21
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x22
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x15
	mov	r1, #2
	mov	r2, #0x28
	bl	__Func_92560
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1e
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x20
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x21
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x22
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x1c
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0xa
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x1e
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x20
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x21
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #4
	mov	r0, #0x22
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1c
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x1d
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x20
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1f
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x21
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x22
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #2
	mov	r2, #0x28
	bl	__Func_92560
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1e
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x20
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x21
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x22
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_92adc
	mov	r0, #0x14
	ldr	r1, =0x11999
	ldr	r2, =0x8ccc
	bl	__Func_92064
	mov	r0, #0x1b
	ldr	r1, =0x10ccc
	ldr	r2, =0x8666
	bl	__Func_92064
	mov	r0, #0x1c
	ldr	r1, =0x10ccc
	ldr	r2, =0x8666
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1d
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1e
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x20
	ldr	r1, =0xf333
	ldr	r2, =0x7999
	bl	__Func_92064
	mov	r0, #0x1f
	ldr	r1, =0xf333
	ldr	r2, =0x7999
	bl	__Func_92064
	mov	r0, #0x21
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__Func_92064
	mov	r0, #0x22
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__Func_92064
	ldr	r2, =0x6ccc
	mov	r0, #0x15
	ldr	r1, =0xd999
	bl	__Func_92064
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x1c
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x1d
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x1e
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x20
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x1f
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x21
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x22
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_92b08
	mov	r0, #0x1b
	bl	__Func_920a0
	mov	r0, #0x1c
	bl	__Func_920a0
	mov	r0, #0x1d
	bl	__Func_920a0
	mov	r0, #0x1e
	bl	__Func_920a0
	mov	r0, #0x20
	bl	__Func_920a0
	mov	r0, #0x1f
	bl	__Func_920a0
	mov	r0, #0x21
	bl	__Func_920a0
	mov	r0, #0x22
	bl	__Func_920a0
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x15
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =.L3e00
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1b
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1c
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1d
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1e
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x20
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1f
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x21
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x22
	bl	__Func_9207c
	mov	r0, #0x15
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
.L133a:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #1
	bne	.L133a
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0xaa
	mov	r2, #0x89
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0xe
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x89
	mov	r0, #0xe
	mov	r1, #0xe0
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0xe
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	mov	r0, #0xe
	bl	__Func_92064
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x64
	mov	r2, #0
	strh	r2, [r3]
	ldr	r1, =.L3e00
	mov	r0, #0xe
	bl	__Func_9207c
.L1442:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #1
	bne	.L1442
	mov	r2, #0x9d
	ldr	r1, =0x1670000
	lsl	r2, #17
	mov	r0, #0xe
	bl	__Func_923e4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, #0xd0
	lsl	r5, #8
	mov	r2, #0xd9
	ldr	r1, =0x1c70000
	lsl	r2, #17
	strh	r5, [r0, #6]
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0xe8
	mov	r2, #0xd0
	lsl	r2, #17
	lsl	r1, #17
	strh	r5, [r0, #6]
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x1b
	bl	__Func_92924
	mov	r0, #0x1c
	bl	__Func_92924
	mov	r0, #0x1d
	bl	__Func_92924
	mov	r0, #0x1e
	bl	__Func_92924
	mov	r0, #0x1f
	bl	__Func_92924
	mov	r0, #0x20
	bl	__Func_92924
	mov	r0, #0x21
	bl	__Func_92924
	mov	r0, #0x22
	bl	__Func_92924
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	bne	.L14fa
	mov	r2, #0xe5
	mov	r0, #0
	mov	r1, #0xe0
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #8
	b	.L150e
.L14fa:
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
.L150e:
	strh	r3, [r0, #6]
	bl	__Func_8acc4
	ldr	r0, =0x911
	bl	__Func_79358
	b	.L1538
.L151c:
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
.L1538:
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_590

.thumb_func_start OvlFunc_158c
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15aa
	ldr	r3, =iwram_1ee0
	ldr	r2, [r3]
	mov	r0, #0x80
	mov	r3, #0
	str	r3, [r2, #0x18]
	lsl	r0, #2
	bl	__Func_79374
.L15aa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_158c

.thumb_func_start OvlFunc_15b4
	push	{r5, lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L15d6
	ldr	r3, =iwram_1ee0
	mov	r0, #0
	ldr	r5, [r3]
	bl	__Func_92054
	str	r0, [r5, #0x18]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
.L15d6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15b4

.thumb_func_start OvlFunc_15e0
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_15e0

.thumb_func_start OvlFunc_15f8
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_15f8

.thumb_func_start OvlFunc_1610
	push	{lr}
	ldr	r0, =OvlFunc_390c
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1a
	bl	__Func_923e4
	ldr	r0, =0x916
	bl	__Func_79358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_91a58
	pop	{r0}
	bx	r0
.func_end OvlFunc_1610

.thumb_func_start OvlFunc_164c
	push	{lr}
	ldr	r0, =0x87a
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L166c
	bl	OvlFunc_16bc
	b	.L169a
.L166c:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L1678
	bl	OvlFunc_17e8
	b	.L169a
.L1678:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L1684
	bl	OvlFunc_1858
	b	.L169a
.L1684:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L1690
	bl	OvlFunc_18a4
	b	.L169a
.L1690:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L169a
	bl	OvlFunc_1930
.L169a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_164c

.thumb_func_start OvlFunc_16bc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16e4
	ldr	r0, =0x321
	bl	__Func_79358
	ldr	r0, =0x913
	bl	__Func_79358
	ldr	r0, =0x912
	bl	__Func_79358
	ldr	r0, =0x915
	bl	__Func_79358
.L16e4:
	mov	r0, #0x94
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16f6
	ldr	r0, =0x321
	bl	__Func_79358
.L16f6:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xe
	bne	.L1714
	mov	r1, #0xd4
	mov	r2, #0xb0
	mov	r0, #0x19
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
.L1714:
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_92950
	ldr	r0, =0x916
	bl	__Func_79338
	mov	r8, r0
	cmp	r0, #0
	beq	.L1734
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L17bc
.L1734:
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	mov	r3, r6
	mov	r1, r8
	add	r3, #0x27
	strb	r2, [r6, #9]
	strb	r1, [r3]
	mov	r3, r7
	mov	r2, #1
	add	r3, #0x5c
	strb	r2, [r3]
	sub	r3, #7
	strb	r1, [r3]
	mov	r3, #0xa0
	lsl	r3, #12
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_1a370
	mov	r2, #0x80
	lsl	r2, #3
	add	r5, r2
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	mov	r3, r8
	str	r3, [r7, #0x30]
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	ldr	r3, [r7, #0x10]
	mov	r1, #0xc8
	str	r3, [r7, #0x40]
	ldr	r0, =OvlFunc_390c
	lsl	r1, #4
	bl	__Func_41d8
.L17bc:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16bc

.thumb_func_start OvlFunc_17e8
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L180c
	ldr	r0, =0x321
	bl	__Func_79358
	ldr	r0, =0x913
	bl	__Func_79358
	ldr	r0, =0x912
	bl	__Func_79358
	ldr	r0, =0x915
	bl	__Func_79358
.L180c:
	mov	r0, #0x94
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L181e
	ldr	r0, =0x321
	bl	__Func_79358
.L181e:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L183c
	ldr	r0, =0x912
	bl	__Func_79338
	cmp	r0, #0
	bne	.L183c
	bl	OvlFunc_2008
.L183c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_17e8

.thumb_func_start OvlFunc_1858
	push	{lr}
	ldr	r0, =0xfd6
	bl	__Func_79338
	cmp	r0, #0
	bne	.L186a
	mov	r0, #0xc
	bl	OvlFunc_3a3c
.L186a:
	ldr	r0, =0x915
	bl	__Func_79338
	cmp	r0, #0
	beq	.L187e
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	strh	r3, [r0, #6]
.L187e:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L1892
	bl	OvlFunc_26c0
.L1892:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1858

.thumb_func_start OvlFunc_18a4
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x915
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1904
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r5, #2
	mov	r0, #0x3a
	mov	r1, #5
	mov	r2, #0x3a
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0xc
	mov	r2, #8
	mov	r3, #0xb
	str	r5, [sp]
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
.L1904:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bgt	.L191a
	mov	r0, #0xaa
	bl	__Func_91ff0
.L191a:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18a4

.thumb_func_start OvlFunc_1930
	push	{r5, r6, lr}
	ldr	r6, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #0
	sub	sp, #8
	bl	__Func_91494
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L196c
	mov	r0, #0x80
	lsl	r0, #2
	ldr	r5, [r6, #0x24]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1968
	mov	r0, #0
	bl	__Func_92054
.L1968:
	str	r0, [r5, #0x18]
	b	.L1990
.L196c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L1990
	ldr	r3, [r6, #0x24]
	mov	r0, #0x80
	str	r5, [r3, #0x18]
	lsl	r0, #2
	bl	__Func_79374
.L1990:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.L19f6
	mov	r1, #0x96
	mov	r2, #0xb6
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L19f6
	mov	r0, #0xb
	bl	__Func_92054
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r5, #9
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	mov	r1, #0
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L19f6:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_3768
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x915
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a84
	mov	r1, #0xd5
	lsl	r1, #17
	ldr	r2, =0x2da0000
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r6, #2
	mov	r0, #0x58
	mov	r1, #0x30
	mov	r2, #0x58
	mov	r3, #0x2d
	str	r6, [sp]
	bl	__Func_10424
	mov	r5, #1
	mov	r0, #0x18
	mov	r1, #0x31
	mov	r2, #0x18
	mov	r3, #0x30
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x19
	mov	r1, #0x2a
	mov	r2, #0x19
	mov	r3, #0x2f
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x18
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
.L1a84:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a90
	b	.L1ca8
.L1a90:
	mov	r1, #0xe8
	mov	r2, #0xb7
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #1
	mov	r0, #7
	mov	r1, #0x2c
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r0, #0x10
	mov	r1, #0x6d
	mov	r2, #0xd
	mov	r3, #0x6d
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #2
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #4
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #7
	mov	r1, #0xb
	mov	r2, #7
	mov	r3, #0x2a
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0xc
	mov	r2, #0x47
	mov	r3, #0x2b
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #6
	mov	r5, #0x2c
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xd
	mov	r2, #0xc
	mov	r3, #0xc
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L1cc2

	.pool_aligned

.L1ca8:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.L1cc2
	cmp	r3, #1
	blt	.L1cc2
	mov	r0, #0xaa
	bl	__Func_91ff0
.L1cc2:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1cce
	b	.L1e40
.L1cce:
	mov	r1, #0xae
	mov	r2, #0xb7
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x6b
	mov	r3, #0x29
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r0, #0x2d
	mov	r1, #0x6d
	mov	r2, #0x2a
	mov	r3, #0x6d
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x26
	mov	r1, #0xe
	mov	r2, #0x26
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x66
	mov	r1, #0xe
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x25
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #0xc
	bl	__Func_10704
	b	.L1e5a
.L1e40:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bgt	.L1e5a
	cmp	r3, #3
	blt	.L1e5a
	mov	r0, #0xaa
	bl	__Func_91ff0
.L1e5a:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1930

.thumb_func_start OvlFunc_1e6c
	push	{lr}
	mov	r0, #0x1b
	bl	OvlFunc_1ea4
	mov	r0, #0x1c
	bl	OvlFunc_1ea4
	mov	r0, #0x1d
	bl	OvlFunc_1ea4
	mov	r0, #0x1e
	bl	OvlFunc_1ea4
	mov	r0, #0x20
	bl	OvlFunc_1ea4
	mov	r0, #0x1f
	bl	OvlFunc_1ea4
	mov	r0, #0x21
	bl	OvlFunc_1ea4
	mov	r0, #0x22
	bl	OvlFunc_1ea4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e6c

.thumb_func_start OvlFunc_1ea4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x64
	strh	r6, [r3]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, r5
	lsr	r3, #12
	add	r2, #0x66
	strh	r3, [r2]
	ldr	r1, =.L3eac
	mov	r0, r5
	bl	__Func_c2d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ea4

.thumb_func_start OvlFunc_1ed8
	push	{lr}
	ldr	r3, =.L5144
	mov	r2, #0
	str	r2, [r3]
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1f14
	bl	__Func_41d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ed8

.thumb_func_start OvlFunc_1f14
	push	{lr}
	ldr	r3, =.L5144
	ldr	r3, [r3]
	cmp	r3, #4
	bhi	.L1ff2
	ldr	r2, =.L1f28
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1f28:
	.word	.L1f3c
	.word	.L1f58
	.word	.L1f84
	.word	.L1fb0
	.word	.L1fdc
.L1f3c:
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L3ec0
	mov	r0, #0x15
	bl	__Func_9207c
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1f58:
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L3fb0
	mov	r0, #0x14
	bl	__Func_9207c
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1f84:
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L3ec0
	mov	r0, #0x14
	bl	__Func_9207c
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1fb0:
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L3fb0
	mov	r0, #0x15
	bl	__Func_9207c
	ldr	r2, =.L5144
	ldr	r3, [r2]
	add	r3, #1
	b	.L1ff0
.L1fdc:
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ff2
	ldr	r2, =.L5144
	mov	r3, #0
.L1ff0:
	str	r3, [r2]
.L1ff2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f14

.thumb_func_start OvlFunc_2008
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc0
	mov	r2, #0xab
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x3333
	ldr	r1, =0x666
	bl	__Func_933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xfc
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	ldr	r2, =iwram_1ebc
	ldr	r3, [r2]
	mov	r8, r2
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__Func_91dc8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x8b
	mov	r0, #0
	mov	r1, #0xc0
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #8
	bl	__Func_92054
	mov	r7, #0xc0
	lsl	r7, #6
	strh	r7, [r0, #6]
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0xa0
	lsl	r6, #7
	strh	r6, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xb8
	mov	r0, #8
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r2, #0xe8
	mov	r0, #9
	mov	r1, #0xc6
	bl	__Func_921c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	ldr	r0, =0x1b05
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, r6
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L217c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L217c:
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x86
	mov	r0, #2
	mov	r1, #0xd4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xfe
	mov	r1, #0xca
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, r7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_93054
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, r7
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L23c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_93040
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L23e2

	.pool_aligned

.L23c0:
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
.L23e2:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_93054
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	strh	r3, [r0, #6]
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xa8
	mov	r0, #8
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r2, #0xe8
	mov	r0, #9
	mov	r1, #0xd4
	bl	__Func_921c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0xc0
	mov	r0, #2
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r5, #2
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r3, #0xc
	mov	r0, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #5
	bl	__Func_30f8
	mov	r3, #0xc
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r0, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #5
	bl	__Func_30f8
	mov	r0, #2
	mov	r1, #0xc0
	mov	r2, #0xde
	bl	__Func_921c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xde
	bl	__Func_921c4
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0xb8
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r0, #9
	mov	r1, #0xc6
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #0xbc
	mov	r2, #0xd4
	bl	__Func_9218c
	mov	r0, #9
	mov	r1, #0xc2
	mov	r2, #0xd4
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #5
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2008

.thumb_func_start OvlFunc_26c0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xdc
	ldr	r2, =0x20a0000
	lsl	r1, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xdc
	mov	r1, #1
	ldr	r2, =0x20a0000
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #9
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0xc8
	lsl	r2, #1
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0x96
	lsl	r2, #1
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #0
	mov	r0, #9
	bl	__Func_924d4
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x99
	mov	r0, #0xb
	ldr	r1, =0x1b70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xb
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0x9c
	mov	r0, #0xb
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0xcd
	mov	r1, #1
	mov	r2, #0x8c
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r0, #0xa
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0x99
	mov	r0, #0xa
	ldr	r1, =0x1b70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0x9c
	mov	r0, #0xa
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc2
	mov	r2, #0x87
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x99
	mov	r0, #0
	ldr	r1, =0x1b70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0x9c
	mov	r0, #0
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc2
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r6, =.L421c
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #0
	mov	r1, r6
	bl	__Func_9207c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_92560
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	ldr	r0, =0x256f
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2920
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L2920:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2934
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L2934:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2948
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L2948:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xbd
	mov	r2, #0x9b
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xc8
	mov	r2, #0x90
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xcd
	mov	r2, #0x9a
	lsl	r2, #1
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #1
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #2
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #3
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #12
	add	r5, #0x66
	strh	r3, [r5]
	mov	r0, #1
	mov	r1, r6
	bl	__Func_9207c
	mov	r0, #2
	mov	r1, r6
	bl	__Func_9207c
	mov	r0, #3
	mov	r1, r6
	bl	__Func_9207c
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0xa
	bl	__Func_93040
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r0, #3
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0xa
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	b	.L2b1c

	.pool_aligned

.L2b1c:
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x84
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2da4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r1, #0xec
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	b	.L2de8

	.pool_aligned

.L2da4:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x83
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
.L2de8:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0xa
	ldr	r1, =0x14d
	mov	r2, #0xde
	bl	__Func_921c4
	mov	r1, #0x8e
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0xc6
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x86
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xc6
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0xb
	bl	__Func_10424
	mov	r3, #0x10
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x3c
	mov	r2, #2
	mov	r0, #0x47
	bl	__Func_10704
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0xf6
	mov	r2, #0xc6
	bl	__Func_921c4
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92adc
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x1333
	ldr	r0, =0x9999
	bl	__Func_933d4
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xaa
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x87
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0xc6
	bl	__Func_921c4
	mov	r1, #0x87
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0xae
	bl	__Func_921c4
	mov	r0, #0xa
	mov	r1, #0xe0
	mov	r2, #0xaa
	bl	__Func_921c4
	mov	r0, #0xa
	mov	r1, #0xd2
	mov	r2, #0x9e
	bl	__Func_921c4
	mov	r0, #0xa
	mov	r1, #0xf6
	mov	r2, #0x94
	bl	__Func_921c4
	mov	r0, #0xa
	mov	r1, #0xf6
	mov	r2, #0x8e
	bl	__Func_921c4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r2, =iwram_1ebc
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r10, r3
	mov	r8, r2
	ldr	r2, [r2]
	add	r3, #0x42
	mov	r1, r10
	str	r3, [r2, r1]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #0xdc
	mov	r2, #0xaa
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0x80
	lsl	r6, #7
	strh	r6, [r0, #6]
	mov	r1, #1
	mov	r0, #0xbe
	mov	r2, #0x8c
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #0xa
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xd2
	mov	r2, #0x8d
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd2
	mov	r2, #0x9c
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x9c
	mov	r0, #0xb
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x99
	mov	r0, #0xb
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_923e4
	ldr	r5, =.L4230
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0xcd
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r1, #0xd0
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x9c
	mov	r0, #0
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x99
	mov	r0, #0
	ldr	r1, =0x1b7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0x8d
	bl	__Func_f9080
	ldr	r2, =0x6666
	mov	r0, #9
	ldr	r1, =0xcccc
	bl	__Func_92064
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xd2
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r1, #0xdc
	mov	r2, #0xd2
	lsl	r2, #1
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0x80
	mov	r1, r6
	lsl	r0, #10
	bl	__Func_933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	mov	r0, #9
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0xfa
	mov	r0, #9
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xdc
	mov	r2, #0x96
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #9
	bl	__Func_9218c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r2, r8
	ldr	r1, [r2]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	add	r3, #0xe8
	mov	r2, r10
	str	r3, [r1, r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26c0

.thumb_func_start OvlFunc_3184
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r2, r3
	mov	r5, r0
	mov	r4, #8
	add	r2, #0x34
.L3192:
	ldmia	r2!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r5, r3
	bne	.L31a4
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r1, r3
	beq	.L31ac
.L31a4:
	add	r4, #1
	cmp	r4, #0x41
	bls	.L3192
	mov	r0, #0
.L31ac:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3184

.thumb_func_start OvlFunc_31b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r2, =.L3d84
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r2, r5]
	mov	r8, r0
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r10, r2
	asr	r2, r3, #16
	add	r0, r2
	mov	r2, r8
	mov	r4, #0x12
	ldrsh	r1, [r2, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r1, r3
	asr	r0, #4
	asr	r1, #4
	bl	OvlFunc_3184
	mov	r7, r0
	cmp	r7, #0
	beq	.L3288
	mov	r3, #0
	mov	r2, r7
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r4, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r7, #8]
	and	r2, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	cmp	r0, #0
	bgt	.L3288
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_30f8
	mov	r0, #0xb9
	bl	__Func_f9080
	str	r5, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, r7
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_d14c
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	mov	r0, r8
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_d14c
	mov	r0, r7
	bl	__Func_ca6c
	bl	__Func_9202c
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Func_c300
	bl	OvlFunc_32a4
.L3288:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_31b8

.thumb_func_start OvlFunc_32a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r10, r0
	ldr	r0, =0x302
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L32cc
	b	.L351e
.L32cc:
	ldr	r3, [r6, #8]
	asr	r3, #19
	cmp	r3, #0x1d
	ble	.L32d6
	b	.L351e
.L32d6:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r8, r0
	bl	__Func_916b0
	mov	r3, #1
	mov	r0, #7
	mov	r1, #0x2c
	mov	r2, #1
	str	r5, [sp]
	str	r3, [sp, #4]
	bl	__Func_10704
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.L32f8:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	cmp	r5, #0x46
	bne	.L3318
	ldr	r0, =0x302
	bl	__Func_79358
.L3318:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.L32f8
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r1, #0x6d
	mov	r2, #0xd
	mov	r3, #0x6d
	mov	r0, #0x10
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #0x96
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #16
	bl	__Func_923e4
	ldr	r1, =.L4268
	mov	r0, #0xb
	bl	__Func_9207c
	mov	r6, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #4
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #7
	mov	r1, #0xb
	mov	r2, #7
	mov	r3, #0x2a
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0xc
	mov	r2, #0x47
	mov	r3, #0x2b
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xc
	mov	r3, #0xc
	mov	r5, #0x2c
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_15b4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	bl	__Func_91750
.L351e:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	beq	.L352a
	b	.L36ea
.L352a:
	mov	r2, r10
	ldr	r3, [r2, #8]
	asr	r3, #19
	cmp	r3, #0x57
	ble	.L3536
	b	.L36ea
.L3536:
	bl	__Func_916b0
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.L3540:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x6b
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	cmp	r5, #0x46
	bne	.L3574
	ldr	r0, =0x303
	bl	__Func_79358
	b	.L3574

	.pool_aligned

.L3574:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.L3540
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r1, #0x6d
	mov	r2, #0x2a
	mov	r3, #0x6d
	mov	r0, #0x2d
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r5, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x43
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x44
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x26
	mov	r1, #0xe
	mov	r2, #0x26
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x66
	mov	r1, #0xe
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x25
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #0xc
	mov	r0, #0x25
	bl	__Func_10704
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_15b4
	bl	__Func_91750
.L36ea:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_32a4

.thumb_func_start OvlFunc_36f8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.L370e
	bl	__Func_c0f4
	b	.L372e
.L370e:
	cmp	r3, #1
	bne	.L371e
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	b	.L372e
.L371e:
	ldr	r3, [r5, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
.L372e:
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x24]
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r1, [r5, #0x28]
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r5, #0xc]
	mov	r3, r2
	cmp	r2, #0
	bge	.L3746
	add	r3, #0xff
.L3746:
	asr	r3, #8
	sub	r3, r2, r3
	str	r3, [r5, #0x24]
	mov	r3, r1
	cmp	r1, #0
	bge	.L3754
	add	r3, #0xf
.L3754:
	asr	r3, #4
	sub	r3, r1, r3
	str	r3, [r5, #0x28]
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_36f8

.thumb_func_start OvlFunc_3768
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	ldr	r2, =0xfffffe83
	add	r3, r2
	mov	r6, r0
	cmp	r3, #0xc
	bhi	.L37ae
	mov	r2, #0x12
	ldrsh	r3, [r5, r2]
	ldr	r2, =0x309
	cmp	r3, r2
	ble	.L37ae
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	b	.L37f4
.L37ae:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.L37f4
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xf5
	bgt	.L37f4
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L37f4
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L37ea
	mov	r0, #1
	neg	r0, r0
	bl	__Func_91ff0
	mov	r0, #0xe6
	bl	__Func_f9080
	ldr	r0, =0x202
	bl	__Func_79358
.L37ea:
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	OvlFunc_3864
.L37f4:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	bne	.L383c
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	ldr	r2, =0x2c5
	cmp	r3, r2
	bgt	.L383c
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L383c
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3832
	mov	r0, #1
	neg	r0, r0
	bl	__Func_91ff0
	mov	r0, #0xe6
	bl	__Func_f9080
	ldr	r0, =0x203
	bl	__Func_79358
.L3832:
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	bl	OvlFunc_3864
.L383c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3768

.thumb_func_start OvlFunc_3864
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r5, r0
	bl	__Func_4458
	mov	r2, r0
	ldr	r3, =0xfff80000
	lsl	r2, #3
	lsr	r2, #16
	add	r5, r3
	lsl	r2, #16
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r6
	add	r2, r3
	mov	r1, r5
	mov	r0, #0xde
	mov	r3, r8
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L38fa
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #9
	bl	__Func_929d8
	mov	r1, #0
	mov	r0, r5
	bl	__Func_c528
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	sub	r0, #1
	lsl	r0, #16
	str	r0, [r5, #0x24]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	mov	r2, r5
	str	r3, [r5, #0x28]
	add	r2, #0x64
	mov	r3, #0x14
	strh	r3, [r2]
	sub	r2, #3
	mov	r3, #1
	mov	r0, r5
	mov	r1, #1
	strb	r3, [r2]
	bl	__Func_c300
	ldr	r1, =.L5120
	mov	r0, r5
	bl	__Func_c2d8
.L38fa:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3864

.thumb_func_start OvlFunc_390c
	push	{r5, r6, r7, lr}
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_2322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L3926
	neg	r5, r5
.L3926:
	ldr	r0, [r6, #0x30]
	bl	__Func_231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x3c]
	ldr	r0, [r6, #0x30]
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #8
	str	r3, [r6, #0xc]
	add	r0, r2
	bl	__Func_231c
	asr	r0, #3
	strh	r0, [r7, #0x1e]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_390c

.thumb_func_start OvlFunc_3970
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0xe
	mov	r6, r0
	mov	r5, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	cmp	r6, #0
	beq	.L39be
	mov	r0, r6
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r6
	str	r3, [r6, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L39be:
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3970

.thumb_func_start OvlFunc_39d4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_2322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L39e8
	neg	r5, r5
.L39e8:
	ldr	r0, [r6, #0x30]
	bl	__Func_231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_231c
	cmp	r0, #0
	bge	.L3a0e
	add	r0, #7
.L3a0e:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_39d4

.thumb_func_start OvlFunc_3a3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__Func_92054
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3aa0
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L3aa0:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_39d4
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a3c

	.section .data

.L3d84:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3d84, (0x3dc4-0x3d84)
.L3dc4:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3dc4, (0x3e00-0x3dc4)
.L3e00:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3e00, (0x3eac-0x3e00)
.L3eac:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3eac, (0x3ec0-0x3eac)
.L3ec0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3ec0, (0x3fb0-0x3ec0)
.L3fb0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3fb0, (0x4034-0x3fb0)
.L4034:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4034, (0x40cc-0x4034)
.L40cc:
	.incbin "overlays/rom_7c097c/orig.bin", 0x40cc, (0x4164-0x40cc)
.L4164:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4164, (0x41ac-0x4164)
.L41ac:
	.incbin "overlays/rom_7c097c/orig.bin", 0x41ac, (0x421c-0x41ac)
.L421c:
	.incbin "overlays/rom_7c097c/orig.bin", 0x421c, (0x4230-0x421c)
.L4230:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4230, (0x4268-0x4230)
.L4268:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4268, (0x4298-0x4268)
.L4298:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4298, (0x42c8-0x4298)
.L42c8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x42c8, (0x4448-0x42c8)
.L4448:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4448, (0x44a8-0x4448)
.L44a8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x44a8, (0x4520-0x44a8)
.L4520:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4520, (0x4580-0x4520)
.L4580:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4580, (0x4628-0x4580)
.L4628:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4628, (0x46b8-0x4628)
.L46b8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x46b8, (0x4750-0x46b8)
.L4750:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4750, (0x4768-0x4750)
.L4768:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4768, (0x4948-0x4768)
.L4948:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4948, (0x4a20-0x4948)
.L4a20:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4a20, (0x4a80-0x4a20)
.L4a80:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4a80, (0x4b58-0x4a80)
.L4b58:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4b58, (0x4be8-0x4b58)
.L4be8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4be8, (0x4bf4-0x4be8)
.L4bf4:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4bf4, (0x4e88-0x4bf4)
.L4e88:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4e88, (0x4edc-0x4e88)
.L4edc:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4edc, (0x4f24-0x4edc)
.L4f24:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f24, (0x4f54-0x4f24)
.L4f54:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f54, (0x4f9c-0x4f54)
.L4f9c:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f9c, (0x50e0-0x4f9c)
.L50e0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x50e0, (0x5120-0x50e0)
.L5120:
	.incbin "overlays/rom_7c097c/orig.bin", 0x5120

	.section .bss

	.lcomm	.Lunused_5138, 0xc
	.lcomm	.L5144, 4
