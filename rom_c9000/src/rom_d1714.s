	.include "macros.inc"

.thumb_func_start Func_d1714
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1ef0
	ldr	r1, [r5]
	sub	sp, #0x164
	str	r1, [sp, #0x64]
	mov	r3, r5
	sub	r3, #0x70
	ldr	r3, [r3]
	str	r3, [sp, #0x60]
	sub	r3, r5, #4
	ldr	r3, [r3]
	str	r3, [sp, #0x5c]
	ldr	r4, =0x7828
	ldr	r2, [r5, #4]
	add	r3, r4
	str	r2, [sp, #0x4c]
	str	r0, [r3]
	mov	r0, #0
	mov	r8, r3
	bl	Func_cd594
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r7, [r5, #0x18]
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r7, [sp, #0x54]
	str	r3, [sp]
	bl	Func_ed408
	ldr	r5, [r5, #0x1c]
	ldr	r0, =0x82
	str	r5, [sp, #0x58]
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	mov	r1, r5
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x5c]
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x73
	bl	Func_2f40
	ldr	r1, [sp, #0x4c]
	bl	Func_5340
	mov	r1, #0xef
	ldr	r0, [sp, #0x5c]
	lsl	r1, #7
	add	r3, r0, r1
	str	r6, [r3]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0x32
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r1, r8
	ldr	r3, [r1]
	mov	r4, #0x80
	mov	r5, #0xa0
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	lsl	r4, #16
	lsl	r5, #14
	mov	r7, #0
	str	r4, [sp, #0x44]
	str	r5, [sp, #0x48]
	str	r7, [sp, #0x3c]
	str	r0, [sp, #0x40]
	mov	r9, r0
	cmp	r3, #0
	beq	.Ld186c
	mov	r2, sp
	mov	r3, #0xa2
	mov	r4, #0x92
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r2, #0xa4
	lsl	r3, #1
	lsl	r4, #1
	add	r4, sp
	add	r3, sp
	add	r5, r0
	str	r2, [sp, #0x28]
	mov	r8, r4
	mov	r11, r3
	add	r7, sp, #0x104
	mov	r10, r5
	mov	r4, #0
	add	r6, sp, #0xc4
.Ld17fc:
	mov	r1, r10
	mov	r5, r9
	ldr	r2, [r1]
	lsl	r3, r5, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	str	r4, [sp, #8]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	ldr	r3, [r5, #8]
	str	r3, [r6]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #4]
	ldr	r4, [sp, #8]
	ldrh	r3, [r5, #6]
	ldr	r2, [sp, #0x28]
	str	r3, [r4, r2]
	ldr	r1, [r5, #0x10]
	ldr	r0, [r5, #8]
	bl	Func_44d0
	ldr	r4, [sp, #8]
	lsl	r0, #16
	lsr	r0, #16
	mov	r3, r11
	str	r0, [r4, r3]
	ldr	r3, [r5, #8]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r5, #0x10]
	asr	r3, #8
	mov	r1, r3
	mul	r1, r3
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	ldr	r4, [sp, #8]
	mov	r3, #0
	asr	r0, #7
	mov	r2, r8
	str	r0, [r4, r2]
	str	r3, [r4, r7]
	str	r3, [r5, #0x48]
	mov	r3, #1
	mov	r5, r10
	add	r9, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r4, #4
	add	r6, #8
	cmp	r9, r3
	bne	.Ld17fc
.Ld186c:
	ldr	r0, [sp, #0x5c]
	mov	r1, #0xe1
	mov	r7, #0
	lsl	r1, #7
	mov	r9, r7
	mov	r6, #0
	add	r5, r0, r1
.Ld187a:
	mov	r3, #0x78
	str	r3, [r5, #8]
	str	r6, [r5, #4]
	bl	Func_4458
	str	r6, [r5, #0x10]
	str	r6, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x3f
	mov	r2, #1
	and	r3, r0
	add	r9, r2
	str	r3, [r5, #0x18]
	mov	r3, r9
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Ld187a
	ldr	r5, [sp, #0x60]
	mov	r4, #0
	add	r5, #0xc
	str	r4, [sp, #0x50]
	str	r5, [sp, #0x24]
.Ld18a8:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ld18ce
	ldr	r7, [sp, #0x50]
	cmp	r7, #0x9f
	bgt	.Ld18c0
	mov	r0, #0xa0
	str	r0, [sp, #0x50]
	b	.Ld18ce
.Ld18c0:
	mov	r2, #0xc5
	ldr	r1, [sp, #0x50]
	lsl	r2, #1
	cmp	r1, r2
	bgt	.Ld18ce
	ldr	r3, =0x18b
	str	r3, [sp, #0x50]
.Ld18ce:
	bl	Func_49ac
	ldr	r0, [sp, #0x60]
	ldr	r1, [sp, #0x24]
	bl	Func_51d8
	ldr	r4, [sp, #0x50]
	cmp	r4, #0x10
	bne	.Ld18e6
	mov	r0, #0x8d
	bl	_Func_f9080
.Ld18e6:
	mov	r7, #0x80
	ldr	r5, [sp, #0x50]
	lsl	r7, #1
	cmp	r5, r7
	bne	.Ld18f6
	mov	r0, #0x8c
	bl	_Func_f9080
.Ld18f6:
	mov	r1, #0xa7
	ldr	r0, [sp, #0x50]
	lsl	r1, #1
	cmp	r0, r1
	bne	.Ld1906
	mov	r0, #0xd4
	bl	_Func_f9080
.Ld1906:
	ldr	r2, [sp, #0x50]
	ldr	r3, =0x15b
	cmp	r2, r3
	bne	.Ld1914
	mov	r0, #0xd4
	bl	_Func_f9080
.Ld1914:
	ldr	r4, [sp, #0x50]
	ldr	r5, =0x167
	cmp	r4, r5
	bne	.Ld1922
	mov	r0, #0xd4
	bl	_Func_f9080
.Ld1922:
	mov	r0, #0xba
	ldr	r7, [sp, #0x50]
	lsl	r0, #1
	cmp	r7, r0
	bne	.Ld1932
	mov	r0, #0xd4
	bl	_Func_f9080
.Ld1932:
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x5c]
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r9, r1
	cmp	r3, #0
	bne	.Ld1944
	b	.Ld1aac
.Ld1944:
	mov	r4, #0
.Ld1946:
	mov	r5, r9
	ldr	r0, [sp, #0x50]
	lsl	r7, r5, #4
	cmp	r0, r7
	bgt	.Ld1952
	b	.Ld1a98
.Ld1952:
	ldr	r1, [sp, #0x5c]
	lsl	r5, #1
	ldr	r2, [r1, r2]
	mov	r3, r5
	str	r5, [sp, #0x38]
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	str	r4, [sp, #8]
	bl	_Func_b7dd0
	ldr	r4, [sp, #8]
	add	r6, sp, #0x144
	ldr	r5, [r0]
	ldr	r0, [r6, r4]
	mov	r10, r4
	bl	Func_2322
	mov	r1, #0x92
	ldr	r4, [sp, #8]
	lsl	r1, #1
	add	r1, sp
	ldr	r3, [r1, r4]
	mul	r3, r0
	asr	r3, #1
	str	r3, [r5, #8]
	ldr	r0, [r6, r4]
	mov	r8, r1
	bl	Func_231c
	ldr	r4, [sp, #8]
	mov	r2, r8
	ldr	r3, [r2, r4]
	mul	r3, r0
	asr	r3, #1
	str	r3, [r5, #0x10]
	ldr	r3, [sp, #0x50]
	cmp	r3, #0x9f
	bgt	.Ld1a0a
	mov	r3, r7
	ldr	r7, [sp, #0x50]
	add	r3, #0x10
	cmp	r7, r3
	ble	.Ld19b0
	add	r7, sp, #0x104
	ldr	r3, [r7, r4]
	add	r3, #0x30
	str	r3, [r7, r4]
.Ld19b0:
	mov	r0, r8
	ldr	r3, [r0, r4]
	cmp	r3, #0x1f
	bgt	.Ld19f4
	ldr	r3, [r5, #0xc]
	mov	r1, #0xc0
	lsl	r1, #11
	add	r3, r1
	b	.Ld19fc

	.pool_aligned

.Ld19f4:
	ldr	r3, [r5, #0xc]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
.Ld19fc:
	str	r3, [r5, #0xc]
	mov	r2, #0xf8
	ldr	r3, [r5, #0xc]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Ld1a0a
	str	r2, [r5, #0xc]
.Ld1a0a:
	mov	r7, #0xf5
	ldr	r3, [sp, #0x50]
	lsl	r7, #1
	cmp	r3, r7
	bgt	.Ld1a40
	add	r7, sp, #0x104
	ldr	r2, [r6, r4]
	ldr	r3, [r7, r4]
	mov	r0, #0x80
	add	r2, r3
	lsl	r0, #9
	str	r2, [r6, r4]
	cmp	r2, r0
	ble	.Ld1a2e
	ldr	r1, =0xffff0000
	add	r3, r2, r1
	mov	r2, r10
	str	r3, [r6, r2]
.Ld1a2e:
	mov	r3, r10
	ldr	r2, [r7, r3]
	cmp	r2, #0
	bge	.Ld1a38
	add	r2, #3
.Ld1a38:
	ldrh	r3, [r5, #6]
	asr	r2, #2
	add	r3, r2
	strh	r3, [r5, #6]
.Ld1a40:
	ldr	r7, [sp, #0x50]
	ldr	r0, =0x18b
	cmp	r7, r0
	bne	.Ld1a4c
	ldr	r3, =0xab85
	str	r3, [r5, #0x48]
.Ld1a4c:
	mov	r1, #0
	ldr	r6, =.Lee16c
	mov	r11, r1
.Ld1a52:
	ldrh	r3, [r6]
	ldr	r2, [sp, #0x50]
	add	r6, #2
	cmp	r2, r3
	bne	.Ld1a80
	mov	r3, #0
	str	r3, [r5, #0x28]
	ldr	r7, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r7, r0
	ldr	r2, [r3]
	ldr	r3, [sp, #0x38]
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r9
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r4, [sp, #8]
.Ld1a80:
	mov	r2, #1
	add	r11, r2
	mov	r3, r11
	cmp	r3, #4
	bne	.Ld1a52
	add	r5, sp, #0x124
	ldr	r3, [r5, r4]
	cmp	r3, #0x10
	ble	.Ld1a98
	sub	r3, #2
	mov	r7, r10
	str	r3, [r5, r7]
.Ld1a98:
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x5c]
	ldr	r3, [r1, r2]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r9, r0
	add	r4, #4
	cmp	r9, r3
	beq	.Ld1aac
	b	.Ld1946
.Ld1aac:
	ldr	r3, [sp, #0x50]
	sub	r3, #0x10
	cmp	r3, #0x8f
	bhi	.Ld1afc
	ldr	r2, [sp, #0x50]
	lsl	r3, r2, #1
	mov	r5, r3
	sub	r5, #0x20
	cmp	r5, #0x30
	ble	.Ld1ac2
	mov	r5, #0x30
.Ld1ac2:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	bge	.Ld1aca
	add	r0, #3
.Ld1aca:
	mov	r1, #3
	asr	r0, #2
	bl	Func_b1c_from_thumb
	mov	r3, #0x30
	sub	r2, r3, r5
	lsl	r1, r0, #1
	lsl	r3, r2, #1
	add	r1, r0
	add	r3, r2
	lsl	r3, #4
	ldr	r4, [sp, #0x5c]
	lsl	r1, #10
	add	r1, r3
	mov	r7, #0x30
	mov	r3, #0x70
	add	r1, r4, r1
	sub	r3, r5
	str	r7, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x64]
	mov	r2, #0x20
	ldr	r4, [sp, #0x54]
	bl	_call_via_r4
.Ld1afc:
	ldr	r3, [sp, #0x50]
	sub	r3, #0x30
	cmp	r3, #0x6f
	bhi	.Ld1b48
	ldr	r5, [sp, #0x50]
	lsl	r3, r5, #1
	mov	r5, r3
	sub	r5, #0x60
	cmp	r5, #0x40
	ble	.Ld1b12
	mov	r5, #0x40
.Ld1b12:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	bge	.Ld1b1a
	add	r0, #3
.Ld1b1a:
	mov	r1, #3
	asr	r0, #2
	bl	Func_b1c_from_thumb
	mov	r3, #0x40
	sub	r3, r5
	lsl	r1, r0, #1
	lsl	r2, r3, #1
	add	r1, r0
	add	r2, r3
	lsl	r2, #4
	lsl	r1, #10
	ldr	r7, [sp, #0x5c]
	add	r1, r2
	mov	r0, #0x30
	str	r0, [sp]
	add	r1, r7, r1
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x64]
	mov	r2, #0x20
	ldr	r4, [sp, #0x54]
	bl	_call_via_r4
.Ld1b48:
	ldr	r5, [sp, #0x50]
	sub	r5, #0xa0
	mov	r10, r5
	cmp	r5, #0xef
	bhi	.Ld1b98
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	bge	.Ld1b5a
	add	r0, #3
.Ld1b5a:
	mov	r1, #3
	asr	r0, #2
	bl	Func_b1c_from_thumb
	lsl	r5, r0, #1
	add	r5, r0
	ldr	r7, [sp, #0x5c]
	ldr	r4, [sp, #0x54]
	lsl	r5, #10
	add	r5, r7, r5
	mov	r0, #0x30
	mov	r6, #0x40
	str	r0, [sp]
	mov	r1, r5
	mov	r2, #8
	mov	r3, #0
	str	r4, [sp, #8]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x64]
	bl	_call_via_r4
	mov	r1, #0x30
	str	r1, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x64]
	mov	r1, r5
	mov	r2, #8
	mov	r3, #0x40
	ldr	r4, [sp, #8]
	bl	_call_via_r4
.Ld1b98:
	ldr	r2, [sp, #0x50]
	cmp	r2, #0x9f
	bgt	.Ld1c90
	mov	r4, #0x98
	ldr	r5, [sp, #0x5c]
	mov	r7, #0xe1
	mov	r3, #0
	add	r4, sp
	lsl	r7, #7
	mov	r9, r3
	mov	r8, r4
	add	r6, r5, r7
.Ld1bb0:
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bne	.Ld1c80
	ldr	r0, [r6, #0x10]
	str	r4, [sp, #8]
	bl	Func_2322
	ldr	r3, [r6, #8]
	mul	r3, r0
	mov	r5, r8
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	ldr	r0, [r6, #0x10]
	bl	Func_231c
	ldr	r3, [r6, #8]
	mul	r3, r0
	add	r7, sp, #0x8c
	str	r3, [r5, #8]
	mov	r0, r5
	mov	r1, r7
	bl	Func_e3944
	ldr	r3, [r7]
	asr	r2, r3, #1
	str	r2, [r7]
	ldr	r0, =0x3fffff
	ldr	r3, [r6, #4]
	ldr	r4, [sp, #8]
	cmp	r3, r0
	bgt	.Ld1c0e
	ldr	r3, [r7, #4]
	ldr	r5, [sp, #0x5c]
	mov	r7, #0x90
	mov	r1, #0x10
	lsl	r7, #6
	str	r1, [sp]
	str	r1, [sp, #4]
	sub	r2, #0xc
	add	r1, r5, r7
	sub	r3, #0xc
	ldr	r0, [sp, #0x64]
	ldr	r5, [sp, #0x54]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
.Ld1c0e:
	ldr	r3, [r6, #8]
	cmp	r3, #0x18
	ble	.Ld1c18
	sub	r3, #4
	str	r3, [r6, #8]
.Ld1c18:
	ldr	r3, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	lsl	r3, #1
	mov	r7, #0x80
	add	r2, r3
	lsl	r7, #9
	str	r2, [r6, #0x10]
	cmp	r2, r7
	ble	.Ld1c30
	ldr	r0, =0xffff0000
	add	r3, r2, r0
	str	r3, [r6, #0x10]
.Ld1c30:
	ldr	r3, [r6, #0xc]
	mov	r2, #0x80
	add	r3, #0x32
	lsl	r2, #5
	str	r3, [r6, #0xc]
	cmp	r3, r2
	ble	.Ld1c40
	str	r2, [r6, #0xc]
.Ld1c40:
	ldr	r3, [r6, #0x10]
	mov	r1, #0x80
	lsl	r1, #4
	add	r3, r1
	ldr	r2, [r6, #4]
	str	r3, [r6, #0x10]
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0xc0
	lsl	r3, #14
	str	r2, [r6, #4]
	cmp	r2, r3
	ble	.Ld1c84
	mov	r3, #0x64
	str	r4, [r6, #4]
	str	r3, [r6, #8]
	str	r4, [r6, #0x10]
	str	r4, [r6, #0xc]
	b	.Ld1c84

	.pool_aligned

.Ld1c80:
	sub	r3, r4, #1
	str	r3, [r6, #0x18]
.Ld1c84:
	mov	r4, #1
	add	r9, r4
	mov	r5, r9
	add	r6, #0x1c
	cmp	r5, #0x18
	bne	.Ld1bb0
.Ld1c90:
	ldr	r7, [sp, #0x50]
	cmp	r7, #0xa0
	beq	.Ld1c98
	b	.Ld1dd2
.Ld1c98:
	ldr	r5, =0x3b
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	_Func_c08ec
	mov	r1, r5
	mov	r2, #8
	mov	r0, #1
	bl	_Func_c0774
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x5c]
	add	r3, r0, r1
	ldr	r0, [r3]
	bl	Func_d6750
	mov	r1, #0xbc
	lsl	r1, #1
	mov	r2, #2
	mov	r0, #9
	bl	Func_dbb24
	ldr	r0, =0x88
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	mov	r1, r5
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #0xd8
	ldr	r2, [sp, #0x5c]
	lsl	r3, #6
	add	r5, #0x80
	add	r1, r2, r3
	mov	r0, r5
	bl	Func_5340
	mov	r4, #0
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r9, r4
	mov	r1, #0
	lsl	r2, #2
.Ld1cf8:
	mov	r5, #1
	add	r9, r5
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r9, r2
	bne	.Ld1cf8
	ldr	r3, =0x7828
	ldr	r0, [sp, #0x5c]
	ldr	r3, [r0, r3]
	ldr	r3, [r3, #0x14]
	mov	r7, #0
	mov	r9, r7
	cmp	r3, #0
	beq	.Ld1d40
	ldr	r1, =0x7828
	mov	r7, #0x24
	add	r6, r0, r1
.Ld1d1a:
	ldr	r3, [r6]
	ldrsh	r0, [r3, r7]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #8
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [r6]
	ldr	r3, [r3, #0x14]
	add	r7, #2
	cmp	r9, r3
	bne	.Ld1d1a
.Ld1d40:
	ldr	r2, =iwram_1ce0
	mov	r3, #0x48
	str	r3, [r2, #0xc]
	ldr	r5, [sp, #0x5c]
	mov	r0, #0xe1
	mov	r4, #0
	lsl	r0, #7
	mov	r9, r4
	add	r7, r5, r0
.Ld1d52:
	bl	Func_4458
	mov	r3, #0x7f
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	ldr	r5, =0x7fff
	ldr	r1, =0x9fff
	and	r5, r0
	add	r5, r1
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	str	r3, [r7]
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	str	r3, [r7, #4]
	bl	Func_4458
	mov	r1, #0xc8
	bl	Func_b50_from_thumb
	mov	r2, #1
	mov	r3, #0
	sub	r0, #0x64
	add	r9, r2
	str	r3, [r7, #0x18]
	lsl	r0, #16
	mov	r3, r9
	str	r0, [r7, #8]
	add	r7, #0x1c
	cmp	r3, #0x20
	bne	.Ld1d52
	ldr	r3, =0x7828
	ldr	r5, [sp, #0x5c]
	ldr	r3, [r5, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r9, r4
	cmp	r3, #0
	beq	.Ld1dd2
	ldr	r1, =0x7828
	ldr	r7, [sp, #0x5c]
	add	r3, r7, r1
	ldr	r5, =0x1770
	ldr	r1, [r3]
	add	r4, sp, #0x124
	mov	r6, #0x10
	add	r0, sp, #0x104
	mov	r2, #0
.Ld1dc2:
	str	r6, [r2, r4]
	str	r5, [r2, r0]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [r1, #0x14]
	add	r2, #4
	cmp	r9, r3
	bne	.Ld1dc2
.Ld1dd2:
	ldr	r4, [sp, #0x50]
	cmp	r4, #0x9f
	bgt	.Ld1dda
	b	.Ld2330
.Ld1dda:
	ldr	r3, =Data_eda78
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r7, r10
	str	r3, [sp, #0x68]
	str	r4, [sp, #0x6c]
	mov	r5, #0x10
	cmp	r7, #0x40
	bgt	.Ld1dee
	mov	r5, #0x20
.Ld1dee:
	mov	r1, r10
	lsl	r0, r1, #7
	bl	Func_2322
	ldr	r2, [sp, #0x44]
	lsl	r0, #5
	asr	r0, #6
	sub	r0, r2, r0
	mov	r3, r10
	str	r0, [sp, #0x44]
	lsl	r0, r3, #9
	bl	Func_2322
	mov	r3, r5
	mul	r3, r0
	ldr	r4, [sp, #0x48]
	ldr	r2, [sp, #0x3c]
	asr	r3, #6
	add	r3, r4, r3
	str	r3, [sp, #0x48]
	mov	r1, r3
	lsr	r3, r2, #31
	ldr	r4, [sp, #0x40]
	add	r3, r2
	asr	r3, #1
	ldr	r5, [sp, #0x3c]
	str	r3, [sp, #0x3c]
	lsr	r3, r4, #31
	add	r3, r4
	asr	r3, #1
	ldr	r0, [sp, #0x40]
	str	r3, [sp, #0x40]
	mov	r3, #0x80
	lsl	r3, #9
	add	r4, sp, #0x68
	ldr	r7, [sp, #0x44]
	str	r3, [sp, #0x68]
	add	r2, sp, #0x70
	str	r3, [r4, #4]
	mov	r3, #0
	add	r0, r1
	str	r3, [r2, #0xc]
	add	r5, r7
	str	r0, [sp, #0x48]
	ldr	r7, [sp, #0x5c]
	ldr	r0, =0x77d8
	str	r5, [sp, #0x44]
	add	r5, r7, r0
	mov	r7, #0xff
	mov	r9, r3
	mov	r6, r2
	lsl	r7, #16
.Ld1e56:
	ldr	r3, =.Lee15a
	mov	r1, r9
	ldrb	r3, [r3, r1]
	ldr	r2, [sp, #0x44]
	lsl	r3, #16
	mov	r0, #0xa0
	add	r3, r2
	lsl	r0, #14
	add	r3, r0
	str	r3, [r6]
	ldr	r3, =.Lee163
	ldrb	r3, [r3, r1]
	lsl	r2, r1, #6
	add	r3, r2
	ldr	r1, [sp, #0x48]
	lsl	r3, #16
	add	r3, r1
	mov	r2, r4
	str	r7, [r6, #4]
	str	r3, [r6, #8]
	ldmia	r5!, {r0}
	mov	r3, #0
	mov	r1, r6
	str	r4, [sp, #8]
	bl	_Func_b168
	mov	r3, #1
	mov	r2, #0x80
	add	r9, r3
	lsl	r2, #15
	mov	r0, r9
	add	r7, r2
	ldr	r4, [sp, #8]
	cmp	r0, #9
	bne	.Ld1e56
	ldr	r1, [sp, #0x50]
	cmp	r1, #0xff
	bgt	.Ld1ea4
	b	.Ld2330
.Ld1ea4:
	mov	r3, #0x80
	add	r5, sp, #0x80
	mov	r2, #0
	lsl	r3, #17
	str	r3, [r5, #8]
	str	r2, [r5]
	str	r2, [r5, #4]
	mov	r10, r2
	bl	Func_49ac
	mov	r0, r5
	bl	Func_4cb4
	ldr	r4, =0x149
	ldr	r3, [sp, #0x50]
	cmp	r3, r4
	ble	.Ld1ec8
	b	.Ld2030
.Ld1ec8:
	ldr	r7, [sp, #0x5c]
	mov	r0, #0xe1
	mov	r5, #0
	lsl	r0, #7
	mov	r9, r5
	add	r6, r7, r0
.Ld1ed4:
	ldr	r3, [r6]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r6, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r6, #8]
	asr	r3, #8
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r0, #9
	mov	r8, r0
	cmp	r0, #0
	beq	.Ld1fe0
	add	r7, sp, #0x8c
	mov	r1, r7
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r7]
	ldr	r4, [sp, #0x44]
	asr	r3, #17
	asr	r2, r4, #17
	add	r3, r2
	add	r3, #0x20
	ldr	r0, [sp, #0x48]
	str	r3, [r7]
	mov	r5, #6
	ldrsh	r3, [r7, r5]
	asr	r2, r0, #16
	add	r3, r2
	sub	r3, #4
	str	r3, [r7, #4]
	mov	r1, #0xa
	ldrsh	r3, [r7, r1]
	str	r3, [r7, #8]
	cmp	r3, #0xa9
	bgt	.Ld1f34
	mov	r3, #0xaa
	str	r3, [r7, #8]
.Ld1f34:
	mov	r3, #0xaf
	ldr	r0, [r7, #8]
	lsl	r3, #1
	cmp	r0, r3
	ble	.Ld1f42
	str	r3, [r7, #8]
	mov	r0, r3
.Ld1f42:
	mov	r1, #0x24
	sub	r0, #0xaa
	bl	Func_af0_from_thumb
	mov	r3, #6
	sub	r4, r3, r0
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x4c]
	lsr	r3, r4, #31
	add	r1, r2, r1
	add	r3, r4, r3
	ldr	r2, [r7]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r7, #4]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x58]
	ldr	r0, [sp, #0x64]
	bl	_call_via_r4
	ldr	r5, [r6]
	mov	r1, r8
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6]
	ldr	r5, [r6, #4]
	mov	r1, r8
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #4]
	ldr	r5, [r6, #8]
	mov	r1, r8
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #8]
	b	.Ld1fe4

	.pool_aligned

.Ld1fe0:
	mov	r5, #1
	add	r10, r5
.Ld1fe4:
	mov	r7, #1
	add	r9, r7
	mov	r0, r9
	add	r6, #0x1c
	cmp	r0, #0x20
	beq	.Ld1ff2
	b	.Ld1ed4
.Ld1ff2:
	mov	r1, r10
	cmp	r1, #0
	ble	.Ld2030
	mov	r1, #0xa
	mov	r0, r10
	bl	Func_af0_from_thumb
	add	r4, r0, #1
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x4c]
	ldr	r3, [sp, #0x44]
	add	r1, r2, r1
	asr	r2, r3, #17
	lsr	r3, r4, #31
	add	r3, r4, r3
	ldr	r5, [sp, #0x48]
	asr	r3, #1
	sub	r2, r3
	asr	r3, r5, #16
	sub	r3, r4
	str	r0, [sp, #4]
	add	r2, #0x20
	sub	r3, #4
	str	r4, [sp]
	ldr	r0, [sp, #0x64]
	ldr	r7, [sp, #0x58]
	bl	_call_via_r7
.Ld2030:
	mov	r0, #0
	mov	r11, r0
	mov	r10, r0
.Ld2036:
	ldr	r2, =.Lee16c
	mov	r1, r11
	lsl	r3, r1, #1
	ldrh	r3, [r2, r3]
	ldr	r4, [sp, #0x50]
	cmp	r4, r3
	bne	.Ld20b0
	ldr	r7, =ewram_10000
	mov	r5, #0
	mov	r9, r5
	add	r7, r10
	mov	r8, r5
.Ld204e:
	bl	Func_4458
	mov	r6, #0x7f
	and	r6, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x10
	mov	r3, r6
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	sub	r3, #0x80
	mov	r0, r8
	lsl	r3, #10
	str	r3, [r7, #0x10]
	str	r0, [r7]
	str	r0, [r7, #4]
	str	r0, [r7, #8]
	bl	Func_4458
	mov	r3, #0xf
	mov	r1, #1
	and	r3, r0
	add	r9, r1
	add	r3, #0x40
	mov	r2, r9
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r2, #0x60
	bne	.Ld204e
	ldr	r2, =.Lee16c
.Ld20b0:
	ldrh	r3, [r2]
	ldr	r4, [sp, #0x50]
	cmp	r4, r3
	blt	.Ld2156
	mov	r5, #0
	mov	r9, r5
	ldr	r5, =ewram_10000
.Ld20be:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Ld2148
	add	r7, sp, #0x8c
	mov	r1, r7
	mov	r0, r5
	bl	Func_e3944
	ldr	r3, [r7]
	asr	r3, #17
	add	r3, #0x20
	str	r3, [r7]
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	add	r3, #0x38
	str	r3, [r7, #4]
	mov	r1, #0xa
	ldrsh	r3, [r7, r1]
	str	r3, [r7, #8]
	cmp	r3, #0xa9
	bgt	.Ld20ec
	mov	r3, #0xaa
	str	r3, [r7, #8]
.Ld20ec:
	mov	r3, #0xaf
	ldr	r0, [r7, #8]
	lsl	r3, #1
	cmp	r0, r3
	ble	.Ld20fa
	str	r3, [r7, #8]
	mov	r0, r3
.Ld20fa:
	mov	r1, #0x5a
	sub	r0, #0xaa
	bl	Func_af0_from_thumb
	mov	r3, #3
	sub	r4, r3, r0
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x4c]
	lsr	r3, r4, #31
	add	r1, r2, r1
	add	r3, r4, r3
	ldr	r2, [r7]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r7, #4]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x54]
	ldr	r0, [sp, #0x64]
	bl	_call_via_r4
	ldr	r2, [r5]
	ldr	r3, [r5, #0xc]
	add	r2, r3
	str	r2, [r5]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #0x10]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #8]
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Ld2148:
	mov	r7, #1
	mov	r0, #0x80
	add	r9, r7
	lsl	r0, #2
	add	r5, #0x1c
	cmp	r9, r0
	bne	.Ld20be
.Ld2156:
	mov	r2, #1
	mov	r1, #0xe0
	add	r11, r2
	lsl	r1, #4
	mov	r3, r11
	add	r10, r1
	cmp	r3, #4
	beq	.Ld2168
	b	.Ld2036
.Ld2168:
	mov	r4, #0
	ldr	r3, =0x7710
	mov	r9, r4
	str	r4, [sp, #0x18]
	ldr	r2, [sp, #0x5c]
	ldr	r4, [sp, #0x44]
	ldr	r0, =0xfffffeb6
	ldr	r7, [sp, #0x50]
	ldr	r5, =0x7720
	mov	r1, #0xa5
	add	r6, r2, r3
	asr	r3, r4, #17
	add	r0, r7, r0
	lsl	r1, #1
	add	r3, #0x20
	str	r5, [sp, #0x1c]
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	str	r3, [sp, #0x34]
.Ld218e:
	ldr	r5, [sp, #0x50]
	ldr	r7, [sp, #0x10]
	cmp	r5, r7
	bne	.Ld21d4
	ldr	r1, [sp, #0x48]
	ldr	r0, [sp, #0x34]
	asr	r3, r1, #16
	sub	r3, #4
	str	r3, [r6, #4]
	str	r3, [r6, #0x10]
	str	r0, [r6]
	str	r0, [r6, #0xc]
	ldr	r4, [sp, #0x5c]
	ldr	r5, =0x7418
	mov	r2, #0
	mov	r11, r2
	add	r3, r4, r5
	mov	r2, #4
.Ld21b2:
	mov	r7, #1
	add	r11, r7
	mov	r0, r11
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r0, #0x1c
	bne	.Ld21b2
	ldr	r3, [sp, #0x5c]
	ldr	r2, =0xfffe0000
	ldr	r4, =0x77a8
	mov	r1, #0x80
	lsl	r1, #12
	str	r2, [sp, #0x40]
	add	r2, r3, r4
	mov	r3, #8
	str	r1, [sp, #0x3c]
	str	r3, [r2]
.Ld21d4:
	ldr	r5, [sp, #0x50]
	ldr	r7, [sp, #0x10]
	cmp	r5, r7
	bge	.Ld21de
	b	.Ld230a
.Ld21de:
	ldr	r0, [sp, #0x14]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r4, r3, #1
	cmp	r4, #2
	ble	.Ld21ec
	mov	r4, #2
.Ld21ec:
	ldr	r2, =.Lee17e
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Lee17a
	ldrb	r0, [r3, r4]
	ldr	r3, [r6, #4]
	sub	r3, r0
	ldr	r0, =.Lee174
	ldr	r2, [sp, #0x5c]
	ldrb	r0, [r0, r4]
	add	r1, r2, r1
	ldr	r2, [r6]
	str	r0, [sp]
	ldr	r0, =.Lee177
	ldrb	r0, [r0, r4]
	ldr	r4, [sp, #0x58]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x64]
	bl	_call_via_r4
	ldr	r3, [r6]
	sub	r3, #8
	str	r3, [r6]
	ldr	r3, [r6, #4]
	add	r3, #2
	str	r3, [r6, #4]
	ldr	r3, [sp, #0x10]
	ldr	r5, [sp, #0x50]
	add	r3, #8
	cmp	r5, r3
	bge	.Ld230a
	ldr	r0, =0xfffff800
	bl	Func_4c6c
	ldr	r0, =0xfffff000
	bl	Func_4c1c
	add	r0, sp, #0x98
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r7, #0
	mov	r8, r0
	mov	r3, #0
	ldr	r4, [sp, #0x5c]
	mov	r0, #0xe8
	mov	r11, r7
	lsl	r0, #7
	add	r7, sp, #0x8c
	str	r1, [sp, #0x30]
	str	r2, [sp, #0x2c]
	str	r3, [sp, #0x20]
	mov	r10, r7
	add	r5, r4, r0
.Ld2256:
	mov	r1, r8
	mov	r3, #0
	str	r3, [r1]
	ldr	r0, [sp, #0x20]
	bl	Func_231c
	ldr	r3, [r5, #0x18]
	mul	r3, r0
	mov	r2, r8
	str	r3, [r2, #4]
	ldr	r0, [sp, #0x20]
	bl	Func_2322
	ldr	r3, [r5, #0x18]
	mul	r3, r0
	mov	r4, r8
	str	r3, [r4, #8]
	ldr	r3, [r5, #0x18]
	add	r3, #2
	str	r3, [r5, #0x18]
	mov	r1, r10
	mov	r0, r8
	bl	Func_e3944
	mov	r0, r10
	ldr	r1, [sp, #0x30]
	ldr	r4, =0x771c
	ldr	r2, [r0]
	ldr	r0, [sp, #0x5c]
	add	r3, r1, r4
	ldr	r3, [r0, r3]
	asr	r2, #17
	mov	r1, r10
	add	r2, r3
	str	r2, [r1]
	ldr	r4, [sp, #0x2c]
	mov	r3, #6
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, r4]
	add	r2, r3
	mov	r0, #0xa
	ldrsh	r3, [r1, r0]
	str	r2, [r1, #4]
	str	r3, [r1, #8]
	cmp	r3, #0xa9
	bgt	.Ld22b6
	mov	r3, #0xaa
	str	r3, [r7, #8]
.Ld22b6:
	mov	r3, #0xaf
	ldr	r0, [r7, #8]
	lsl	r3, #1
	cmp	r0, r3
	ble	.Ld22c4
	str	r3, [r7, #8]
	mov	r0, r3
.Ld22c4:
	mov	r1, #0x5a
	sub	r0, #0xaa
	bl	Func_af0_from_thumb
	mov	r3, #3
	sub	r4, r3, r0
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x4c]
	lsr	r3, r4, #31
	add	r1, r2, r1
	add	r3, r4, r3
	ldr	r2, [r7]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r7, #4]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x54]
	ldr	r0, [sp, #0x64]
	bl	_call_via_r4
	ldr	r1, =0x924
	ldr	r0, [sp, #0x20]
	mov	r2, #1
	add	r11, r2
	add	r0, r1
	mov	r3, r11
	str	r0, [sp, #0x20]
	add	r5, #0x1c
	cmp	r3, #0x1c
	bne	.Ld2256
.Ld230a:
	ldr	r4, [sp, #0x1c]
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	mov	r1, #1
	add	r9, r1
	add	r4, #0x1c
	add	r5, #0x1c
	sub	r7, #0xc
	add	r0, #0xc
	mov	r2, r9
	str	r4, [sp, #0x1c]
	str	r5, [sp, #0x18]
	str	r7, [sp, #0x14]
	str	r0, [sp, #0x10]
	add	r6, #0x1c
	cmp	r2, #4
	beq	.Ld2330
	b	.Ld218e
.Ld2330:
	bl	Func_cd52c
	ldr	r4, =0x7824
	ldr	r3, [sp, #0x5c]
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r5, [sp, #0x50]
	mov	r7, #0xc8
	add	r5, #1
	lsl	r7, #1
	str	r5, [sp, #0x50]
	cmp	r5, r7
	beq	.Ld2356
	bl	.Ld18a8
.Ld2356:
	mov	r0, #0x86
	bl	_Func_bd7dc
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x5c]
	add	r2, r1, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r9, r0
	cmp	r3, #0
	beq	.Ld23a0
	mov	r6, r2
	add	r7, sp, #0xa4
	add	r5, sp, #0xc4
	mov	r1, #0x24
.Ld2376:
	ldr	r3, [r6]
	ldrsh	r0, [r3, r1]
	str	r1, [sp, #0xc]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r2, [r0]
	str	r3, [r2, #8]
	ldr	r3, [r5, #4]
	str	r3, [r2, #0x10]
	ldmia	r7!, {r3}
	strh	r3, [r2, #6]
	ldr	r3, [r6]
	ldr	r1, [sp, #0xc]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r9, r0
	add	r5, #8
	add	r1, #2
	cmp	r9, r3
	bne	.Ld2376
.Ld23a0:
	ldr	r2, =iwram_1ce0
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	b	.Ld23fc

	.pool_aligned

.Ld23fc:
	bl	Func_d67dc
	ldr	r3, =0x77d8
	ldr	r2, [sp, #0x5c]
	mov	r1, #0
	mov	r9, r1
	add	r5, r2, r3
.Ld240a:
	ldmia	r5!, {r0}
	bl	_Func_bdd4
	mov	r4, #1
	add	r9, r4
	mov	r7, r9
	cmp	r7, #9
	bne	.Ld240a
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x164
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d1714

	.section .rodata

.Lee15a:
	.incrom 0xee15a, 0xee163
.Lee163:
	.incrom 0xee163, 0xee16c
.Lee16c:
	.incrom 0xee16c, 0xee174
.Lee174:
	.incrom 0xee174, 0xee177
.Lee177:
	.incrom 0xee177, 0xee17a
.Lee17a:
	.incrom 0xee17a, 0xee17e
.Lee17e:
	.incrom 0xee17e, 0xee184
