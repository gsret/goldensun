	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1a08
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L1ac8
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.L5c
	ldr	r0, =.L1aec
	b	.L5e
.L5c:
	ldr	r0, =.L1cfc
.L5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_44

.thumb_func_start OvlFunc_74
	push	{r5, r6, lr}
	ldr	r5, =0xe39
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.La2
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.La8
.La2:
	add	r0, r5, #2
	bl	__Func_92b94
.La8:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_74

.thumb_func_start OvlFunc_bc
	push	{r5, r6, lr}
	ldr	r5, =0xe19
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lea
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.Lf0
.Lea:
	add	r0, r5, #2
	bl	__Func_92b94
.Lf0:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_bc

.thumb_func_start OvlFunc_104
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L128
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	bl	OvlFunc_880
.L128:
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, r5
	bl	__Func_92adc
	bl	OvlFunc_ac8
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_104

.thumb_func_start OvlFunc_154
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xe34
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_92c40
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_154

.thumb_func_start OvlFunc_178
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xe35
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_92c40
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_178

.thumb_func_start OvlFunc_19c
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_8f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_19c

.thumb_func_start OvlFunc_1a8
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.L1c0
	ldr	r0, =.L1f30
	b	.L1c2
.L1c0:
	ldr	r0, =.L1e1c
.L1c2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1a8

.thumb_func_start OvlFunc_1d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r6, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.L280
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r3, =0x3f42
	ldr	r1, =REG_BLDCNT
	mov	r10, r3
	mov	r8, r1
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x80c
	ldr	r7, =REG_BLDALPHA
	strh	r3, [r7]
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r5,=0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x19
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x19
	bl	__Func_92054
	add	r0, #0x23
	strb	r5, [r0]
	bl	__Func_91dc8
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.L260
	b	.L462
.L260:
	bl	OvlFunc_16a8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L272
	b	.L462
.L272:
	mov	r3, r10
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r7]
	b	.L462
.L280:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L296
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L296:
	ldr	r2, =iwram_1d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r5, r6, r3
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0xa
	bne	.L2cc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #9
	mov	r1, #2
	bl	__Func_92950
	ldrh	r2, [r5]
