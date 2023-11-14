	.include "macros.inc"

.thumb_func_start OvlFunc_9dc
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.L9f4
	ldr	r0, =.L62a4
	b	.La0a
.L9f4:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.L9fe
	ldr	r0, =.L64b4
	b	.La0a
.L9fe:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.La08
	ldr	r0, =.L6754
	b	.La0a
.La08:
	ldr	r0, =.L6814
.La0a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_9dc

.thumb_func_start OvlFunc_a30
	mov	r0, #0
	bx	lr
.func_end OvlFunc_a30

.thumb_func_start OvlFunc_a34
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.La4c
	ldr	r0, =.L6910
	b	.La5e
.La4c:
	ldr	r3, =0xa2
	cmp	r2, r3
	beq	.La58
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.La5c
.La58:
	ldr	r0, =.L697c
	b	.La5e
.La5c:
	ldr	r0, =.L68a4
.La5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a34

.thumb_func_start OvlFunc_a80
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.La98
	ldr	r0, =.L69d0
	b	.Lac2
.La98:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Laa2
	ldr	r0, =.L6e08
	b	.Lac2
.Laa2:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Laac
	ldr	r0, =.L6c28
	b	.Lac2
.Laac:
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lab6
	ldr	r0, =.L6ac0
	b	.Lac2
.Lab6:
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.Lac0
	ldr	r0, =.L6e98
	b	.Lac2
.Lac0:
	ldr	r0, =.L69b8
.Lac2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a80

.thumb_func_start OvlFunc_af8
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lb10
	ldr	r0, =.L6ff4
	b	.Lb26
.Lb10:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lb1a
	ldr	r0, =.L7258
	b	.Lb26
.Lb1a:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lb24
	ldr	r0, =.L7528
	b	.Lb26
.Lb24:
	ldr	r0, =.L763c
.Lb26:
	pop	{r1}
	bx	r1
.func_end OvlFunc_af8

.thumb_func_start OvlFunc_b4c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb96
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
.Lb96:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b4c

.thumb_func_start OvlFunc_ba0
	push	{lr}
	bl	OvlFunc_c4
	pop	{r0}
	bx	r0
.func_end OvlFunc_ba0

.thumb_func_start OvlFunc_bac
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xbc
	mov	r1, #0xf8
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_92128
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0xd7
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	OvlFunc_b4c
	ldr	r0, =0x943
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_bac

