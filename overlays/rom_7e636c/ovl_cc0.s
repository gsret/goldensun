	.include "macros.inc"

.thumb_func_start OvlFunc_cc0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lcd8
	ldr	r0, =.L17b4
	b	.Lcee
.Lcd8:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lce2
	ldr	r0, =.L17fc
	b	.Lcee
.Lce2:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lcec
	ldr	r0, =.L1874
	b	.Lcee
.Lcec:
	ldr	r0, =.L1784
.Lcee:
	pop	{r1}
	bx	r1
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_d14
	mov	r0, #0
	bx	lr
.func_end OvlFunc_d14

.thumb_func_start OvlFunc_d18
	ldr	r0, =.L191c
	bx	lr
.func_end OvlFunc_d18

.thumb_func_start OvlFunc_d20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Ld46
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld42
	ldr	r0, =.L19d4
	b	.Ld5c
.Ld42:
	ldr	r0, =.L1974
	b	.Ld5c
.Ld46:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Ld50
	ldr	r0, =.L1a4c
	b	.Ld5c
.Ld50:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Ld5a
	ldr	r0, =.L1aac
	b	.Ld5c
.Ld5a:
	ldr	r0, =.L195c
.Ld5c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d20

.thumb_func_start OvlFunc_d88
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Ldae
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldaa
	ldr	r0, =.L1bcc
	b	.Ldc4
.Ldaa:
	ldr	r0, =.L1b48
	b	.Ldc4
.Ldae:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Ldb8
	ldr	r0, =.L1c80
	b	.Ldc4
.Ldb8:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Ldc2
	ldr	r0, =.L1ce0
	b	.Ldc4
.Ldc2:
	ldr	r0, =.L1b3c
.Ldc4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d88

.thumb_func_start OvlFunc_df0
	push	{lr}
	ldr	r0, =0x98a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldfe
	b	.Lf2c
.Ldfe:
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le0c
	b	.Lf2c
.Le0c:
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le32
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xb
	bl	__Func_923e4
.Le32:
	mov	r1, #8
	neg	r1, r1
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__Func_9228c
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	ldr	r0, =0x23da
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Leba
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xe8
	mov	r1, #0x98
	mov	r0, #0xb
	bl	__Func_9218c
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79374
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_924d4
	ldr	r1, =ewram_240
	mov	r0, #0xe2
	ldr	r3, =0x88
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	b	.Lf28
.Leba:
	ldr	r3, =iwram_1ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lef2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_92128
.Lef2:
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
.Lf28:
	bl	__Func_91750
.Lf2c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_df0

.thumb_func_start OvlFunc_f44
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_92848
	ldr	r0, =0x23d9
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfa4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_92128
.Lfa4:
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f44

.thumb_func_start OvlFunc_fd0
	push	{r5, lr}
	ldr	r5, =0x23cc
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1016
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L100c
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L100c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
.L100c:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L102e
.L1016:
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
	bl	__Func_92f84
.L102e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fd0

.thumb_func_start OvlFunc_1040
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1060
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1060
	ldr	r0, =0x23d5
	bl	__Func_92b94
	b	.L1066
.L1060:
	ldr	r0, =0x23d2
	bl	__Func_92b94
.L1066:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_1040

.thumb_func_start OvlFunc_1080
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10ba
	ldr	r0, =0x9a3
	bl	__Func_79374
	ldr	r0, =0x9a5
	bl	__Func_79374
	ldr	r0, =0x9a4
	bl	__Func_79374
	ldr	r0, =0x9a6
	bl	__Func_79374
	ldr	r0, =0x9a5
	bl	__Func_79358
	ldr	r0, =0x9a4
	bl	__Func_79358
.L10ba:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1080

.thumb_func_start OvlFunc_10f0
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_10f0

