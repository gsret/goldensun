	.include "macros.inc"

.thumb_func_start OvlFunc_d20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.Ld38
	ldr	r0, =.L1f9c
	b	.Ld4e
.Ld38:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Ld42
	ldr	r0, =.L2014
	b	.Ld4e
.Ld42:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Ld4c
	ldr	r0, =.L2134
	b	.Ld4e
.Ld4c:
	ldr	r0, =.L1f6c
.Ld4e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d20

.thumb_func_start OvlFunc_d74
	mov	r0, #0
	bx	lr
.func_end OvlFunc_d74

.thumb_func_start OvlFunc_d78
	ldr	r0, =.L21dc
	bx	lr
.func_end OvlFunc_d78

.thumb_func_start OvlFunc_d80
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	beq	.Lda8
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Ld9e
	ldr	r0, =.L22c4
	b	.Ldaa
.Ld9e:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Lda8
	ldr	r0, =.L239c
	b	.Ldaa
.Lda8:
	ldr	r0, =.L2234
.Ldaa:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d80

.thumb_func_start OvlFunc_dcc
	push	{lr}
	sub	sp, #8
	mov	r3, #0xf
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_dcc

.thumb_func_start OvlFunc_de8
	push	{lr}
	sub	sp, #8
	mov	r3, #0xf
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_de8

.thumb_func_start OvlFunc_e04
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	beq	.Le22
	b	.Lf5a
.Le22:
	mov	r1, #0xb4
	mov	r2, #0xa6
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #9
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #8]
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0xd0
	ldr	r2, [r0, #0x10]
	lsl	r6, #14
	add	r2, r6
	mov	r1, #0
	mov	r3, #0xf1
	ldr	r0, [r5, #8]
	bl	OvlFunc_common0_18
	mov	r10, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r5, [r0, #8]
	lsl	r3, #13
	mov	r0, #9
	add	r5, r3
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	mov	r1, #0
	add	r2, r6
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r8, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r0, #0xd8
	bl	__Func_f9080
	mov	r7, #0
.Leb2:
	bl	__Func_4458
	lsl	r5, r0, #4
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xb8
	lsl	r2, #17
	lsl	r5, #16
	add	r5, r2
	bl	__Func_4458
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0x9c
	lsl	r3, #18
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r3, #0
	mov	r0, r5
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #9
	bl	__Func_92054
	ldr	r2, =0xffff8000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	add	r7, #1
	mov	r0, #1
	bl	__Func_9163c
	cmp	r7, #0x43
	bls	.Leb2
	mov	r3, #0x17
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x17
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xfff80000
	mov	r1, #2
	str	r3, [r0, #0xc]
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, r10
	bl	__Func_c0f4
	mov	r0, r8
	bl	__Func_c0f4
	mov	r0, #0x1e
	bl	__Func_9163c
.Lf5a:
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e04

.thumb_func_start OvlFunc_f78
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1b
	beq	.Lf96
	b	.L10a6
.Lf96:
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, =0xfff80000
	ldr	r5, [r0, #8]
	mov	r0, #0xa
	add	r5, r2
	bl	__Func_92054
	mov	r6, #0xd0
	ldr	r2, [r0, #0x10]
	lsl	r6, #14
	add	r2, r6
	mov	r1, #0
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r10, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r5, [r0, #8]
	lsl	r3, #12
	mov	r0, #0xa
	add	r5, r3
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	mov	r1, #0
	add	r2, r6
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r8, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r0, #0xd8
	bl	__Func_f9080
	mov	r7, #0
.L1000:
	bl	__Func_4458
	lsl	r5, r0, #4
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xd8
	lsl	r2, #17
	lsl	r5, #16
	add	r5, r2
	bl	__Func_4458
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0xa4
	lsl	r3, #18
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r3, #0
	mov	r0, r5
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, =0xffff8000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	add	r7, #1
	mov	r0, #1
	bl	__Func_9163c
	cmp	r7, #0x43
	bls	.L1000
	mov	r3, #0x1b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x27
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0x1f
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, =0xfff80000
	mov	r1, #2
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, r10
	bl	__Func_c0f4
	mov	r0, r8
	bl	__Func_c0f4
	mov	r0, #0x1e
	bl	__Func_9163c
.L10a6:
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f78

.thumb_func_start OvlFunc_10c8
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3a8
	bl	__Func_91750
	bl	OvlFunc_f78
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c8

.thumb_func_start OvlFunc_10e0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r1, [r7]
	ldr	r3, [r5, #8]
	ldr	r2, =0xfff00000
	mov	r8, r1
	mov	r1, #0x80
	and	r3, r2
	lsl	r1, #12
	mov	r6, sp
	add	r3, r1
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r2, #0xa0
	lsl	r2, #14
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	cmp	r0, #0
	bne	.L118e
	bl	__Func_916b0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r1, r8
	strb	r1, [r7]
	bl	__Func_91750
	mov	r0, #1
	b	.L1190
.L118e:
	mov	r0, #0
.L1190:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_10e0

.thumb_func_start OvlFunc_11a0
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1252
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc6
	lsl	r1, #2
	mov	r2, #0xf8
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0xc6
	mov	r2, #0x8c
	str	r3, [r0, #0x28]
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_91750
.L1252:
	pop	{r0}
	bx	r0
.func_end OvlFunc_11a0

.thumb_func_start OvlFunc_1258
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12f0
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12f0
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r0, =0x302
	bl	__Func_79358
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xbe
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xbe
	mov	r2, #0x9c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc6
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =OvlFunc_cf8
	str	r3, [r0, #0x6c]
	bl	__Func_91750
.L12f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1258

	.section .data

.L1f6c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f6c, (0x1f9c-0x1f6c)
.L1f9c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f9c, (0x2014-0x1f9c)
.L2014:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2014, (0x2134-0x2014)
.L2134:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2134, (0x21dc-0x2134)
.L21dc:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x21dc, (0x2234-0x21dc)
.L2234:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2234, (0x22c4-0x2234)
.L22c4:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x22c4, (0x239c-0x22c4)
.L239c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x239c, (0x2414-0x239c)