.thumb_func_start OvlFunc_bec
	push	{r5, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x16
	ble	.Lc68
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc62
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lc62:
	ldr	r0, =0x943
	bl	__Func_79358
.Lc68:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_bec

.thumb_func_start OvlFunc_c78
	push	{lr}
	mov	r1, #0xf8
	mov	r2, #0xbc
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	bl	OvlFunc_b4c
	pop	{r0}
	bx	r0
.func_end OvlFunc_c78

.thumb_func_start OvlFunc_c90
	push	{r5, r6, lr}
	ldr	r3, =.L7714
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #0
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r1, r5
	sub	r1, #0x30
	sub	r5, #0x2e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c90

.thumb_func_start OvlFunc_ce0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__Func_78698
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Ld40
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	ldr	r0, =0x941
	mov	r5, r7
	sub	r5, #0x28
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld10
	cmp	r5, #4
	beq	.Ld40
.Ld10:
	mov	r0, r5
	bl	OvlFunc_c90
	mov	r0, #0x9d
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r3, #0xca
	lsl	r3, #2
	add	r0, r7, r3
	bl	__Func_79358
.Ld40:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ce0

.thumb_func_start OvlFunc_d54
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =.L773c
	lsl	r3, r0, #3
	ldr	r7, [r2, r3]
	add	r3, #4
	ldr	r6, [r2, r3]
	sub	sp, #8
	mov	r8, r0
	mov	r1, #0x4d
	mov	r0, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	add	r3, r7, #1
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r5, r6
	mov	r1, r6
	sub	r1, #0x2d
	sub	r5, #0x2c
	mov	r0, r7
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, r8
	cmp	r1, #1
	bne	.Ldba
	mov	r3, r6
	sub	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	bl	__Func_10704
.Ldba:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d54

.thumb_func_start OvlFunc_dcc
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__Func_78698
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Le1c
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_d54
	mov	r0, #0x9d
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_12330
	ldr	r3, =0x32d
	add	r5, r3
	mov	r0, r5
	bl	__Func_79358
.Le1c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_dcc

.thumb_func_start OvlFunc_e30
	push	{r5, r6, lr}
	ldr	r3, =.L7754
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #0x37
	mov	r1, #0x79
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0x79
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r1, r5
	sub	r1, #0x3f
	sub	r5, #0x3e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e30

.thumb_func_start OvlFunc_e80
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__Func_78698
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Led0
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_e30
	mov	r0, #0x9d
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r3, #0xcc
	lsl	r3, #2
	add	r0, r5, r3
	bl	__Func_79358
.Led0:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e80

.thumb_func_start OvlFunc_ee0
	push	{r5, r6, lr}
	ldr	r3, =.L7764
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #1
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r1, r5
	sub	r1, #0x3f
	sub	r5, #0x3e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ee0

.thumb_func_start OvlFunc_f30
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__Func_78698
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Lf80
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_ee0
	mov	r0, #0x9d
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_12330
	ldr	r3, =0x332
	add	r5, r3
	mov	r0, r5
	bl	__Func_79358
.Lf80:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f30

.thumb_func_start OvlFunc_f94
	push	{lr}
	mov	r0, #0xea
	bl	__Func_78698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lfac
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
.Lfac:
	pop	{r0}
	bx	r0
.func_end OvlFunc_f94

.thumb_func_start OvlFunc_fb4
	push	{lr}
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	pop	{r0}
	bx	r0
.func_end OvlFunc_fb4

.thumb_func_start OvlFunc_fc8
	push	{lr}
	mov	r0, #8
	mov	r1, #8
	bl	OvlFunc_1038
	cmp	r0, #0
	beq	.Lfdc
	ldr	r0, =0xf2a
	bl	__Func_79358
.Lfdc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_fc8

.thumb_func_start OvlFunc_fe4
	push	{lr}
	mov	r0, #9
	mov	r1, #7
	bl	OvlFunc_1038
	cmp	r0, #0
	beq	.Lff8
	ldr	r0, =0xf2b
	bl	__Func_79358
.Lff8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_fe4

.thumb_func_start OvlFunc_1000
	push	{lr}
	mov	r0, #0xa
	mov	r1, #6
	bl	OvlFunc_1038
	cmp	r0, #0
	beq	.L1014
	ldr	r0, =0xf2c
	bl	__Func_79358
.L1014:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1000

.thumb_func_start OvlFunc_101c
	push	{lr}
	mov	r0, #0xb
	mov	r1, #5
	bl	OvlFunc_1038
	cmp	r0, #0
	beq	.L1030
	ldr	r0, =0xf2d
	bl	__Func_79358
.L1030:
	pop	{r0}
	bx	r0
.func_end OvlFunc_101c

.thumb_func_start OvlFunc_1038
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r5, r1
	mov	r6, r0
	mov	r8, r3
	bl	__Func_916b0
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_8e078
	mov	r1, #0
	mov	r7, r0
	mov	r0, r5
	bl	__Func_91a58
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1074
	mov	r0, r6
	mov	r1, #2
	bl	__Func_924d4
	mov	r3, #1
	mov	r8, r3
	b	.L1082
.L1074:
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r0, r6
	mov	r1, #5
	bl	__Func_924d4
.L1082:
	mov	r0, r7
	bl	__Func_c0f4
	bl	__Func_91750
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1038

.thumb_func_start OvlFunc_1098
	bx	lr
.func_end OvlFunc_1098

.thumb_func_start OvlFunc_109c
	bx	lr
.func_end OvlFunc_109c

.thumb_func_start OvlFunc_10a0
	bx	lr
.func_end OvlFunc_10a0

.thumb_func_start OvlFunc_10a4
	bx	lr
.func_end OvlFunc_10a4

.thumb_func_start OvlFunc_10a8
	push	{lr}
	mov	r1, #0x84
	mov	r2, #0xc6
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xea
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xea
	bl	__Func_91a58
	ldr	r0, =0xf2e
	bl	__Func_79358
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_10a8

.thumb_func_start OvlFunc_1108
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L111a
	ldr	r2, =0xfffff
	add	r3, r2
.L111a:
	ldr	r0, [r0, #8]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L1126
	ldr	r3, =0xfffff
	add	r0, r3
.L1126:
	sub	r3, r2, #5
	asr	r0, #20
	cmp	r3, #2
	bhi	.L1136
	cmp	r0, #0xa
	bgt	.L1136
	mov	r0, #1
	b	.L1146
.L1136:
	mov	r3, r0
	sub	r3, #8
	cmp	r3, #1
	bhi	.L1144
	mov	r0, #1
	cmp	r2, #0x16
	bgt	.L1146
.L1144:
	mov	r0, #0
.L1146:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1108

.thumb_func_start OvlFunc_1150
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r3, =iwram_1e40
	ldr	r2, [r2, #0x4c]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r2, #1
	and	r3, r2
	mov	r10, r0
	cmp	r3, #0
	beq	.L1188
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L1190
.L1188:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L1190:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L11b8
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L11b8
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L11c8
.L11b8:
	mov	r3, r7
	add	r3, #0x5b
	mov	r2, #1
	strb	r2, [r3]
	mov	r3, r10
	add	r3, #0x5b
	strb	r2, [r3]
	b	.L12b8
.L11c8:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12b8
	mov	r5, r7
	mov	r3, r10
	add	r5, #0x5b
	add	r3, #0x5b
	strb	r0, [r5]
	strb	r0, [r3]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L120a
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L120a
	ldr	r0, [r7, #8]
	bl	OvlFunc_5af0
	mov	r3, r1
	mov	r2, r0
	ldr	r0, =0x41610000
	ldr	r1, =0
	bl	OvlFunc_5a78
	bl	OvlFunc_5b6c
	str	r0, [r6, #0x20]
.L120a:
	bl	OvlFunc_1108
	cmp	r0, #0
	bne	.L12b8
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r5, r3, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L1272
	mov	r0, #9
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L123e
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L123e
	mov	r2, #0xbf
	lsl	r2, #1
	ldr	r3, =0x2092
	add	r2, r8
	b	.L12b6
.L123e:
	mov	r0, #0xa
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L1262
	ldr	r3, =ewram_240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1272
	mov	r2, #0xbf
	lsl	r2, #1
	ldr	r3, =0x2092
	add	r2, r8
	b	.L12b6
.L1262:
	ldr	r3, =ewram_240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L12a2
.L1272:
	mov	r0, #9
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L128a
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L128a:
	mov	r0, #0xa
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L12a2
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L12a2:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12b8
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5b
.L12b6:
	strh	r3, [r2]
.L12b8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1150

.thumb_func_start OvlFunc_12e0
	push	{lr}
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_920a0
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #0xa
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_12e0

.thumb_func_start OvlFunc_1324
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L133e
	ldr	r1, =0xfffff
	add	r3, r1
.L133e:
	asr	r2, r3, #20
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L134a
	ldr	r1, =0xfffff
	add	r3, r1
.L134a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1356
	ldr	r1, =0xfffff
	add	r0, r1
.L1356:
	asr	r0, #20
	cmp	r2, #0x34
	bne	.L136c
	cmp	r0, #0x39
	bne	.L136c
	cmp	r3, #0x22
	ble	.L136c
	cmp	r3, #0x28
	bgt	.L136c
	mov	r0, #1
	b	.L1380
.L136c:
	cmp	r2, #0x39
	bne	.L137e
	cmp	r0, #0x34
	bne	.L137e
	cmp	r3, #0x22
	ble	.L137e
	mov	r0, #1
	cmp	r3, #0x28
	ble	.L1380
.L137e:
	mov	r0, #0
.L1380:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1324

.thumb_func_start OvlFunc_138c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r2, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	ldr	r2, [r2, #0x4c]
	lsl	r1, #1
	add	r6, r3, r1
	mov	r8, r2
	mov	r7, r0
	bl	__Func_93554
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L13be
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L13c6
.L13be:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L13c6:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L13ee
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L13ee
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L13f8
.L13ee:
	mov	r2, r7
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	b	.L149e
.L13f8:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L149e
	mov	r5, r7
	add	r5, #0x5b
	strb	r0, [r5]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1430
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L1430
	ldr	r2, [r7, #8]
	mov	r3, #0xd0
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x20]
	ldr	r2, [r7, #0x10]
	mov	r3, #0x90
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x24]
.L1430:
	bl	OvlFunc_1324
	cmp	r0, #0
	bne	.L149e
	mov	r0, #0x11
	bl	OvlFunc_1980
	mov	r0, #0x11
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L1460
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1470
	sub	r2, #0xce
	ldr	r3, =0x2092
	add	r2, r8
	b	.L149c
.L1460:
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1488
.L1470:
	mov	r0, #0x11
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L1488
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L1488:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L149e
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5c
.L149c:
	strh	r3, [r2]
.L149e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_138c

.thumb_func_start OvlFunc_14bc
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_14bc

.thumb_func_start OvlFunc_14cc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L14de
	ldr	r2, =0xfffff
	add	r3, r2
.L14de:
	ldr	r0, [r0, #8]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L14ea
	ldr	r3, =0xfffff
	add	r0, r3
.L14ea:
	asr	r0, #20
	mov	r3, r0
	sub	r3, #0x29
	cmp	r3, #3
	bhi	.L14fc
	cmp	r2, #0x19
	ble	.L14fc
	cmp	r2, #0x1c
	ble	.L1508
.L14fc:
	cmp	r0, #0x29
	bne	.L150c
	cmp	r2, #0x25
	ble	.L150c
	cmp	r2, #0x29
	bgt	.L150c
.L1508:
	mov	r0, #1
	b	.L1520
.L150c:
	mov	r3, r0
	sub	r3, #0x36
	cmp	r3, #2
	bhi	.L151e
	cmp	r2, #0x1e
	ble	.L151e
	mov	r0, #1
	cmp	r2, #0x28
	ble	.L1520
.L151e:
	mov	r0, #0
.L1520:
	pop	{r1}
	bx	r1
.func_end OvlFunc_14cc

.thumb_func_start OvlFunc_1528
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r2, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r3, =iwram_1e40
	ldr	r2, [r2, #0x4c]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r2, #1
	and	r3, r2
	mov	r7, r0
	cmp	r3, #0
	beq	.L1556
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L155e
.L1556:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L155e:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1586
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1586
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1590
.L1586:
	mov	r2, r7
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	b	.L1630
.L1590:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1630
	mov	r5, r7
	add	r5, #0x5b
	strb	r0, [r5]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L15c8
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L15c8
	ldr	r2, [r7, #8]
	mov	r3, #0xbc
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x20]
	ldr	r2, [r7, #0x10]
	mov	r3, #0xf8
	lsl	r3, #17
	sub	r3, r2
	str	r3, [r6, #0x24]
.L15c8:
	bl	OvlFunc_14cc
	cmp	r0, #0
	bne	.L1630
	mov	r0, #0x12
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L15f2
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1602
	sub	r2, #0xce
	ldr	r3, =0x2092
	add	r2, r8
	b	.L162e
.L15f2:
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L161a
.L1602:
	mov	r0, #0x12
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L161a
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L161a:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1630
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5d
.L162e:
	strh	r3, [r2]
.L1630:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1528

.thumb_func_start OvlFunc_1650
	push	{lr}
	mov	r0, #0x12
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1650

.thumb_func_start OvlFunc_1660
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1672
	ldr	r2, =0xfffff
	add	r3, r2
.L1672:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L167e
	ldr	r2, =0xfffff
	add	r0, r2
.L167e:
	asr	r0, #20
	cmp	r0, #0x2d
	ble	.L1692
	cmp	r3, #0xe
	ble	.L1692
	cmp	r0, #0x40
	bgt	.L1692
	mov	r0, #0
	cmp	r3, #0x10
	ble	.L1694
.L1692:
	mov	r0, #1
.L1694:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1660

.thumb_func_start OvlFunc_169c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0x85
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16f4
	bl	OvlFunc_1660
	cmp	r0, #0
	bne	.L16f4
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L16de
	mov	r0, #0x11
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L16de
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L16de:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16f4
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5e
	strh	r3, [r2]
.L16f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_169c

.thumb_func_start OvlFunc_1708
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1708

.thumb_func_start OvlFunc_1718
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L1748
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1748
	ldr	r0, =OvlFunc_1718
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5f
	strh	r3, [r2]
.L1748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1718

.thumb_func_start OvlFunc_175c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x225
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L17a2
	mov	r0, #0xd
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L17a2
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L17a2
	ldr	r0, =0x225
	bl	__Func_79358
	ldr	r0,=OvlFunc_175c
	bl	__Func_4278
	ldr	r0, =OvlFunc_17bc
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L17a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_175c

.thumb_func_start OvlFunc_17bc
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x225
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1802
	mov	r0, #0x15
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L1802
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1802
	ldr	r0, =0x225
	bl	__Func_79358
	ldr	r0, =OvlFunc_17bc
	bl	__Func_4278
	ldr	r0, =OvlFunc_175c
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L1802:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17bc

.thumb_func_start OvlFunc_181c
	push	{r5, r6, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.L1836
	ldr	r2, =0xfffff
	add	r3, r2
.L1836:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1842
	ldr	r3, =0xfffff
	add	r0, r3
.L1842:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L184e
	ldr	r3, =0xfffff
	add	r2, r3
.L184e:
	ldr	r0, [r1, #8]
	asr	r3, r2, #20
	cmp	r0, #0
	bge	.L185a
	ldr	r2, =0xfffff
	add	r0, r2
.L185a:
	sub	r3, r6, r3
	add	r3, #6
	asr	r0, #20
	cmp	r3, #0xc
	bhi	.L1874
	sub	r3, r4, #1
	cmp	r3, r0
	bge	.L1874
	add	r3, r4, #1
	cmp	r3, r0
	ble	.L1874
	mov	r0, #1
	b	.L1876
.L1874:
	mov	r0, #0
.L1876:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_181c

.thumb_func_start OvlFunc_1880
	push	{r5, r6, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.L189a
	ldr	r2, =0xfffff
	add	r3, r2
.L189a:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L18a6
	ldr	r3, =0xfffff
	add	r0, r3
.L18a6:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L18b2
	ldr	r3, =0xfffff
	add	r2, r3
.L18b2:
	ldr	r0, [r1, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L18be
	ldr	r3, =0xfffff
	add	r0, r3
.L18be:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r3, #6
	mov	r0, #0
	cmp	r3, #0xc
	bhi	.L18da
	sub	r3, r6, #2
	cmp	r3, r2
	bge	.L18d8
	add	r3, r6, #2
	mov	r0, #1
	cmp	r3, r2
	bgt	.L18da
.L18d8:
	mov	r0, #0
.L18da:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1880

.thumb_func_start OvlFunc_18e4
	push	{r5, lr}
	mov	r5, r0
	bl	OvlFunc_1980
	cmp	r0, #0
	bne	.L18f4
	mov	r0, #0
	b	.L1910
.L18f4:
	mov	r0, r5
	bl	OvlFunc_181c
	cmp	r0, #0
	beq	.L1902
	mov	r0, #1
	b	.L1910
.L1902:
	mov	r0, r5
	bl	OvlFunc_1880
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L1910:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_18e4

.thumb_func_start OvlFunc_1918
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, [r5, #0x10]
	mov	r3, r0
	cmp	r2, #0
	bge	.L1932
	ldr	r0, =0xfffff
	add	r2, r0
.L1932:
	ldr	r0, [r5, #8]
	asr	r1, r2, #20
	cmp	r0, #0
	bge	.L193e
	ldr	r2, =0xfffff
	add	r0, r2
.L193e:
	ldr	r2, [r3, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L194a
	ldr	r0, =0xfffff
	add	r2, r0
.L194a:
	ldr	r0, [r3, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L1956
	ldr	r3, =0xfffff
	add	r0, r3
.L1956:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r1, #1
	cmp	r3, #0
	bge	.L1962
	neg	r3, r3
.L1962:
	sub	r0, r1, r2
	cmp	r0, #0
	bge	.L196a
	neg	r0, r0
.L196a:
	add	r3, r0
	mov	r0, #1
	cmp	r3, #4
	ble	.L1974
	mov	r0, #0
.L1974:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1918

.thumb_func_start OvlFunc_1980
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_93554
	ldr	r3, [r5, #8]
	mov	r2, r0
	cmp	r3, #0
	bge	.L1998
	ldr	r0, =0xfffff
	add	r3, r0
.L1998:
	ldr	r0, [r5, #0x10]
	asr	r4, r3, #20
	cmp	r0, #0
	bge	.L19a4
	ldr	r1, =0xfffff
	add	r0, r1
.L19a4:
	ldr	r3, [r2, #8]
	asr	r1, r0, #20
	cmp	r3, #0
	bge	.L19b0
	ldr	r0, =0xfffff
	add	r3, r0
.L19b0:
	ldr	r0, [r2, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L19bc
	ldr	r2, =0xfffff
	add	r0, r2
.L19bc:
	sub	r3, r4, r3
	asr	r0, #20
	cmp	r3, #0
	bge	.L19c6
	neg	r3, r3
.L19c6:
	sub	r0, r1, r0
	cmp	r0, #0
	bge	.L19ce
	neg	r0, r0
.L19ce:
	cmp	r3, #7
	bgt	.L19d6
	cmp	r0, #5
	ble	.L19da
.L19d6:
	mov	r0, #0
	b	.L19dc
.L19da:
	mov	r0, #1
.L19dc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1980

.thumb_func_start OvlFunc_19e8
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x35b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a32
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1a06
	ldr	r2, =0xfffff
	add	r3, r2
.L1a06:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1a12
	ldr	r2, =0xfffff
	add	r0, r2
.L1a12:
	asr	r0, #20
	cmp	r3, #0x2b
	bne	.L1a32
	cmp	r0, #0x1c
	ble	.L1a32
	cmp	r0, #0x1f
	bgt	.L1a32
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x29
	strh	r2, [r3]
	bl	OvlFunc_f30
.L1a32:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e8

.thumb_func_start OvlFunc_1a44
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd6
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1aa2
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1a64
	ldr	r1, =0xfffff
	add	r3, r1
.L1a64:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L1a70
	ldr	r1, =0xfffff
	add	r3, r1
.L1a70:
	asr	r3, #20
	cmp	r2, #0x10
	bne	.L1aa2
	cmp	r3, #0x37
	ble	.L1aa2
	cmp	r3, #0x3a
	bgt	.L1aa2
	mov	r2, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r2, #8
	cmp	r0, r2
	beq	.L1a90
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bne	.L1aa2
.L1a90:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x28
	strh	r2, [r3]
	bl	OvlFunc_e80
.L1aa2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a44

.thumb_func_start OvlFunc_1ab0
	push	{r5, lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_9228c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9207c
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ab0

.thumb_func_start OvlFunc_1b24
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_916b0
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #1
	bl	__Func_937b8
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, r5
	mov	r2, #0
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, r5
	bl	__Func_920a0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9207c
	ldr	r6, =0x240d
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r6, #1
	bl	__Func_937b8
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	bl	__Func_91df4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b24

.thumb_func_start OvlFunc_1be4
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9280c
	ldr	r3, =.L5fa4
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.L1c22
	cmp	r2, #1
	bgt	.L1c10
	cmp	r2, #0
	beq	.L1c1a
	b	.L1c3a
.L1c10:
	cmp	r2, #2
	beq	.L1c2a
	cmp	r2, #3
	beq	.L1c32
	b	.L1c3a
.L1c1a:
	mov	r0, r5
	bl	OvlFunc_1c4c
	b	.L1c40
.L1c22:
	mov	r0, r5
	bl	OvlFunc_1ca4
	b	.L1c40
.L1c2a:
	mov	r0, r5
	bl	OvlFunc_1cf0
	b	.L1c40
.L1c32:
	mov	r0, r5
	bl	OvlFunc_1d60
	b	.L1c40
.L1c3a:
	mov	r0, r5
	bl	OvlFunc_1ca4
.L1c40:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1be4

.thumb_func_start OvlFunc_1c4c
	push	{r5, r6, lr}
	mov	r1, #1
	mov	r6, r0
	bl	__Func_925cc
	ldr	r5, =0x241e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r6
	lsl	r1, #1
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	add	r5, #2
	mov	r0, r6
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c4c

.thumb_func_start OvlFunc_1ca4
	push	{r5, r6, lr}
	ldr	r5, =0x2421
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r6
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	add	r5, #2
	mov	r0, r6
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ca4

.thumb_func_start OvlFunc_1cf0
	push	{r5, r6, lr}
	ldr	r6, =0x2424
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, r5
	ldr	r1, =0x101
	bl	__Func_937b8
	add	r0, r6, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r6, #2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	add	r6, #3
	mov	r0, r5
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1cf0

.thumb_func_start OvlFunc_1d60
	push	{r5, r6, lr}
	ldr	r6, =0x2428
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #4
	bl	__Func_92548
	add	r0, r6, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r6, #2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	add	r6, #3
	mov	r0, r5
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d60

.thumb_func_start OvlFunc_1dc4
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xf
	bl	__Func_937b8
	mov	r0, #0xf
	bl	OvlFunc_1be4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =ewram_240
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_91eb0
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x94c
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1dc4

.thumb_func_start OvlFunc_1e2c
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__Func_937b8
	mov	r0, #0xb
	bl	OvlFunc_1be4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =ewram_240
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_91eb0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x949
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e2c

.thumb_func_start OvlFunc_1e94
	push	{r5, lr}
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_9280c
	ldr	r5, =0x2438
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x41
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_925cc
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0xa8
	lsl	r1, #2
	mov	r2, #0x58
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	add	r5, #6
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0xa1
	mov	r1, #0x1f
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #3
	bl	__Func_91eb0
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x94a
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e94

.thumb_func_start OvlFunc_206c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0xac
	mov	r2, #0xb0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r2, #0xb0
	mov	r0, #0xd
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xb4
	mov	r2, #0xc0
	lsl	r2, #15
	mov	r0, #0xe
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	bl	__Func_91750
	bl	__Func_91dc8
	pop	{r0}
	bx	r0
.func_end OvlFunc_206c

.thumb_func_start OvlFunc_20cc
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0x10
	bl	__Func_937b8
	mov	r0, #0x10
	bl	OvlFunc_1be4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =ewram_240
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_91eb0
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x94b
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_20cc

.thumb_func_start OvlFunc_2134
	push	{r5, lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	bl	__Func_91df4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91750
	mov	r0, #0x89
	lsl	r0, #2
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2134

.thumb_func_start OvlFunc_21c4
	push	{r5, lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9207c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_9280c
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	bl	__Func_91df4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91750
	ldr	r0, =0x225
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21c4

.thumb_func_start OvlFunc_226c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r0, #2
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x22
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_226c

.thumb_func_start OvlFunc_22a0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #2
	mov	r1, #0x54
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22a0

.thumb_func_start OvlFunc_22d4
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x3e
	str	r3, [sp, #4]
	mov	r5, #0x1b
	mov	r0, #2
	mov	r1, #0x56
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x11
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22d4

.thumb_func_start OvlFunc_2308
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcb8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	beq	.L2374
	ldr	r0, =0x947
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2374
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_9163c
	mov	r5, #0x11
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x52
	mov	r0, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r0, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #1
	bl	__Func_9163c
	bl	OvlFunc_226c
	ldr	r0, =0x947
	bl	__Func_79358
.L2374:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2308

.thumb_func_start OvlFunc_238c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcb8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	beq	.L23f8
	ldr	r0, =0x948
	bl	__Func_79338
	cmp	r0, #0
	bne	.L23f8
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_9163c
	mov	r5, #3
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x37
	mov	r0, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r0, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #1
	bl	__Func_9163c
	bl	OvlFunc_22a0
	ldr	r0, =0x948
	bl	__Func_79358
.L23f8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_238c

.thumb_func_start OvlFunc_2410
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0x52
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #5
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #3
	mov	r0, #5
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x23
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x21
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2410

.thumb_func_start OvlFunc_2468
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0x52
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #8
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #3
	mov	r0, #8
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x23
	str	r3, [sp, #4]
	mov	r0, #0x12
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2468

.thumb_func_start OvlFunc_24c0
	push	{lr}
	ldr	r0, =0x944
	bl	__Func_79358
	ldr	r0, =0x217
	bl	__Func_79374
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_24c0

.thumb_func_start OvlFunc_24e4
	push	{lr}
	ldr	r0, =0x945
	bl	__Func_79358
	bl	OvlFunc_22d4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_24e4

.thumb_func_start OvlFunc_2504
	push	{lr}
	ldr	r0, =0x946
	bl	__Func_79358
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_79374
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_2504

.thumb_func_start OvlFunc_2528
	bx	lr
.func_end OvlFunc_2528

.thumb_func_start OvlFunc_252c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2542
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L2542:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2556
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L2556:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L256a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L256a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_9218c
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_9218c
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_252c

.thumb_func_start OvlFunc_25f8
	push	{lr}
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	sub	sp, #8
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r0, #0x10
	mov	r1, #0x4b
	mov	r2, #7
	bl	__Func_105d4
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
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
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_25f8

.thumb_func_start OvlFunc_269c
	push	{lr}
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x247c
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xec
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xb4
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0xb4
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_9218c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_9335c
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_269c

.thumb_func_start OvlFunc_2718
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xfc
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xe0
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_2718

.thumb_func_start OvlFunc_27b0
	push	{r5, lr}
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L27c0
	bl	.L302e
.L27c0:
	mov	r0, #0x9c
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r0, =0x942
	bl	__Func_79338
	cmp	r0, #0
	bne	.L27d8
	b	.L29b0
.L27d8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	bl	OvlFunc_252c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92560
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe8
	lsl	r1, #1
	mov	r2, #0xc0
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	mov	r0, #0xd
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_933d4
	ldr	r5, =0x247d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe5
	mov	r2, #0x88
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x9b
	bl	__Func_f9080
	add	r0, r5, #1
	mov	r1, #1
	bl	__Func_1776c
	mov	r2, #8
	neg	r2, r2
	mov	r1, #8
	mov	r0, #0xd
	bl	__Func_9228c
	bl	OvlFunc_25f8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	add	r5, #2
	bl	OvlFunc_2718
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	bl	OvlFunc_269c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__Func_9163c
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_91f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__Func_91eb0
	b	.L302a

	.pool_aligned

.L29b0:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r5, =0x2464
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x8c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92560
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	bl	OvlFunc_252c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe8
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x6e
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_f9080
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0x82
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x3d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r2, #0x98
	lsl	r2, #1
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_9218c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9335c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92848
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	b	.L2ddc

	.pool_aligned

.L2ddc:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xec
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x9b
	bl	__Func_f9080
	ldr	r0, =0x247e
	mov	r1, #1
	bl	__Func_1776c
	mov	r2, #8
	mov	r0, #0xd
	mov	r1, #8
	neg	r2, r2
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xd
	bl	__Func_9280c
	bl	OvlFunc_25f8
	mov	r0, #0x34
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	bl	OvlFunc_2718
	bl	OvlFunc_269c
	ldr	r0, =0x942
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__Func_9163c
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_91f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__Func_91eb0
.L302a:
	bl	__Func_91750
.L302e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_27b0

.thumb_func_start OvlFunc_3054
	push	{r5, lr}
	ldr	r0, =0x301
	sub	sp, #8
	bl	__Func_79358
	ldr	r0, =0x941
	bl	__Func_79358
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #7
	mov	r1, #0x4b
	mov	r0, #0x10
	bl	__Func_105d4
	mov	r0, #4
	bl	OvlFunc_c90
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #0xe4
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xdc
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf4
	mov	r2, #0xb8
	mov	r0, #3
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xec
	mov	r2, #0xb8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x82
	mov	r2, #0xe0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0xed
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r0, #0xf
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0xe5
	mov	r2, #0xf3
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #5
	mov	r0, #0xd
	bl	__Func_924d4
	bl	__Func_91dc8
	mov	r0, #0x78
	bl	__Func_9163c
	ldr	r5, =0x2481
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #1
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #1
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0xe8
	mov	r0, #0xc
	lsl	r1, #2
	bl	__Func_9218c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x41
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x64
	bl	__Func_9163c
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3388
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	b	.L3494

	.pool_aligned

.L3388:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
.L3494:
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
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0xe2
	bl	__Func_f9080
	mov	r0, #0xd
	mov	r1, #7
	bl	__Func_924d4
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #1
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #3
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #3
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #2
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #2
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #0xb
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r0, #0xf
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r1, #0x18
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x3c
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe8
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xdc
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xf4
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r5, =0x248e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #6
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #7
	mov	r0, #0xd
	bl	__Func_924d4
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_9280c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x46
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #5
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x46
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd0
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x4b
	bl	__Func_937b8
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r2, #0xd0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	b	.L39e0

	.pool_aligned

.L39e0:
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #3
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #1
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0x6e
	bl	__Func_937b8
	mov	r1, #0xe4
	mov	r2, #0xd4
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xe4
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3c88
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	b	.L3c9e

	.pool_aligned

.L3c88:
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L3c9e:
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_f9080
	ldr	r5, =0x24a6
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_9218c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0xdc
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x59
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x103
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93874
	mov	r1, #0xf8
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #0xe
	bl	__Func_9218c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x8c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xe
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x50
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_92848
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	mov	r0, #0xe
	b	.L4108

	.pool_aligned

.L4108:
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x5a
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x18
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_9259c
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x19
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1a
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0x1b
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1c
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x5a
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x1d
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1e
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1f
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x20
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x21
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x22
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x23
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, r5
	add	r0, #0x24
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x25
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L4360
	mov	r0, r5
	add	r0, #0x26
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L4360:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L43c4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L43c4:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L43f4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L43f4:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4424
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L4424:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x27
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x28
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92b08
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #0xf0
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__Func_91df4
	mov	r0, #1
	b	.L461c

	.pool_aligned

.L461c:
	bl	__Func_9163c
	mov	r0, #0xd2
	bl	__Func_9163c
	mov	r0, #4
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3054

.thumb_func_start OvlFunc_4638
	push	{lr}
	ldr	r3, =.L5fa4
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.L46d8
	ldr	r2, =.L464c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L464c:
	.word	.L466c
	.word	.L4670
	.word	.L4674
	.word	.L4678
	.word	.L467c
	.word	.L4694
	.word	.L4680
	.word	.L4684
.L466c:
	ldr	r0, =0x2414
	b	.L4686
.L4670:
	ldr	r0, =0x2415
	b	.L4686
.L4674:
	ldr	r0, =0x2416
	b	.L4686
.L4678:
	ldr	r0, =0x2417
	b	.L4686
.L467c:
	ldr	r0, =0x2418
	b	.L4686
.L4680:
	ldr	r0, =0x241a
	b	.L4686
.L4684:
	ldr	r0, =0x241b
.L4686:
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	b	.L46d8
.L4694:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	ldr	r0, =0x2419
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
.L46d8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4638

.thumb_func_start OvlFunc_4704
	push	{r5, lr}
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	ldr	r5, =0x2411
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	add	r5, #1
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4704

.thumb_func_start OvlFunc_4794
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L47b8
	ldr	r0, =0x2566
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L4902
.L47b8:
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	beq	.L47d6
	ldr	r0, =0x2457
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	bl	__Func_91750
	b	.L4902
.L47d6:
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_9280c
	ldr	r5, =0x244f
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #0x18
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_93500
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #0x19
	bl	__Func_937b8
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92f84
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_9280c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L489c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92c40
	b	.L48aa
.L489c:
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92c40
.L48aa:
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__Func_937b8
	ldr	r5, =0x2455
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_925cc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	add	r5, #2
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	ldr	r0, =0x313
	bl	__Func_79358
	bl	__Func_91750
.L4902:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4794

.thumb_func_start OvlFunc_4928
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4944
	ldr	r0, =0x2568
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	b	.L4952
.L4944:
	ldr	r0, =0x2458
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
.L4952:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4928

.thumb_func_start OvlFunc_4964
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4980
	ldr	r0, =0x2569
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	b	.L498e
.L4980:
	ldr	r0, =0x244e
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
.L498e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4964

.thumb_func_start OvlFunc_49a0
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	bne	.L49ae
	b	.L4b2e
.L49ae:
	ldr	r0, =0x94e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L49ba
	b	.L4b1e
.L49ba:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L49c8
	b	.L4b1e
.L49c8:
	ldr	r5, =0x2561
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x18
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #4
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x18
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_923c4
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x18
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r1, #6
	mov	r0, #0x18
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_9280c
	mov	r0, #0x18
	bl	__Func_923c4
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0
	mov	r1, #0x18
	mov	r0, #0x19
	bl	__Func_9280c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x19
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0xdc
	lsl	r1, #2
	mov	r2, #0x70
	mov	r0, #0x19
	bl	__Func_9218c
	mov	r0, #0x19
	bl	__Func_923c4
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_92adc
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x18
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_923c4
	add	r5, #4
	mov	r1, #5
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	lsl	r1, #2
	mov	r2, #0x78
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0x19
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79358
	b	.L4b3c
.L4b1e:
	ldr	r0, =0x2567
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	b	.L4b3c
.L4b2e:
	ldr	r0, =0x244d
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
.L4b3c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_49a0

.thumb_func_start OvlFunc_4b68
	push	{lr}
	mov	r0, #0x1a
	mov	r1, #1
	mov	r2, #5
	bl	__Func_955b0
	ldr	r0, =0x94e
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b68

.thumb_func_start OvlFunc_4b84
	push	{lr}
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	ldr	r0, =0x2441
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b84

.thumb_func_start OvlFunc_4ba4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	ldr	r0, =0x2440
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4ba4

.thumb_func_start OvlFunc_4bc4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	ldr	r0, =0x243f
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bc4

.thumb_func_start OvlFunc_4be4
	push	{lr}
	ldr	r0, =0x2459
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_93054
	pop	{r0}
	bx	r0
.func_end OvlFunc_4be4

.thumb_func_start OvlFunc_4bfc
	push	{r5, lr}
	ldr	r0, =0x226
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4c18
	ldr	r0, =0x2434
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	b	.L4cee
.L4c18:
	bl	__Func_916b0
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	ldr	r0, =0x227
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4c8c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x14
	bl	__Func_920e8
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =0x242e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0x14
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
.L4c8c:
	ldr	r5, =0x2430
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L4cd6
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92c40
	ldr	r0, =0x226
	bl	__Func_79358
	b	.L4ce4
.L4cd6:
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92c40
.L4ce4:
	ldr	r0, =0x227
	bl	__Func_79358
	bl	__Func_91750
.L4cee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bfc

.thumb_func_start OvlFunc_4d0c
	push	{lr}
	ldr	r0, =0x226
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d28
	ldr	r0, =0x2435
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	b	.L4d3c
.L4d28:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_97608
	bl	OvlFunc_4bfc
.L4d3c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d0c

.thumb_func_start OvlFunc_4d4c
	bx	lr
.func_end OvlFunc_4d4c

.thumb_func_start OvlFunc_4d50
	push	{r5, lr}
	ldr	r5, =0x256c
	mov	r0, r5
	bl	__Func_92b94
	ldr	r0, =0x800d
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xea
	bl	__Func_78698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L4d78
	add	r0, r5, #2
	mov	r1, #1
	bl	__Func_1776c
.L4d78:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d50

.thumb_func_start OvlFunc_4d88
	push	{lr}
	ldr	r0, =0x256d
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d88

.thumb_func_start OvlFunc_4da0
	push	{r5, r6, r7, lr}
	ldr	r5, =.L5fa4
	bl	__Func_4458
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	ldr	r7, =ewram_240
	mov	r1, #0xe0
	str	r3, [r5]
	lsl	r1, #1
	add	r5, r7, r1
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0xa0
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.L4dd2
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_108c4
	bl	OvlFunc_4f60
	ldrh	r1, [r5]
.L4dd2:
	lsl	r3, r1, #16
	ldr	r2, =0xa1
	asr	r3, #16
	cmp	r3, r2
	bne	.L4de2
	bl	OvlFunc_50e4
	ldrh	r1, [r5]
.L4de2:
	lsl	r3, r1, #16
	ldr	r2, =0xa2
	asr	r3, #16
	cmp	r3, r2
	bne	.L4df2
	bl	OvlFunc_5324
	ldrh	r1, [r5]
.L4df2:
	lsl	r3, r1, #16
	ldr	r2, =0xa3
	asr	r3, #16
	cmp	r3, r2
	beq	.L4dfe
	b	.L4f32
.L4dfe:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_924d4
	bl	OvlFunc_5520
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e42
	mov	r1, #0
	bl	__Func_c528
.L4e42:
	mov	r3, r5
	add	r3, #0x23
	mov	r6, #2
	strb	r6, [r3]
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e5c
	mov	r1, #0
	bl	__Func_c528
.L4e5c:
	mov	r3, r5
	add	r3, #0x23
	strb	r6, [r3]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e74
	mov	r1, #0
	bl	__Func_c528
.L4e74:
	mov	r3, r5
	add	r3, #0x23
	mov	r0, #0xe0
	strb	r6, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r7, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #4
	bne	.L4ea0
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_108c4
	bl	OvlFunc_3054
	ldrh	r2, [r5]
.L4ea0:
	lsl	r3, r2, #16
	mov	r2, #0xc0
	lsl	r2, #10
	cmp	r3, r2
	bne	.L4f14
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_108c4
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4f14
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xd8
	mov	r2, #0xac
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0x90
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r1, #17
	mov	r0, #0x11
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L4f14:
	mov	r0, #0xf
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4f26
	mov	r1, #0
	bl	__Func_c528
.L4f26:
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	ldr	r3, =0xcccc
	str	r3, [r5, #0x18]
.L4f32:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4da0

.thumb_func_start OvlFunc_4f60
	push	{lr}
	sub	sp, #8
	bl	OvlFunc_5470
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #2
	cmp	r3, #0x11
	bhi	.L5076
	ldr	r2, =.L4f84
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4f84:
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L5076
	.word	.L5076
	.word	.L5076
	.word	.L5076
	.word	.L4ffa
	.word	.L505c
	.word	.L505c
	.word	.L505c
	.word	.L500c
	.word	.L500c
	.word	.L500c
	.word	.L4ffa
.L4fcc:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1718
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_175c
	bl	__Func_41d8
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_17bc
	lsl	r1, #4
	bl	__Func_41d8
	b	.L5052
.L4ffa:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	b	.L5054
.L500c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1528
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_19e8
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0x6e
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #9
	mov	r2, #0xa
	mov	r3, #8
	bl	__Func_105d4
.L5052:
	mov	r0, #0xe0
.L5054:
	lsl	r0, #4
	bl	__Func_108c4
	b	.L508c
.L505c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =OvlFunc_169c
	lsl	r1, #4
	bl	__Func_41d8
	b	.L508c
.L5076:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
.L508c:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_92950
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_92950
	mov	r0, #1
	bl	__Func_30f8
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f60

.thumb_func_start OvlFunc_50e4
	push	{r5, lr}
	bl	OvlFunc_54b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92950
	ldr	r0, =0x94c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5116
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L5116:
	ldr	r0, =0x949
	bl	__Func_79338
	cmp	r0, #0
	beq	.L512a
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L512a:
	ldr	r0, =0x94b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L513e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L513e:
	ldr	r0, =0xf2e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5152
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L5152:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.L5166
	b	.L52b8
.L5166:
	ldr	r2, =.L5170
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L5170:
	.word	.L51ec
	.word	.L51ec
	.word	.L51ec
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L520a
	.word	.L527a
	.word	.L527a
	.word	.L520a
	.word	.L52ac
	.word	.L52ac
	.word	.L52ac
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L520a
	.word	.L5248
	.word	.L5248
	.word	.L520a
	.word	.L520a
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L5298
.L51ec:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1150
	b	.L5264
.L520a:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L52ce
	mov	r1, #0xda
	mov	r2, #0xf0
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	b	.L52ce
.L5248:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_138c
.L5264:
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L52ce
.L527a:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x94a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L52ce
	bl	OvlFunc_206c
	b	.L52ce
.L5298:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_206c
	b	.L52ce
.L52ac:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_1a44
	lsl	r1, #4
	bl	__Func_41d8
	b	.L52ce
.L52b8:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
.L52ce:
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92b08
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_50e4

.thumb_func_start OvlFunc_5324
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_54dc
	ldr	r0, =0x943
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5346
	bl	OvlFunc_c78
.L5346:
	ldr	r0, =0x217
	bl	__Func_79358
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x944
	bl	__Func_79338
	cmp	r0, #0
	beq	.L536e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x217
	bl	__Func_79374
.L536e:
	ldr	r0, =0x945
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5386
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	OvlFunc_22d4
.L5386:
	ldr	r0, =0x946
	bl	__Func_79338
	cmp	r0, #0
	beq	.L53a2
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_79374
.L53a2:
	ldr	r0, =0x947
	bl	__Func_79338
	cmp	r0, #0
	beq	.L53b0
	bl	OvlFunc_226c
.L53b0:
	ldr	r0, =0x948
	bl	__Func_79338
	cmp	r0, #0
	beq	.L53be
	bl	OvlFunc_22a0
.L53be:
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53d6
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53d6:
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53ea
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53ea:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53fe
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53fe:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L5410
	mov	r1, #0
	bl	__Func_c528
.L5410:
	mov	r3, r5
	add	r3, #0x23
	mov	r2, #2
	strb	r2, [r3]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L5430
	mov	r3, r5
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #0x10
	orr	r2, r1
	strb	r2, [r3]
.L5430:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_91750
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_108c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5324

.thumb_func_start OvlFunc_5470
	push	{lr}
	ldr	r0, =0x35a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5482
	mov	r0, #0
	bl	OvlFunc_ee0
.L5482:
	ldr	r0, =0x35b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5492
	mov	r0, #1
	bl	OvlFunc_ee0
.L5492:
	mov	r0, #0xd7
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54a4
	mov	r0, #2
	bl	OvlFunc_ee0
.L54a4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_5470

.thumb_func_start OvlFunc_54b0
	push	{lr}
	mov	r0, #0xd6
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54c4
	mov	r0, #0
	bl	OvlFunc_e30
.L54c4:
	ldr	r0, =0x359
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54d4
	mov	r0, #1
	bl	OvlFunc_e30
.L54d4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_54b0

.thumb_func_start OvlFunc_54dc
	push	{lr}
	ldr	r0, =0x355
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54ee
	mov	r0, #0
	bl	OvlFunc_d54
.L54ee:
	ldr	r0, =0x356
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54fe
	mov	r0, #1
	bl	OvlFunc_d54
.L54fe:
	ldr	r0, =0x357
	bl	__Func_79338
	cmp	r0, #0
	beq	.L550e
	mov	r0, #2
	bl	OvlFunc_d54
.L550e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_54dc

.thumb_func_start OvlFunc_5520
	push	{lr}
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5534
	mov	r0, #0
	bl	OvlFunc_c90
.L5534:
	ldr	r0, =0x351
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5544
	mov	r0, #1
	bl	OvlFunc_c90
.L5544:
	ldr	r0, =0x352
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5554
	mov	r0, #2
	bl	OvlFunc_c90
.L5554:
	ldr	r0, =0x353
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5564
	mov	r0, #3
	bl	OvlFunc_c90
.L5564:
	mov	r0, #0xd5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5576
	mov	r0, #4
	bl	OvlFunc_c90
.L5576:
	pop	{r0}
	bx	r0
.func_end OvlFunc_5520

	.section .data

.L5fa4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5fa4, (0x62a4-0x5fa4)
.L62a4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x62a4, (0x64b4-0x62a4)
.L64b4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x64b4, (0x6754-0x64b4)
.L6754:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6754, (0x6814-0x6754)
.L6814:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6814, (0x68a4-0x6814)
.L68a4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x68a4, (0x6910-0x68a4)
.L6910:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6910, (0x697c-0x6910)
.L697c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x697c, (0x69b8-0x697c)
.L69b8:
	.incbin "overlays/rom_7e7574/orig.bin", 0x69b8, (0x69d0-0x69b8)
.L69d0:
	.incbin "overlays/rom_7e7574/orig.bin", 0x69d0, (0x6ac0-0x69d0)
.L6ac0:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6ac0, (0x6c28-0x6ac0)
.L6c28:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6c28, (0x6e08-0x6c28)
.L6e08:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6e08, (0x6e98-0x6e08)
.L6e98:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6e98, (0x6ff4-0x6e98)
.L6ff4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6ff4, (0x7258-0x6ff4)
.L7258:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7258, (0x7528-0x7258)
.L7528:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7528, (0x763c-0x7528)
.L763c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x763c, (0x7714-0x763c)
.L7714:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7714, (0x773c-0x7714)
.L773c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x773c, (0x7754-0x773c)
.L7754:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7754, (0x7764-0x7754)
.L7764:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7764