.thumb_func_start OvlFunc_10fc
	push	{lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bgt	.L1138
	mov	r0, #8
	bl	OvlFunc_11f8
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x9a2
	bl	__Func_79358
.L1138:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_10fc

.thumb_func_start OvlFunc_1148
	push	{lr}
	bl	OvlFunc_3a8
	bl	OvlFunc_1158
	pop	{r0}
	bx	r0
.func_end OvlFunc_1148

.thumb_func_start OvlFunc_1158
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	ble	.L11b4
	mov	r3, #0x6b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x11
	mov	r2, #1
	mov	r0, #0x6c
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xae
	mov	r2, #0x90
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x9a
	bl	__Func_f9080
	ldr	r0, =0x9a5
	bl	__Func_79358
.L11b4:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1158

.thumb_func_start OvlFunc_11c4
	bx	lr
.func_end OvlFunc_11c4

.thumb_func_start OvlFunc_11c8
	ldr	r2, [r0, #0x50]
	ldr	r1, =0xfffffc00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	bx	lr
.func_end OvlFunc_11c8

.thumb_func_start OvlFunc_11d8
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	mov	r5, #0x28
.L11e0:
	cmp	r5, #0
	beq	.L11f2
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7, #0xc]
	sub	r5, #1
	cmp	r3, r6
	bgt	.L11e0
.L11f2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11d8

.thumb_func_start OvlFunc_11f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r11, r0
	bl	__Func_92054
	mov	r6, r0
	mov	r5, r6
	mov	r3, #0
	add	r5, #0x55
	strb	r3, [r5]
	mov	r8, r3
.L121a:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r6, #0x50]
	ldr	r1, =0xffffff00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	ldr	r3, [r6, #0x50]
	ldrh	r0, [r3, #0x1e]
	bl	__Func_231c
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r3, [r6, #8]
	asr	r0, #1
	sub	r3, r0
	str	r3, [r6, #8]
	mov	r2, #1
	mov	r3, #0x80
	lsl	r3, #24
	add	r8, r2
	str	r3, [r6, #0x38]
	mov	r3, r8
	cmp	r3, #8
	bls	.L121a
	ldr	r3, =OvlFunc_11c8
	mov	r0, #0x88
	str	r3, [r6, #0x6c]
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r11
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0x90
	lsl	r1, #1
	mov	r0, r11
	lsl	r2, #1
	bl	__Func_92128
	ldr	r3, =0xcccc
	str	r3, [r6, #0x48]
	mov	r3, #3
	strb	r3, [r5]
	mov	r3, r6
	add	r3, #0x22
	mov	r2, #0
	strb	r2, [r3]
	mov	r0, r11
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #14
	mov	r0, r6
	bl	OvlFunc_11d8
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r4, #0
	add	r7, sp, #0x10
	mov	r8, r4
	mov	r10, r7
	mov	r9, r4
.L12bc:
	mov	r1, r8
	lsl	r5, r1, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r2, r10
	mov	r3, r9
	str	r0, [r2]
	str	r3, [r2, #4]
	mov	r0, r5
	bl	__Func_2322
	mov	r4, r10
	ldr	r2, [r4]
	str	r0, [r4, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.L12e2
	add	r3, r2, #3
.L12e2:
	lsr	r5, r0, #31
	add	r5, r0, r5
	asr	r3, #2
	asr	r5, #1
	sub	r3, r2, r3
	sub	r5, r0, r5
	str	r3, [r7]
	str	r5, [r7, #8]
	ldr	r4, [r7, #4]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	ldr	r0, [r6, #8]
	str	r4, [sp]
	mov	r4, r9
	str	r5, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.L12bc
	mov	r1, #0xdc
	mov	r2, #0x9a
	lsl	r2, #1
	mov	r0, r11
	lsl	r1, #1
	bl	__Func_92128
	mov	r0, r11
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #14
	mov	r0, r6
	bl	OvlFunc_11d8
	mov	r3, r9
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0x6c]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r2, #0x1e]
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, r11
	mov	r1, #3
	bl	__Func_924d4
	bl	__Func_12350
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r11
	mov	r1, #2
	bl	__Func_924d4
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11f8

.thumb_func_start OvlFunc_1380
	bx	lr
.func_end OvlFunc_1380

.thumb_func_start OvlFunc_1384
	push	{lr}
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1384

.thumb_func_start OvlFunc_1394
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	sub	sp, #8
	cmp	r2, r3
	bne	.L13c8
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13c8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L13c8:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.L1464
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L13fa
	mov	r3, #0x6b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L13fa:
	ldr	r0, =0x9a2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L142e
	mov	r1, #0xdc
	mov	r2, #0x9a
	lsl	r2, #17
	mov	r0, #8
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L142e:
	ldr	r0, =0x9a5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1458
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xae
	mov	r2, #0x90
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
.L1458:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L1464:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1394

	.section .data

.L1784:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1784, (0x17b4-0x1784)
.L17b4:
	.incbin "overlays/rom_7e636c/orig.bin", 0x17b4, (0x17fc-0x17b4)
.L17fc:
	.incbin "overlays/rom_7e636c/orig.bin", 0x17fc, (0x1874-0x17fc)
.L1874:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1874, (0x191c-0x1874)
.L191c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x191c, (0x195c-0x191c)
.L195c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x195c, (0x1974-0x195c)
.L1974:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1974, (0x19d4-0x1974)
.L19d4:
	.incbin "overlays/rom_7e636c/orig.bin", 0x19d4, (0x1a4c-0x19d4)
.L1a4c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1a4c, (0x1aac-0x1a4c)
.L1aac:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1aac, (0x1b3c-0x1aac)
.L1b3c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1b3c, (0x1b48-0x1b3c)
.L1b48:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1b48, (0x1bcc-0x1b48)
.L1bcc:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1bcc, (0x1c80-0x1bcc)
.L1c80:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1c80, (0x1ce0-0x1c80)
.L1ce0:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1ce0