.L2cc:
	lsl	r3, r2, #16
	mov	r2, #0xd0
	lsl	r2, #12
	cmp	r3, r2
	bne	.L380
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L380
	bl	__Func_916b0
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92950
	mov	r1, #2
	mov	r0, #9
	bl	__Func_92950
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x70
	mov	r0, #0
	mov	r1, #0x78
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =ewram_1000
	ldr	r2, [r6, #0x10]
	ldr	r3, [r3]
	sub	r5, r2, r3
	cmp	r5, #0
	ble	.L362
	ldr	r3, =0x4e1f
	cmp	r5, r3
	ble	.L32c
	mov	r0, #0x5d
	bl	__Func_f9080
	b	.L340
.L32c:
	ldr	r1, =0x1387
	cmp	r5, r1
	ble	.L33a
	mov	r0, #0x5c
	bl	__Func_f9080
	b	.L340
.L33a:
	mov	r0, #0x5b
	bl	__Func_f9080
.L340:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xe13
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #5
	bl	__Func_19908
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_b04c4
	b	.L37c
.L362:
	cmp	r5, #0
	bge	.L37c
	ldr	r0, =0xe14
	bl	__Func_92b94
	neg	r0, r5
	mov	r1, #5
	bl	__Func_19908
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
.L37c:
	bl	__Func_91750
.L380:
	ldr	r5, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xc
	bne	.L462
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L462
	mov	r2, #0x96
	lsl	r2, #1
	add	r7, r5, r2
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r5, #1
	mov	r3, #0
	ldrsb	r3, [r7, r3]
	neg	r5, r5
	cmp	r3, r5
	bne	.L3c6
	mov	r0, #1
	bl	OvlFunc_8f8
	b	.L45e
.L3c6:
	mov	r1, #2
	neg	r1, r1
	cmp	r3, r1
	beq	.L45e
	ldr	r0, =0xe2e
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r3, #0
	ldrsb	r3, [r7, r3]
	cmp	r3, r5
	beq	.L444
	mov	r8, r5
	mov	r6, r7
.L3e8:
	cmp	r6, r7
	bne	.L3f4
	ldr	r0, =0xe2f
	bl	__Func_92b94
	b	.L3fa
.L3f4:
	ldr	r0, =0xe30
	bl	__Func_92b94
.L3fa:
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	bl	OvlFunc_d70
	mov	r1, #2
	mov	r5, r0
	bl	__Func_19908
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, r5
	bl	__Func_91a58
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	add	r6, #1
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, r8
	bne	.L3e8
.L444:
	ldr	r3, =ewram_240
	mov	r2, #0x96
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0xfe
	ldr	r0, =0xe31
	strb	r2, [r3]
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
.L45e:
	bl	__Func_91750
.L462:
	mov	r0, #0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1d8

.thumb_func_start OvlFunc_4bc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x94
	bl	__Func_f9080
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r8, r3
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #3
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x64
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x4f
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r2, #0x46
	mov	r3, #0
	mov	r1, #0x1d
	mov	r0, #0x64
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, #0x7e
	bl	__Func_f9080
	mov	r0, r5
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, r5
	bl	__Func_91a58
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x64
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x4f
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_9163c
	bl	__Func_91750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bc

.thumb_func_start OvlFunc_880
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	mov	r0, #0xd8
	ldr	r5, [r3]
	bl	__Func_f9080
	mov	r2, #0xb2
	lsl	r2, #1
	add	r5, r2
	mov	r6, #0xf
.L89a:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	bge	.L89a
	ldr	r3, =0x3f42
	ldr	r2, =REG_BLDCNT
	ldr	r5, =.L1fc0
	ldr	r7, =REG_BLDALPHA
	mov	r10, r3
	mov	r8, r2
	mov	r6, #7
.L8bc:
	mov	r3, r10
	mov	r2, r8
	strh	r3, [r2]
	ldrh	r3, [r5]
	add	r5, #2
	strh	r3, [r7]
	mov	r0, #8
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	bge	.L8bc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_880

.thumb_func_start OvlFunc_8f8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0xe4
	bl	__Func_78b60
	mov	r6, r0
	bl	__Func_8ba38
	cmp	r5, #0
	bne	.L982
	ldr	r7, =0xe23
	mov	r0, r7
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	cmp	r6, #0
	beq	.L9aa
	add	r0, r7, #2
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #5
	bl	__Func_19908
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L9aa
	bl	__Func_78550
	mov	r5, r0
	cmp	r5, #0
	bne	.L95c
	add	r0, r7, #4
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
	b	.L96e
.L95c:
	cmp	r5, #6
	bgt	.L9b4
	add	r0, r7, #5
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
.L96e:
	cmp	r5, #6
	bgt	.L9b4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L9b4
	ldr	r0, =0xe29
	b	.L9a6
.L982:
	cmp	r6, #0
	bne	.L98a
	ldr	r0, =0xe32
	b	.L9a6
.L98a:
	ldr	r0, =0xe33
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L9b4
	ldr	r0, =0xe31
.L9a6:
	bl	__Func_92b94
.L9aa:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L9d4
.L9b4:
	ldr	r0, =0xe2a
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xfe
	lsl	r0, #1
	mov	r1, #0
	bl	__Func_91fc0
	ldr	r0, =0x89
	mov	r1, #0xc
	bl	__Func_91f90
.L9d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8f8

.thumb_func_start OvlFunc_9f8
	push	{r5, lr}
	bl	__Func_77348
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r5, r3, #1
	bl	__Func_916b0
	ldr	r3, =ewram_240
	ldr	r2, [r3, #0x10]
	cmp	r2, r5
	bcs	.La20
	ldr	r0, =0xe12
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92c40
	b	.Laa6
.La20:
	ldr	r3, =ewram_1000
	str	r2, [r3]
	bl	__Func_8ba38
	ldr	r0, =0xe0e
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #5
	bl	__Func_19908
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.La8a
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x80
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1fd
	mov	r1, #0
	bl	__Func_91fc0
	ldr	r0, =0x89
	mov	r1, #0xd
	bl	__Func_91f90
	b	.Laa2
.La8a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
.Laa2:
	bl	__Func_91750
.Laa6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9f8

.thumb_func_start OvlFunc_ac8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r10, r3
	sub	sp, #4
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r3, =0xe43
	mov	r9, r3
	ldr	r3, =ewram_240
	mov	r11, r3
.Laec:
	mov	r3, r11
	ldr	r3, [r3, #0x10]
	mov	r0, #0xe5
	mov	r8, r3
	bl	__Func_78b60
	mov	r7, r0
	mov	r0, r9
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_92c40
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #4
	mov	r0, #0
	bl	__Func_162d4
	ldr	r5, =0xe49
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__Func_1e7c0
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #6
	mov	r2, r6
	mov	r3, #0x48
	bl	__Func_1ea08
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	__Func_1e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r2, r6
	mov	r3, #0x48
	mov	r1, #6
	mov	r0, r7
	bl	__Func_1ea08
	mov	r0, r10
	bl	__Func_28ea8
	mov	r1, #2
	mov	r10, r0
	mov	r0, r6
	bl	__Func_16418
	bl	__Func_19a54
	mov	r3, #1
	neg	r3, r3
	cmp	r10, r3
	bne	.Lb74
	b	.Ld34
.Lb74:
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb86
	mov	r3, r8
	cmp	r3, #0
	bne	.Lbdc
	mov	r0, r9
	add	r0, #1
	b	.Lb94
.Lb86:
	mov	r3, r10
	cmp	r3, #1
	bne	.Lbdc
	cmp	r7, #0
	bne	.Lbb4
	mov	r0, r9
	add	r0, #2
.Lb94:
	bl	__Func_92b94
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	bl	__Func_30f8
	b	.Laec
.Lbaa:
	mov	r0, #0x70
	bl	__Func_f9080
	mov	r5, #0
	b	.Lc3c
.Lbb4:
	bl	__Func_78550
	cmp	r0, #0
	bne	.Lbdc
	mov	r0, r9
	add	r0, #4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.Lbdc
	b	.Ld34
.Lbdc:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xf
	mov	r2, #9
	mov	r3, #4
	mov	r0, #0x14
	bl	__Func_162d4
	ldr	r5, =0xe4c
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__Func_1e7c0
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	__Func_1e7c0
	mov	r0, #5
	bl	__Func_30f8
	mov	r0, #0x74
	bl	__Func_f9080
	ldr	r5, =iwram_1c94
	mov	r7, #1
	b	.Lc20
.Lc1a:
	mov	r0, #1
	bl	__Func_30f8
.Lc20:
	ldr	r3, [r5]
	and	r3, r7
	cmp	r3, #0
	bne	.Lbaa
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lc1a
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r5, #1
	neg	r5, r5
.Lc3c:
	mov	r0, r6
	mov	r1, #2
	bl	__Func_16418
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Ld34
	mov	r3, r10
	cmp	r3, #0
	bne	.Lc5c
	mov	r0, #1
	neg	r0, r0
	bl	__Func_79700
	b	.Lc68
.Lc5c:
	mov	r3, r10
	cmp	r3, #1
	bne	.Lc68
	mov	r0, #0xe5
	bl	__Func_789dc
.Lc68:
	mov	r0, r10
	bl	OvlFunc_173c
	mov	r3, r10
	mov	r5, r0
	cmp	r3, #0
	bne	.Lcb2
	cmp	r5, #4
	beq	.Lca4
	ldr	r6, =.L200c
	lsl	r5, #1
	ldrh	r0, [r6, r5]
	bl	__Func_79700
	mov	r0, #0x5b
	bl	__Func_f9080
	mov	r1, #5
	ldrh	r0, [r6, r5]
	bl	__Func_19908
	ldr	r0, =0xe46
	bl	__Func_92b94
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_92f84
	b	.Ld34
.Lca4:
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	b	.Ld34
.Lcb2:
	lsl	r3, r5, #1
	add	r3, r5
	mov	r6, #0
	add	r0, r3, #3
	mov	r7, #0
	cmp	r6, r0
	bge	.Lcd6
	ldr	r2, =0x11d
	mov	r12, r0
	add	r2, r11
.Lcc6:
	ldrb	r3, [r2]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r2, #1
	add	r7, r3
	cmp	r6, r12
	blt	.Lcc6
.Lcd6:
	bl	__Func_4458
	mov	r3, r7
	mul	r3, r0
	mov	r1, r11
	lsr	r2, r3, #16
	mov	r3, #0x8e
	lsl	r3, #1
	add	r1, #1
	ldrsb	r3, [r1, r3]
	sub	r2, r3
	mov	r6, #0
	cmp	r2, #0
	blt	.Ld08
	ldr	r1, =0x11d
	add	r1, r11
.Lcf6:
	add	r6, #1
	cmp	r6, #0xe
	bgt	.Ld08
	add	r1, #1
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	sub	r2, r3
	cmp	r2, #0
	bge	.Lcf6
.Ld08:
	cmp	r6, #0xf
	bne	.Ld0e
	mov	r6, #0xe
.Ld0e:
	ldr	r2, =.L1fd0
	lsl	r3, r6, #2
	ldr	r0, [r2, r3]
	bl	OvlFunc_4bc
	mov	r3, #0x8e
	lsl	r3, #1
	mov	r0, r11
	add	r1, r6, r3
	add	r0, #1
	ldrb	r3, [r0, r1]
	lsl	r3, #24
	asr	r2, r3, #24
	cmp	r2, #1
	ble	.Ld34
	lsr	r3, #31
	add	r3, r2, r3
	asr	r3, #1
	strb	r3, [r0, r1]
.Ld34:
	bl	__Func_91750
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ac8

.thumb_func_start OvlFunc_d70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0
	blt	.Ldbe
	cmp	r7, #5
	bne	.Ld8c
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r7, r3, #16
.Ld8c:
	ldr	r3, =ewram_240
	mov	r8, r3
	mov	r3, #0x9a
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, r8
	ldrsb	r5, [r3, r6]
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	add	r5, r0
	add	r5, #4
	mov	r0, r5
	mov	r1, #3
	bl	_Func_b1c
	mov	r3, r8
	strb	r0, [r3, r6]
	lsl	r3, r7, #1
	add	r3, r7
	add	r3, r0
	ldr	r2, =.L2018
	lsl	r3, #2
	ldr	r0, [r2, r3]
.Ldbe:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_d70

.thumb_func_start OvlFunc_dd0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r8, r2
	mov	r7, r3
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.Le0a
	ldmia	r6!, {r3}
	str	r3, [r5, #8]
	ldmia	r6!, {r3}
	str	r3, [r5, #0xc]
	ldr	r3, [r6]
	str	r3, [r5, #0x10]
	mov	r3, r8
	strh	r3, [r5, #6]
	ldr	r2, =0
	mov	r3, r5
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r3, [r5, #0x50]
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r1, [sp, #0x14]
	bl	__Func_c344
.Le0a:
	ldr	r0, [r5, #0x50]
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Le3a
	mov	r4, #0xff
	add	r0, #0x28
	mov	r1, r3
	b	.Le24

	.pool_aligned

.Le24:
	ldmia	r0!, {r2}
	ldrb	r3, [r2, #5]
	cmp	r3, r7
	beq	.Le34
	ldrb	r3, [r2, #0x16]
	orr	r3, r4
	strb	r7, [r2, #5]
	strb	r3, [r2, #0x16]
.Le34:
	sub	r1, #1
	cmp	r1, #0
	bne	.Le24
.Le3a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_dd0

.thumb_func_start OvlFunc_e44
	push	{r5, lr}
	mov	r5, r1
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le56
	mov	r3, r0
	add	r3, #0x54
	strb	r5, [r3]
.Le56:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e44

.thumb_func_start OvlFunc_e5c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =.L2070
	mov	r9, r0
	mov	r1, #3
	mov	r2, r9
	sub	sp, #0x18
	mov	r8, r1
	add	r2, #0x1c
.Le74:
	ldr	r3, [r2]
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #4]
	str	r3, [r2, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r2, #0x14]
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r4, r8
	sub	r2, #0xc
	cmp	r4, #0
	bne	.Le74
	mov	r1, r9
	mov	r0, #2
	ldrsh	r3, [r1, r0]
	cmp	r3, #0x1f
	bgt	.Le9a
	b	.L1224
.Le9a:
	ldr	r3, [r1, #4]
	ldr	r2, [r1, #0x40]
	add	r3, r2
	str	r3, [r1, #4]
	mov	r2, r9
	ldr	r1, [r1, #8]
	ldr	r0, [r2, #0x44]
	add	r1, r0
	ldr	r3, [r2, #0xc]
	str	r1, [r2, #8]
	ldr	r2, [r2, #0x48]
	mov	r4, r9
	add	r3, r2
	str	r3, [r4, #0xc]
	cmp	r1, #0
	ble	.Lebc
	b	.L121c
.Lebc:
	mov	r1, r8
	str	r1, [r4, #8]
	cmp	r0, #0
	beq	.Lee8
	str	r1, [r4, #0x44]
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Ledc
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c300
	b	.Lee8
.Ledc:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c300
.Lee8:
	mov	r2, r9
	ldr	r3, [r2, #0x4c]
	cmp	r3, #0
	ble	.Lf72
	ldr	r3, [r2, #4]
	mov	r2, #0xf0
	lsl	r2, #15
	sub	r3, r2, r3
	mov	r4, r9
	asr	r7, r3, #8
	mov	r6, #0x8e
	ldr	r3, [r4, #0xc]
	lsl	r6, #15
	sub	r6, r3
	asr	r6, #8
	mov	r0, r7
	mul	r0, r7
	mov	r3, r6
	mul	r3, r6
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r10, r0
	ldr	r0, =0x1999
	mov	r8, r0
	mov	r0, r8
	mul	r0, r7
	mov	r1, r10
	bl	_Func_af0
	mov	r1, r9
	ldr	r3, [r1, #0x40]
	add	r7, r3, r0
	str	r7, [r1, #0x40]
	mov	r0, r8
	mul	r0, r6
	mov	r1, r10
	bl	_Func_af0
	mov	r2, r9
	ldr	r3, [r2, #0x48]
	add	r2, r3, r0
	mov	r3, r9
	str	r2, [r3, #0x48]
	lsl	r3, r7, #6
	sub	r3, r7
	lsl	r3, #2
	add	r3, r7
	cmp	r3, #0
	bge	.Lf50
	add	r3, #0xff
.Lf50:
	asr	r3, #8
	mov	r4, r9
	str	r3, [r4, #0x40]
	lsl	r3, r2, #6
	sub	r3, r2
	lsl	r3, #2
	add	r3, r2
	cmp	r3, #0
	bge	.Lf64
	add	r3, #0xff
.Lf64:
	mov	r0, r9
	asr	r3, #8
	str	r3, [r0, #0x48]
	ldr	r3, [r0, #0x4c]
	sub	r3, #1
	str	r3, [r0, #0x4c]
	b	.L109a
.Lf72:
	mov	r1, r9
	ldr	r3, [r1, #0x40]
	mov	r1, #0xdc
	mul	r3, r1
	cmp	r3, #0
	bge	.Lf80
	add	r3, #0xff
.Lf80:
	asr	r2, r3, #8
	mov	r3, r9
	str	r2, [r3, #0x40]
	ldr	r3, [r3, #0x48]
	mul	r3, r1
	cmp	r3, #0
	bge	.Lf90
	add	r3, #0xff
.Lf90:
	ldr	r0, =0x3ff
	asr	r3, #8
	mov	r4, r9
	str	r3, [r4, #0x48]
	add	r3, r2, r0
	ldr	r2, =0x7fe
	cmp	r3, r2
	bhi	.Lfa4
	mov	r3, #0
	str	r3, [r4, #0x40]
.Lfa4:
	mov	r1, r9
	ldr	r3, [r1, #0x48]
	ldr	r4, =0x3ff
	add	r3, r4
	cmp	r3, r2
	bhi	.Lfb4
	mov	r3, #0
	str	r3, [r1, #0x48]
.Lfb4:
	mov	r0, r9
	ldr	r3, [r0, #0x40]
	cmp	r3, #0
	bne	.L109a
	ldr	r3, [r0, #0x48]
	cmp	r3, #0
	bne	.L109a
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lff0
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #2
	bl	__Func_c300
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_e44
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_e44
	mov	r0, #0xd
	mov	r1, #0
	bl	OvlFunc_e44
	b	.L1014
.Lff0:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #2
	bl	__Func_c300
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_e44
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_e44
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_e44
.L1014:
	mov	r1, r9
	ldr	r3, [r1, #4]
	mov	r2, #0xf0
	lsl	r2, #15
	ldr	r1, [r1, #0xc]
	sub	r2, r3
	mov	r3, #0x8e
	lsl	r3, #15
	sub	r3, r1
	asr	r2, #16
	asr	r3, #16
	mov	r4, r2
	mul	r4, r2
	mov	r0, r3
	mul	r0, r3
	mov	r2, r4
	mov	r3, r0
	add	r2, r3
	ldr	r3, =.L2134
	mov	r1, #1
	str	r1, [r3]
	cmp	r2, #0xe0
	bgt	.L1048
	ldr	r2, =.L2138
	mov	r3, #0
	b	.L1098
.L1048:
	mov	r3, #0x9c
	lsl	r3, #2
	cmp	r2, r3
	bgt	.L1056
	ldr	r3, =.L2138
	str	r1, [r3]
	b	.L109a
.L1056:
	mov	r4, #0x88
	lsl	r4, #3
	cmp	r2, r4
	bgt	.L1064
	ldr	r2, =.L2138
	mov	r3, #2
	b	.L1098
.L1064:
	mov	r0, #0xd2
	lsl	r0, #3
	cmp	r2, r0
	bgt	.L1094
	ldr	r2, =.L2138
	mov	r3, #3
	b	.L1098

	.pool_aligned

.L1094:
	ldr	r2, =.L2138
	mov	r3, #4
.L1098:
	str	r3, [r2]
.L109a:
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r3, r9
	mov	r1, #0xc0
	mov	r10, r2
	mov	r0, #0xa8
	ldr	r2, [r3, #0xc]
	mov	r7, #0xc0
	lsl	r1, #16
	mov	r4, #0xc0
	lsl	r0, #14
	lsl	r7, #14
	mov	r8, r1
	lsl	r4, #13
	mov	r5, r2
	cmp	r2, r0
	bge	.L10f2
	mov	r3, #0xa8
	lsl	r3, #14
	sub	r3, r2
	mov	r2, #0x2a
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0x12
	str	r4, [sp, #4]
	bl	_Func_af0
	mov	r1, #0xc0
	lsl	r1, #14
	mov	r3, #0xb4
	add	r7, r0, r1
	lsl	r3, #15
	ldr	r4, [sp, #4]
	cmp	r7, r3
	ble	.L10e2
	mov	r7, r3
.L10e2:
	mov	r2, r8
	sub	r2, r0
	mov	r3, #0x96
	mov	r8, r2
	lsl	r3, #16
	cmp	r8, r3
	bge	.L10f2
	mov	r8, r3
.L10f2:
	mov	r0, #0xcc
	lsl	r0, #15
	cmp	r5, r0
	ble	.L1130
	mov	r3, #0x2a
	mov	r0, r5
	mul	r0, r3
	ldr	r1, =0xef440000
	add	r0, r1
	mov	r1, #0x12
	str	r4, [sp, #4]
	bl	_Func_af0
	mov	r2, #0xc0
	lsl	r2, #14
	mov	r3, #0xb4
	add	r7, r0, r2
	lsl	r3, #15
	ldr	r4, [sp, #4]
	cmp	r7, r3
	ble	.L111e
	mov	r7, r3
.L111e:
	mov	r3, #0xc0
	lsl	r3, #16
	sub	r3, r0
	mov	r8, r3
	mov	r3, #0x96
	lsl	r3, #16
	cmp	r8, r3
	bge	.L1130
	mov	r8, r3
.L1130:
	mov	r0, r9
	ldr	r5, [r0, #4]
	mov	r1, #0xb4
	lsl	r1, #15
	mov	r6, r5
	cmp	r5, r1
	bge	.L1172
	mov	r3, #0xb4
	lsl	r3, #15
	sub	r3, r5
	lsl	r0, r3, #3
	add	r0, r3
	lsl	r0, #1
	mov	r1, #0x2a
	bl	_Func_af0
	mov	r2, #0xc0
	lsl	r2, #13
	mov	r3, #0xa8
	add	r4, r0, r2
	lsl	r3, #14
	cmp	r4, r3
	ble	.L1160
	mov	r4, r3
.L1160:
	mov	r3, #0xf0
	lsl	r3, #15
	sub	r3, r0
	mov	r10, r3
	mov	r3, #0xcc
	lsl	r3, #15
	cmp	r10, r3
	bge	.L1172
	mov	r10, r3
.L1172:
	mov	r0, #0x96
	lsl	r0, #16
	cmp	r6, r0
	ble	.L11ac
	lsl	r0, r6, #3
	ldr	r1, =0xf5740000
	add	r0, r6
	lsl	r0, #1
	add	r0, r1
	mov	r1, #0x2a
	bl	_Func_af0
	mov	r2, #0xc0
	lsl	r2, #13
	mov	r3, #0xa8
	add	r4, r0, r2
	lsl	r3, #14
	cmp	r4, r3
	ble	.L119a
	mov	r4, r3
.L119a:
	mov	r3, #0xf0
	lsl	r3, #15
	sub	r3, r0
	mov	r10, r3
	mov	r3, #0xcc
	lsl	r3, #15
	cmp	r10, r3
	bge	.L11ac
	mov	r10, r3
.L11ac:
	cmp	r6, r7
	bge	.L11c6
	mov	r0, r9
	ldr	r3, [r0, #0x40]
	str	r7, [r0, #4]
	cmp	r3, #0
	bge	.L11c4
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0, #0x40]
.L11c4:
	mov	r5, r7
.L11c6:
	cmp	r5, r8
	ble	.L11e2
	mov	r2, r9
	ldr	r3, [r2, #0x40]
	mov	r1, r8
	str	r1, [r2, #4]
	cmp	r3, #0
	ble	.L11e2
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r0, r9
	str	r3, [r0, #0x40]
.L11e2:
	mov	r1, r9
	ldr	r2, [r1, #0xc]
	cmp	r2, r4
	bge	.L11fe
	ldr	r3, [r1, #0x48]
	str	r4, [r1, #0xc]
	cmp	r3, #0
	bge	.L11fc
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r1, #0x48]
.L11fc:
	mov	r2, r4
.L11fe:
	cmp	r2, r10
	ble	.L1224
	mov	r3, r9
	mov	r2, r10
	str	r2, [r3, #0xc]
	ldr	r3, [r3, #0x48]
	cmp	r3, #0
	ble	.L1224
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r4, r9
	str	r3, [r4, #0x48]
	b	.L1224
.L121c:
	ldr	r1, =0xffffc000
	mov	r2, r9
	add	r3, r0, r1
	str	r3, [r2, #0x44]
.L1224:
	mov	r3, #0
	mov	r8, r3
.L1228:
	mov	r4, r8
	lsl	r3, r4, #1
	ldr	r2, =.L20d0
	add	r3, r8
	lsl	r3, #3
	add	r6, r3, r2
	mov	r0, #0x12
	ldrsh	r3, [r6, r0]
	ldrh	r2, [r6, #0x12]
	cmp	r3, #0
	ble	.L1242
	sub	r3, r2, #1
	strh	r3, [r6, #0x12]
.L1242:
	mov	r1, #0x14
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6, #0x14]
	cmp	r3, #0
	ble	.L1250
	sub	r3, r2, #1
	strh	r3, [r6, #0x14]
.L1250:
	mov	r2, r8
	cmp	r2, #1
	bgt	.L12f4
	mov	r4, #0x10
	ldrsh	r3, [r6, r4]
	mov	r5, #0x80
	lsl	r5, #9
	cmp	r3, #1
	bne	.L1264
	lsl	r5, #1
.L1264:
	cmp	r3, #2
	bne	.L126c
	lsl	r3, r5, #1
	add	r5, r3, r5
.L126c:
	mov	r0, #0x12
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	ble	.L1282
	mov	r1, r8
	cmp	r1, #0
	bne	.L127e
	mov	r0, #0x12
	b	.L131a
.L127e:
	mov	r0, #0x13
	b	.L131a
.L1282:
	mov	r2, r8
	cmp	r2, #0
	bne	.L1296
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c300
	b	.L12a2
.L1296:
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c300
.L12a2:
	mov	r4, #0xe
	ldrsh	r3, [r6, r4]
	ldrh	r2, [r6, #0xe]
	cmp	r3, #0
	bne	.L12f0
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	bne	.L12ba
	ldr	r3, [r6]
	add	r3, r5
	b	.L12be
.L12ba:
	ldr	r3, [r6]
	sub	r3, r5
.L12be:
	str	r3, [r6]
	mov	r1, #0x80
	ldr	r2, [r6]
	lsl	r1, #15
	cmp	r2, r1
	bgt	.L12d8
	mov	r3, #0
	strh	r3, [r6, #0xc]
	mov	r3, r8
	cmp	r3, #1
	bne	.L12d8
	mov	r3, #0x1e
	strh	r3, [r6, #0xe]
.L12d8:
	ldr	r4, =0xafffff
	cmp	r2, r4
	bgt	.L12e0
	b	.L1410
.L12e0:
	mov	r3, #1
	mov	r0, r8
	strh	r3, [r6, #0xc]
	cmp	r0, #1
	beq	.L12ec
	b	.L1410
.L12ec:
	mov	r3, #0x1e
	b	.L140e
.L12f0:
	sub	r3, r2, #1
	b	.L140e
.L12f4:
	mov	r1, r8
	cmp	r1, #2
	bne	.L1384
	mov	r2, #0x10
	ldrsh	r3, [r6, r2]
	mov	r5, #0x40
	neg	r5, r5
	cmp	r3, #1
	bne	.L1308
	lsl	r5, #1
.L1308:
	cmp	r3, #2
	bne	.L1310
	lsl	r3, r5, #1
	add	r5, r3, r5
.L1310:
	mov	r4, #0x12
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	ble	.L1326
	mov	r0, #0x14
.L131a:
	bl	__Func_92054
	mov	r1, #3
	bl	__Func_c300
	b	.L1410
.L1326:
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #2
	bl	__Func_c300
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	bl	__Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, #0xe0
	lsl	r2, #15
	lsl	r3, #4
	add	r3, r2
	str	r3, [r6]
	mov	r3, #0xc
	ldrsh	r0, [r6, r3]
	bl	__Func_231c
	lsl	r3, r0, #2
	add	r3, r0
	mov	r4, #0x90
	lsl	r3, #3
	lsl	r4, #15
	add	r3, r4
	str	r3, [r6, #8]
	ldrh	r3, [r6, #0xc]
	add	r2, r3, r5
	ldrh	r3, [r6, #0xe]
	add	r3, #1
	strh	r2, [r6, #0xc]
	b	.L140e

	.pool_aligned

.L1384:
	ldr	r3, =0x1ff
	ldrh	r2, [r6, #0xe]
	and	r2, r3
	mov	r0, #0x10
	ldrsh	r3, [r6, r0]
	mov	r5, #0x40
	cmp	r3, #1
	bne	.L1396
	mov	r5, #0x80
.L1396:
	cmp	r3, #2
	bne	.L13a4
	lsl	r3, r5, #1
	add	r5, r3, r5
	b	.L13a4

	.pool_aligned

.L13a4:
	mov	r1, #0x12
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	ble	.L13ba
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #3
	bl	__Func_c300
	b	.L140a
.L13ba:
	ldr	r3, =0x17f
	cmp	r2, r3
	bgt	.L13fe
	mov	r4, #0xc
	ldrsh	r0, [r6, r4]
	bl	__Func_2322
	mov	r3, #0x34
	mul	r3, r0
	mov	r0, #0xe0
	lsl	r0, #15
	add	r3, r0
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	bl	__Func_231c
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, #0x90
	lsl	r2, #15
	lsl	r3, #3
	add	r3, r2
	str	r3, [r6, #8]
	ldrh	r3, [r6, #0xc]
	add	r3, r5
	strh	r3, [r6, #0xc]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #2
	bl	__Func_c300
	b	.L140a
.L13fe:
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #3
	bl	__Func_c300
.L140a:
	ldrh	r3, [r6, #0xe]
	add	r3, #1
.L140e:
	strh	r3, [r6, #0xe]
.L1410:
	mov	r4, #0x14
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	bne	.L14ce
	mov	r0, r9
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bne	.L14ce
	ldr	r2, [r0, #4]
	ldr	r3, [r6]
	sub	r3, r2
	asr	r7, r3, #16
	ldr	r2, [r0, #0xc]
	ldr	r3, [r6, #8]
	sub	r3, r2
	asr	r5, r3, #16
	mov	r2, r7
	mul	r2, r7
	mov	r3, r5
	mul	r3, r5
	add	r0, r2, r3
	cmp	r0, #0x77
	bgt	.L14ce
	mov	r2, r9
	ldr	r1, [r2, #0x4c]
	cmp	r1, #0x1e
	ble	.L14ce
	mov	r4, #0xc0
	mov	r3, r8
	lsl	r4, #10
	cmp	r3, #1
	bgt	.L147a
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	bne	.L1466
	ldr	r3, [r2, #0x40]
	cmp	r3, r4
	bge	.L14b2
	mov	r3, r1
	sub	r3, #0x64
	str	r4, [r2, #0x40]
	b	.L14b0
.L1466:
	neg	r2, r4
	mov	r4, r9
	ldr	r3, [r4, #0x40]
	cmp	r3, r2
	ble	.L14b2
	mov	r3, r1
	sub	r3, #0x64
	str	r2, [r4, #0x40]
	str	r3, [r4, #0x4c]
	b	.L14b2
.L147a:
	str	r4, [sp, #4]
	ldr	r3, =Func_948
	bl	_call_via_r3
	ldr	r4, [sp, #4]
	mov	r2, r0
	neg	r3, r7
	mov	r0, r3
	mul	r0, r4
	mov	r1, r2
	str	r2, [sp, #8]
	bl	_Func_af0
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	neg	r3, r5
	mov	r1, r9
	str	r0, [r1, #0x40]
	mov	r0, r3
	mul	r0, r4
	mov	r1, r2
	bl	_Func_af0
	mov	r2, r9
	ldr	r3, [r2, #0x4c]
	sub	r3, #0x64
	str	r0, [r2, #0x48]
.L14b0:
	str	r3, [r2, #0x4c]
.L14b2:
	ldr	r0, =0x12d
	bl	__Func_f9080
	mov	r3, #0x10
	ldrsh	r0, [r6, r3]
	mov	r1, #3
	add	r0, #1
	bl	_Func_b1c
	mov	r3, #0x24
	strh	r3, [r6, #0x12]
	mov	r3, #0x1e
	strh	r0, [r6, #0x10]
	strh	r3, [r6, #0x14]
.L14ce:
	mov	r4, r8
	cmp	r4, #1
	beq	.L14fc
	cmp	r4, #1
	bgt	.L14de
	cmp	r4, #0
	beq	.L14ea
	b	.L1556
.L14de:
	mov	r0, r8
	cmp	r0, #2
	beq	.L1516
	cmp	r0, #3
	beq	.L1538
	b	.L1556
.L14ea:
	mov	r1, #0x10
	ldrsh	r2, [r6, r1]
	ldr	r3, =.L2054
	ldrb	r3, [r3, r2]
	lsl	r2, #4
	add	r2, #0x10
	str	r2, [sp]
	mov	r0, #0x12
	b	.L150c
.L14fc:
	mov	r4, #0x10
	ldrsh	r2, [r6, r4]
	ldr	r3, =.L2054
	ldrb	r3, [r3, r2]
	lsl	r2, #4
	add	r2, #0x10
	str	r2, [sp]
	mov	r0, #0x13
.L150c:
	mov	r1, r6
	mov	r2, #0
	bl	OvlFunc_dd0
	b	.L1556
.L1516:
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	mov	r2, #0x80
	lsl	r2, #8
	mov	r4, #0x10
	ldrsh	r1, [r6, r4]
	sub	r2, r3
	ldr	r3, =.L2057
	ldrb	r3, [r3, r1]
	lsl	r1, #4
	add	r1, #0x10
	str	r1, [sp]
	mov	r0, #0x14
	mov	r1, r6
	bl	OvlFunc_dd0
	b	.L1556
.L1538:
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	ldr	r2, =0xffff
	mov	r4, #0x10
	ldrsh	r1, [r6, r4]
	sub	r2, r3
	ldr	r3, =.L2057
	ldrb	r3, [r3, r1]
	lsl	r1, #4
	add	r1, #0x10
	str	r1, [sp]
	mov	r0, #0x15
	mov	r1, r6
	bl	OvlFunc_dd0
.L1556:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #4
	beq	.L1562
	b	.L1228
.L1562:
	mov	r2, r9
	ldr	r3, [r2, #4]
	str	r3, [r2, #0x34]
	mov	r3, #0
	str	r3, [r2, #0x38]
	ldr	r3, [r2, #0xc]
	str	r3, [r2, #0x3c]
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L15f0
	mov	r1, r9
	mov	r6, #0x10
	add	r1, #4
	mov	r0, #0x11
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	add	r1, #0x34
	mov	r0, #0x10
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	add	r1, #0x10
	mov	r0, #0xf
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	add	r1, #0x1c
	mov	r0, #0xe
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	add	r1, #0x28
	mov	r0, #0xd
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #4
	bl	__Func_c300
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #4
	bl	__Func_c300
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #4
	bl	__Func_c300
	b	.L1666
.L15f0:
	mov	r1, r9
	mov	r6, #0x10
	add	r1, #4
	mov	r0, #0xc
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	add	r1, #0x34
	mov	r0, #0xb
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	add	r1, #0x10
	mov	r0, #0xa
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	add	r1, #0x1c
	mov	r0, #9
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	add	r1, #0x28
	mov	r0, #8
	str	r6, [sp]
	bl	OvlFunc_dd0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #4
	bl	__Func_c300
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #4
	bl	__Func_c300
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #4
	bl	__Func_c300
.L1666:
	mov	r3, r9
	ldrh	r2, [r3, #2]
	mov	r0, #1
	mov	r4, #2
	ldrsh	r3, [r3, r4]
	neg	r0, r0
	cmp	r3, r0
	beq	.L167c
	add	r3, r2, #1
	mov	r1, r9
	strh	r3, [r1, #2]
.L167c:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e5c

.thumb_func_start OvlFunc_16a8
	push	{r5, r6, r7, lr}
	ldr	r0, =.L2070
	ldr	r6, =.L205a
	ldr	r2, =.L20d0
	ldr	r5, =.L2062
	ldr	r4, =.L205e
	mov	r7, #0
	mov	r1, #0
.L16b8:
	ldrb	r3, [r6]
	lsl	r3, #16
	str	r3, [r2]
	ldrb	r3, [r4]
	lsl	r3, #16
	str	r3, [r2, #8]
	ldrh	r3, [r5]
	add	r7, #1
	str	r1, [r2, #4]
	strh	r3, [r2, #0xc]
	strh	r1, [r2, #0xe]
	strh	r1, [r2, #0x10]
	strh	r1, [r2, #0x12]
	strh	r1, [r2, #0x14]
	add	r6, #1
	add	r4, #1
	add	r5, #2
	add	r2, #0x18
	cmp	r7, #4
	bne	.L16b8
	ldr	r3, =0xffe20000
	str	r3, [r0, #4]
	mov	r3, #0xc8
	mov	r2, #0
	lsl	r3, #15
	str	r2, [r0, #8]
	str	r3, [r0, #0xc]
	str	r2, [r0, #0x40]
	str	r2, [r0, #0x44]
	str	r2, [r0, #0x48]
	str	r2, [r0, #0x4c]
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #2
	bl	__Func_c300
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #2
	bl	__Func_c300
	ldr	r1, =0xc83
	ldr	r0, =OvlFunc_e5c
	bl	__Func_41d8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16a8

.thumb_func_start OvlFunc_173c
	push	{r5, r6, r7, lr}
	ldr	r5, =.L2070
	ldr	r3, =.L20c0
	mov	r2, #0
	str	r2, [r5, #8]
	str	r2, [r5, #0x14]
	str	r2, [r5, #0x20]
	str	r2, [r5, #0x2c]
	str	r0, [r3]
	ldr	r3, =.L2134
	str	r2, [r3]
	ldr	r3, =0xffff
	strh	r3, [r5, #2]
	ldr	r3, =.L2130
	ldr	r7, =ewram_434
	mov	r6, r3
	str	r2, [r3]
	b	.L1766
.L1760:
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
.L1766:
	ldr	r3, [r6]
	cmp	r3, #0x32
	bne	.L1776
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_f9080
	ldr	r3, [r6]
.L1776:
	cmp	r3, #0x10
	bne	.L1816
	ldr	r0, [r7]
	mov	r1, #0x1d
	bl	__Func_924d4
	mov	r3, #0
	strh	r3, [r5, #2]
	ldr	r3, =0x14ccc
	str	r3, [r5, #0x40]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x44]
	ldr	r3, =0xfffe0000
	str	r3, [r5, #0x48]
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r5, #4]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #8]
	mov	r3, #0x98
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #0x96
	lsl	r3, #1
	str	r3, [r5, #0x4c]
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L17e6
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #3
	bl	__Func_c300
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c300
	mov	r0, #0xf
	mov	r1, #1
	bl	OvlFunc_e44
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_e44
	mov	r0, #0xd
	mov	r1, #1
	bl	OvlFunc_e44
	b	.L1816
.L17e6:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #3
	bl	__Func_c300
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c300
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_e44
	mov	r0, #9
	mov	r1, #1
	bl	OvlFunc_e44
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_e44
.L1816:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =.L2134
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L1760
	ldr	r3, =.L2138
	ldr	r0, [r3]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_173c

	.section .data

.L1a08:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1a08, (0x1ac8-0x1a08)
.L1ac8:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1ac8, (0x1aec-0x1ac8)
.L1aec:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1aec, (0x1cfc-0x1aec)
.L1cfc:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1cfc, (0x1e1c-0x1cfc)
.L1e1c:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1e1c, (0x1f30-0x1e1c)
.L1f30:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1f30, (0x1fc0-0x1f30)
.L1fc0:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1fc0, (0x1fd0-0x1fc0)
.L1fd0:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1fd0, (0x200c-0x1fd0)
.L200c:
	.incbin "overlays/rom_7d6418/orig.bin", 0x200c, (0x2018-0x200c)
.L2018:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2018, (0x2054-0x2018)
.L2054:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2054, (0x2057-0x2054)
.L2057:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2057, (0x205a-0x2057)
.L205a:
	.incbin "overlays/rom_7d6418/orig.bin", 0x205a, (0x205e-0x205a)
.L205e:
	.incbin "overlays/rom_7d6418/orig.bin", 0x205e, (0x2062-0x205e)
.L2062:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2062

	.section .bss

	.lcomm	.L2070, 0x50
	.lcomm	.L20c0, 0x10
	.lcomm	.L20d0, 0x60
	.lcomm	.L2130, 4
	.lcomm	.L2134, 4
	.lcomm	.L2138, 4
