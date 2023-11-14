	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d2d98
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ef0
	ldr	r1, [r3]
	sub	sp, #0x3c
	str	r1, [sp, #0x30]
	sub	r2, r3, #4
	ldr	r2, [r2]
	str	r2, [sp, #0x2c]
	ldr	r7, =0x7828
	ldr	r3, [r3, #4]
	str	r3, [sp, #0x28]
	add	r3, r2, r7
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	mov	r0, sp
	ldr	r3, .Ld2e08	@ 0x1010
	add	r0, #0x34
	strh	r3, [r2]
	str	r0, [sp, #0x24]
	ldr	r1, [sp, #0x24]
	mov	r0, #0
	bl	Func_cef64
	ldr	r0, =0x6e
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	mov	r1, r5
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x2c]
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x85
	bl	Func_2f40
	ldr	r3, =0x6e4
	ldr	r2, [sp, #0x2c]
	mov	r5, r0
	b	.Ld2e28

	.align	2, 0
.Ld2e08:
	.word	0x1010
	.pool

.Ld2e28:
	add	r5, #0x80
	add	r1, r2, r3
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x73
	bl	Func_2f40
	ldr	r1, [sp, #0x28]
	bl	Func_5340
	mov	r0, #0xef
	ldr	r7, [sp, #0x2c]
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r7, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r7, r1
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r7, #0xb0
	ldr	r0, =0xfff00000
	lsl	r7, #15
	ldr	r1, =0xfffc0000
	mov	r3, #0x80
	str	r7, [sp, #0x20]
	str	r0, [sp, #0x14]
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0x7098
	mov	r2, #0
	lsl	r3, #17
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0x1c]
	mov	r8, r2
	add	r3, r7, r0
	sub	r2, #1
.Ld2e7e:
	mov	r1, #1
	add	r8, r1
	mov	r7, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r7, #0x40
	bne	.Ld2e7e
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x7320
	mov	r0, #0
	mov	r8, r0
	add	r5, r1, r2
.Ld2e96:
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x38
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	neg	r3, r3
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r7, r8
	add	r5, #0x1c
	cmp	r7, #0x10
	bne	.Ld2e96
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r8, r0
	neg	r1, r1
	lsl	r2, #3
.Ld2ed2:
	mov	r7, #1
	add	r8, r7
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld2ed2
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r0, [r3]
	bl	Func_d6750
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0xbe
	mov	r2, #2
	lsl	r1, #1
	mov	r0, #0xc
	bl	Func_dbb24
	mov	r2, #0
	mov	r9, r2
.Ld2f00:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ld2f1a
	mov	r3, r9
	cmp	r3, #0x20
	ble	.Ld2f1a
	cmp	r3, #0x61
	bgt	.Ld2f1a
	mov	r7, #0x62
	mov	r9, r7
.Ld2f1a:
	mov	r0, r9
	cmp	r0, #0x78
	bne	.Ld2f26
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld2f26:
	mov	r1, r9
	cmp	r1, #0xf
	bgt	.Ld2f32
	ldr	r2, [sp, #0x10]
	add	r2, #2
	str	r2, [sp, #0x10]
.Ld2f32:
	mov	r3, r9
	cmp	r3, #0x63
	bgt	.Ld2f7c
	ldr	r0, [sp, #0x1c]
	ldr	r7, [sp, #0x14]
	add	r7, r0
	str	r7, [sp, #0x1c]
	ldr	r7, [sp, #0x14]
	mov	r3, #0x3a
	mul	r3, r7
	ldr	r2, [sp, #0x20]
	ldr	r1, [sp, #0x18]
	add	r1, r2
	str	r1, [sp, #0x20]
	cmp	r3, #0
	bge	.Ld2f54
	add	r3, #0x3f
.Ld2f54:
	ldr	r0, [sp, #0x18]
	asr	r3, #6
	str	r3, [sp, #0x14]
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #3
	cmp	r3, #0
	bge	.Ld2f66
	add	r3, #0x3f
.Ld2f66:
	ldr	r1, [sp, #0x1c]
	ldr	r2, =0x77ffff
	asr	r3, #6
	str	r3, [sp, #0x18]
	cmp	r1, r2
	bgt	.Ld2f7c
	ldr	r3, [sp, #0x14]
	mov	r7, #0x80
	lsl	r7, #8
	add	r7, r3, r7
	str	r7, [sp, #0x14]
.Ld2f7c:
	mov	r0, #1
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x20]
	bl	Func_e6d3c
	mov	r0, r9
	cmp	r0, #0x1c
	bne	.Ld300c
	mov	r1, #0
	mov	r2, #0x3f
	ldr	r7, =ewram_10000
	mov	r8, r1
	mov	r10, r2
.Ld2f96:
	mov	r0, #1
	ldr	r3, [r7, #0x18]
	neg	r0, r0
	cmp	r3, r0
	bne	.Ld2ffe
	bl	Func_4458
	mov	r1, r10
	mov	r6, r0
	and	r6, r1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0x80
	lsl	r2, #14
	asr	r3, #3
	add	r3, r2
	str	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r0, #0xc0
	lsl	r0, #15
	asr	r3, #2
	add	r3, r0
	str	r3, [r7, #4]
	bl	Func_4458
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	neg	r0, r0
	sub	r0, #8
	lsl	r0, #13
	mov	r3, #0
	str	r0, [r7, #0x10]
	str	r3, [r7, #0x18]
.Ld2ffe:
	mov	r3, #1
	mov	r0, #0x80
	add	r8, r3
	lsl	r0, #1
	add	r7, #0x1c
	cmp	r8, r0
	bne	.Ld2f96
.Ld300c:
	mov	r1, r9
	sub	r1, #0x20
	str	r1, [sp, #0xc]
	cmp	r1, #0x2f
	bhi	.Ld30a2
	mov	r2, #0
	mov	r3, #0x3f
	ldr	r7, =ewram_10000
	mov	r11, r2
	mov	r8, r2
	mov	r10, r3
.Ld3022:
	mov	r0, #1
	ldr	r3, [r7, #0x18]
	neg	r0, r0
	cmp	r3, r0
	bne	.Ld3094
	bl	Func_4458
	mov	r1, r10
	mov	r6, r0
	and	r6, r1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0x80
	lsl	r2, #14
	asr	r3, #3
	add	r3, r2
	str	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r0, #0xc0
	lsl	r0, #15
	asr	r3, #2
	add	r3, r0
	str	r3, [r7, #4]
	bl	Func_4458
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	mov	r3, #0
	neg	r0, r0
	sub	r0, #8
	str	r3, [r7, #0x18]
	mov	r3, #1
	lsl	r0, #13
	add	r11, r3
	str	r0, [r7, #0x10]
	mov	r0, r11
	cmp	r0, #0x10
	beq	.Ld30a2
.Ld3094:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Ld3022
.Ld30a2:
	mov	r3, r9
	cmp	r3, #0
	bne	.Ld30ae
	mov	r0, #0xa4
	bl	_Func_f9080
.Ld30ae:
	mov	r7, r9
	cmp	r7, #0x20
	bne	.Ld30ba
	mov	r0, #0x91
	bl	_Func_f9080
.Ld30ba:
	mov	r0, r9
	cmp	r0, #0x50
	bne	.Ld30c6
	mov	r0, #0x90
	bl	_Func_f9080
.Ld30c6:
	ldr	r1, [sp, #0xc]
	cmp	r1, #0x2f
	bhi	.Ld3132
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x6e4
	add	r0, r1
	mov	r2, #0
	mov	r7, r9
	mov	r10, r0
	ldr	r0, =0xffffff00
	mov	r8, r2
	lsl	r3, r7, #4
	mov	r2, #0x22
	ldr	r6, =.Lee1ac
	mov	r11, r2
	add	r7, r3, r0
.Ld30e6:
	mov	r0, r7
	mov	r1, #0x68
	bl	Func_b1c_from_thumb
	ldrb	r3, [r6, #1]
	ldrb	r2, [r6]
	mov	r5, r0
	mov	r1, r11
	mov	r0, #0x68
	sub	r3, r5
	str	r1, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x34]
	sub	r2, #0x11
	sub	r3, #0x68
	ldr	r0, [sp, #0x30]
	mov	r1, r10
	bl	_call_via_r4
	ldrb	r2, [r6]
	ldrb	r3, [r6, #1]
	mov	r1, r11
	sub	r2, #0x11
	sub	r3, r5
	str	r1, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	mov	r1, r10
	bl	_call_via_r4
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r6, #2
	add	r7, #0x19
	cmp	r3, #3
	bne	.Ld30e6
.Ld3132:
	mov	r7, r9
	cmp	r7, #0x5f
	bgt	.Ld3172
	mov	r0, #0
	mov	r8, r0
	mov	r5, #0x20
	mov	r6, #0x78
.Ld3140:
	mov	r2, r8
	lsl	r1, r2, #5
	mov	r2, r9
	cmp	r2, #0
	bge	.Ld314c
	add	r2, #3
.Ld314c:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	ldr	r7, [sp, #0x10]
	add	r2, r1, r2
	sub	r2, #0x20
	ldr	r1, [sp, #0x2c]
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	sub	r3, r6, r7
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #5
	bne	.Ld3140
.Ld3172:
	mov	r2, #0
	ldr	r5, =ewram_10000
	mov	r8, r2
.Ld3178:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bge	.Ld3180
	b	.Ld32a8
.Ld3180:
	mov	r0, r8
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldr	r3, [r5, #0x10]
	add	r4, r0, #2
	cmp	r3, #0
	ble	.Ld3192
	add	r4, #2
.Ld3192:
	mov	r7, r9
	cmp	r7, #0x44
	ble	.Ld319e
	cmp	r4, #5
	bgt	.Ld319e
	mov	r4, #6
.Ld319e:
	mov	r0, r9
	cmp	r0, #0x46
	ble	.Ld31ec
	cmp	r4, #6
	bgt	.Ld31ec
	mov	r4, #7
	b	.Ld31ec

	.pool_aligned

.Ld31ec:
	mov	r1, r9
	cmp	r1, #0x48
	ble	.Ld31f8
	cmp	r4, #7
	bgt	.Ld31f8
	mov	r4, #8
.Ld31f8:
	mov	r2, r9
	cmp	r2, #0x4a
	ble	.Ld3204
	cmp	r4, #8
	bgt	.Ld3204
	mov	r4, #9
.Ld3204:
	mov	r7, r9
	cmp	r7, #0x4c
	ble	.Ld320c
	mov	r4, #0xa
.Ld320c:
	mov	r6, #4
	cmp	r3, #0
	bgt	.Ld3214
	mov	r6, #0
.Ld3214:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x28]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r4, #31
	add	r3, r4, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0x24]
	sub	r3, r4
	ldr	r4, [r6, r0]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r1, [r5, #0x10]
	ldr	r3, [r5, #4]
	mov	r2, r9
	add	r3, r1
	str	r3, [r5, #4]
	cmp	r2, #0x50
	ble	.Ld325c
	ldr	r7, =0xffff8000
	add	r3, r1, r7
	b	.Ld326a
.Ld325c:
	mov	r2, #3
	mov	r0, r8
	ldr	r3, =.Lee1b4
	and	r2, r0
	lsl	r2, #2
	ldr	r3, [r3, r2]
	add	r3, r1, r3
.Ld326a:
	str	r3, [r5, #0x10]
	ldr	r2, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #1
	cmp	r3, #0
	bge	.Ld327a
	add	r3, #0x3f
.Ld327a:
	ldr	r2, [r5, #0x10]
	asr	r3, #6
	str	r3, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r2, r3, #1
	cmp	r2, #0
	bge	.Ld328c
	add	r2, #0x3f
.Ld328c:
	ldr	r3, [r5, #0x18]
	asr	r2, #6
	add	r3, #1
	str	r2, [r5, #0x10]
	str	r3, [r5, #0x18]
	cmp	r2, #0
	ble	.Ld32a8
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x68
	ble	.Ld32a8
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld32a8:
	mov	r2, #1
	mov	r3, #0x80
	add	r8, r2
	lsl	r3, #3
	add	r5, #0x1c
	cmp	r8, r3
	beq	.Ld32b8
	b	.Ld3178
.Ld32b8:
	mov	r7, r9
	cmp	r7, #0x4f
	bgt	.Ld333c
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x2c]
	add	r2, r1, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld333c
	mov	r7, r2
	mov	r4, #0x24
.Ld32d4:
	mov	r0, r9
	cmp	r0, #0x1d
	ble	.Ld332e
	mov	r1, #0xc
	str	r4, [sp, #8]
	bl	Func_b1c_from_thumb
	mov	r6, r0
	ldr	r4, [sp, #8]
	cmp	r6, #0
	bne	.Ld3314
	ldr	r3, [r7]
	ldrsh	r0, [r3, r4]
	bl	_Func_b7dd0
	ldr	r3, [r7]
	ldr	r4, [sp, #8]
	ldr	r5, [r0]
	ldrsh	r0, [r3, r4]
	mov	r3, #1
	neg	r3, r3
	mov	r1, #7
	mov	r2, #5
	str	r6, [sp]
	bl	Func_d6888
	mov	r3, #0x90
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	ldr	r4, [sp, #8]
	str	r3, [r5, #0x48]
.Ld3314:
	cmp	r6, #6
	bne	.Ld332e
	ldr	r3, [r7]
	ldrsh	r0, [r3, r4]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r4, [sp, #8]
.Ld332e:
	ldr	r3, [r7]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r4, #2
	cmp	r8, r3
	bne	.Ld32d4
.Ld333c:
	ldr	r3, [sp, #0x2c]
	ldr	r7, =0x7824
	add	r2, r3, r7
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0x7c
	beq	.Ld3358
	b	.Ld2f00
.Ld3358:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r2, [sp, #0x20]
	mov	r0, #1
	ldr	r1, [sp, #0x1c]
	bl	Func_e6eac
	ldr	r3, [sp, #0x2c]
	mov	r2, #0
	sub	r7, #0x4c
	mov	r8, r2
	add	r5, r3, r7
.Ld337e:
	ldmia	r5!, {r0}
	bl	_Func_bdd4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0xc
	bne	.Ld337e
	bl	Func_cdbc0
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d2d98

.thumb_func_start Func_d33c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r7}
	ldr	r1, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x24
	add	r1, r7
	str	r3, [sp, #0x14]
	str	r0, [r1]
	mov	r0, #1
	mov	r8, r1
	bl	Func_cd594
	ldr	r0, =0xcd
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r0, r5
	mov	r1, r7
	bl	Func_5340
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r2, [r6, #0x1c]
	mov	r1, #7
	str	r2, [sp, #0xc]
	mov	r3, #0xf
	mov	r2, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld3460	@ 0xf0f
	mov	r4, r8
	strh	r3, [r2]
	ldr	r3, [r4]
	ldr	r6, [r6, #0x20]
	ldr	r0, [r3, #8]
	str	r6, [sp, #0x10]
	bl	_Func_b7dd0
	ldr	r6, [r0]
	mov	r0, r8
	ldr	r3, [r0]
	ldr	r0, [r3, #8]
	bl	_Func_b8530
	ldr	r3, [r6, #0xc]
	add	r3, r0
	mov	r9, r3
	mov	r3, #0xe1
	mov	r1, #0
	mov	r2, #0xff
	lsl	r3, #7
	mov	r8, r1
	mov	r10, r2
	add	r5, r7, r3
	b	.Ld3478

	.align	2, 0
.Ld3460:
	.word	0xf0f
	.pool

.Ld3478:
	ldr	r3, [r6, #8]
	mov	r4, r9
	str	r4, [r5, #4]
	str	r3, [r5]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #16
	asr	r0, #5
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x10
	lsl	r3, #16
	asr	r3, #6
	str	r3, [r5, #0x10]
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #16
	asr	r0, #5
	mov	r3, #1
	mov	r1, #1
	str	r0, [r5, #0x14]
	neg	r3, r3
	mov	r0, r8
	ldr	r4, =ewram_10000
	add	r8, r1
	str	r3, [r5, #0x18]
	mov	r2, r8
	mov	r3, #0
	strb	r3, [r4, r0]
	add	r5, #0x1c
	cmp	r2, #0x1e
	bne	.Ld3478
	ldr	r4, =0x7828
	mov	r3, #0
	add	r2, r7, r4
	mov	r8, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld3512
	mov	r0, #0xe8
	lsl	r0, #7
	mov	r6, r2
	mov	r1, #0x24
	add	r5, r7, r0
.Ld34e8:
	ldr	r3, [r6]
	ldrsh	r0, [r3, r1]
	str	r1, [sp, #8]
	bl	_Func_b7dd0
	ldr	r2, [r0]
	ldr	r3, [r2, #8]
	str	r3, [r5]
	mov	r3, #0
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r3, #1
	add	r8, r3
	ldr	r3, [r6]
	ldr	r1, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r1, #2
	add	r5, #0x1c
	cmp	r8, r3
	bne	.Ld34e8
.Ld3512:
	ldr	r4, =0x77ac
	ldr	r0, =0x77b0
	add	r3, r7, r4
	mov	r2, #0
	mov	r5, #0x90
	str	r2, [r3]
	lsl	r5, #3
	add	r3, r7, r0
	str	r2, [r3]
	mov	r1, r5
	ldr	r0, =Func_d6504
	bl	Func_41d8
	mov	r1, #0xef
	lsl	r1, #7
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r7, r3
	mov	r3, #0x4b
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0xa4
	bl	_Func_f9080
	ldr	r0, =0x7828
	add	r3, r7, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lee1c4
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r2, r3]
	mov	r4, #0
	mov	r11, r4
	cmp	r3, #0
	bne	.Ld3566
	b	.Ld37f4
.Ld3566:
	ldr	r3, =iwram_1e80
	ldr	r6, [r3]
	mov	r3, r11
	sub	r3, #0x11
	cmp	r3, #0x2e
	bhi	.Ld357c
	ldr	r1, =0x77ac
	mov	r3, #0xc0
	add	r2, r7, r1
	lsl	r3, #1
	b	.Ld3582
.Ld357c:
	ldr	r3, =0x77ac
	add	r2, r7, r3
	mov	r3, #0
.Ld3582:
	str	r3, [r2]
	ldr	r0, =0x7828
	add	r5, r7, r0
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r4, =.Lee1c4
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r4, r3]
	sub	r3, #0x10
	mov	r10, r4
	cmp	r11, r3
	bne	.Ld35a2
	mov	r0, #0x84
	bl	_Func_bd7dc
.Ld35a2:
	bl	Func_49ac
	mov	r1, r6
	add	r1, #0xc
	mov	r0, r6
	bl	Func_51d8
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	mov	r2, r10
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Ld35c4
	b	.Ld37ac
.Ld35c4:
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r10, r5
	mov	r9, r1
	add	r6, r7, r3
.Ld35ce:
	cmp	r11, r9
	ble	.Ld3634
	ldr	r4, =ewram_10000
	mov	r0, r8
	ldrsb	r3, [r4, r0]
	cmp	r3, #0
	bne	.Ld3634
	add	r5, sp, #0x18
	mov	r0, r6
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #8]
	cmp	r3, #0x9f
	bgt	.Ld35f6
	mov	r3, #0xa0
	str	r3, [r5, #8]
.Ld35f6:
	ldr	r2, =0x31f
	cmp	r3, r2
	ble	.Ld35fe
	str	r2, [r5, #8]
.Ld35fe:
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	mov	r1, #0xc
	mov	r4, #0xc0
	str	r1, [sp]
	lsl	r4, #4
	mov	r1, #0x18
	sub	r2, #6
	sub	r3, #0xc
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x14]
	add	r1, r7, r4
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	str	r3, [r6]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.Ld3634:
	mov	r3, r9
	add	r3, #0x30
	cmp	r11, r3
	ble	.Ld3730
	ldr	r0, =ewram_10000
	mov	r1, r8
	ldrsb	r3, [r0, r1]
	cmp	r3, #0
	bne	.Ld3730
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, r8
	ldr	r1, [r3, #0x14]
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #3
	sub	r1, r0
	lsl	r1, #2
	mov	r3, #0xe8
	lsl	r3, #7
	add	r1, r7, r1
	add	r1, r3
	ldr	r3, [r1]
	ldr	r2, [r6]
	sub	r3, r2
	ldr	r2, [r6, #0xc]
	asr	r3, #9
	add	r0, r2, r3
	str	r0, [r6, #0xc]
	ldr	r2, [r6, #4]
	ldr	r3, [r1, #4]
	sub	r3, r2
	ldr	r2, [r6, #0x10]
	asr	r3, #9
	add	r4, r2, r3
	str	r4, [r6, #0x10]
	ldr	r2, [r6, #8]
	ldr	r3, [r1, #8]
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	asr	r3, #9
	add	r1, r2, r3
	mov	r3, r9
	add	r3, #0x55
	str	r1, [r6, #0x14]
	cmp	r11, r3
	bge	.Ld36c2
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ld369e
	add	r2, #0x3f
.Ld369e:
	asr	r3, r2, #6
	str	r3, [r6, #0xc]
	lsl	r3, r4, #4
	sub	r3, r4
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ld36ae
	add	r2, #0x3f
.Ld36ae:
	asr	r3, r2, #6
	str	r3, [r6, #0x10]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ld36be
	add	r2, #0x3f
.Ld36be:
	asr	r3, r2, #6
	str	r3, [r6, #0x14]
.Ld36c2:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	bge	.Ld3730
	ldr	r4, =ewram_10000
	mov	r3, #1
	mov	r0, r8
	strb	r3, [r4, r0]
	mov	r3, #0
	str	r3, [r6, #0x18]
	add	r5, sp, #0x18
	ldr	r3, [r5]
	str	r3, [r6]
	bl	Func_4458
	ldr	r3, [r5, #4]
	mov	r2, #0x1f
	and	r2, r0
	add	r3, r2
	sub	r3, #0x10
	mov	r1, r10
	ldr	r5, [r1]
	str	r3, [r6, #4]
	mov	r0, r8
	ldr	r1, [r5, #0x14]
	bl	Func_b1c_from_thumb
	mov	r3, r0
	lsl	r2, r3, #1
	add	r2, #0x24
	mov	r1, #4
	ldrsh	r0, [r5, r2]
	str	r1, [sp]
	mov	r2, #5
	mov	r1, #7
	bl	Func_d6888
	mov	r2, r10
	ldr	r5, [r2]
	mov	r0, r8
	ldr	r1, [r5, #0x14]
	bl	Func_b1c_from_thumb
	lsl	r0, #1
	add	r0, #0x24
	ldrsh	r0, [r5, r0]
	mov	r1, #0
	bl	_Func_b8228
	ldr	r4, =0x77a8
	mov	r0, #4
	add	r3, r7, r4
	str	r0, [r3]
	mov	r0, #0x84
	bl	_Func_f9080
.Ld3730:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xf
	bhi	.Ld3790
	lsr	r0, r3, #31
	add	r0, r3, r0
	mov	r1, #3
	asr	r0, #1
	bl	Func_b1c_from_thumb
	ldr	r2, [r6]
	ldr	r3, [r6, #4]
	mov	r1, r0
	mov	r4, #0x10
	mov	r0, #0x40
	lsl	r1, #10
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0xc]
	sub	r2, #0x10
	ldr	r0, [sp, #0x14]
	add	r1, r7, r1
	sub	r3, #0x38
	bl	_call_via_r4
	ldr	r0, [r6, #0x18]
	lsr	r3, r0, #31
	add	r0, r3
	mov	r1, #3
	asr	r0, #1
	bl	Func_b1c_from_thumb
	ldr	r3, [r6, #4]
	mov	r1, r0
	mov	r4, #0x40
	mov	r0, #0x10
	lsl	r1, #10
	ldr	r2, [r6]
	sub	r3, #0x38
	str	r0, [sp]
	str	r4, [sp, #4]
	add	r1, r7, r1
	ldr	r0, [sp, #0x14]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
.Ld3790:
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lee1c4
	lsl	r3, #1
	mov	r1, #1
	ldrb	r3, [r2, r3]
	mov	r0, #2
	add	r8, r1
	add	r9, r0
	add	r6, #0x1c
	cmp	r8, r3
	beq	.Ld37ac
	b	.Ld35ce
.Ld37ac:
	ldr	r0, =0x7828
	add	r5, r7, r0
	ldr	r3, [r5]
	ldr	r1, [r3, #0x18]
	lsl	r1, #1
	add	r1, #2
	mov	r0, r1
	bl	Func_e155c
	ldr	r1, =0x77b0
	add	r2, r7, r1
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Ld37cc
	mov	r3, #1
	str	r3, [r2]
.Ld37cc:
	bl	Func_cd52c
	ldr	r3, =0x7824
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lee1c4
	lsl	r3, #1
	add	r3, #1
	mov	r4, #1
	ldrb	r3, [r2, r3]
	add	r11, r4
	cmp	r11, r3
	beq	.Ld37f4
	b	.Ld3566
.Ld37f4:
	ldr	r0, =Func_d6504
	bl	Func_4278
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d33c0

.thumb_func_start Func_d3854
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x28]
	ldr	r2, =0x7828
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld38bc	@ 0x1010
	ldr	r0, =0xce
	strh	r3, [r2]
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x28]
	mov	r0, r5
	bl	Func_5340
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r1, #7
	str	r3, [sp, #0x2c]
	mov	r2, #7
	b	.Ld38d4

	.align	2, 0
.Ld38bc:
	.word	0x1010
	.pool

.Ld38d4:
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x20]
	mov	r0, sp
	add	r0, #0x2c
	str	r0, [sp, #0x18]
	str	r3, [r0, #4]
	ldr	r2, [sp, #0x28]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r8, r1
	add	r5, r2, r3
.Ld38f4:
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r8, r0
	neg	r3, r3
	mov	r1, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x10
	bne	.Ld38f4
	ldr	r3, [sp, #0x28]
	mov	r0, #0xef
	lsl	r0, #7
	add	r2, r3, r0
	mov	r3, #2
	str	r3, [r2]
	ldr	r1, [sp, #0x28]
	ldr	r3, =0x7784
	add	r2, r1, r3
	mov	r3, #0x32
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld397c	@ 0x1000
	mov	r0, #1
	strh	r3, [r2]
	bl	Func_30f8
	mov	r0, #0x8d
	bl	_Func_f9080
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x28]
	add	r2, r1, r2
	mov	r0, #0
	str	r2, [sp, #0x1c]
	mov	r11, r0
.Ld3960:
	mov	r3, r11
	lsl	r0, r3, #10
	bl	Func_2322
	lsl	r0, #4
	str	r0, [sp, #0x20]
	mov	r0, r11
	cmp	r0, #0x20
	bne	.Ld3990
	mov	r0, #0x85
	bl	_Func_bd7dc
	b	.Ld3990

	.align	2, 0
.Ld397c:
	.word	0x1000
	.pool

.Ld3990:
	mov	r1, #0
	ldr	r6, =Func_8d8
	mov	r9, r1
	mov	r5, #0x10
.Ld3998:
	cmp	r11, r5
	bne	.Ld39a8
	mov	r1, #0x80
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	ldr	r2, =0x8080808
	bl	_call_via_r6
.Ld39a8:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r5, #8
	cmp	r3, #7
	bne	.Ld3998
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld39d4
	ldr	r1, [sp, #0x20]
	mov	r2, #0x80
	lsl	r2, #14
	add	r1, r2
	str	r1, [sp, #0x20]
	b	.Ld39dc

	.pool_aligned

.Ld39d4:
	ldr	r3, [sp, #0x20]
	ldr	r0, =0xffe00000
	add	r3, r0
	str	r3, [sp, #0x20]
.Ld39dc:
	mov	r1, r11
	cmp	r1, #0x10
	bgt	.Ld39ec
	ldr	r2, .Ld3a14	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	mov	r3, r11
	orr	r3, r2
	strh	r3, [r1]
.Ld39ec:
	mov	r2, r11
	cmp	r2, #0x3f
	ble	.Ld3a00
	ldr	r2, .Ld3a18	@ 0x4f
	mov	r0, r11
	ldr	r1, .Ld3a14	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r0
	orr	r2, r1
	strh	r2, [r3]
.Ld3a00:
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	ldr	r0, =.Lee1ca
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r0, r3]
	mov	r1, #0
	mov	r9, r1
	b	.Ld3a28

	.align	2, 0
.Ld3a14:
	.word	0x1000
.Ld3a18:
	.word	0x4f
	.pool

.Ld3a28:
	cmp	r3, #0
	bne	.Ld3a2e
	b	.Ld3b88
.Ld3a2e:
	mov	r1, r11
	mov	r2, r11
	ldr	r3, [sp, #0x28]
	asr	r1, #31
	lsl	r2, #11
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0xc]
.Ld3a3e:
	ldr	r0, [sp, #0x10]
	bl	Func_2322
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =.Lee1ca
	add	r3, #1
	ldrb	r3, [r2, r3]
	mul	r3, r0
	ldr	r0, [sp, #0x20]
	add	r3, r0
	asr	r3, #16
	ldr	r0, [sp, #0x10]
	add	r3, #0x28
	mov	r10, r3
	bl	Func_231c
	ldr	r1, [sp, #0x14]
	lsl	r0, #1
	asr	r7, r0, #16
	lsr	r0, r1, #31
	add	r0, r11
	mov	r1, #3
	asr	r0, #1
	bl	Func_b1c_from_thumb
	lsl	r5, r0, #2
	ldr	r2, [sp, #0x28]
	add	r5, r0
	lsl	r6, r5, #9
	ldr	r3, =0xc56
	add	r6, r2, r6
	add	r1, r6, r3
	mov	r0, #0x28
	mov	r2, #0x20
	mov	r3, r7
	str	r0, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	add	r3, #0x10
	mov	r2, r10
	bl	_call_via_r4
	ldr	r3, [sp, #0x28]
	ldr	r0, =0x2a56
	lsl	r5, #8
	add	r5, r3, r5
	add	r5, r0
	mov	r1, #0x28
	mov	r2, #0x20
	mov	r3, r7
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x2c]
	add	r3, #0x30
	ldr	r0, [sp, #0x24]
	mov	r1, r5
	mov	r2, r10
	bl	_call_via_r4
	ldr	r3, =0x1156
	mov	r0, #0x28
	add	r6, r3
	mov	r1, #0x20
	mov	r3, r7
	add	r3, #0x50
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r2, r10
	mov	r1, r6
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	mov	r0, #0xe1
	ldr	r3, [sp, #0xc]
	mov	r2, #0
	lsl	r0, #7
	mov	r8, r2
	add	r6, r3, r0
.Ld3ae6:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	blt	.Ld3b32
	mov	r1, r8
	lsr	r2, r1, #31
	add	r2, r8
	asr	r2, #1
	lsr	r4, r3, #31
	add	r4, r3, r4
	lsl	r3, r2, #1
	add	r3, r2
	asr	r4, #1
	mov	r2, #1
	mov	r5, r8
	add	r4, r3
	and	r5, r2
	ldr	r0, =Data_edeca
	ldr	r2, =Data_edebe
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldrb	r0, [r0, r4]
	ldr	r3, [sp, #0x28]
	ldr	r2, [r6]
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	str	r0, [sp]
	ldr	r0, =Data_eded0
	ldrb	r0, [r0, r4]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r5, #2
	add	r3, r7
	ldr	r4, [r5, r0]
	add	r2, r10
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
.Ld3b32:
	add	r3, #1
	str	r3, [r6, #0x18]
	cmp	r3, #6
	bne	.Ld3b54
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	str	r3, [r6]
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r6, #4]
	mov	r3, #0
	str	r3, [r6, #0x18]
.Ld3b54:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x1c
	cmp	r2, #4
	bne	.Ld3ae6
	ldr	r3, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	mov	r0, #0x80
	lsl	r0, #7
	add	r3, r0
	add	r1, #0x70
	str	r1, [sp, #0xc]
	str	r3, [sp, #0x10]
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	mov	r2, #1
	add	r9, r2
	ldr	r2, [r3, #0x18]
	ldr	r1, =.Lee1ca
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r1, r3]
	cmp	r9, r3
	beq	.Ld3b88
	b	.Ld3a3e
.Ld3b88:
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r3, [r3, #0x14]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.Ld3bec
	ldr	r1, [sp, #0x28]
	ldr	r2, =0x7828
	mov	r3, #0
	add	r7, r1, r2
	mov	r10, r3
	mov	r4, #0x24
.Ld3ba2:
	mov	r0, #0
	mov	r5, r10
	mov	r9, r0
	mov	r6, r4
	add	r5, #0x10
.Ld3bac:
	cmp	r11, r5
	bne	.Ld3bd0
	ldr	r3, [r7]
	ldrsh	r0, [r3, r6]
	mov	r3, #4
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, r8
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r3, [r7]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r4, [sp, #8]
.Ld3bd0:
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	add	r5, #8
	cmp	r0, #7
	bne	.Ld3bac
	add	r8, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #0x14]
	mov	r1, #3
	add	r10, r1
	add	r4, #2
	cmp	r8, r3
	bne	.Ld3ba2
.Ld3bec:
	ldr	r2, [sp, #0x28]
	ldr	r0, =0x77a8
	mov	r1, #1
	add	r3, r2, r0
	str	r1, [r3]
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.Lee1ca
	add	r3, #2
	ldrb	r0, [r1, r3]
	lsl	r1, r0, #1
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r0, =0x7824
	ldr	r2, [sp, #0x28]
	mov	r1, #1
	add	r3, r2, r0
	str	r1, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r11, r2
	mov	r3, r11
	cmp	r3, #0x50
	beq	.Ld3c2c
	b	.Ld3960
.Ld3c2c:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d3854

.thumb_func_start Func_d3c80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r1}
	ldr	r5, =0x7828
	mov	r9, r1
	ldr	r3, [r3]
	sub	sp, #0x28
	add	r5, r9
	str	r3, [sp, #0x1c]
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld3ce4	@ 0x1010
	ldr	r0, =0xcf
	strh	r3, [r2]
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x20
	ldr	r0, [r3, #4]
	mov	r1, r2
	str	r2, [sp, #0x14]
	bl	Func_cef64
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	b	.Ld3d00

	.align	2, 0
.Ld3ce4:
	.word	0x1010
	.pool

.Ld3d00:
	bl	Func_41d8
	ldr	r4, =.Lee1f5
	str	r4, [sp, #0xc]
	mov	r3, #0
	mov	r10, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	lsl	r3, #1
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	beq	.Ld3d98
	mov	r5, #0x1f
	mov	r11, r5
	ldr	r7, =0x7828
	mov	r5, #0xe1
	lsl	r5, #7
	mov	r0, #0
	add	r5, r9
	mov	r8, r0
	add	r7, r9
.Ld3d2a:
	bl	Func_4458
	ldr	r3, =0xffc00000
	str	r3, [r5, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld3d50
	bl	Func_4458
	mov	r1, r11
	and	r0, r1
	add	r0, #0x50
	lsl	r6, r0, #16
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	b	.Ld3d66
.Ld3d50:
	bl	Func_4458
	mov	r2, r11
	and	r0, r2
	add	r0, #8
	lsl	r6, r0, #16
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	neg	r3, r3
.Ld3d66:
	lsl	r3, #12
	str	r3, [r5, #0xc]
	ldr	r2, [r5, #0xc]
	lsl	r3, r2, #3
	add	r3, r2
	lsl	r3, #1
	sub	r3, r6, r3
	str	r3, [r5]
	mov	r3, #0
	str	r3, [r5, #0x10]
	str	r3, [r5, #8]
	mov	r3, r8
	str	r3, [r5, #0x18]
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Lee1f5
	lsl	r3, #1
	mov	r0, #1
	ldrb	r3, [r1, r3]
	mov	r4, #8
	add	r10, r0
	add	r5, #0x1c
	add	r8, r4
	cmp	r10, r3
	bne	.Ld3d2a
.Ld3d98:
	mov	r2, #0
	str	r2, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x18]
	ldr	r5, [sp, #0xc]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	bne	.Ld3db2
	b	.Ld40a6
.Ld3db2:
	ldr	r0, =0x7828
	add	r0, r9
	str	r0, [sp, #0x10]
.Ld3db8:
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	bne	.Ld3e02
	ldr	r2, [sp, #0x18]
	cmp	r2, #0x67
	bgt	.Ld3e02
	ldr	r3, =iwram_1e80
	ldr	r1, [r3]
	ldr	r3, [sp, #0x18]
	mov	r2, #0xc0
	cmp	r3, #0x5f
	ble	.Ld3de2
	ldr	r4, [sp, #0x18]
	lsl	r3, r4, #1
	add	r3, r4
	mov	r2, #0x9c
	lsl	r3, #3
	lsl	r2, #4
	sub	r2, r3
.Ld3de2:
	ldr	r5, [sp, #0x10]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ld3df8
	ldrh	r3, [r1, #0x36]
	ldr	r0,=.Lee1f5
	sub	r3, r2
	strh	r3, [r1, #0x36]
	str	r0, [sp, #0xc]
	b	.Ld3e02
.Ld3df8:
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
	ldr	r1, =.Lee1f5
	str	r1, [sp, #0xc]
.Ld3e02:
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r2, [r5]
	ldr	r3, [r2, #0x18]
	ldr	r4, [sp, #0xc]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r4, r3]
	ldr	r0, [sp, #0x18]
	sub	r3, #0x50
	cmp	r0, r3
	bne	.Ld3e22
	mov	r0, #0x86
	bl	_Func_bd7dc
	ldr	r2, [r5]
.Ld3e22:
	ldr	r3, [r2, #0x18]
	ldr	r1, [sp, #0xc]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r1, r3]
	ldr	r4, [sp, #0x18]
	sub	r3, #8
	cmp	r4, r3
	bne	.Ld3e48
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r3, =0x6060606
	add	r2, r9
	str	r3, [r2]
	ldr	r2, [r5]
.Ld3e48:
	ldr	r3, [r2, #0x18]
	ldr	r5, [sp, #0xc]
	lsl	r2, r3, #1
	add	r3, r2, #1
	ldrb	r3, [r5, r3]
	ldr	r0, [sp, #0x18]
	sub	r3, #8
	cmp	r0, r3
	ble	.Ld3e5c
	b	.Ld4060
.Ld3e5c:
	ldrb	r3, [r5, r2]
	mov	r1, #0
	mov	r11, r1
	cmp	r3, #0
	bne	.Ld3e68
	b	.Ld4060
.Ld3e68:
	mov	r2, #0xe1
	lsl	r2, #7
	add	r2, r9
	mov	r8, r2
.Ld3e70:
	mov	r4, r8
	ldr	r3, [r4, #8]
	cmp	r3, #1
	bne	.Ld3f48
	mov	r0, r11
	lsl	r2, r0, #4
	lsl	r3, r0, #7
	sub	r3, r2
	ldr	r1, =ewram_10000
	mov	r5, #0
	lsl	r3, #2
	mov	r10, r5
	add	r7, r3, r1
.Ld3e8a:
	mov	r1, #5
	mov	r0, r10
	bl	Func_b1c_from_thumb
	lsl	r5, r0, #1
	add	r5, r0
	mov	r1, #0x60
	ldr	r0, [r7, #0x18]
	bl	Func_af0_from_thumb
	mov	r1, #3
	bl	Func_b1c_from_thumb
	mov	r2, #4
	mov	r3, r10
	mov	r6, r7
	add	r4, r5, r0
	mov	r12, r2
	cmp	r3, #2
	ble	.Ld3eb6
	mov	r5, #0
	mov	r12, r5
.Ld3eb6:
	ldr	r2, =.Lee214
	lsl	r3, r4, #2
	ldr	r1, [r2, r3]
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	ldr	r3, =.Lee1fb
	ldrb	r5, [r3, r4]
	mov	r0, #0x80
	lsl	r0, #4
	lsr	r3, r5, #1
	add	r1, r9
	add	r1, r0
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r6, r0]
	ldr	r0, =.Lee207
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #0x14]
	str	r4, [sp, #4]
	mov	r5, r12
	ldr	r4, [r5, r0]
	ldr	r0, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #6
	mov	r0, r6
	mov	r1, #0x40
	bl	Func_e3908
	ldr	r3, [r6, #0x18]
	ldr	r2, [r6, #8]
	add	r3, r2
	str	r3, [r6, #0x18]
	cmp	r2, #1
	ble	.Ld3f12
	ldr	r1, [sp, #0x18]
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.Ld3f12
	sub	r3, r2, #1
	str	r3, [r6, #8]
.Ld3f12:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Ld3e8a
	b	.Ld4046

	.pool_aligned

.Ld3f48:
	mov	r4, r8
	ldr	r3, [r4, #0x18]
	ldr	r5, [sp, #0x18]
	cmp	r5, r3
	blt	.Ld4046
	mov	r1, #6
	ldrsh	r3, [r4, r1]
	mov	r1, #2
	ldrsh	r2, [r4, r1]
	mov	r1, #0x20
	str	r1, [sp]
	mov	r5, #1
	mov	r1, #0x40
	mov	r6, r11
	str	r1, [sp, #4]
	and	r6, r5
	ldr	r1, [sp, #0x14]
	lsl	r0, r6, #2
	ldr	r4, [r0, r1]
	sub	r2, #0x10
	ldr	r0, [sp, #0x1c]
	mov	r1, r9
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, r8
	mov	r1, #0x40
	bl	Func_e3908
	mov	r2, r8
	ldr	r3, [r2, #4]
	mov	r2, #0xe0
	lsl	r2, #14
	cmp	r3, r2
	ble	.Ld4046
	mov	r3, r8
	str	r5, [r3, #8]
	mov	r5, r11
	str	r2, [r3, #4]
	lsl	r2, r5, #4
	lsl	r3, r5, #7
	sub	r3, r2
	ldr	r0, =ewram_10000
	mov	r4, #0
	lsl	r3, #2
	ldr	r7, =.Lee1d3
	mov	r10, r4
	mov	r1, #0x7f
	add	r5, r3, r0
.Ld3fac:
	ldrb	r3, [r7]
	mov	r4, r8
	ldr	r2, [r4]
	sub	r3, #0x28
	lsl	r3, #16
	add	r3, r2
	str	r3, [r5]
	ldrb	r3, [r7, #1]
	lsl	r3, #16
	str	r3, [r5, #4]
	str	r1, [sp, #8]
	bl	Func_4458
	ldr	r1, [sp, #8]
	and	r0, r1
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	ldr	r1, [sp, #8]
	and	r0, r1
	neg	r0, r0
	lsl	r3, r0, #11
	str	r3, [r5, #0x10]
	cmp	r6, #0
	beq	.Ld3fec
	ldr	r3, [r5, #0xc]
	lsl	r3, #1
	str	r3, [r5, #0xc]
	lsl	r3, r0, #12
	str	r3, [r5, #0x10]
.Ld3fec:
	mov	r0, #1
	mov	r3, #0x20
	add	r10, r0
	str	r3, [r5, #8]
	mov	r2, r10
	mov	r3, #0
	str	r3, [r5, #0x18]
	add	r7, #2
	add	r5, #0x1c
	cmp	r2, #0x10
	bne	.Ld3fac
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x90
	bl	_Func_f9080
	mov	r3, #0
	mov	r10, r3
	ldr	r3, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld4046
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Ld4026:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #4
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r10
	mov	r1, #7
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r10, r2
	add	r6, #2
	cmp	r10, r3
	bne	.Ld4026
.Ld4046:
	ldr	r5, [sp, #0x10]
	mov	r3, #0x1c
	add	r8, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r0, =.Lee1f5
	lsl	r3, #1
	mov	r4, #1
	ldrb	r3, [r0, r3]
	add	r11, r4
	cmp	r11, r3
	beq	.Ld4060
	b	.Ld3e70
.Ld4060:
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r1, [r3, #0x18]
	lsl	r0, r1, #1
	lsl	r1, #2
	add	r0, #4
	add	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x18]
	ldr	r3, =.Lee1f5
	add	r2, #1
	str	r2, [sp, #0x18]
	str	r3, [sp, #0xc]
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	ldr	r3, [r3, #0x18]
	ldr	r5, =.Lee1f5
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r5, r3]
	ldr	r0, [sp, #0x18]
	ldr	r2, =0x7828
	cmp	r0, r3
	beq	.Ld40a6
	b	.Ld3db8
.Ld40a6:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d3c80

.thumb_func_start Func_d40ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	lsl	r5, #10
	add	r1, r5, r1
	mov	r0, r1
	sub	sp, #0x80
	mov	r6, r2
	mov	r8, r3
	bl	Func_2322
	lsl	r0, #4
	add	r6, r5, r6
	asr	r0, #15
	mov	r10, r0
	mov	r0, r6
	bl	Func_2322
	add	r5, r8
	lsl	r0, #4
	asr	r7, r0, #15
	mov	r0, r5
	bl	Func_2322
	mov	r3, #0
	mov	r2, sp
	lsl	r0, #4
	mov	r6, sp
	strh	r3, [r2]
	asr	r0, #15
	mov	r5, #1
	add	r6, #2
.Ld4130:
	mov	r2, r10
	add	r3, r5, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r4, r3, #1
	add	r3, r5, r7
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, r3, #1
	add	r3, r5, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	cmp	r4, #0
	bge	.Ld4150
	mov	r4, #0
.Ld4150:
	cmp	r4, #0x1f
	ble	.Ld4156
	mov	r4, #0x1f
.Ld4156:
	cmp	r1, #0
	bge	.Ld415c
	mov	r1, #0
.Ld415c:
	cmp	r1, #0x1f
	ble	.Ld4162
	mov	r1, #0x1f
.Ld4162:
	cmp	r3, #0
	bge	.Ld4168
	mov	r3, #0
.Ld4168:
	cmp	r3, #0x1f
	ble	.Ld416e
	mov	r3, #0x1f
.Ld416e:
	lsl	r3, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r5, #1
	strh	r3, [r6]
	add	r6, #2
	cmp	r5, #0x40
	bne	.Ld4130
	mov	r1, sp
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	ldr	r0, =0x5000002
	bl	_call_via_r3
	add	sp, #0x80
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d40ec

.thumb_func_start Func_d41a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1eec
	mov	r3, r5
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	ldr	r2, [r5, #8]
	add	r6, r1, r3
	str	r2, [sp, #0x1c]
	str	r0, [r6]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld4210	@ 0x1010
	mov	r1, #7
	strh	r3, [r2]
	mov	r0, #0x2e
	mov	r3, #3
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, [r5, #0x1c]
	str	r3, [sp, #0x2c]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r3, [r5, #0x20]
	mov	r5, sp
	add	r5, #0x2c
	str	r5, [sp, #0xc]
	str	r3, [r5, #4]
	ldr	r1, [sp, #0x28]
	ldr	r0, =0xd1
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Ld4224

	.align	2, 0
.Ld4210:
	.word	0x1010
	.pool

.Ld4224:
	mov	r3, #0
	ldr	r0, =0x73
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	bl	Func_e0524
	ldr	r3, [r6]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	beq	.Ld424c
	ldr	r0, =0x60
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ld424c:
	mov	r7, #0
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r8, r7
	mov	r1, #0
	lsl	r2, #3
.Ld4258:
	mov	r0, #1
	add	r8, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld4258
	ldr	r1, [sp, #0x28]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r5, =0x7784
	add	r2, r1, r3
	mov	r3, #2
	str	r3, [r2]
	add	r2, r1, r5
	mov	r3, #0x32
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r0, =0x7828
	ldr	r7, [sp, #0x28]
	add	r3, r7, r0
	ldr	r3, [r3]
	ldr	r2, =.Lee25e
	ldr	r3, [r3, #0x18]
	ldrb	r2, [r2, r3]
	str	r2, [sp, #0x18]
	ldr	r5, [sp, #0x18]
	lsl	r2, #3
	mov	r7, #0x30
	mov	r1, #0
	sub	r3, r2, r5
	neg	r7, r7
	mov	r11, r1
	str	r2, [sp, #8]
	cmp	r3, r7
	bne	.Ld42a8
	b	.Ld45b6
.Ld42a8:
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x28]
	add	r1, r0, r1
	str	r1, [sp, #0x14]
.Ld42b0:
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	bne	.Ld42ee
	mov	r3, r11
	cmp	r3, #0x3f
	bgt	.Ld42ee
	ldr	r3, =iwram_1e80
	mov	r2, #0x80
	mov	r5, r11
	ldr	r1, [r3]
	lsl	r2, #1
	cmp	r5, #0x37
	ble	.Ld42d8
	mov	r7, r11
	mov	r3, #0xb0
	lsl	r2, r7, #3
	lsl	r3, #2
	sub	r2, r3, r2
.Ld42d8:
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld42e8
	ldrh	r3, [r1, #0x36]
	sub	r3, r2
	b	.Ld42ec
.Ld42e8:
	ldrh	r3, [r1, #0x36]
	add	r3, r2
.Ld42ec:
	strh	r3, [r1, #0x36]
.Ld42ee:
	mov	r1, r11
	cmp	r1, #0x20
	bne	.Ld42fa
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld42fa:
	ldr	r3, [sp, #0x18]
	mov	r2, #0
	str	r2, [sp, #0x20]
	cmp	r3, #0
	bne	.Ld4306
	b	.Ld44b0
.Ld4306:
	ldr	r7, [sp, #0x20]
	lsl	r5, r7, #3
	cmp	r11, r5
	bne	.Ld4322
	mov	r0, #0x86
	bl	_Func_f9080
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	ldr	r2, =0x10101010
	bl	_call_via_r3
.Ld4322:
	add	r0, r5, #4
	mov	r10, r0
	cmp	r11, r5
	bge	.Ld432c
	b	.Ld445e
.Ld432c:
	mov	r3, r5
	add	r3, #9
	cmp	r11, r3
	blt	.Ld4336
	b	.Ld445e
.Ld4336:
	add	r3, r5, #1
	add	r6, r5, #2
	cmp	r11, r3
	blt	.Ld436a
	cmp	r11, r6
	bge	.Ld4372
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r2, [r3, #4]
	ldr	r7, [sp, #0x20]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r0, =.Lee250
	add	r3, r7, r3
	ldrb	r2, [r0, r3]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r3, #0x70
	str	r3, [sp, #4]
	sub	r2, #0x18
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	mov	r3, #0
	bl	_call_via_r4
.Ld436a:
	add	r1, r5, #4
	mov	r10, r1
	cmp	r11, r6
	blt	.Ld445e
.Ld4372:
	add	r5, #4
	mov	r10, r5
	cmp	r11, r10
	bge	.Ld43a8
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r2, [r3, #4]
	ldr	r5, [sp, #0x20]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r7, =.Lee250
	add	r3, r5, r3
	ldrb	r2, [r7, r3]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r3, #0x70
	str	r3, [sp, #4]
	mov	r5, #0xa8
	ldr	r3, [sp, #0x28]
	lsl	r5, #5
	add	r1, r3, r5
	sub	r2, #0x18
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	mov	r3, #0
	bl	_call_via_r4
.Ld43a8:
	cmp	r11, r6
	bne	.Ld445e
	ldr	r1, [sp, #0x28]
	ldr	r2, =0x7828
	mov	r7, #0
	str	r7, [sp, #0x10]
	mov	r0, #0
	add	r1, r2
	ldr	r7, =ewram_10000
	mov	r8, r0
	mov	r9, r1
.Ld43be:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Ld443a
	bl	Func_4458
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Func_4458
	ldr	r5, =0x7fff
	ldr	r3, =0xffffc000
	and	r5, r0
	mov	r0, r9
	add	r5, r3
	ldr	r3, [r0]
	ldr	r2, [r3, #4]
	ldr	r1, [sp, #0x20]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =.Lee250
	add	r3, r1, r3
	ldrb	r3, [r2, r3]
	lsl	r3, #16
	str	r3, [r7]
	mov	r3, #0xd0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	mov	r5, r9
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Lee244
	lsl	r3, #2
	ldrh	r3, [r1, r3]
	ldr	r0, [sp, #0x10]
	cmp	r0, r3
	beq	.Ld444a
.Ld443a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Ld43be
	ldr	r1, =.Lee244
.Ld444a:
	ldr	r3, [sp, #0x28]
	ldr	r7, [sp, #0x14]
	ldr	r5, =0x77a8
	add	r2, r3, r5
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, #2
	ldrh	r3, [r1, r3]
	str	r3, [r2]
.Ld445e:
	cmp	r11, r10
	bne	.Ld44a2
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x28]
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld44a2
	ldr	r2, =0x7828
	mov	r6, #0x24
	add	r5, r1, r2
.Ld4478:
	ldr	r3, [r5]
	mov	r1, #1
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r8
	mov	r1, #7
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r6, #2
	cmp	r8, r3
	bne	.Ld4478
.Ld44a2:
	ldr	r3, [sp, #0x20]
	ldr	r5, [sp, #0x18]
	add	r3, #1
	str	r3, [sp, #0x20]
	cmp	r3, r5
	beq	.Ld44b0
	b	.Ld4306
.Ld44b0:
	mov	r7, #0
	ldr	r6, =ewram_10000
	mov	r8, r7
.Ld44b6:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Ld457a
	sub	r3, #1
	mov	r2, #0x80
	mov	r0, r6
	lsl	r2, #5
	str	r3, [r6, #0x18]
	mov	r1, #0x3c
	bl	Func_e3908
	mov	r0, #0xd0
	ldr	r2, [r6, #4]
	lsl	r0, #15
	cmp	r2, r0
	ble	.Ld452c
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Ld457a

	.pool_aligned

.Ld452c:
	ldr	r3, [r6]
	asr	r7, r3, #16
	cmp	r3, #0
	blt	.Ld457a
	cmp	r7, #0x77
	bgt	.Ld457a
	cmp	r2, #0
	blt	.Ld457a
	ldr	r0, [r6, #0x18]
	asr	r2, #16
	mov	r12, r2
	cmp	r0, #0
	bge	.Ld4548
	add	r0, #7
.Ld4548:
	asr	r0, #3
	add	r0, #1
	lsl	r5, r0, #1
	ldr	r2, =Data_ede48
	mov	r1, r8
	sub	r3, r5, #2
	mov	r4, #1
	and	r4, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	add	r1, r2, r1
	lsr	r2, r0, #31
	add	r2, r0, r2
	asr	r2, #1
	sub	r2, r7, r2
	mov	r7, r12
	str	r0, [sp]
	sub	r3, r7, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #0xc]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
.Ld457a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Ld44b6
	mov	r1, #0x10
	mov	r0, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r5, =0x7824
	ldr	r3, [sp, #0x28]
	add	r2, r3, r5
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0x18]
	mov	r7, #1
	sub	r3, r0, r1
	add	r11, r7
	add	r3, #0x30
	cmp	r11, r3
	beq	.Ld45b6
	b	.Ld42b0
.Ld45b6:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d41a4

	.section .rodata

.Lee1ac:
	.incrom 0xee1ac, 0xee1b4
.Lee1b4:
	.incrom 0xee1b4, 0xee1c4
.Lee1c4:
	.incrom 0xee1c4, 0xee1ca
.Lee1ca:
	.incrom 0xee1ca, 0xee1d3
.Lee1d3:
	.incrom 0xee1d3, 0xee1f5
.Lee1f5:
	.incrom 0xee1f5, 0xee1fb
.Lee1fb:
	.incrom 0xee1fb, 0xee207
.Lee207:
	.incrom 0xee207, 0xee214
.Lee214:
	.incrom 0xee214, 0xee244
.Lee244:
	.incrom 0xee244, 0xee250
.Lee250:
	.incrom 0xee250, 0xee25e
.Lee25e:
	.incrom 0xee25e, 0xee262
