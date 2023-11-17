	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_35b8
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x1576
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_35b8

.thumb_func_start OvlFunc_35dc
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_35dc

.thumb_func_start OvlFunc_3600
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3622
	ldr	r0, =0x1636
	mov	r1, #1
	bl	__Func_1776c
	b	.L362a
.L3622:
	ldr	r0, =0x1635
	mov	r1, #1
	bl	__Func_1776c
.L362a:
	mov	r0, #0xb9
	bl	__Func_78698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L3646
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L3646:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3600

.thumb_func_start OvlFunc_3660
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x53
	bl	__Func_f9080
	mov	r0, #0xb8
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0xb8
	mov	r0, #0xb9
	bl	OvlFunc_4f90
	mov	r0, #0xb8
	bl	__Func_78698
	mov	r1, #1
	bl	__Func_19908
	mov	r0, #0xb8
	mov	r1, #2
	bl	__Func_19908
	mov	r1, #1
	ldr	r0, =0x1638
	bl	__Func_1776c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3660

.thumb_func_start OvlFunc_36ac
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.L3760
	mov	r1, #0xec
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xa4
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x2be0000
	mov	r1, #0
	mov	r3, #0xdf
	ldr	r0, [r0, #8]
	bl	OvlFunc_common0_18
	mov	r3, #3
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2e
	mov	r2, #0x5c
	mov	r3, #0x28
	mov	r0, #0x5c
	bl	__Func_10424
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_92b08
	mov	r2, #1
	mov	r0, #0
	mov	r1, #6
	neg	r2, r2
	bl	__Func_92708
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	mov	r0, #0x3c
	str	r2, [r3]
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_91e9c
	b	.L376c
.L3760:
	mov	r2, #1
	mov	r0, #0
	mov	r1, #6
	neg	r2, r2
	bl	__Func_92708
.L376c:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_36ac

.thumb_func_start OvlFunc_3788
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L3846
	bl	__Func_916b0
	mov	r7, r5
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	add	r7, #0x55
	bl	__Func_933f8
	strb	r6, [r7]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	ldr	r3, =0xfff00000
	lsl	r2, #16
	add	r2, r3
	lsl	r1, #16
	mov	r0, #0
	bl	__Func_923e4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_cd0
	mov	r0, #0
	str	r3, [r5, #0x6c]
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92304
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92304
	mov	r3, #3
	strb	r3, [r7]
	str	r6, [r5, #0x6c]
	bl	__Func_9202c
	bl	__Func_91750
.L3846:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3788

.thumb_func_start OvlFunc_3860
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x3a
	mov	r2, #0x46
	mov	r3, #0x22
	mov	r0, #0x4a
	bl	__Func_10424
	add	r1, sp, #0x10
	mov	r3, #7
	str	r3, [r1, #4]
	mov	r3, #0x80
	lsl	r3, #8
	ldr	r2, =0xffff3334
	str	r3, [r1, #8]
	str	r3, [r1, #0xc]
	mov	r3, #1
	mov	r10, r1
	mov	r7, #0
	mov	r9, r2
	mov	r8, r3
.L3898:
	mov	r6, #0
.L389a:
	mov	r3, r6
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L38fe
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r9
	lsl	r1, r7, #4
	str	r3, [sp, #4]
	neg	r2, r6
	mov	r3, #0x90
	sub	r2, r1
	lsl	r3, #12
	mov	r1, #0x88
	lsl	r1, #18
	str	r3, [sp, #8]
	add	r5, r9
	mov	r3, r10
	lsl	r2, #16
	mov	r0, #0xd2
	add	r2, r1
	str	r3, [sp, #0xc]
	mov	r1, #0
	lsl	r0, #15
	mov	r3, r5
	str	r1, [sp]
	bl	OvlFunc_common0_10c
	mov	r0, #1
	bl	__Func_9163c
.L38fe:
	add	r6, #1
	cmp	r6, #7
	bls	.L389a
	mov	r1, r8
	mov	r3, #0x22
	sub	r3, r7
	str	r1, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3b
	mov	r2, #0x46
	bl	__Func_10424
	mov	r2, r8
	mov	r3, #0x21
	sub	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x46
	add	r7, #1
	bl	__Func_10424
	cmp	r7, #1
	bls	.L3898
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3860

.thumb_func_start OvlFunc_3948
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x4a
	mov	r3, #0x26
	mov	r0, #0x4c
	mov	r1, #0x3d
	bl	__Func_10424
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	mov	r2, #0x90
	mov	r3, #1
	lsl	r2, #12
	mov	r7, #0
	mov	r9, r3
	mov	r11, r2
.L3986:
	ldr	r3, =0xfffe0000
	mov	r6, #1
	mov	r10, r3
.L398c:
	mov	r3, r6
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L3a0c
	mov	r5, #2
	and	r5, r6
	cmp	r5, #0
	beq	.L39d2
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r0, #0x69
	sub	r0, r3
	lsl	r2, r7, #19
	mov	r3, r10
	sub	r2, r3, r2
	ldr	r3, =0x22e0000
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0xffffc000
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_common0_10c
	b	.L3a06
.L39d2:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, #0x9b
	lsr	r3, #16
	lsl	r2, #2
	lsl	r0, r7, #2
	sub	r2, r3
	add	r0, r6
	mov	r3, #0xb7
	lsl	r3, #16
	lsl	r0, #17
	add	r0, r3
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	lsl	r2, #16
	mov	r1, #0
	lsl	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_common0_10c
.L3a06:
	mov	r0, #1
	bl	__Func_9163c
.L3a0c:
	ldr	r2, =0xfffe0000
	add	r6, #1
	add	r10, r2
	cmp	r6, #7
	bls	.L398c
	mov	r2, r9
	mov	r3, #0x22
	sub	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x46
	bl	__Func_10424
	mov	r3, r9
	mov	r2, r7
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r2, #0x4b
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r3, #0x26
	add	r7, #1
	bl	__Func_10424
	cmp	r7, #2
	bls	.L3986
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3948

.thumb_func_start OvlFunc_3a64
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r10, r3
	mov	r1, r10
	mov	r3, #3
	and	r1, r3
	mov	r9, r0
	mov	r10, r1
	cmp	r1, #0
	bne	.L3b06
	mov	r3, #7
	add	r7, sp, #0x10
	str	r3, [r7, #4]
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	bne	.L3aa4
	mov	r3, #5
	str	r3, [r7, #4]
.L3aa4:
	ldr	r3, =0xb333
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Func_4458
	mov	r2, r9
	ldr	r2, [r2, #0xc]
	lsl	r0, #2
	lsr	r0, #16
	mov	r8, r2
	lsl	r0, #16
	add	r8, r0
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r6, =0xffff3334
	lsl	r2, r3, #8
	add	r3, r2
	mov	r1, r9
	add	r3, r6
	ldr	r0, [r1, #8]
	ldr	r2, [r1, #0x10]
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r6
	str	r3, [sp, #8]
	mov	r1, r8
	mov	r3, r5
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3b06:
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a64

.thumb_func_start OvlFunc_3b24
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r8, r3
	mov	r11, r2
	mov	r3, #3
	mov	r2, r8
	and	r2, r3
	sub	sp, #0x38
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	cmp	r2, #0
	bne	.L3bb4
	mov	r3, #7
	add	r7, sp, #0x10
	str	r3, [r7, #4]
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	bne	.L3b66
	mov	r3, #5
	str	r3, [r7, #4]
.L3b66:
	ldr	r3, =0xb333
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r6, =0xffff3334
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r6
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r6
	str	r3, [sp, #8]
	mov	r0, r10
	mov	r1, r9
	mov	r2, r11
	mov	r3, r5
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3bb4:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b24

.thumb_func_start OvlFunc_3bd4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0x38
	add	r5, sp, #0x10
	mov	r3, #7
	str	r3, [r5, #4]
	mov	r3, #1
	str	r3, [r5]
	ldr	r3, =0xb333
	mov	r10, r1
	mov	r8, r2
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	mov	r6, r0
	bl	__Func_4458
	lsl	r0, #4
	lsr	r0, #16
	ldr	r3, =0xfff80000
	lsl	r0, #16
	add	r6, r0
	add	r6, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfffc0000
	add	r8, r0
	add	r8, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xb0
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r6
	mov	r1, r10
	mov	r2, r8
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bd4

.thumb_func_start OvlFunc_3c48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x4c
	str	r0, [sp, #0x14]
	mov	r0, #0xd8
	mov	r11, r2
	mov	r9, r3
	str	r1, [sp, #0x10]
	bl	__Func_f9080
	mov	r2, #0
	mov	r3, #6
	mov	r8, r2
	add	r7, sp, #0x18
	mov	r10, r3
.L3c70:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L3cf4
	mov	r3, #7
	add	r6, sp, #0x24
	str	r3, [r6, #4]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3c8c
	mov	r3, #5
	str	r3, [r6, #4]
.L3c8c:
	ldr	r3, =0x9999
	mov	r2, r8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
	str	r3, [r7, #8]
	lsr	r3, r2, #1
	mov	r2, r10
	sub	r3, r2, r3
	ldr	r2, =0x1999
	mov	r1, r9
	mov	r0, r3
	mul	r0, r2
	mov	r2, r7
	bl	__Func_447c
	bl	__Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #1
	mov	r3, r10
	lsr	r5, #16
	sub	r5, r3, r5
	ldr	r2, [sp, #0x14]
	lsl	r5, #16
	add	r5, r2, r5
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	ldr	r1, [r7, #4]
	lsl	r2, #1
	mov	r3, r10
	lsr	r2, #16
	sub	r2, r3, r2
	ldr	r3, [r7]
	str	r1, [sp]
	ldr	r1, [r7, #8]
	str	r1, [sp, #4]
	mov	r1, #0x90
	lsl	r1, #12
	lsl	r2, #16
	str	r1, [sp, #8]
	add	r2, r11
	mov	r0, r5
	ldr	r1, [sp, #0x10]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3cf4:
	mov	r0, #2
	bl	__Func_30f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xb
	bls	.L3c70
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c48

.thumb_func_start OvlFunc_3d20
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x111
	sub	sp, #8
	bl	__Func_79358
	ldr	r2, =ewram_240
	ldr	r3, =0x242
	add	r1, r2, r3
	mov	r3, #0xb
	strh	r3, [r1]
	mov	r1, #0x90
	ldr	r3, =0x39
	lsl	r1, #2
	add	r2, r1
	strh	r3, [r2]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r2, #0xfd
	ldr	r3, =REG_BLDCNT
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, =ewram_1000
	mov	r0, #0x15
	bl	OvlFunc_4fcc
	mov	r0, #0
	bl	__Func_91494
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3d82
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d58
	lsl	r1, #4
	bl	__Func_41d8
	b	.L3d86
.L3d82:
	bl	OvlFunc_dfc
.L3d86:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	beq	.L3d9a
	b	.L3f56
.L3d9a:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0xe
	bls	.L3dae
	b	.L3f56
.L3dae:
	ldr	r2, =.L3db8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3db8:
	.word	.L3df4
	.word	.L3df4
	.word	.L3df4
	.word	.L3e2a
	.word	.L3e16
	.word	.L3e16
	.word	.L3f56
	.word	.L3f56
	.word	.L3f10
	.word	.L3f10
	.word	.L3f56
	.word	.L3f56
	.word	.L3f56
	.word	.L3f56
	.word	.L3e1e
.L3df4:
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3e00
	b	.L3f56
.L3e00:
	mov	r3, #2
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x42
	mov	r1, #5
	mov	r2, #0x1b
	mov	r3, #0x17
	bl	__Func_10704
	b	.L3f56
.L3e16:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L3f56
.L3e1e:
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
.L3e2a:
	ldr	r0, =0x876
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3e66
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xa8
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa2
	mov	r2, #0xf0
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	b	.L3e8a
.L3e66:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3e8a
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x311
	bl	__Func_79374
	ldr	r0, =0x312
	bl	__Func_79374
	ldr	r0, =0x313
	bl	__Func_79374
.L3e8a:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f56
	mov	r5, #1
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f04
	mov	r0, #0x76
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L3f04:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L3f56
.L3f10:
	ldr	r0, =0x873
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3f34
	mov	r1, #0xae
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	b	.L3f56
.L3f34:
	mov	r1, #0xc2
	mov	r2, #0x9e
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0x2e
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x27
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
.L3f56:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x37
	cmp	r2, r3
	beq	.L3f6a
	b	.L41f4
.L3f6a:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #8
	bls	.L3f7e
	b	.L41f4
.L3f7e:
	ldr	r2, =.L3f88
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3f88:
	.word	.L3fac
	.word	.L3fac
	.word	.L40f0
	.word	.L40f0
	.word	.L41f4
	.word	.L41f4
	.word	.L41a4
	.word	.L41a4
	.word	.L41a4
.L3fac:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3fd0
	b	.L41f4
.L3fd0:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xd3
	bl	__Func_f9080
	mov	r1, #0xb8
	mov	r2, #0x84
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #9
	str	r3, [sp]
	mov	r5, #0x1f
	mov	r0, #0xb
	mov	r1, #0x1f
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r5, #1
	mov	r6, #2
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x46
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4a
	mov	r1, #0x3b
	mov	r2, #0x46
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x4c
	mov	r1, #0x3c
	mov	r2, #0x4a
	mov	r3, #0x26
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4d
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0x26
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x3a
	mov	r2, #0x56
	mov	r3, #0x29
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0x4b
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r2, #0x50
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4d
	mov	r1, #0x3b
	mov	r2, #0x52
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L41f4

	.pool_aligned

.L40f0:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4132
	ldr	r0, =0x256
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4132
	mov	r5, #1
	mov	r0, #5
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #1
	mov	r2, #9
	mov	r3, #7
	str	r5, [sp]
	bl	__Func_10424
.L4132:
	ldr	r0, =0x874
	bl	__Func_79338
	cmp	r0, #0
	beq	.L41f4
	mov	r1, #0xb0
	mov	r2, #0xd8
	lsl	r1, #15
	lsl	r2, #16
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #2
	mov	r5, #1
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #1
	mov	r2, #9
	mov	r3, #7
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #5
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L41f4
.L41a4:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	ldr	r0, =0x306
	bl	__Func_79338
	cmp	r0, #0
	beq	.L41f4
	mov	r0, #0
	bl	OvlFunc_17a8
	mov	r3, #0x27
	str	r3, [sp, #4]
	mov	r5, #0x2a
	mov	r0, #0x2a
	mov	r1, #0x29
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x28
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #0xb0
	mov	r2, #0xa0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
.L41f4:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x38
	cmp	r2, r3
	beq	.L4208
	b	.L466c

.L4208:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0xf
	bls	.L421c
	b	.L466c
.L421c:
	ldr	r2, =.L4224
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4224:
	.word	.L4380
	.word	.L4380
	.word	.L437c
	.word	.L4264
	.word	.L4264
	.word	.L4264
	.word	.L4388
	.word	.L4388
	.word	.L4388
	.word	.L434a
	.word	.L434a
	.word	.L4380
	.word	.L437c
	.word	.L44b6
	.word	.L45ac
	.word	.L447c
.L4264:
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r7, #0x9e
	mov	r6, #0xcc
	mov	r5, #0
	lsl	r7, #18
	lsl	r6, #2
.L42b6:
	mov	r0, r6
	bl	__Func_79338
	cmp	r0, #0
	beq	.L42d0
	mov	r0, r5
	mov	r2, #0xb0
	add	r0, #0xf
	mov	r1, r7
	lsl	r2, #15
	bl	__Func_923e4
	b	.L42ec
.L42d0:
	add	r0, r6, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L42ec
	mov	r3, #0x80
	mov	r0, r5
	lsl	r3, #14
	mov	r2, #0xb0
	add	r0, #0xf
	add	r1, r7, r3
	lsl	r2, #15
	bl	__Func_923e4
.L42ec:
	mov	r1, #0x80
	lsl	r1, #15
	add	r5, #1
	add	r7, r1
	add	r6, #2
	cmp	r5, #3
	bls	.L42b6
	mov	r0, #0xce
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4322
	mov	r1, #0xe6
	mov	r2, #0xb0
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	b	.L4372
.L4322:
	ldr	r0, =0x339
	bl	__Func_79338
	cmp	r0, #0
	bne	.L432e
	b	.L466c
.L432e:
	mov	r1, #0xee
	mov	r2, #0xb0
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	b	.L4372
.L434a:
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4358
	b	.L466c
.L4358:
	mov	r1, #0xe4
	mov	r2, #0xa4
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r3, #0x1f
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x14
.L4372:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L466c
.L437c:
	bl	OvlFunc_3788
.L4380:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L466c
.L4388:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43dc
	ldr	r0, =0x256
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43dc
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r1, #0x1d
	str	r3, [r5, #0x3c]
	mov	r0, #6
	mov	r5, #1
	mov	r2, #0xa
	mov	r3, #0x17
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	str	r5, [sp]
	bl	__Func_10424
.L43dc:
	ldr	r0, =0x878
	bl	__Func_79338
	cmp	r0, #0
	bne	.L43e8
	b	.L466c
.L43e8:
	mov	r1, #0xa8
	mov	r2, #0xbc
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r1, #0x1d
	str	r3, [r5, #0x3c]
	mov	r0, #6
	mov	r5, #1
	mov	r2, #0xa
	mov	r3, #0x17
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xa
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_fe9c
	b	.L466c

	.pool_aligned

.L447c:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xcc
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc2
	mov	r2, #0x90
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0
	bl	OvlFunc_2030
	mov	r0, #1
	bl	OvlFunc_1db4
.L44b6:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xe
	bne	.L44cc
	mov	r0, #0xd3
	bl	__Func_f9080
.L44cc:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_92b08
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xe
	beq	.L4532
	b	.L466c
.L4532:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4558
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x319
	bl	__Func_79374
	ldr	r0, =0x31a
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	b	.L466c
.L4558:
	mov	r0, #0
	bl	OvlFunc_2030
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4588
	mov	r0, #2
	bl	OvlFunc_1db4
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2c
	bne	.L466c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_22c4
	lsl	r1, #4
	bl	__Func_41d8
	b	.L466c
.L4588:
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L459a
	mov	r0, #1
	bl	OvlFunc_1db4
	b	.L466c
.L459a:
	ldr	r0, =0x31b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L466c
	mov	r0, #0
	bl	OvlFunc_1db4
	b	.L466c
.L45ac:
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x90
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0x44]
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =0x4ccc
	str	r3, [r0, #0x48]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r0, #0x20
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #2
	bl	OvlFunc_common0_0
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x10
	bl	__Func_91e9c
	bl	__Func_91750
.L466c:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	beq	.L4680
	b	.L49ea
.L4680:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L4692
	b	.L4800
.L4692:
	cmp	r3, #0xb
	bgt	.L469c
	cmp	r3, #0xa
	beq	.L46a8
	b	.L49ea
.L469c:
	cmp	r3, #0xc
	bne	.L46a2
	b	.L47ee
.L46a2:
	cmp	r3, #0xf
	beq	.L470e
	b	.L49ea
.L46a8:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_2dcc
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L46be
	b	.L49ea
.L46be:
	bl	OvlFunc_3788
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	bl	__Func_91e20
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x1633
	mov	r1, #0
	mov	r2, #0
	bl	__Func_19aa0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	b	.L49ea
.L470e:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_11ae0
	mov	r2, #0
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xffff0000
	mov	r1, #1
	str	r3, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_92b08
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L477a
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x22
	mov	r2, #5
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	bl	__Func_10424
	b	.L49ea
.L477a:
	mov	r1, #0xce
	mov	r2, #0x96
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #3
	mov	r1, #0x24
	mov	r0, #0x74
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	bl	__Func_93554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_92b08
	bl	OvlFunc_4c68
	bl	__Func_11af0
	bl	__Func_91750
	b	.L49ea
.L47ee:
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
.L4800:
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x22
	mov	r2, #5
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x2d
	mov	r5, #5
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	str	r5, [sp]
	bl	__Func_10424
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	bne	.L48a4
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2d
	mov	r2, #0x32
	mov	r3, #0x2d
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x69
	mov	r2, #0x32
	mov	r3, #0x6d
	str	r5, [sp]
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L48bc

	.pool_aligned

.L48a4:
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_92b08
.L48bc:
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	ldr	r0, =0x82b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4924
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x96
	lsl	r2, #18
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92b08
	mov	r3, #0x34
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x74
	mov	r1, #0x25
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	mov	r3, #0x23
	bl	__Func_10424
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_2648
	lsl	r1, #4
	bl	__Func_41d8
	b	.L49ea
.L4924:
	ldr	r0, =0x871
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4994
	mov	r0, #0x87
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L494e
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0x10
	bl	__Func_924d4
	b	.L4968
.L494e:
	mov	r1, #0xd2
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L4968:
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	mov	r3, #0x23
	bl	__Func_10424
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_2648
	lsl	r1, #4
	bl	__Func_41d8
	b	.L49d2
.L4994:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x96
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r0, #0x74
	mov	r1, #0x24
	mov	r2, #3
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_9163c
.L49d2:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
.L49ea:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3d20

.thumb_func_start OvlFunc_4a08
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L4a1c
	ldr	r2, =0xfffff
	add	r3, r2
.L4a1c:
	asr	r3, #20
	cmp	r3, #0x30
	beq	.L4a24
	b	.L4c40
.L4a24:
	bl	__Func_916b0
	ldr	r5, =0x1591
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L4b3e
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
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
	cmp	r0, #1
	bne	.L4b3e
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #5
	b	.L4b26
.L4b10:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1639
.L4b26:
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	beq	.L4b10
.L4b3e:
	ldr	r0, =0x1597
	bl	__Func_92b94
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xb6
	mov	r2, #0x9e
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x5a
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_917d0
	mov	r0, #0x44
	bl	__Func_79358
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4c12
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L4c12:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0x2e
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x27
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x873
	bl	__Func_79358
	bl	__Func_91750
.L4c40:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a08

.thumb_func_start OvlFunc_4c68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r7, r3, r2
	ldr	r3, =0x9c28
	mov	r10, r3
	ldr	r3, =0x4890000
	mov	r6, #0
	str	r3, [r7, #0xc]
	str	r6, [r7, #0x1c]
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xff770000
	ldr	r3, [r0, #0x10]
	mov	r8, r2
	add	r3, r8
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r5, #0x40]
	bl	__Func_92054
	mov	r1, #0xaa
	add	r0, #0x55
	mov	r2, #0xdc
	lsl	r1, #18
	lsl	r2, #17
	strb	r6, [r0]
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r8
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_11ae0
	mov	r0, #0xdf
	bl	__Func_f9080
.L4d0c:
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r5, #0x40]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	mov	r2, #0x80
	ldr	r3, [r7, #0xc]
	lsl	r2, #19
	cmp	r3, r2
	ble	.L4d78
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L4d70
	ldr	r3, =0xccb
	cmp	r10, r3
	ble	.L4d70
	ldr	r2, =0xfffffaa0
	add	r10, r2
.L4d70:
	mov	r0, #1
	bl	__Func_30f8
	b	.L4d0c
.L4d78:
	mov	r3, #0x80
	lsl	r3, #19
	str	r3, [r7, #0xc]
	bl	__Func_fe9c
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, #0xdc
	lsl	r3, #17
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x1e
	str	r3, [r5, #0x40]
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0x92
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #0
	str	r6, [r0, #0x44]
	mov	r1, #6
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #7
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xb8
	mov	r2, #0x92
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_92128
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	mov	r1, #6
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, #0xdf
	bl	__Func_f9080
	b	.L4e86
.L4e6a:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L4e80
	ldr	r3, =0xcccc
	cmp	r10, r3
	bgt	.L4e80
	ldr	r2, =0x1999
	add	r10, r2
.L4e80:
	mov	r0, #1
	bl	__Func_30f8
.L4e86:
	ldr	r3, [r7, #0xc]
	add	r3, r10
	str	r3, [r7, #0xc]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	sub	r3, r2
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	ldr	r3, [r7, #0xc]
	ldr	r2, =0x488ffff
	cmp	r3, r2
	ble	.L4e6a
	mov	r3, #0x80
	lsl	r3, #19
	str	r3, [r7, #0xc]
	mov	r2, #4
	mov	r3, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	bl	__Func_10424
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x22
	mov	r2, #5
	mov	r0, #0x68
	bl	__Func_10704
	bl	__Func_fe9c
	mov	r0, #2
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c68

.thumb_func_start OvlFunc_4f44
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	mov	r1, #0xd2
	mov	r2, #0x96
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #18
	ldr	r5, [r3]
	bl	__Func_923e4
	mov	r0, #0x5d
	mov	r1, #1
	bl	__Func_96fb0
	mov	r1, #0xb
	mov	r0, #3
	bl	__Func_970f8
	ldr	r3, =0x71c
	add	r5, r3
	ldrb	r2, [r5]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r5]
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f44

.thumb_func_start OvlFunc_4f90
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	bl	__Func_78698
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	cmp	r5, r7
	beq	.L4fc2
	mov	r1, r6
	bl	__Func_78664
	mov	r6, r0
	cmp	r6, r7
	beq	.L4fc2
	mov	r0, r5
	bl	__Func_77394
	lsl	r3, r6, #1
	add	r3, #0xd8
	mov	r2, r8
	strh	r2, [r0, r3]
.L4fc2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f90

.thumb_func_start OvlFunc_4fcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r9, r0
	mov	r1, #4
	mov	r0, #0x23
	sub	sp, #4
	bl	__Func_48f4
	mov	r2, r8
	str	r2, [r0]
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r3, r0
	cmp	r3, #0
	bne	.L500a
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #4]
	b	.L5146
.L500a:
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8ba1c
	mov	r7, r0
	ldr	r4, [r7, #0x10]
	mov	r3, r4
	cmp	r4, #0
	bge	.L5026
	ldr	r0, =0xfffff
	add	r3, r4, r0
.L5026:
	ldr	r1, [r7, #8]
	asr	r3, #20
	lsl	r2, r3, #7
	mov	r3, r1
	cmp	r1, #0
	bge	.L5036
	ldr	r0, =0xfffff
	add	r3, r1, r0
.L5036:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r2, =ewram_10000
	lsl	r3, #2
	mov	r0, r8
	add	r2, r3
	ldr	r3, [r0]
	mov	r10, r2
	cmp	r3, #0
	beq	.L50b0
	ldr	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L50b0
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r0, #0x1a
	mov	r3, r4
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L50b6
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e38
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L50aa
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #6
	sub	r1, r3
	mov	r0, r6
	bl	__Func_ba30
	mov	r2, r6
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldrb	r2, [r6, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L50aa:
	mov	r3, r8
	str	r5, [r3, #0x14]
	b	.L50b6
.L50b0:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x14]
.L50b6:
	mov	r2, r10
	ldrb	r3, [r2, #2]
	cmp	r3, r9
	bne	.L5140
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	beq	.L5140
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5146
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e20
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	cmp	r6, #0
	beq	.L5112
	mov	r0, r6
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, .L5118	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L5112:
	mov	r2, r8
	str	r5, [r2, #0x18]
	b	.L5146

	.align	2, 0
.L5118:
	.word	0
	.pool

.L5140:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x18]
.L5146:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4fcc

.thumb_func_start OvlFunc_5158
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L51a4
	ldr	r1, =.L5e08
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r7, #0
	mov	r2, r5
	strb	r7, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #1
	mov	r3, #2
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L51a4
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	mov	r3, r6
	add	r3, #0x26
	strb	r7, [r3]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
.L51a4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5158

.thumb_func_start OvlFunc_51b0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L51cc
	mov	r0, #0
	b	.L51ea
.L51cc:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
	mov	r0, #1
.L51ea:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_51b0

.thumb_func_start OvlFunc_51f0
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0x10
	ble	.L5208
	mov	r0, #0
	b	.L5214
.L5208:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L5214:
	pop	{r1}
	bx	r1
.func_end OvlFunc_51f0

.thumb_func_start OvlFunc_5218
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0x10
	ble	.L5230
	mov	r0, #0
	b	.L523e
.L5230:
	mov	r2, #0x80
	lsl	r3, #11
	lsl	r2, #9
	add	r3, r2
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L523e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_5218

.thumb_func_start OvlFunc_5244
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	ldr	r2, [r6, #0x68]
	str	r3, [r6, #0x34]
	ldr	r3, [r2, #8]
	mov	r11, r3
	mov	r3, #0x80
	ldr	r2, [r2, #0x10]
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	ldr	r3, [r6, #8]
	mov	r9, r2
	mov	r2, r11
	sub	r0, r2, r3
	sub	sp, #4
	cmp	r0, #0
	bge	.L5284
	ldr	r3, =0xffff
	add	r0, r3
.L5284:
	ldr	r3, [r6, #0x10]
	asr	r0, #16
	mov	r2, r9
	mov	r10, r0
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L5296
	ldr	r3, =0xffff
	add	r0, r3
.L5296:
	asr	r0, #16
	mov	r8, r0
	mov	r2, r10
	mov	r0, r10
	mul	r0, r2
	mov	r2, r8
	mov	r3, r8
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	ldr	r3, [r6, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r10, r2
	mov	r2, r9
	sub	r2, r3
	mov	r3, #0x80
	lsl	r7, r0, #16
	lsl	r3, #15
	mov	r8, r2
	cmp	r7, r3
	bge	.L52ea
	ldr	r4, =Func_888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	mov	r0, r8
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	__Func_45d4
	mov	r7, r0
.L52ea:
	mov	r1, r7
	cmp	r7, #0
	bge	.L52f2
	add	r1, r7, #7
.L52f2:
	ldr	r3, [r6, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.L52fc
	mov	r5, r3
.L52fc:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r7, r2
	bge	.L530e
	mov	r3, r11
	mov	r2, r9
	str	r3, [r6, #8]
	str	r2, [r6, #0x10]
	b	.L534a
.L530e:
	cmp	r7, r5
	ble	.L533e
	ldr	r3, =Func_8ac
	mov	r1, r10
	mov	r9, r3
	mov	r0, r7
	bl	_call_via_r9
	ldr	r3, =Func_888
	mov	r1, r5
	.call_via r3
	mov	r1, r8
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r9
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r8, r0
.L533e:
	ldr	r3, [r6, #8]
	add	r3, r10
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r3, r8
	str	r3, [r6, #0x10]
.L534a:
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r0, #1
	ldr	r1, [r6, #0x50]
	lsr	r2, #1
	and	r2, r0
	ldr	r4, [r1, #0x28]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r1, #0x25
	strb	r3, [r4, #5]
	strb	r0, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_5244

.thumb_func_start OvlFunc_5388
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r2, r3]
	mov	r0, #0x1a
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L53ec
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	str	r7, [r5, #0x68]
	cmp	r6, #0
	beq	.L53ec
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	ldr	r3, .L5410	@ 0
	mov	r2, r6
	add	r2, #0x26
	strb	r3, [r2]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L53ec:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5446
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	b	.L5420

	.align	2, 0
.L5410:
	.word	0
	.pool

.L5420:
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L5446
	mov	r0, r6
	mov	r1, #1
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.L5446:
	mov	r0, #0x82
	bl	__Func_f9080
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5388

.thumb_func_start OvlFunc_5458
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	ldr	r2, [r2]
	sub	r3, #0x20
	mov	r8, r2
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	mov	r1, r8
	ldr	r7, [r2, r3]
	ldr	r3, [r1]
	sub	sp, #4
	cmp	r3, #2
	bhi	.L5550
	bl	__Func_916b0
	mov	r2, r8
	ldr	r6, [r2, #0x14]
	cmp	r6, #0
	bne	.L54f8
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L54f4
	ldr	r3, [r7, #0x14]
	ldr	r4, [r5, #0x50]
	str	r3, [r5, #0x14]
	ldr	r1, =.L5e38
	str	r4, [sp]
	bl	__Func_c2d8
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	ldr	r4, [sp]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r4, #0
	beq	.L54e6
	mov	r3, r4
	add	r3, #0x26
	strb	r6, [r3]
	mov	r2, #0xd
	ldrb	r3, [r4, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r4, #9]
.L54e6:
	mov	r3, r5
	add	r3, #0x54
	mov	r1, r8
	strb	r6, [r3]
	str	r5, [r1, #0x14]
	mov	r6, r5
	b	.L54f8
.L54f4:
	mov	r2, r8
	ldr	r6, [r2, #0x14]
.L54f8:
	mov	r3, r8
	ldr	r5, [r3]
	cmp	r5, #2
	bgt	.L552a
	mov	r7, r6
	mov	r0, #1
	mov	r1, #5
	add	r7, #0x54
	mov	r9, r0
	mov	r10, r1
.L550c:
	bl	OvlFunc_5388
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r2, r9
	mov	r3, r10
	sub	r1, r3, r5
	strb	r2, [r7]
	mov	r0, r6
	add	r5, #1
	bl	__Func_c300
	cmp	r5, #2
	ble	.L550c
.L552a:
	mov	r0, r8
	mov	r3, #3
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r0, =0x161
	bl	__Func_79358
	bl	__Func_91750
.L5550:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5458

.thumb_func_start OvlFunc_5578
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1edc
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L55ae
	mov	r7, #0
	str	r7, [r6]
	ldr	r0, =0x161
	bl	__Func_79374
	ldr	r5, [r6, #0x14]
	cmp	r5, #0
	beq	.L55ae
	mov	r3, r5
	add	r3, #0x64
	strh	r7, [r3]
	ldr	r1, =.L5e2c
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	str	r7, [r6, #0x14]
.L55ae:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5578

.thumb_func_start OvlFunc_55c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r3, [r3]
	sub	sp, #0x1c
	ldr	r2, [r2]
	mov	r0, #0xfa
	str	r3, [sp, #0xc]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r1, r3]
	mov	r8, r2
	mov	r2, r7
	add	r2, #0x55
	str	r2, [sp]
	ldrb	r3, [r2]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L5e44
	and	r3, r2
	lsl	r3, #1
	ldrh	r6, [r1, r3]
	ldrsh	r3, [r1, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L5616
	b	.L58e6
.L5616:
	mov	r2, #0x10
	ldr	r4, [r7, #8]
	ldr	r1, =0xfff00000
	add	r2, sp
	mov	r11, r2
	mov	r2, #0x80
	and	r4, r1
	lsl	r2, #12
	add	r5, r4, r2
	mov	r3, r11
	str	r5, [r3]
	ldr	r3, [r7, #0x14]
	mov	r0, r11
	str	r3, [r0, #4]
	ldr	r0, [r7, #0x10]
	and	r0, r1
	add	r2, r0, r2
	mov	r1, r11
	str	r2, [r1, #8]
	cmp	r2, #0
	bge	.L5644
	ldr	r3, =0x17ffff
	add	r2, r0, r3
.L5644:
	asr	r3, r2, #20
	lsl	r2, r3, #7
	mov	r3, r5
	cmp	r3, #0
	bge	.L5652
	ldr	r0, =0x17ffff
	add	r3, r4, r0
.L5652:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =ewram_10000
	lsl	r3, #2
	mov	r0, #0x80
	add	r5, r3, r1
	mov	r2, r11
	lsl	r0, #14
	mov	r1, r6
	bl	__Func_447c
	mov	r2, r11
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bge	.L5674
	ldr	r0, =0xfffff
	add	r3, r0
.L5674:
	asr	r3, #20
	mov	r1, r11
	lsl	r2, r3, #7
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L5684
	ldr	r0, =0xfffff
	add	r3, r0
.L5684:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r1, r3, r1
	str	r1, [sp, #8]
	mov	r2, r8
	ldrb	r3, [r5, #2]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	beq	.L56aa
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, #2]
	cmp	r3, r1
	bne	.L56aa
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L56aa
	b	.L58e6
.L56aa:
	bl	__Func_916b0
	mov	r0, r7
	add	r1, sp, #0x10
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	beq	.L56be
	b	.L58e6
.L56be:
	mov	r1, r8
	ldr	r5, [r1, #0x18]
	cmp	r5, #0
	beq	.L56e4
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
	ldr	r1, =.L5e2c
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, r10
	mov	r0, r8
	str	r3, [r0, #0x18]
.L56e4:
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L57c4
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L57c4
	ldr	r6, [r0, #0x14]
	mov	r0, #0x1a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5764
	ldr	r1, [r5, #0x50]
	ldr	r3, [r6, #0x14]
	mov	r9, r1
	str	r3, [r5, #0x14]
	ldr	r1, =.L5e20
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r0, r10
	add	r3, #0xf
	mov	r2, r5
	strh	r0, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r2, r11
	mov	r0, r11
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r5
	bl	__Func_d14c
	mov	r1, r9
	cmp	r1, #0
	beq	.L5760
	mov	r0, r9
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r9
	ldr	r3, .L5784	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L5760:
	mov	r2, r8
	str	r5, [r2, #0x18]
.L5764:
	mov	r0, r8
	ldr	r3, [r0]
	sub	r5, r3, #1
	str	r5, [r0]
	cmp	r5, #0
	bne	.L57b4
	ldr	r0, [r0, #0x14]
	bl	__Func_c0f4
	mov	r1, r8
	str	r5, [r1, #0x14]
	ldr	r0, =0x161
	bl	__Func_79374
	b	.L57c4

	.align	2, 0
.L5784:
	.word	0
	.pool

.L57b4:
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	cmp	r0, #0
	beq	.L57c4
	mov	r1, #6
	sub	r1, r5
	bl	__Func_c300
.L57c4:
	mov	r1, #6
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #3
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, [sp]
	ldrb	r2, [r3]
	ldr	r0, [sp]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, r7
	bl	__Func_c528
	mov	r3, r11
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, #0xa
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	bl	__Func_92158
	mov	r1, #6
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #2
	bl	__Func_30f8
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	beq	.L583a
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c528
	b	.L5840
.L583a:
	mov	r0, #0xd7
	bl	__Func_f9080
.L5840:
	mov	r0, #1
	bl	__Func_30f8
	add	r1, sp, #4
	ldr	r2, [sp]
	ldrb	r1, [r1]
	strb	r1, [r2]
	ldr	r3, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r3, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L58ba
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L58ba
	mov	r1, #0x12
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r1, #0xf
	ldr	r6, =iwram_1c94
	mov	r5, #0
	mov	r10, r1
	b	.L5880
.L5878:
	mov	r0, #1
	bl	__Func_30f8
	add	r5, #1
.L5880:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.L5890
	mov	r0, r7
	bl	OvlFunc_5158
.L5890:
	cmp	r5, #0x1f
	ble	.L5878
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L5878
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, r8
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #8]
	ldr	r3, [r0, #0x10]
	mov	r1, #1
	str	r3, [r7, #0x10]
	mov	r0, r7
	bl	__Func_c528
.L58ba:
	mov	r1, r8
	mov	r3, #0
	str	r3, [r1, #8]
	bl	__Func_91750
	mov	r0, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0x80
	ldr	r4, =Func_888
	ldr	r0, [r3]
	lsl	r1, #14
	.call_via r4
	ldr	r1, [sp, #0xc]
	mov	r3, #0xda
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
.L58e6:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_55c0

.thumb_func_start OvlFunc_5900
	push	{r5, lr}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r5, [r2]
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L5926
	sub	r3, #1
	b	.L5938
.L5926:
	bl	OvlFunc_5158
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.L5938:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5900

.thumb_func_start OvlFunc_5948
	push	{r5, lr}
	mov	r0, #0x23
	mov	r1, #4
	bl	__Func_48f4
	cmp	r0, #0
	beq	.L5966
	ldr	r5, [r0]
	ldr	r0, [r5, #0x14]
	cmp	r0, #0
	beq	.L5966
	bl	__Func_c0f4
	mov	r3, #0
	str	r3, [r5, #0x14]
.L5966:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5948

	.section .data

.L5e08:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e08, (0x5e14-0x5e08)
.L5e14:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e14, (0x5e20-0x5e14)
.L5e20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e20, (0x5e2c-0x5e20)
.L5e2c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e2c, (0x5e38-0x5e2c)
.L5e38:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e38, (0x5e44-0x5e38)
.L5e44:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e44, (0x5e64-0x5e44)
