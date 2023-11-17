	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_314
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L35e
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [r1, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r1, [r1, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0
	beq	.L35e
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L352
	mov	r0, r2
.L352:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L35a
	mov	r0, r2
.L35a:
	add	r3, r0
	strh	r3, [r5, #6]
.L35e:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_314

.thumb_func_start OvlFunc_36c
	ldr	r0, =.L4d88
	bx	lr
.func_end OvlFunc_36c

.thumb_func_start OvlFunc_374
	mov	r0, #0
	bx	lr
.func_end OvlFunc_374

.thumb_func_start OvlFunc_378
	ldr	r0, =.L4db8
	bx	lr
.func_end OvlFunc_378

.thumb_func_start OvlFunc_380
	ldr	r0, =.L4dc4
	bx	lr
.func_end OvlFunc_380

.thumb_func_start OvlFunc_388
	ldr	r0, =.L4fa4
	bx	lr
.func_end OvlFunc_388

.thumb_func_start OvlFunc_390
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r5, #0
.L3aa:
	mov	r1, #1
	ldr	r0, =0x403a52
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	cmp	r5, #1
	bne	.L3e8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
.L3e8:
	add	r5, #1
	cmp	r5, #6
	bne	.L3aa
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r0, #0xa6
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x1f10000
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x90
	bl	__Func_f9080
	ldr	r2, =.L5088
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x60
	mov	r2, #0x1d
	bl	__Func_10560
	mov	r3, #0x29
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r9, r3
	mov	r10, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r5, #1
	mov	r3, #0x1f
	mov	r6, #2
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_12330
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1370000
	neg	r1, r1
	ldr	r2, =0x1f10000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, r8
	mov	r1, #0x4a
	mov	r2, #0x1d
	bl	__Func_10560
	mov	r3, #0x13
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x1f
	mov	r1, #0x2a
	mov	r2, #0x13
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_12330
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	ldr	r0, =0x2970000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, r8
	mov	r1, #0x60
	mov	r2, #0xa
	bl	__Func_10560
	mov	r2, r9
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0xc
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xed
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x2c60000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x42
	mov	r0, #0
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb2
	mov	r2, #0x80
	mov	r3, #0xe8
	lsl	r3, #17
	lsl	r2, #13
	lsl	r1, #18
	mov	r0, #0xdc
	bl	OvlFunc_4260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_19908
	ldr	r5, =0x1075
	mov	r1, #1
	mov	r0, r5
	bl	__Func_1776c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xaf
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	sub	r5, #1
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #9
	bl	__Func_92560
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_4248
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xed
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #0
	ldr	r0, =0x2c60000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x83c
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_390

.thumb_func_start OvlFunc_6f4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r5, #0
.L70e:
	mov	r1, #1
	ldr	r0, =0x404a4e
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	cmp	r5, #1
	bne	.L74c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
.L74c:
	add	r5, #1
	cmp	r5, #6
	bne	.L70e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_12330
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc4
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	ldr	r2, =.L5088
	mov	r10, r2
	mov	r0, r10
	mov	r1, #0x54
	mov	r2, #4
	bl	__Func_10560
	mov	r3, #0x1d
	mov	r9, r3
	mov	r2, r9
	mov	r3, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r1, #0x2a
	mov	r3, #6
	mov	r2, #0x1d
	mov	r0, #0x57
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_12330
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1570000
	neg	r1, r1
	ldr	r2, =0x1710000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, r10
	mov	r1, #0x4c
	mov	r2, #0x15
	bl	__Func_10560
	mov	r5, #0x15
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r3, #0x17
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r0, #0x57
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_12330
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1570000
	neg	r1, r1
	ldr	r2, =0x1f10000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, r10
	mov	r1, #0x4c
	mov	r2, #0x1d
	bl	__Func_10560
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x1f
	mov	r0, #0x57
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xb2
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x2e
	mov	r0, #0
	bl	__Func_10424
	mov	r6, #0xb2
	mov	r0, #0x14
	bl	__Func_9163c
	lsl	r6, #18
	mov	r2, #0x80
	mov	r3, #0x90
	lsl	r3, #16
	lsl	r2, #13
	mov	r1, r6
	mov	r0, #0xdd
	bl	OvlFunc_4260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_19908
	ldr	r5, =0x1076
	mov	r1, #1
	mov	r0, r5
	bl	__Func_1776c
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xaf
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	sub	r5, #2
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #9
	bl	__Func_92560
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_4248
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0x98
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #0
	mov	r0, r6
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x83d
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6f4

.thumb_func_start OvlFunc_a64
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_a98
	bl	OvlFunc_d5c
	bl	OvlFunc_f8c
	bl	OvlFunc_1450
	bl	OvlFunc_178c
	bl	OvlFunc_1d04
	ldr	r0, =0x83e
	bl	__Func_79358
	bl	__Func_91750
	bl	OvlFunc_227c
	pop	{r0}
	bx	r0
.func_end OvlFunc_a64

.thumb_func_start OvlFunc_a98
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0x8d
	sub	sp, #8
	bl	__Func_f9080
	mov	r5, #0
.Laaa:
	mov	r1, #1
	ldr	r0, =0x4049d2
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	cmp	r5, #1
	bne	.Lae8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
.Lae8:
	add	r5, #1
	cmp	r5, #6
	bne	.Laaa
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r0, #0xa7
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x2110000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	ldr	r2, =.L5088
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x41
	mov	r2, #0x1f
	bl	__Func_10560
	mov	r3, #0xa
	mov	r10, r3
	mov	r2, r10
	mov	r3, #0x1f
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r5, #1
	mov	r3, #0x21
	mov	r6, #2
	mov	r1, #0x2a
	mov	r2, #0xa
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_12330
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xb1
	mov	r3, #1
	ldr	r0, =0x1870000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, r8
	mov	r1, #0x4f
	mov	r2, #9
	bl	__Func_10560
	mov	r3, #0x18
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0xb
	mov	r1, #0x2a
	mov	r2, #0x18
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_12330
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xc1
	mov	r3, #1
	ldr	r0, =0x2470000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, r8
	mov	r1, #0x5b
	mov	r2, #0xa
	bl	__Func_10560
	mov	r3, #0x24
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0x2a
	mov	r2, #0x24
	mov	r3, #0xc
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #0
	neg	r1, r1
	ldr	r2, =0x1dd0000
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x42
	mov	r0, #0
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe8
	mov	r2, #0x80
	mov	r3, #0xe8
	lsl	r2, #13
	lsl	r3, #17
	lsl	r1, #16
	mov	r0, #0xdf
	bl	OvlFunc_4260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_19908
	ldr	r0, =0x1077
	mov	r1, #1
	bl	__Func_1776c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a98

.thumb_func_start OvlFunc_d5c
	push	{lr}
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0xf5
	mov	r0, #0
	mov	r1, #0xe7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xb4
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xf6
	ldr	r2, =0x1df
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lde8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Lde8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x101
	ldr	r2, =0x1eb
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0x109
	ldr	r2, =0x1c5
	bl	__Func_9218c
	mov	r1, #0x8d
	ldr	r2, =0x1d5
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0x3c
	bl	__Func_92560
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	lsl	r2, #17
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	bl	__Func_923e4
	ldr	r0, =0x73333
	ldr	r1, =0xe666
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1e50000
	neg	r1, r1
	ldr	r2, =0x1590000
	bl	__Func_933f8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_d5c

.thumb_func_start OvlFunc_f8c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x3d
	bl	__Func_f9080
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_924d4
	ldr	r0, =0x107d
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0xa
	bl	__Func_92560
	mov	r2, #0x1e
	mov	r0, #9
	mov	r1, #6
	bl	__Func_92560
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #0xa
	mov	r0, #9
	bl	OvlFunc_4248
	mov	r0, #0xc
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r6, #0x50]
	mov	r5, #0
	add	r3, #0x26
	strb	r5, [r3]
	mov	r9, r3
	ldr	r3, =0x1999
	mov	r1, #0x80
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	lsl	r1, #1
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r8, r0
	mov	r0, #0xc
	bl	__Func_92950
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	mov	r0, #0xc
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0x55
	mov	r3, #0xa0
	lsl	r3, #14
	add	r2, r6
	strb	r5, [r2]
	mov	r0, #1
	str	r3, [r6, #0xc]
	mov	r10, r2
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1d70000
	neg	r1, r1
	ldr	r2, =0x1350000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_92b08
	ldr	r7, =0x28f
.L1148:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r7
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r7
	str	r3, [r2, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0x5a
	bne	.L1148
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r5, #0
.L1184:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0x3c
	bne	.L1184
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r0, #8
	mov	r2, #0
	mov	r1, #0
	bl	__Func_923e4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_92b08
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92950
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0x99
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #0xc
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x400c
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r2, #0
	mov	r1, #9
	mov	r0, #5
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xe6
	lsl	r2, #17
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r0, #0
	mov	r1, #3
	bl	__Func_9259c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L1364
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1364:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xa7
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L13c0

	.pool_aligned

.L13c0:
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	ldr	r0, =0x108d
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x5009
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f8c

.thumb_func_start OvlFunc_1450
	push	{lr}
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xa
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #9
	bl	__Func_9280c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xad
	mov	r2, #0xdc
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #0x8c
	mov	r2, #0xeb
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #1
	mov	r2, #0xe9
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1050000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x109b
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xa7
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_1450

.thumb_func_start OvlFunc_178c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xc
	bl	__Func_92054
	cmp	r0, #0
	beq	.L17b6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_923e4
.L17b6:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #3
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #1
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #0x50
	bl	OvlFunc_4248
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r1, #2
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0x50
	bl	OvlFunc_4248
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #0x50
	bl	OvlFunc_4248
	mov	r1, #2
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r2, #0x50
	mov	r0, #9
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_4248
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xe9
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1050000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0xef
	mov	r0, #0
	mov	r1, #0xf4
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0x82
	mov	r2, #0xf5
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_77394
	ldr	r4, =0x1ff
	mov	r5, #0
	add	r0, #0xd8
	mov	r1, #0xe
.L1a70:
	ldrh	r3, [r0]
	mov	r2, r4
	and	r2, r3
	mov	r3, r2
	sub	r3, #0xdc
	add	r0, #2
	cmp	r3, #1
	bls	.L1a84
	cmp	r2, #0xdf
	bne	.L1a86
.L1a84:
	add	r5, #1
.L1a86:
	sub	r1, #1
	cmp	r1, #0
	bge	.L1a70
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1af8
	ldr	r6, =0x10b0
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	cmp	r5, #2
	bgt	.L1ae8
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r2, #0xf3
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0xfc
	bl	__Func_921c4
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r6, #1
	mov	r1, #1
	mov	r2, #0
	bl	__Func_19aa0
	b	.L1bdc
.L1ae8:
	ldr	r0, =0x10b4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_4248
	b	.L1bdc
.L1af8:
	cmp	r5, #2
	bgt	.L1baa
	ldr	r6, =0x10b2
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xef
	strb	r3, [r5]
	mov	r0, #1
	mov	r1, #0xf4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xda
	ldr	r2, =0x1d7
	mov	r0, #0
	bl	__Func_92128
	add	r6, #1
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_19aa0
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92adc
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r5]
	b	.L1bdc
.L1baa:
	ldr	r0, =0x10b5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
.L1bdc:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9335c
	bl	__Func_93530
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #1
	bl	__Func_92054
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x84
	mov	r2, #0xf1
	strb	r3, [r5]
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x8b
	mov	r2, #0xf0
	lsl	r2, #1
	strb	r3, [r5]
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_921c4
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r5, #0xc0
	str	r3, [r7, #0x34]
	lsl	r5, #11
	mov	r0, #0x99
	bl	__Func_f9080
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, #0x9c
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x99
	bl	__Func_f9080
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, #0xab
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x99
	bl	__Func_f9080
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, #0xbc
	mov	r2, #0xeb
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_92158
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_178c

.thumb_func_start OvlFunc_1d04
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #3
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xe
	mov	r1, #0xf
	bl	__Func_92950
	mov	r1, #0xc4
	mov	r2, #0xe3
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	bl	OvlFunc_43bc
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r6, =0x10b6
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xae
	lsl	r2, #17
	ldr	r1, =0x1d50000
	ldr	r5, =0x200a
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, r5
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r2, #0xae
	lsl	r2, #17
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	bl	__Func_923e4
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0xea
	mov	r0, #1
	ldr	r1, =0x185
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_4248
	add	r0, r6, #4
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_19aa0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #1
	bl	__Func_92054
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	mov	r1, #0xbc
	mov	r2, #0xeb
	strb	r3, [r5]
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_921c4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r5]
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	add	r6, #5
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_92950
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xe
	bl	__Func_92054
	mov	r7, r0
	mov	r6, r7
	mov	r3, r8
	add	r6, #0x55
	strb	r3, [r6]
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r5, #0
.L1ee6:
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0x1e
	bne	.L1ee6
	mov	r3, #5
	strb	r3, [r6]
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r0, #0xe
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xa7
	lsl	r2, #17
	mov	r3, #0
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_933d4
	mov	r0, #0xbb
	mov	r1, #1
	mov	r2, #0xeb
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L2076
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	ldr	r0, =0x10c3
	b	.L205e

	.pool_aligned

.L2048:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x10c6
.L205e:
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #1
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L2048
.L2076:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x10c4
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r3, #0
	strb	r3, [r6]
	mov	r0, #0xe
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r1, #0xe6
	mov	r3, #0xb4
	lsl	r3, #17
	mov	r2, #0
	mov	r0, r7
	lsl	r1, #17
	bl	__Func_d14c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92950
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	mov	r7, r0
	mov	r1, r7
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r5, #0xc0
	str	r3, [r7, #0x34]
	lsl	r5, #11
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__Func_924d4
	mov	r1, #0xab
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__Func_924d4
	mov	r1, #0x9c
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__Func_924d4
	mov	r1, #0x8b
	mov	r2, #0xf0
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2232
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L2232:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #0xdc
	bl	__Func_78a08
	mov	r0, #0xdd
	bl	__Func_78a08
	mov	r0, #0xdf
	bl	__Func_78a08
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d04

.thumb_func_start OvlFunc_227c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__Func_92054
	mov	r10, r0
	bl	__Func_916b0
	mov	r0, #5
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_9207c
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xe6
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0x99
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #5
	bl	__Func_92054
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r2]
	ldr	r3, =.L4bd0
	mov	r1, #0
	mov	r8, r3
	mov	r9, r1
	mov	r1, r8
	bl	__Func_c2d8
	mov	r0, #9
	bl	__Func_92054
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r8
	bl	__Func_c2d8
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, r10
	str	r3, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r8
	bl	__Func_c2d8
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	mov	r1, r8
	strb	r3, [r2]
	bl	__Func_c2d8
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x68]
	mov	r2, r5
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r2, r5
	add	r2, #0x55
	mov	r1, r9
	strb	r3, [r2]
	mov	r0, r5
	str	r1, [r5, #0xc]
	mov	r1, r8
	bl	__Func_c2d8
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, r10
	str	r3, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r6, r3
	strb	r6, [r2]
	mov	r1, r8
	bl	__Func_c2d8
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_227c

.thumb_func_start OvlFunc_2400
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r5, #0
.L2410:
	mov	r1, #1
	ldr	r0, =0x4039d2
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #8
	bl	__Func_9163c
	cmp	r5, #1
	bne	.L244e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
.L244e:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #6
	bne	.L2410
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x2e
	mov	r0, #0
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe8
	mov	r2, #0x80
	mov	r3, #0x90
	lsl	r3, #16
	lsl	r2, #13
	lsl	r1, #16
	mov	r0, #0xde
	bl	OvlFunc_4260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_19908
	ldr	r0, =0x1078
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #5
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_923e4
	mov	r0, #9
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_923e4
	mov	r0, #0xb
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_923e4
	mov	r0, #0xa
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_923e4
	mov	r0, #0xe
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_923e4
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xe8
	mov	r2, #0x9c
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L250e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L250e:
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #0xda
	mov	r2, #0xac
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x32
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x32
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #6
	mov	r0, #1
	mov	r2, #0x28
	bl	__Func_92560
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #2
	bl	__Func_91e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2400

.thumb_func_start OvlFunc_2674
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x83e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2694
	ldr	r0, =0x10cb
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	b	.L26c4
.L2694:
	ldr	r0, =0x83c
	bl	__Func_79338
	cmp	r0, #0
	bne	.L26a6
	ldr	r0, =0x1079
	bl	__Func_92b94
	b	.L26ac
.L26a6:
	ldr	r0, =0x107b
	bl	__Func_92b94
.L26ac:
	mov	r1, #0
	mov	r0, #9
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
.L26c4:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2674

.thumb_func_start OvlFunc_26e0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x83e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2700
	ldr	r0, =0x10c9
	bl	__Func_92b94
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92f84
	b	.L2730
.L2700:
	ldr	r0, =0x83c
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2712
	ldr	r0, =0x107a
	bl	__Func_92b94
	b	.L2718
.L2712:
	ldr	r0, =0x107c
	bl	__Func_92b94
.L2718:
	mov	r1, #0
	mov	r0, #5
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92f84
.L2730:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_26e0

.thumb_func_start OvlFunc_274c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x10ca
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_274c

.thumb_func_start OvlFunc_276c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x10c7
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_276c

.thumb_func_start OvlFunc_278c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x10c8
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_278c

.thumb_func_start OvlFunc_27ac
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x10cc
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_27ac

.thumb_func_start OvlFunc_27cc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1072
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_27cc

.thumb_func_start OvlFunc_27ec
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_27ec

.thumb_func_start OvlFunc_27f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x1b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1b
	mov	r1, #0x10
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #1
	ldr	r2, =0x1050000
	neg	r1, r1
	mov	r3, #0
	ldr	r0, =0x1d70000
	bl	__Func_933f8
	bl	__Func_93530
	bl	__Func_fe9c
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =0x1999
	mov	r8, r0
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #0x50]
	mov	r6, #0
	add	r3, #0x26
	mov	r1, #0x80
	strb	r6, [r3]
	mov	r0, #0
	str	r5, [r7, #0x18]
	str	r5, [r7, #0x1c]
	lsl	r1, #1
	mov	r9, r3
	bl	__Func_92950
	mov	r2, #0x91
	mov	r0, #0
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0x55
	mov	r3, #0xa0
	add	r2, r7
	lsl	r3, #14
	strb	r6, [r2]
	str	r3, [r7, #0xc]
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r10, r2
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	ldr	r6, =0x28f
	mov	r5, #0
.L28c0:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x18]
	add	r3, r6
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r6
	str	r3, [r7, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r6
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r6
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #9
	add	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x5a
	bne	.L28c0
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x91
	ldr	r0, =0x1d70000
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_933f8
	mov	r5, #0
.L291a:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #9
	add	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x3c
	bne	.L291a
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92950
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_923e4
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0x9b
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r5, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L29c6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__Func_923e4
.L29c6:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L29da
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L29da:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0x97
	mov	r0, #5
	ldr	r1, =0x1c5
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x97
	lsl	r2, #1
	mov	r0, #1
	ldr	r1, =0x1e9
	bl	__Func_921c4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #5
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #2
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #3
	bl	__Func_9259c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #5
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0xad
	mov	r0, #0
	ldr	r1, =0x1d7
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0xa9
	mov	r0, #5
	ldr	r1, =0x1af
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0xa9
	lsl	r2, #1
	ldr	r1, =0x1ff
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #5
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #5
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #2
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	b	.L2c58

	.pool_aligned

.L2c58:
	lsl	r1, #7
	mov	r2, #0x3c
	mov	r0, #5
	bl	__Func_92adc
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #0x50]
	add	r3, #0x26
	strb	r5, [r3]
	mov	r9, r3
	ldr	r3, =0x1999
	mov	r2, r8
	mov	r1, #0x80
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #9
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	lsl	r1, #1
	bl	__Func_92950
	mov	r2, #0x91
	lsl	r2, #17
	ldr	r1, =0x1d70000
	mov	r0, #9
	bl	__Func_923e4
	mov	r3, #0x55
	add	r3, r7
	strb	r5, [r3]
	mov	r10, r3
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	__Func_9163c
	ldr	r0, =0x103c
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1d70000
	neg	r1, r1
	ldr	r2, =0x1350000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r0, #9
	mov	r1, #2
	bl	__Func_92b08
	ldr	r6, =0x28f
	mov	r5, #0
.L2d34:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x18]
	add	r3, r6
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r6
	str	r3, [r7, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r6
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r6
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #9
	add	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x5a
	bne	.L2d34
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r5, #0
.L2d76:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	__Func_9163c
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r5, r2
	mov	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x3c
	bne	.L2d76
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_92b08
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92950
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #9
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0x99
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #9
	mov	r1, #2
	bl	__Func_92560
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #9
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r2, #0x99
	mov	r0, #9
	ldr	r1, =0x1a7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x99
	mov	r0, #9
	ldr	r1, =0x207
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r5, =0x4009
	mov	r1, #4
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r2, #0
	mov	r1, #5
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, r5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #5
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x2150000
	neg	r1, r1
	ldr	r2, =0x1530000
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #9
	ldr	r1, =0x215
	ldr	r2, =0x153
	bl	__Func_921c4
	bl	__Func_93530
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #1
	b	.L30b0

	.pool_aligned

.L30b0:
	bl	__Func_9335c
	mov	r0, #9
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0xb4
	ldr	r1, =0x1c7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xb4
	ldr	r1, =0x1c7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xb4
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0xad
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #5
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xad
	ldr	r1, =0x1ef
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_921c4
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L320e
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L320e:
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x1e
	mov	r0, #9
	bl	OvlFunc_4248
	ldr	r0, =0x1048
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #5
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #9
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	ldr	r0, =0x2c70000
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r2, =0x1610000
	ldr	r1, =0x24d0000
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x1009
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1d70000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	ldr	r0, =0x2c70000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x95
	mov	r2, #0xee
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x1009
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1d70000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x9a
	mov	r2, #0xfa
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1d70000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	b	.L34e0

	.pool_aligned

.L34e0:
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x99
	mov	r2, #0xb5
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1d70000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x82
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0xa009
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #9
	mov	r1, #3
	bl	__Func_9259c
	ldr	r0, =0xa009
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L367a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L367a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0xa
	mov	r0, #1
	bl	OvlFunc_4248
	ldr	r0, =0x1056
	bl	__Func_92b94
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
	ldr	r2, =0x8009
	mov	r11, r2
	mov	r0, r11
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r11
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, r11
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L3750
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3750:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, r11
	mov	r1, #0x28
	bl	OvlFunc_4248
	ldr	r0, =0x105b
	bl	__Func_92b94
	mov	r0, #5
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x28
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92560
	ldr	r0, =0xa009
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, r11
	mov	r1, #0x28
	bl	OvlFunc_4248
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, r11
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x28
	mov	r0, r11
	bl	OvlFunc_4248
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #6
	bl	__Func_30f8
	mov	r2, #0xc0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r2, #10
	mov	r6, #0xc0
	str	r3, [r7, #0x34]
	str	r2, [r7, #0x30]
	lsl	r6, #11
	mov	r0, #0x99
	mov	r8, r3
	mov	r10, r2
	bl	__Func_f9080
	ldr	r1, =0x1d7
	ldr	r2, =0x18b
	str	r6, [r7, #0x28]
	mov	r0, #9
	bl	__Func_92158
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #9
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r2, #0x5a
	add	r2, r7
	mov	r9, r2
	mov	r5, #0xfe
	ldrb	r2, [r2]
	mov	r3, r5
	and	r3, r2
	mov	r2, r9
	b	.L3994

	.pool_aligned

.L3994:
	strb	r3, [r2]
	ldr	r1, =0x1d9
	ldr	r2, =0x18b
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	ldr	r2, =0x18b
	ldr	r1, =0x1d5
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	ldr	r2, =0x18b
	ldr	r1, =0x1d7
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #9
	ldr	r1, =0x1d7
	ldr	r2, =0x19b
	bl	__Func_921c4
	mov	r0, #9
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r2, r9
	ldrb	r3, [r2]
	mov	r1, #0xed
	and	r5, r3
	strb	r5, [r2]
	lsl	r1, #1
	ldr	r2, =0x19b
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #0xea
	ldr	r2, =0x19b
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_925cc
	ldr	r2, =0x19b
	ldr	r1, =0x1d7
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #9
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r2, =0x18b
	mov	r0, #9
	ldr	r1, =0x1d7
	bl	__Func_921c4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, r9
	ldrb	r2, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	mov	r2, r9
	strb	r3, [r2]
	lsl	r1, #8
	mov	r2, #0x3c
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #6
	bl	__Func_30f8
	mov	r3, r10
	mov	r2, r8
	str	r3, [r7, #0x30]
	str	r2, [r7, #0x34]
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r2, #0xb4
	ldr	r1, =0x1d7
	lsl	r2, #1
	str	r6, [r7, #0x28]
	mov	r0, #9
	bl	__Func_92158
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x28
	mov	r0, #5
	ldr	r1, =0x107
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0xa009
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x83
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r11
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #5
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.L3c92

	.pool_aligned

.L3c70:
	ldr	r0, =0x1068
	bl	__Func_92b94
	mov	r0, #5
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x3c
	bl	__Func_92560
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92c40
.L3c92:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3c70
	ldr	r0, =0x1069
	bl	__Func_92b94
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r2, #0xb0
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #9
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =0x8009
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0x3c
	bl	OvlFunc_4248
	mov	r3, r9
	ldrb	r2, [r3]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r9
	strb	r3, [r2]
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x106d
	bl	__Func_92b94
	mov	r0, #5
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r5
	mov	r1, #0x14
	bl	OvlFunc_4248
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_4248
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0x1e
	bl	OvlFunc_4248
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L3e94
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L3e94:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	ldr	r0, =0x83b
	bl	__Func_79358
	mov	r0, #5
	bl	__Func_91890
	bl	OvlFunc_4328
	mov	r3, #0x1b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r0, #8
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_79374
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_27f8

.thumb_func_start OvlFunc_3f24
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	sub	sp, #8
	bl	__Func_91220
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	mov	r5, #0xf
	mov	r6, #0
.L3f4a:
	mov	r0, r5
	bl	__Func_92054
	add	r0, #0x59
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, r5
	add	r5, #1
	bl	__Func_92b08
	cmp	r5, #0x18
	bls	.L3f4a
	mov	r0, #0xf
	mov	r1, #0x10
	bl	OvlFunc_478c
	ldr	r0, =0x83b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f90
	mov	r1, #0xe4
	mov	r2, #0xb4
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xdc
	mov	r2, #0xad
	mov	r0, #5
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
.L3f90:
	ldr	r0, =0x83c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L405e
	mov	r5, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x60
	mov	r3, #0x1d
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x29
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r9, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0x1f
	str	r6, [sp]
	bl	__Func_10424
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4a
	mov	r3, #0x1d
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x13
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x13
	mov	r3, #0x1f
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x60
	mov	r3, #0xa
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xa
	mov	r2, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0xc
	str	r6, [sp]
	bl	__Func_10424
.L405e:
	ldr	r0, =0x83d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L412c
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x54
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, #0x1d
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r10, r3
	mov	r9, r2
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x1d
	mov	r3, #6
	bl	__Func_10424
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4c
	mov	r3, #0x15
	str	r6, [sp]
	bl	__Func_10424
	mov	r5, #0x15
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r2, r10
	mov	r3, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x17
	bl	__Func_10424
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4c
	mov	r3, #0x1d
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, r11
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r2, r10
	mov	r3, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x1f
	bl	__Func_10424
.L412c:
	ldr	r0, =0x83e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L41fe
	mov	r5, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x41
	mov	r3, #0x1f
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xa
	mov	r9, r3
	mov	r2, r9
	mov	r3, #0x1f
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0xa
	mov	r3, #0x21
	str	r6, [sp]
	bl	__Func_10424
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4f
	mov	r3, #9
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x18
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x18
	mov	r3, #0xb
	str	r6, [sp]
	bl	__Func_10424
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x5b
	mov	r3, #0xa
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x24
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x24
	mov	r3, #0xc
	str	r6, [sp]
	bl	__Func_10424
	bl	OvlFunc_227c
.L41fe:
	ldr	r0, =0x83b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L421c
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L421c
	bl	OvlFunc_27f8
.L421c:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3f24

.thumb_func_start OvlFunc_4248
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4248

.thumb_func_start OvlFunc_4260
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0
	mov	r8, r0
	mov	r0, #0x16
	bl	__Func_c150
	mov	r6, r0
	mov	r0, #0xe0
	bl	__Func_78698
	mov	r1, #0xe0
	mov	r7, r0
	bl	__Func_78664
	mov	r9, r0
	mov	r0, r7
	cmp	r6, #0
	beq	.L4316
	ldr	r1, =.L4be4
	mov	r0, r6
	bl	__Func_c2d8
	ldr	r5, [r6, #0x50]
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x26
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r5, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r5, #9]
	mov	r3, #0xa0
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r6, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r8, r0
	mov	r0, r10
	bl	__Func_1a370
	mov	r2, #0x80
	lsl	r2, #3
	add	r2, r8
	mov	r1, #0x80
	ldrb	r0, [r5, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	mov	r0, #0x53
	bl	__Func_f9080
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8f140
	mov	r1, r9
	mov	r0, r7
	bl	__Func_78948
	mov	r1, r10
	mov	r0, r7
	bl	__Func_78588
	mov	r0, r6
	bl	__Func_c0f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r7
.L4316:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4260

.thumb_func_start OvlFunc_4328
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xec
	ldr	r6, [r3]
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0x53
	sub	sp, #8
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	bl	__Func_f9080
	mov	r0, #0xe0
	mov	r1, #3
	bl	__Func_8f1c0
	ldr	r0, =0x111b
	mov	r1, #1
	bl	__Func_1776c
.L4350:
	mov	r0, #0
	bl	__Func_784d8
	mov	r5, #0x1e
	sub	r5, r0
	mov	r0, #1
	bl	__Func_784d8
	sub	r5, r0
	cmp	r5, #3
	bgt	.L4388
	ldr	r0, =0x111c
	mov	r1, #1
	bl	__Func_1776c
	add	r0, sp, #4
	mov	r1, sp
	bl	__Func_b3444
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L4350
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	__Func_78948
	b	.L4350
.L4388:
	mov	r0, #0xe0
	bl	__Func_78618
	mov	r0, #0xe0
	bl	__Func_78618
	mov	r0, #0xe0
	bl	__Func_78618
	mov	r0, #0xe0
	bl	__Func_78618
	mov	r2, #0xec
	lsl	r2, #1
	add	r3, r6, r2
	strh	r7, [r3]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4328

.thumb_func_start OvlFunc_43bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xe
	sub	sp, #0x38
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #1
	add	r7, sp, #0x10
	str	r3, [r7]
	mov	r3, #5
	str	r3, [r7, #4]
	mov	r3, #0x8e
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =0x6666
	str	r3, [r7, #8]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, #0
	str	r3, [r7, #0xc]
	mov	r8, r2
.L43fe:
	mov	r0, #1
	bl	__Func_9163c
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	bne	.L4454
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r10
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Func_4458
	mov	r2, r10
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L4454:
	mov	r2, r8
	cmp	r2, #0x14
	bne	.L4464
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_92950
.L4464:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x1f
	bls	.L43fe
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92950
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_43bc

.thumb_func_start OvlFunc_449c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xca
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #0x44
	bl	__Func_48f4
	str	r0, [sp, #0x40]
	str	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	mov	r0, #0
	mov	r2, #0xc8
	str	r0, [sp, #0x38]
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L44ce
	b	.L4762
.L44ce:
	add	r1, #8
	ldr	r3, [sp, #0x40]
	ldr	r4, [sp, #0x40]
	str	r0, [sp, #8]
	ldr	r0, =.L50e4
	mov	r10, r1
	ldr	r1, =.L5102
	add	r3, #0x24
	add	r4, #0x25
	add	r0, #1
	str	r3, [sp, #0x10]
	str	r4, [sp, #0xc]
	str	r0, [sp, #4]
	str	r1, [sp]
.L44ea:
	mov	r3, r10
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #0x3c]
	ldr	r5, [r2]
	str	r3, [sp, #0x34]
	mov	r4, r10
	ldr	r4, [r4, #0xc]
	str	r4, [sp, #0x30]
	mov	r0, r10
	ldr	r0, [r0, #0x10]
	str	r0, [sp, #0x2c]
	mov	r1, r10
	ldr	r1, [r1, #0x14]
	str	r1, [sp, #0x28]
	mov	r2, r10
	ldr	r2, [r2, #0x18]
	ldr	r4, [sp, #0x3c]
	str	r2, [sp, #0x24]
	ldr	r3, [sp, #0xc]
	ldr	r4, [r4, #4]
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x3c]
	str	r4, [sp, #0x1c]
	ldr	r0, [r0, #8]
	ldr	r2, [sp, #0x3c]
	str	r0, [sp, #0x18]
	ldr	r2, [r2, #0xc]
	mov	r11, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	ldrb	r3, [r3]
	str	r3, [sp, #0x20]
	add	r3, #0xff
	lsl	r3, #24
	lsr	r3, #24
	mov	r1, r11
	str	r3, [sp, #0x20]
	cmp	r3, #0
	beq	.L453a
	b	.L46ee
.L453a:
	mov	r4, #3
	str	r4, [sp, #0x20]
	cmp	r1, #0
	bne	.L458e
	ldr	r0, [sp, #0x28]
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x38]
	add	r0, r2
	str	r0, [sp, #0x28]
	ldr	r3, =.L5140
	lsl	r2, r4, #2
	ldr	r3, [r3, r2]
	cmp	r0, r3
	blt	.L4560
	ldr	r3, =.L5168
	ldr	r3, [r3, r2]
	neg	r3, r3
	str	r3, [sp, #0x24]
	b	.L4588
.L4560:
	ldr	r0, [sp, #0x28]
	ldr	r3, =0x1999
	cmp	r0, r3
	bgt	.L4588
	ldr	r3, =.L5168
	ldr	r4, =0x1999
	ldr	r3, [r3, r2]
	str	r4, [sp, #0x28]
	str	r3, [sp, #0x24]
	ldr	r2, [r5, #8]
	str	r2, [sp, #0x1c]
	ldr	r3, [r5, #0xc]
	str	r3, [sp, #0x18]
	ldr	r4, [r5, #0x10]
	mov	r0, #0x18
	str	r4, [sp, #0x14]
	str	r1, [r5, #8]
	str	r1, [r5, #0xc]
	str	r1, [r5, #0x10]
	mov	r11, r0
.L4588:
	ldr	r0, [sp, #0x28]
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
.L458e:
	bl	__Func_4458
	ldr	r2, =.L50e4
	ldr	r1, [sp, #8]
	ldrb	r3, [r1, r2]
	mul	r3, r0
	lsr	r6, r3, #16
	bl	__Func_4458
	ldr	r4, [sp, #4]
	ldrb	r3, [r4]
	mul	r3, r0
	lsr	r7, r3, #16
	bl	__Func_4458
	ldr	r1, [sp, #4]
	ldrb	r3, [r1, #1]
	mul	r3, r0
	lsr	r3, #16
	mov	r8, r3
	cmp	r6, #0
	beq	.L45c8
	mov	r1, #0xfa
	lsl	r0, r6, #16
	lsl	r1, #2
	bl	_Func_b60
	mov	r6, r0
	b	.L45ca
.L45c8:
	mov	r6, #0
.L45ca:
	cmp	r7, #0
	beq	.L45dc
	mov	r1, #0xfa
	lsl	r0, r7, #16
	lsl	r1, #2
	bl	_Func_b60
	mov	r9, r0
	b	.L45e0
.L45dc:
	mov	r2, #0
	mov	r9, r2
.L45e0:
	mov	r3, r8
	cmp	r3, #0
	beq	.L45f2
	mov	r1, #0xfa
	lsl	r0, r3, #16
	lsl	r1, #2
	bl	_Func_b60
	b	.L45f4
.L45f2:
	mov	r0, #0
.L45f4:
	ldr	r2, =.L5120
	ldr	r4, [sp, #8]
	ldrsb	r3, [r2, r4]
	cmp	r3, #1
	bne	.L4606
	ldr	r1, [sp, #0x34]
	add	r1, r6
	str	r1, [sp, #0x34]
	b	.L4618
.L4606:
	ldr	r4, [sp, #0x34]
	mov	r1, #1
	sub	r4, r6
	neg	r1, r1
	str	r4, [sp, #0x34]
	cmp	r3, r1
	beq	.L4618
	mov	r3, #0
	str	r3, [sp, #0x34]
.L4618:
	ldr	r3, [sp, #8]
	add	r3, #1
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.L462a
	ldr	r4, [sp, #0x30]
	add	r4, r9
	str	r4, [sp, #0x30]
	b	.L463e
.L462a:
	ldr	r1, [sp, #0x30]
	mov	r4, r9
	sub	r1, r4
	str	r1, [sp, #0x30]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.L463e
	mov	r3, #0
	str	r3, [sp, #0x30]
.L463e:
	ldr	r3, [sp, #8]
	add	r3, #2
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.L4650
	ldr	r4, [sp, #0x2c]
	add	r4, r0
	str	r4, [sp, #0x2c]
	b	.L4662
.L4650:
	ldr	r1, [sp, #0x2c]
	mov	r2, #1
	sub	r1, r0
	neg	r2, r2
	str	r1, [sp, #0x2c]
	cmp	r3, r2
	beq	.L4662
	mov	r3, #0
	str	r3, [sp, #0x2c]
.L4662:
	ldr	r4, [sp]
	ldr	r1, [sp, #0x34]
	ldrb	r3, [r4]
	mov	r0, r3
	mul	r0, r1
	bl	__Func_2322
	ldr	r2, [sp]
	ldr	r4, [sp, #0x30]
	ldrb	r3, [r2, #1]
	lsl	r6, r0, #1
	mov	r0, r3
	mul	r0, r4
	bl	__Func_2322
	lsl	r7, r0, #1
	ldr	r0, [sp]
	ldr	r1, [sp, #0x2c]
	ldrb	r3, [r0, #2]
	mov	r0, r3
	mul	r0, r1
	bl	__Func_231c
	mov	r2, r11
	lsl	r0, #1
	cmp	r2, #0
	beq	.L46d0
	ldr	r3, [sp, #0x1c]
	add	r3, r6
	str	r3, [sp, #0x1c]
	mov	r3, r11
	ldr	r4, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	add	r3, #0xff
	lsl	r3, #24
	add	r4, r7
	add	r1, r0
	lsr	r3, #24
	str	r4, [sp, #0x18]
	str	r1, [sp, #0x14]
	mov	r11, r3
	cmp	r3, #0
	bne	.L46ee
	ldr	r2, [sp, #0x1c]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r2, [r5, #0x38]
	cmp	r3, #0
	beq	.L46c8
	str	r4, [r5, #0xc]
	str	r4, [r5, #0x3c]
.L46c8:
	ldr	r4, [sp, #0x14]
	str	r4, [r5, #0x10]
	str	r4, [r5, #0x40]
	b	.L46ee
.L46d0:
	ldr	r3, [r5, #8]
	mov	r1, r9
	add	r3, r6
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	cmp	r1, #0
	beq	.L46e6
	ldr	r3, [r5, #0xc]
	add	r3, r7
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
.L46e6:
	ldr	r3, [r5, #0x10]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
.L46ee:
	ldr	r2, [sp, #0x34]
	mov	r3, r10
	str	r2, [r3, #8]
	ldr	r4, [sp, #0x30]
	str	r4, [r3, #0xc]
	ldr	r0, [sp, #0x2c]
	str	r0, [r3, #0x10]
	ldr	r1, [sp, #0x28]
	str	r1, [r3, #0x14]
	ldr	r2, [sp, #0x24]
	str	r2, [r3, #0x18]
	ldr	r4, [sp, #0xc]
	mov	r3, r11
	strb	r3, [r4]
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x3c]
	str	r0, [r1, #4]
	ldr	r2, [sp, #0x18]
	mov	r3, r10
	str	r2, [r3]
	ldr	r4, [sp, #0x14]
	add	r0, sp, #0x20
	str	r4, [r1, #0xc]
	ldrb	r0, [r0]
	ldr	r1, [sp, #0x10]
	strb	r0, [r1]
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
	add	r1, #3
	add	r2, #3
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	str	r1, [sp]
	str	r2, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	add	r3, #3
	add	r4, #1
	add	r1, #0x28
	add	r2, #0x28
	str	r3, [sp, #4]
	str	r4, [sp, #0x38]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, [sp, #0x3c]
	mov	r0, #0x28
	add	r3, #0x28
	add	r10, r0
	ldr	r4, [sp, #0x40]
	mov	r0, #0xc8
	str	r3, [sp, #0x3c]
	lsl	r0, #1
	add	r3, r4, r0
	ldrh	r3, [r3]
	ldr	r1, [sp, #0x38]
	cmp	r1, r3
	beq	.L4762
	b	.L44ea
.L4762:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_449c

.thumb_func_start OvlFunc_478c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r1, #0xca
	mov	r6, r0
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #4
	bl	__Func_48f4
	mov	r3, #0
	mov	r9, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r5, r9
	ldr	r3, =REG_DMA3SAD
	mov	r1, r9
	ldr	r2, =0x85000065
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	cmp	r2, #0xa
	bls	.L47c8
	mov	r3, #0xa
	mov	r8, r3
.L47c8:
	mov	r2, #0
	mov	r3, r8
	mov	r10, r2
	cmp	r3, #0
	beq	.L481a
	mov	r11, r2
	mov	r7, #0
.L47d6:
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r2, r11
	add	r3, #0x26
	str	r0, [r5]
	add	r0, #0x55
	strb	r2, [r3]
	strb	r2, [r0]
	mov	r0, r6
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c548
	ldr	r2, =.L5140
	ldr	r3, [r7, r2]
	str	r3, [r5, #0x1c]
	ldr	r3, =.L5168
	ldr	r3, [r3, r7]
	mov	r2, r5
	neg	r3, r3
	str	r3, [r5, #0x20]
	add	r2, #0x24
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #1
	add	r10, r3
	add	r7, #4
	add	r5, #0x28
	add	r6, #1
	cmp	r10, r8
	bne	.L47d6
.L481a:
	mov	r3, #0xc8
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_449c
	bl	__Func_41d8
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_478c

	.section .data

.L4bd0:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4bd0, (0x4be4-0x4bd0)
.L4be4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4be4, (0x4d88-0x4be4)
.L4d88:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4d88, (0x4db8-0x4d88)
.L4db8:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4db8, (0x4dc4-0x4db8)
.L4dc4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4dc4, (0x4fa4-0x4dc4)
.L4fa4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4fa4, (0x5088-0x4fa4)
.L5088:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5088, (0x50e4-0x5088)
.L50e4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x50e4, (0x5102-0x50e4)
.L5102:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5102, (0x5120-0x5102)
.L5120:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5120, (0x5140-0x5120)
.L5140:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5140, (0x5168-0x5140)
.L5168:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5168
