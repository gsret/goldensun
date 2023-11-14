	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d244c
	push	{lr}
	mov	r1, #1
	bl	Func_d2464
	pop	{r0}
	bx	r0
.func_end Func_d244c

.thumb_func_start Func_d2458
	push	{lr}
	mov	r1, #0
	bl	Func_d2464
	pop	{r0}
	bx	r0
.func_end Func_d2458

.thumb_func_start Func_d2464
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x48
	str	r1, [sp, #0x38]
	ldr	r5, =iwram_1ef0
	ldr	r1, [r5]
	mov	r3, r5
	str	r1, [sp, #0x34]
	sub	r3, #0x70
	ldr	r3, [r3]
	str	r3, [sp, #0x30]
	sub	r3, r5, #4
	ldr	r3, [r3]
	ldr	r7, =0x7828
	mov	r10, r3
	ldr	r2, [r5, #4]
	add	r7, r10
	str	r2, [sp, #0x20]
	str	r0, [r7]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld24d8	@ 0x1010
	strh	r3, [r2]
	ldr	r3, .Ld24dc	@ 0x784
	sub	r2, #0x46
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r8, r3
	mov	r0, #0x2e
	mov	r3, #3
	bl	Func_ed408
	ldr	r4, [r5, #0x18]
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r4, [sp, #0x28]
	str	r3, [sp]
	bl	Func_ed408
	ldr	r5, [r5, #0x1c]
	ldr	r0, =0x7d
	str	r5, [sp, #0x2c]
	bl	Func_2f40
	mov	r5, r0
	b	.Ld24f0

	.align	2, 0
.Ld24d8:
	.word	0x1010
.Ld24dc:
	.word	0x784
	.pool

.Ld24f0:
	mov	r0, #0xa0
	mov	r2, #0x80
	mov	r1, r5
	ldr	r6, =Func_1af8
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r6
	mov	r1, r10
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0xb4
	bl	Func_2f40
	mov	r1, #0xc0
	mov	r5, r0
	add	r5, #0x80
	lsl	r1, #6
	add	r1, r10
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x73
	bl	Func_2f40
	ldr	r1, [sp, #0x20]
	bl	Func_5340
	ldr	r0, [sp, #0x38]
	cmp	r0, #1
	bne	.Ld2542
	ldr	r0, =0xc4
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r6
.Ld2542:
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r10
	mov	r1, r8
	str	r1, [r3]
	add	r2, r10
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r3, [sp, #0x38]
	mov	r2, #1
	str	r2, [sp, #0x14]
	cmp	r3, #0
	beq	.Ld257a
	ldr	r3, [r7]
	mov	r4, #1
	ldr	r3, [r3, #4]
	neg	r4, r4
	str	r4, [sp, #0x14]
	cmp	r3, #1
	beq	.Ld257a
	mov	r6, #1
	str	r6, [sp, #0x14]
.Ld257a:
	ldr	r0, [sp, #0x38]
	cmp	r0, #1
	bne	.Ld25ae
	ldr	r5, =0x7828
	add	r5, r10
	ldr	r3, [r5]
	add	r6, sp, #0x3c
	ldr	r0, [r3, #8]
	mov	r1, r6
	bl	Func_e396c
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6]
	mov	r3, #0x42
	str	r3, [r6, #4]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld25aa
	mov	r3, #0x4c
	b	.Ld25ac
.Ld25aa:
	mov	r3, #0x2c
.Ld25ac:
	str	r3, [r6]
.Ld25ae:
	ldr	r2, =0xffc40000
	mov	r1, #0xd4
	lsl	r1, #16
	ldr	r3, =0x7098
	str	r2, [sp, #0x1c]
	str	r1, [sp, #0x18]
	mov	r2, #1
	mov	r7, #0
	neg	r2, r2
	add	r3, r10
.Ld25c2:
	add	r7, #1
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r7, #0x40
	bne	.Ld25c2
	ldr	r5, =0x7320
	mov	r7, #0
	mov	r6, #0x7f
	add	r5, r10
.Ld25d4:
	ldr	r3, [sp, #0x14]
	cmp	r3, #1
	bne	.Ld25e4
	bl	Func_4458
	and	r0, r6
	add	r0, #0x80
	b	.Ld25ec
.Ld25e4:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
.Ld25ec:
	str	r0, [r5]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	sub	r3, #0x48
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	neg	r3, r3
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x10
	bne	.Ld25d4
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r7, #0
	neg	r1, r1
	lsl	r2, #2
.Ld261a:
	add	r7, #1
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r7, r2
	bne	.Ld261a
	ldr	r4, [sp, #0x38]
	cmp	r4, #0
	bne	.Ld2644
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r0, [r3]
	bl	Func_d6750
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =0x179
	mov	r0, #8
	mov	r2, #2
	bl	Func_dbb24
.Ld2644:
	ldr	r0, [sp, #0x30]
	mov	r6, #0
	add	r0, #0xc
	str	r6, [sp, #0x24]
	str	r0, [sp, #0xc]
.Ld264e:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ld26da
	ldr	r1, [sp, #0x24]
	cmp	r1, #0x30
	ble	.Ld26da
	cmp	r1, #0x9f
	bgt	.Ld26da
	ldr	r2, [sp, #0x38]
	cmp	r2, #0
	bne	.Ld269a
	ldr	r3, =0x77d8
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #8
	bl	_Func_ba30
	ldr	r3, =0x77dc
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #9
	bl	_Func_ba30
	ldr	r3, =0x77e4
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #0xa
	bl	_Func_ba30
	ldr	r3, =0x77e8
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #0xb
	bl	_Func_ba30
.Ld269a:
	ldr	r3, =0x7828
	mov	r4, r10
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Ld26d6
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r10
.Ld26ae:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #0xa
	sub	r3, #1
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	bne	.Ld26ae
.Ld26d6:
	mov	r3, #0xa0
	str	r3, [sp, #0x24]
.Ld26da:
	bl	Func_49ac
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0xc]
	bl	Func_51d8
	ldr	r4, [sp, #0x24]
	cmp	r4, #0xb2
	bne	.Ld26f2
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld26f2:
	ldr	r6, [sp, #0x24]
	cmp	r6, #0x80
	bne	.Ld2700
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r10
	str	r3, [r2]
.Ld2700:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0xb0
	bne	.Ld2730
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r3, =ewram_20202
	add	r2, r10
	str	r3, [r2]
	ldr	r0, =0xb4
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r1, r5
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Ld275e
.Ld2730:
	ldr	r3, [sp, #0x24]
	sub	r3, #0xa0
	cmp	r3, #0xf
	bhi	.Ld275e
	mov	r3, #0xef
	lsl	r3, #7
	add	r3, r10
	mov	r2, #1
	str	r2, [r3]
	ldr	r2, =0x7784
	ldr	r3, =0x10101010
	add	r2, r10
	str	r3, [r2]
	ldr	r1, [sp, #0x24]
	cmp	r1, #0xad
	ble	.Ld2754
	ldr	r3, =0x3f3f3f3f
	str	r3, [r2]
.Ld2754:
	mov	r0, #2
	mov	r1, #2
	mov	r2, #2
	bl	Func_e727c
.Ld275e:
	ldr	r3, [sp, #0x24]
	sub	r3, #0x21
	cmp	r3, #0x8e
	bhi	.Ld27e6
	ldr	r4, [sp, #0x24]
	mov	r2, #0
	mov	r3, #1
	mov	r8, r2
	str	r3, [sp, #0x10]
	cmp	r4, #0x67
	ble	.Ld2778
	mov	r6, #8
	str	r6, [sp, #0x10]
.Ld2778:
	ldr	r1, =.Lee184
	mov	r0, #0x7f
	ldr	r6, =ewram_10000
	mov	r7, #0
	mov	r11, r0
	mov	r9, r1
.Ld2784:
	mov	r2, #1
	ldr	r3, [r6, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Ld27da
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	sub	r3, #0x20
	lsl	r3, #16
	str	r3, [r6]
	mov	r3, #0xe0
	lsl	r3, #15
	str	r3, [r6, #4]
	bl	Func_4458
	mov	r5, #3
	mov	r4, r9
	mov	r3, r11
	and	r5, r7
	and	r0, r3
	ldrb	r3, [r4, r5]
	add	r0, r3
	lsl	r0, #9
	str	r0, [r6, #0xc]
	bl	Func_4458
	mov	r2, r9
	ldrb	r3, [r2, r5]
	mov	r1, r11
	and	r0, r1
	add	r0, r3
	neg	r0, r0
	mov	r3, #0
	lsl	r0, #11
	str	r3, [r6, #0x18]
	str	r0, [r6, #0x10]
	mov	r3, #1
	ldr	r4, [sp, #0x10]
	add	r8, r3
	cmp	r8, r4
	beq	.Ld27e6
.Ld27da:
	mov	r0, #0x80
	add	r7, #1
	lsl	r0, #2
	add	r6, #0x1c
	cmp	r7, r0
	bne	.Ld2784
.Ld27e6:
	ldr	r3, [sp, #0x24]
	sub	r3, #0x29
	cmp	r3, #0x56
	bls	.Ld27f0
	b	.Ld28f8
.Ld27f0:
	ldr	r2, [sp, #0x24]
	mov	r3, #1
	mov	r1, #0
	and	r3, r2
	mov	r11, r1
	cmp	r3, #0
	beq	.Ld28f8
	mov	r3, #0x3c
	ldr	r5, =0x74e0
	add	r3, sp
	mov	r7, #0
	mov	r9, r3
	add	r5, r10
.Ld280a:
	mov	r4, #1
	ldr	r3, [r5, #0x18]
	neg	r4, r4
	cmp	r3, r4
	bne	.Ld28f0
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	add	r3, #0x80
	mov	r8, r3
	bl	Func_4458
	ldr	r3, =0x1fff
	ldr	r1, [sp, #0x38]
	and	r3, r0
	ldr	r0, =0x4e20
	add	r6, r3, r0
	cmp	r1, #0
	bne	.Ld28ac
	bl	Func_4458
	mov	r2, #7
	and	r0, r2
	add	r0, #0x4e
	mov	r3, #0x8c
	lsl	r0, #16
	lsl	r3, #15
	str	r0, [r5]
	b	.Ld28c4

	.pool_aligned

.Ld28ac:
	bl	Func_4458
	mov	r3, #7
	mov	r4, r9
	and	r0, r3
	ldr	r3, [r4]
	add	r0, r3
	sub	r0, #8
	lsl	r0, #16
	str	r0, [r5]
	ldr	r3, [r4, #4]
	lsl	r3, #16
.Ld28c4:
	str	r3, [r5, #4]
	mov	r0, r6
	bl	Func_2322
	mov	r3, r8
	mul	r3, r0
	asr	r3, #9
	str	r3, [r5, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r8
	mul	r3, r0
	mov	r6, #1
	asr	r3, #9
	add	r11, r6
	str	r3, [r5, #0x10]
	mov	r0, r11
	mov	r3, #0
	str	r3, [r5, #0x18]
	cmp	r0, #1
	beq	.Ld28f8
.Ld28f0:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x18
	bne	.Ld280a
.Ld28f8:
	ldr	r1, [sp, #0x24]
	cmp	r1, #0x30
	bne	.Ld2904
	mov	r0, #0x8d
	bl	_Func_f9080
.Ld2904:
	ldr	r2, [sp, #0x24]
	cmp	r2, #0x80
	bne	.Ld2910
	mov	r0, #0x91
	bl	_Func_f9080
.Ld2910:
	ldr	r3, [sp, #0x24]
	sub	r3, #0x81
	cmp	r3, #0x2e
	bhi	.Ld299e
	mov	r4, #0x3c
	mov	r5, #0xe1
	mov	r3, #0
	add	r4, sp
	lsl	r5, #7
	mov	r11, r3
	mov	r7, #0
	mov	r9, r4
	add	r5, r10
.Ld292a:
	mov	r6, #1
	ldr	r3, [r5, #0x18]
	neg	r6, r6
	cmp	r3, r6
	bne	.Ld2996
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	add	r3, #0x80
	mov	r8, r3
	bl	Func_4458
	ldr	r3, =0x1fff
	ldr	r1, [sp, #0x38]
	and	r3, r0
	ldr	r0, =0xffffb1e0
	add	r6, r3, r0
	cmp	r1, #0
	bne	.Ld295e
	mov	r3, #0x88
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #15
	b	.Ld296a
.Ld295e:
	mov	r2, r9
	ldr	r3, [r2]
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, [r2, #4]
	lsl	r3, #16
.Ld296a:
	str	r3, [r5, #4]
	mov	r0, r6
	bl	Func_2322
	mov	r3, r8
	mul	r3, r0
	asr	r3, #6
	str	r3, [r5, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r8
	mul	r3, r0
	asr	r3, #6
	str	r3, [r5, #0x10]
	mov	r3, #0
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r11, r3
	mov	r4, r11
	cmp	r4, #1
	beq	.Ld299e
.Ld2996:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x18
	bne	.Ld292a
.Ld299e:
	ldr	r6, [sp, #0x24]
	cmp	r6, #0xaf
	bgt	.Ld2a02
	mov	r5, #0xe1
	lsl	r5, #7
	mov	r7, #0
	add	r5, r10
.Ld29ac:
	ldr	r1, [r5, #0x18]
	cmp	r1, #0
	blt	.Ld29fa
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r0, #0x20
	asr	r1, #2
	str	r0, [sp]
	lsl	r1, #11
	mov	r0, #0x40
	sub	r2, #0x10
	sub	r3, #0x20
	str	r0, [sp, #4]
	add	r1, r10
	ldr	r0, [sp, #0x34]
	ldr	r6, [sp, #0x28]
	bl	_call_via_r6
	ldr	r3, [r5, #0xc]
	ldr	r0, [sp, #0x14]
	mov	r2, r0
	mul	r2, r3
	ldr	r3, [r5]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x18
	bne	.Ld29fa
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld29fa:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x18
	bne	.Ld29ac
.Ld2a02:
	ldr	r5, =0x74e0
	mov	r7, #0
	mov	r6, #1
	add	r5, r10
.Ld2a0a:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld2a56
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r1, #2
	ldrsh	r2, [r5, r1]
	mov	r1, #2
	sub	r3, #1
	str	r1, [sp, #4]
	str	r6, [sp]
	ldr	r1, =.Lee188
	ldr	r0, [sp, #0x34]
	ldr	r4, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r3, [r5, #0xc]
	ldr	r0, [sp, #0x14]
	mov	r2, r0
	mul	r2, r3
	ldr	r3, [r5]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r1, =0xfffffc00
	ldr	r3, [r5, #0x18]
	add	r2, r1
	add	r3, #1
	str	r2, [r5, #0x10]
	str	r3, [r5, #0x18]
	cmp	r3, #0x30
	bne	.Ld2a56
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld2a56:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x18
	bne	.Ld2a0a
	ldr	r2, [sp, #0x24]
	cmp	r2, #0xaf
	bgt	.Ld2af6
	ldr	r5, =ewram_10000
	mov	r7, #0
.Ld2a68:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld2aea
	ldr	r2, =.Lee18a
	mov	r3, #3
	and	r3, r7
	ldrb	r0, [r2, r3]
	ldr	r2, =Data_ede48
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x20]
	mov	r6, #2
	ldrsh	r2, [r5, r6]
	add	r1, r3, r1
	lsr	r3, r0, #1
	sub	r2, r3
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x34]
	ldr	r4, [sp, #0x28]
	bl	_call_via_r4
	ldr	r1, [r5, #0xc]
	ldr	r6, [sp, #0x14]
	mov	r2, r6
	mul	r2, r1
	ldr	r3, [r5]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r0, [sp, #0x24]
	cmp	r0, #0x80
	ble	.Ld2ad0
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.Ld2ac8
	ldr	r2, =0xffff8000
	add	r3, r1, r2
	str	r3, [r5, #0xc]
	b	.Ld2ad6
.Ld2ac8:
	ldr	r4, =0xffffe000
	add	r3, r1, r4
	str	r3, [r5, #0xc]
	b	.Ld2ad6
.Ld2ad0:
	ldr	r6, =0xfffffc00
	add	r3, r2, r6
	str	r3, [r5, #0x10]
.Ld2ad6:
	ldr	r3, [r5, #0x18]
	mov	r0, #0x80
	add	r3, #1
	lsl	r0, #1
	str	r3, [r5, #0x18]
	cmp	r3, r0
	bne	.Ld2aea
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld2aea:
	mov	r1, #0x80
	add	r7, #1
	lsl	r1, #2
	add	r5, #0x1c
	cmp	r7, r1
	bne	.Ld2a68
.Ld2af6:
	ldr	r2, [sp, #0x24]
	cmp	r2, #0x80
	bne	.Ld2b04
	ldr	r2, =0x77a8
	mov	r3, #0x30
	add	r2, r10
	str	r3, [r2]
.Ld2b04:
	ldr	r3, [sp, #0x38]
	cmp	r3, #0
	bne	.Ld2b18
	ldr	r4, [sp, #0x24]
	cmp	r4, #0x30
	bne	.Ld2b18
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r10
	str	r3, [r2]
.Ld2b18:
	ldr	r3, [sp, #0x24]
	sub	r3, #0x28
	cmp	r3, #7
	bhi	.Ld2b32
	ldr	r6, [sp, #0x18]
	ldr	r1, [sp, #0x1c]
	ldr	r0, =0xfff80000
	mov	r2, #0x80
	lsl	r2, #13
	add	r0, r6, r0
	add	r2, r1, r2
	str	r0, [sp, #0x18]
	str	r2, [sp, #0x1c]
.Ld2b32:
	ldr	r3, [sp, #0x38]
	cmp	r3, #0
	bne	.Ld2bae
	ldr	r4, [sp, #0x24]
	cmp	r4, #0x80
	bne	.Ld2b6e
	ldr	r3, =0x77d8
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #8
	bl	_Func_ba30
	ldr	r3, =0x77dc
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #9
	bl	_Func_ba30
	ldr	r3, =0x77e4
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #0xa
	bl	_Func_ba30
	ldr	r3, =0x77e8
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #0xb
	bl	_Func_ba30
.Ld2b6e:
	ldr	r6, [sp, #0x24]
	cmp	r6, #0xb0
	bne	.Ld2ba4
	ldr	r3, =0x77d8
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #0
	bl	_Func_ba30
	ldr	r3, =0x77dc
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_ba30
	ldr	r3, =0x77e4
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #3
	bl	_Func_ba30
	ldr	r3, =0x77e8
	add	r3, r10
	ldr	r0, [r3]
	mov	r1, #4
	bl	_Func_ba30
.Ld2ba4:
	mov	r0, #3
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	bl	Func_e6d3c
.Ld2bae:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0x8a
	bne	.Ld2bf0
	ldr	r3, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Ld2bf0
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r10
.Ld2bc8:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #5
	sub	r3, #1
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	bne	.Ld2bc8
.Ld2bf0:
	ldr	r6, [sp, #0x24]
	cmp	r6, #0xaf
	ble	.Ld2bf8
	b	.Ld2d16
.Ld2bf8:
	ldr	r5, =0x7320
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #5
	mov	r7, #0
	mov	r11, r0
	mov	r8, r1
	mov	r9, r2
	add	r5, r10
.Ld2c0a:
	ldr	r6, [r5, #4]
	cmp	r6, #0x37
	ble	.Ld2cb4
	ldr	r3, [r5, #0x18]
	cmp	r3, #0xb
	bhi	.Ld2c4c
	lsr	r4, r3, #31
	add	r4, r3, r4
	asr	r4, #1
	ldr	r2, =.Lee1a0
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r3, #0xc0
	lsl	r3, #6
	add	r1, r10
	add	r1, r3
	ldr	r3, =.Lee18e
	ldrb	r0, [r3, r4]
	ldr	r2, [r5]
	lsr	r3, r0, #1
	sub	r2, r3
	ldr	r3, =.Lee19a
	ldrb	r3, [r3, r4]
	str	r0, [sp]
	ldr	r0, =.Lee194
	ldrb	r0, [r0, r4]
	add	r3, r6, r3
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
.Ld2c4c:
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0xc
	bne	.Ld2d0c
	mov	r6, r11
	str	r6, [r5, #0x18]
	b	.Ld2d0c

	.pool_aligned

.Ld2cb4:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Ld2d08
	ldr	r0, [sp, #0x14]
	lsl	r3, r0, #1
	ldr	r2, [r5]
	add	r3, r0
	lsl	r3, #1
	sub	r2, r3
	add	r3, r6, #6
	str	r2, [r5]
	str	r3, [r5, #4]
	ldr	r1, [sp, #0x24]
	mov	r4, #0xa
	cmp	r1, #0x2f
	bgt	.Ld2ce2
	cmp	r3, #0x37
	ble	.Ld2ce2
	mov	r0, #0x88
	str	r4, [sp, #8]
	bl	_Func_f9080
	ldr	r4, [sp, #8]
.Ld2ce2:
	ldr	r2, =Data_ede48
	mov	r3, r8
	sub	r3, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x20]
	add	r1, r2, r1
	ldr	r2, [r5]
	mov	r3, r9
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r4, [sp]
	mov	r4, r8
	add	r3, #0x1e
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x34]
	ldr	r6, [sp, #0x28]
	bl	_call_via_r6
	b	.Ld2d0c
.Ld2d08:
	add	r3, #1
	str	r3, [r5, #0x18]
.Ld2d0c:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x10
	beq	.Ld2d16
	b	.Ld2c0a
.Ld2d16:
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r0, [sp, #0x24]
	add	r0, #1
	str	r0, [sp, #0x24]
	cmp	r0, #0xd0
	beq	.Ld2d3c
	b	.Ld264e
.Ld2d3c:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r1, [sp, #0x38]
	cmp	r1, #0
	bne	.Ld2d70
	mov	r0, #3
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	bl	Func_e6eac
	ldr	r5, =0x77d8
	mov	r7, #0
	add	r5, r10
.Ld2d64:
	ldmia	r5!, {r0}
	add	r7, #1
	bl	_Func_bdd4
	cmp	r7, #8
	bne	.Ld2d64
.Ld2d70:
	bl	Func_cdbc0
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d2464

	.section .rodata

.Lee184:
	.incrom 0xee184, 0xee188
.Lee188:
	.incrom 0xee188, 0xee18a
.Lee18a:
	.incrom 0xee18a, 0xee18e
.Lee18e:
	.incrom 0xee18e, 0xee194
.Lee194:
	.incrom 0xee194, 0xee19a
.Lee19a:
	.incrom 0xee19a, 0xee1a0
.Lee1a0:
	.incrom 0xee1a0, 0xee1ac
