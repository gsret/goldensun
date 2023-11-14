	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L16c8
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L1710
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L171c
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_70
	push	{lr}
	bl	OvlFunc_1188
	pop	{r0}
	bx	r0
.func_end OvlFunc_70

.thumb_func_start OvlFunc_7c
	push	{lr}
	mov	r0, #0x80
	sub	sp, #0xc
	lsl	r0, #8
	str	r0, [sp, #4]
	mov	r0, #0x80
	lsl	r0, #7
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #9
	str	r0, [sp, #8]
	lsl	r1, #11
	lsl	r3, #6
	mov	r0, #0
	str	r2, [sp]
	bl	OvlFunc_10d4
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_a8
	ldr	r0, =.L17ac
	bx	lr
.func_end OvlFunc_a8

.thumb_func_start OvlFunc_b0
	push	{r5, lr}
	ldr	r5, =.L181c
	mov	r1, #6
	ldrh	r0, [r5]
	bl	_Func_b60
	ldr	r2, =.L14ac
	lsl	r0, #16
	lsr	r0, #15
	add	r0, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000e8
	ldr	r2, =0x80000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	mov	r2, #0x8c
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bls	.Le2
	ldr	r3, .Le8	@ 0
	strh	r3, [r5]
.Le2:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Le8:
	.word	0
.func_end OvlFunc_b0

.thumb_func_start OvlFunc_100
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.L132
	sub	r3, #1
	strh	r3, [r2]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	ldr	r3, [r6, #8]
	sub	r5, r0
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, =0xcccc
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	b	.L158
.L132:
	mov	r2, r6
	add	r2, #0x66
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	cmp	r3, #0
	beq	.L158
	strh	r1, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #0x14
	strh	r3, [r2]
	ldr	r1, =.L14c4
	mov	r0, r6
	bl	__Func_c2d8
.L158:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_100

.thumb_func_start OvlFunc_168
	push	{lr}
	ldr	r2, =.L17f4
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x28
	bne	.L186
	ldr	r1, =.L17f0
	ldr	r3, [r1]
	cmp	r3, #4
	ble	.L186
	sub	r3, #1
	str	r3, [r1]
	mov	r3, #0
	str	r3, [r2]
.L186:
	pop	{r0}
	bx	r0
.func_end OvlFunc_168

.thumb_func_start OvlFunc_194
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, =.L17e8
	ldr	r3, [r3]
	sub	sp, #0x14
	cmp	r3, #0
	beq	.L1e0
	ldr	r5, =.L17ec
	ldr	r0, [r5]
	lsl	r0, #9
	bl	__Func_2322
	ldr	r3, =Func_888
	mov	r1, #3
	.call_via r3
	ldr	r3, =.L17f0
	add	r0, #8
	ldr	r3, [r3]
	mov	r2, sp
	lsl	r0, #8
	add	r2, #0x12
	add	r3, r0
	strh	r3, [r2]
	ldrh	r2, [r2]
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
.L1e0:
	ldr	r3, =.L17fc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2bc
	ldr	r2, =.L1800
	ldr	r0, [r2]
	lsl	r0, #9
	mov	r11, r2
	bl	__Func_2322
	ldr	r3, =Func_888
	mov	r1, #2
	.call_via r3
	ldr	r3, =.L1804
	mov	r2, #0xa0
	ldr	r3, [r3]
	lsl	r6, r0, #16
	lsl	r2, #1
	add	r2, r9
	add	r3, r6
	str	r3, [r2]
	ldr	r3, =.L1808
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	add	r3, r6
	str	r3, [r2]
	ldr	r3, =.L180c
	ldr	r2, =0xffff0000
	mov	r8, r3
	ldr	r3, [r3]
	mov	r10, r2
	cmp	r3, r10
	beq	.L242
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r8
	ldr	r3, [r2]
	mov	r5, r0
	add	r3, r6
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L242:
	ldr	r7, =.L1810
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.L268
	mov	r0, #1
	bl	__Func_92054
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L268:
	ldr	r7, =.L1814
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.L28e
	mov	r0, #3
	bl	__Func_92054
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L28e:
	ldr	r7, =.L1818
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.L2b4
	mov	r0, #2
	bl	__Func_92054
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L2b4:
	mov	r2, r11
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
.L2bc:
	ldr	r3, =.L17f8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L3ac
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r7, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L3ac
	mov	r3, r9
	add	r3, #0xe4
	ldr	r6, [r3]
	add	r3, #4
	ldr	r2, =0xffff0000
	ldr	r5, [r3]
	and	r6, r2
	and	r5, r2
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #4
	add	r2, sp, #4
	add	r6, r3
	mov	r3, #0
	str	r3, [r2, #4]
	str	r6, [r2]
	str	r2, [sp]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	add	r5, r3
	mov	r3, #0xf0
	ldr	r2, [sp]
	lsl	r3, #13
	add	r5, r3
	str	r5, [r2, #8]
	ldr	r1, [r2]
	mov	r3, r5
	ldr	r2, [r2, #4]
	ldr	r0, =0x1f7
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L3ac
	ldr	r3, =OvlFunc_100
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0x3c
	strh	r3, [r2]
	mov	r3, r5
	ldr	r1, .L35c	@ 0
	add	r3, #0x66
	strh	r7, [r3]
	sub	r3, #0x11
	strb	r1, [r3]
	sub	r2, #0x41
	mov	r3, #2
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xf
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c300
	b	.L3ac

	.align	2, 0
.L35c:
	.word	0
	.pool

.L3ac:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_194

.thumb_func_start OvlFunc_3c0
	push	{r5, lr}
	mov	r0, #0
	ldr	r5, =.L180c
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3c0

.thumb_func_start OvlFunc_3dc
	push	{r5, lr}
	mov	r0, #1
	ldr	r5, =.L1810
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3dc

.thumb_func_start OvlFunc_3f8
	push	{r5, lr}
	mov	r0, #3
	ldr	r5, =.L1814
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3f8

.thumb_func_start OvlFunc_414
	push	{r5, lr}
	mov	r0, #2
	ldr	r5, =.L1818
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_414

.thumb_func_start OvlFunc_430
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_933f8
	mov	r3, #0x12
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x12
	bl	__Func_10704
	ldr	r0, =0x28fe
	bl	__Func_92b94
	mov	r1, #0xa
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x18
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r2, #0x10
	mov	r1, #0xa
	mov	r0, #2
	bl	__Func_9233c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L59c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L5c6
.L59c:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L5c6:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x32
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x32
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L6e8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L726
.L6e8:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L726:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L814
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L840

	.pool_aligned

.L814:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
.L840:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	ldr	r2, =0x9999
	mov	r0, #3
	ldr	r1, =0x13333
	bl	__Func_92064
	ldr	r1, =.L1820
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	ldr	r1, =.L18e0
	mov	r0, #1
	bl	__Func_9207c
	mov	r0, #0x32
	bl	__Func_9163c
	ldr	r1, =.L198c
	mov	r0, #2
	bl	__Func_9207c
	mov	r0, #2
	bl	__Func_920e8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x20
	mov	r1, #0
	neg	r2, r2
	mov	r0, #3
	bl	__Func_92304
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L1a4c
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_920e8
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x43
	bl	__Func_f9080
	mov	r0, #0xf0
	bl	__Func_f94c8
	bl	OvlFunc_12ac
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r6, =iwram_1e70
	mov	r0, #8
	ldr	r5, [r6]
	bl	__Func_92054
	mov	r3, #0x83
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r3, #0x8e
	lsl	r3, #1
	add	r5, r3
	ldr	r3, =0xffffd000
	mov	r0, #8
	str	r3, [r5]
	mov	r1, #0x3c
	mov	r2, #0
	bl	__Func_92304
	ldr	r3, =0xffffa000
	mov	r2, #0
	str	r3, [r5]
	mov	r1, #0x3c
	mov	r0, #8
	bl	__Func_92304
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x64
	bl	__Func_9163c
	ldr	r0, =0x23333
	ldr	r1, =0x28f
	bl	__Func_933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0xa8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_933f8
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_9163c
	ldr	r1, [r6, #0x4c]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x60
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	ldr	r0, =0
	mov	r1, #9
	bl	__Func_91e3c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_430

.thumb_func_start OvlFunc_b34
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	sub	sp, #8
	mov	r10, r3
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r1, #0x9c
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x8c
	bl	__Func_f9080
	mov	r6, #0xa0
	mov	r5, #0
	lsl	r6, #19
.Lb76:
	lsl	r3, r5, #11
	lsl	r2, r5, #5
	orr	r3, r2
	strh	r3, [r6]
	mov	r0, #0xa
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0xf
	ble	.Lb76
	mov	r2, #0xfc
	mov	r3, #0xa0
	lsl	r2, #7
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r2, =0x1010
	mov	r7, #0x81
	ldr	r6, =REG_BLDALPHA
	mov	r8, r2
	lsl	r7, #4
	mov	r5, #2
.Lba0:
	mov	r0, #0xd4
	bl	__Func_f9080
	mov	r3, r8
	strh	r3, [r6]
	mov	r0, #3
	bl	__Func_9163c
	strh	r7, [r6]
	mov	r0, #0x41
	sub	r5, #1
	bl	__Func_9163c
	cmp	r5, #0
	bge	.Lba0
	ldr	r3, =.L17e8
	mov	r5, #1
	str	r5, [r3]
	ldr	r3, =.L17ec
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_194
	mov	r8, r2
	bl	__Func_41d8
	ldr	r6, =.L17f8
	mov	r0, #0x14
	str	r5, [r6]
	bl	__Func_9163c
	mov	r0, #0xa3
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r5, [r6]
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	ldr	r3, =.L17f4
	mov	r2, r8
	mov	r1, #0xc8
	mov	r6, #0xa0
	mov	r5, #0xb8
	str	r2, [r3]
	ldr	r0, =OvlFunc_168
	lsl	r1, #4
	lsl	r6, #1
	lsl	r5, #1
	ldr	r7, =0x3333
	bl	__Func_41d8
	add	r6, r10
	mov	r2, #0
	add	r5, r10
.Lc44:
	ldr	r3, [r6]
	add	r3, r7
	str	r3, [r6]
	ldr	r3, [r5]
	add	r3, r7
	add	r2, r7
	str	r3, [r5]
	mov	r0, #1
	str	r2, [sp]
	bl	__Func_30f8
	ldr	r3, =0x59ffff
	ldr	r2, [sp]
	cmp	r2, r3
	ble	.Lc44
	ldr	r0, =OvlFunc_168
	bl	__Func_4278
	ldr	r0, =REG_BG3CNT
	ldr	r3, =.L17f8
	ldr	r2, =0xfffc
	ldrh	r1, [r0]
	mov	r6, #0
	ldr	r4, .Lcac	@ 3
	str	r6, [r3]
	mov	r3, r2
	mov	r5, sp
	and	r3, r1
	orr	r3, r4
	add	r5, #6
	strh	r3, [r5]
	strh	r3, [r0]
	sub	r0, #2
	ldrh	r1, [r0]
	mov	r3, r2
	and	r3, r1
	orr	r3, r4
	strh	r3, [r5]
	ldr	r1, =REG_BG1CNT
	strh	r3, [r0]
	ldrh	r3, [r1]
	and	r2, r3
	ldr	r3, .Lcb0	@ 2
	orr	r2, r3
	ldr	r3, =.L17e8
	mov	r0, #0x90
	strh	r2, [r5]
	str	r6, [r3]
	strh	r2, [r1]
	lsl	r0, #1
	b	.Lcec

	.align	2, 0
.Lcac:
	.word	3
.Lcb0:
	.word	2
	.pool

.Lcec:
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r2, #0xbf
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r5, #0
	ldr	r6, =REG_BLDY
.Ld06:
	strh	r5, [r6]
	mov	r0, #1
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0x10
	ble	.Ld06
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, =.L1804
	str	r3, [r2]
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, =.L1808
	str	r3, [r2]
	ldr	r2, =.L17fc
	mov	r3, #1
	str	r3, [r2]
	ldr	r6, =REG_BLDY
	mov	r5, #0x10
.Ld4a:
	strh	r5, [r6]
	mov	r0, #8
	sub	r5, #1
	bl	__Func_9163c
	cmp	r5, #0
	bge	.Ld4a
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_b0
	bl	__Func_41d8
	mov	r0, #0x50
	bl	__Func_f9080
	bl	__Func_b04c4
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
	bl	OvlFunc_430
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b34

.thumb_func_start OvlFunc_da4
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldr	r5, =iwram_1e70
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #4
	ldr	r7, [r5]
	cmp	r3, #0x63
	bne	.Ldc4
	mov	r0, #0
	mov	r1, #0xf2
	bl	__Func_78588
.Ldc4:
	ldr	r3, [r5, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #8
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x59
	strb	r6, [r0]
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	strb	r6, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	sub	r5, #0xf
	ldrb	r2, [r1, #9]
	mov	r3, r5
	mov	r6, #4
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #9
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #1
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #2
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #3
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #0x15]
	ldr	r0, =REG_BG3CNT
	ldr	r1, =0xfffc
	ldrh	r2, [r0]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .Ledc	@ 2
	mov	r5, sp
	add	r5, #2
	orr	r3, r2
	strh	r3, [r5]
	strh	r3, [r0]
	sub	r0, #2
	ldrh	r2, [r0]
	ldr	r4, .Lee0	@ 3
	mov	r3, r1
	and	r3, r2
	orr	r3, r4
	strh	r3, [r5]
	ldr	r2, =REG_BG1CNT
	strh	r3, [r0]
	ldrh	r3, [r2]
	and	r1, r3
	orr	r1, r4
	strh	r1, [r5]
	strh	r1, [r2]
	ldr	r2, =0x2648
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r2, #0x81
	lsl	r2, #4
	add	r3, #2
	strh	r2, [r3]
	b	.Lf00

	.align	2, 0
.Ledc:
	.word	2
.Lee0:
	.word	3
	.pool

.Lf00:
	mov	r3, #0x9a
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r3, [r1, #0xc]
	ldr	r2, =0xffa60000
	add	r3, r2
	str	r3, [r1, #0xc]
	mov	r3, #0xb2
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r3, [r1, #0xc]
	add	r3, r2
	str	r3, [r1, #0xc]
	bl	__Func_fe9c
	bl	OvlFunc_7c
	mov	r0, #0
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_da4

.thumb_func_start OvlFunc_f30
	ldr	r3, =iwram_1ed8
	mov	r2, #0xf0
	ldr	r0, [r3]
	lsl	r2, #4
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #7
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r1, =REG_BG3HOFS
	ldrh	r2, [r3, #0xa]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_f30

.thumb_func_start OvlFunc_f80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ed8
	ldr	r0, =iwram_1ad0
	ldr	r6, [r3]
	mov	r2, #0xe
	ldrsh	r1, [r0, r2]
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	mov	r2, #0xf1
	lsl	r3, #7
	lsl	r2, #4
	add	r5, r6, r3
	add	r3, r6, r2
	ldr	r3, [r3]
	sub	r2, #0xe
	lsl	r1, #16
	sub	sp, #4
	mov	r10, r3
	add	r3, r6, r2
	ldrh	r2, [r3]
	str	r1, [sp]
	lsr	r3, r1, #16
	ldr	r1, =0xf08
	add	r2, r3
	add	r3, r6, r1
	ldr	r3, [r3]
	mov	r4, r3
	mul	r4, r2
	ldr	r2, =0xf18
	add	r3, r6, r2
	ldr	r3, [r3]
	ldrh	r0, [r0, #0xc]
	mov	r14, r3
	ldr	r3, =Func_888
	mov	r9, r0
	mov	r0, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r11, r0
.Lfe6:
	mov	r1, r11
	asr	r3, r4, #16
	and	r3, r1
	ldr	r2, =.L14c8
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r14
	.call_via	r8
	cmp	r0, #0
	bge	.Lffe
	add	r0, #0xff
.Lffe:
	lsl	r3, r0, #8
	lsr	r3, #16
	add	r3, r9
	add	r7, #1
	strh	r3, [r5]
	add	r4, r10
	add	r5, #4
	cmp	r7, #0xa0
	bne	.Lfe6
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r0, =0xf14
	lsl	r3, #7
	add	r3, r6, r3
	add	r5, r3, #2
	add	r3, r6, r0
	ldr	r3, [r3]
	ldr	r1, =0xf02
	mov	r10, r3
	add	r3, r6, r1
	ldrh	r2, [r3]
	ldr	r3, [sp]
	sub	r0, #8
	lsr	r1, r3, #16
	add	r3, r6, r0
	ldr	r3, [r3]
	add	r2, r1
	mov	r4, r3
	mul	r4, r2
	ldr	r2, =0xf1c
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r14, r3
	ldr	r3, =Func_888
	mov	r0, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r9, r1
	mov	r11, r0
.L1058:
	mov	r1, r11
	asr	r3, r4, #16
	and	r3, r1
	ldr	r2, =.L14c8
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r14
	.call_via r8
	cmp	r0, #0
	bge	.L1072
	add	r0, #0xff
.L1072:
	lsl	r3, r0, #8
	lsr	r3, #16
	add	r3, r9
	add	r7, #1
	strh	r3, [r5]
	add	r4, r10
	add	r5, #4
	cmp	r7, #0xa0
	bne	.L1058
	ldr	r3, =0xf02
	add	r2, r6, r3
	ldrh	r3, [r2]
	mov	r0, #0xf0
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #4
	add	r1, r6, r0
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f80

.thumb_func_start OvlFunc_10d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r1, #0xf2
	mov	r5, r0
	lsl	r1, #4
	mov	r0, #0x22
	sub	sp, #4
	mov	r8, r2
	mov	r7, r3
	bl	__Func_48f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850003c8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	mov	r1, r3
	lsl	r2, #24
.L1106:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1106
	ldr	r2, =0xf01
	add	r3, r4, r2
	add	r2, #7
	strb	r5, [r3]
	add	r3, r4, r2
	str	r6, [r3]
	ldr	r3, =0xf0c
	add	r2, r4, r3
	ldr	r3, [sp, #0x18]
	str	r3, [r2]
	ldr	r2, =0xf18
	add	r3, r4, r2
	str	r7, [r3]
	ldr	r3, =0xf1c
	add	r2, r4, r3
	ldr	r3, [sp, #0x20]
	str	r3, [r2]
	mov	r2, #0xf1
	lsl	r2, #4
	add	r3, r4, r2
	mov	r2, r8
	str	r2, [r3]
	ldr	r3, =0xf14
	add	r2, r4, r3
	ldr	r3, [sp, #0x1c]
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_f80
	bl	__Func_41d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =OvlFunc_f30
	bl	__Func_41d8
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10d4

.thumb_func_start OvlFunc_1188
	push	{lr}
	ldr	r0, =OvlFunc_f30
	bl	__Func_4278
	ldr	r0, =OvlFunc_f80
	bl	__Func_4278
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	pop	{r0}
	bx	r0
.func_end OvlFunc_1188

.thumb_func_start OvlFunc_11c4
	push	{r5, r6, r7, lr}
	ldr	r3, =.L1c1a
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldr	r2, =.L1c18
	ldrh	r3, [r3, #2]
	mov	r14, r2
	lsr	r3, #5
	mov	r1, r14
	mov	r12, r3
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	ldr	r0, =.L1af8
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.L11f0
	sub	r3, r2, #1
	mov	r2, r14
	strh	r3, [r2]
.L11f0:
	mov	r5, #0
.L11f2:
	mov	r4, r14
	ldrh	r3, [r4]
	lsl	r4, r3, #16
	asr	r1, r4, #16
	neg	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #0
	mov	r7, #0xff
	stmia	r0!, {r2}
	and	r3, r7
	lsl	r2, r5, #21
	ldr	r6, =0x80004000
	orr	r3, r2
	orr	r3, r6
	stmia	r0!, {r3}
	mov	r2, r12
	add	r5, #1
	stmia	r0!, {r2}
	cmp	r5, #7
	bls	.L11f2
	lsr	r3, r4, #31
	add	r3, r1, r3
	asr	r3, #1
	mov	r2, r3
	add	r2, #0x88
	and	r2, r7
	mov	r5, #0
	mov	r7, #0
	mov	r4, r6
	mov	r1, r0
.L1232:
	lsl	r3, r5, #21
	orr	r3, r2
	orr	r3, r4
	str	r3, [r1, #4]
	add	r5, #1
	mov	r3, r12
	str	r7, [r1]
	str	r3, [r1, #8]
	add	r0, #0xc
	add	r1, #0xc
	cmp	r5, #7
	bls	.L1232
	ldr	r3, =.L1c18
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	add	r2, #0x98
	mov	r3, #0xff
	ldr	r4, =0x80004000
	mov	r5, #0
	and	r2, r3
	mov	r6, #0
	mov	r1, r0
.L1266:
	lsl	r3, r5, #21
	orr	r3, r2
	orr	r3, r4
	str	r3, [r1, #4]
	add	r5, #1
	mov	r3, r12
	str	r6, [r1]
	str	r3, [r1, #8]
	add	r1, #0xc
	cmp	r5, #7
	bls	.L1266
	ldr	r6, =.L1af8
	mov	r5, #0
.L1280:
	mov	r0, r6
	mov	r1, #0xff
	add	r5, #1
	bl	__Func_3dec
	add	r6, #0xc
	cmp	r5, #0x17
	bls	.L1280
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c4

.thumb_func_start OvlFunc_12ac
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #1
	sub	sp, #4
	bl	__Func_4970
	ldr	r5, =.L1c1a
	mov	r6, r0
	bl	__Func_4080
	ldr	r3, =0x11111111
	strh	r0, [r5]
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	mov	r2, r6
	lsl	r1, #1
	bl	__Func_3fa4
	ldr	r2, =.L1c18
	ldr	r3, .L12f8	@ 0x30
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_11c4
	bl	__Func_41d8
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.L12f8:
	.word	0x30
	.pool
.func_end OvlFunc_12ac

	.section .data

.L14ac:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14ac, (0x14c4-0x14ac)
.L14c4:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14c4, (0x14c8-0x14c4)
.L14c8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x14c8, (0x16c8-0x14c8)
.L16c8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x16c8, (0x1710-0x16c8)
.L1710:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1710, (0x171c-0x1710)
.L171c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x171c, (0x17ac-0x171c)
.L17ac:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17ac, (0x17e8-0x17ac)
.L17e8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17e8, (0x17ec-0x17e8)
.L17ec:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17ec, (0x17f0-0x17ec)
.L17f0:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f0, (0x17f4-0x17f0)
.L17f4:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f4, (0x17f8-0x17f4)
.L17f8:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17f8, (0x17fc-0x17f8)
.L17fc:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x17fc, (0x1800-0x17fc)
.L1800:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1800, (0x1804-0x1800)
.L1804:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1804, (0x1808-0x1804)
.L1808:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1808, (0x180c-0x1808)
.L180c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x180c, (0x1810-0x180c)
.L1810:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1810, (0x1814-0x1810)
.L1814:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1814, (0x1818-0x1814)
.L1818:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1818, (0x181c-0x1818)
.L181c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x181c, (0x1820-0x181c)
.L1820:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1820, (0x18e0-0x1820)
.L18e0:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x18e0, (0x198c-0x18e0)
.L198c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x198c, (0x1a4c-0x198c)
.L1a4c:
	.incbin "overlays/rom_7fa4ec/orig.bin", 0x1a4c

	.section .bss

	.lcomm	.L1af8, 0x120
	.lcomm	.L1c18, 2
	.lcomm	.L1c1a, 2
