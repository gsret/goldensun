	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8d9a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	mov	r5, r8
	add	r3, r0
	sub	r5, #0xf2
	ldr	r6, [r3]
	cmp	r5, #5
	bhi	.L8d9e6
	bl	Func_91660
	ldr	r3, =.L9e680
	ldrb	r3, [r3, r5]
	ldr	r0, =0x928
	mov	r8, r3
	add	r0, r8
	mov	r1, #1
	bl	_Func_1776c
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r8
	bl	_Func_1776c
	b	.L8dd72
.L8d9e6:
	mov	r0, #3
	mov	r1, r8
	bl	Func_8d48c
	mov	r7, r0
	cmp	r7, #0
	bne	.L8d9f6
	b	.L8dd5a
.L8d9f6:
	ldr	r3, [r7]
	asr	r5, r3, #4
	mov	r3, #0x1f
	mov	r2, #6
	ldrsh	r1, [r7, r2]
	and	r5, r3
	ldrh	r2, [r7, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	mov	r10, r1
	cmp	r3, #0
	bne	.L8da2c
	cmp	r5, #0
	beq	.L8da2c
	bl	Func_91660
	ldr	r0, =0x928
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_1776c
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79358
	b	.L8da34
.L8da2c:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79374
.L8da34:
	ldr	r2, [r7, #8]
	mov	r3, #0xf0
	lsl	r3, #20
	and	r3, r2
	cmp	r3, #0
	bne	.L8da4e
	ldr	r3, =0xfff00000
	mov	r0, #0x80
	and	r3, r2
	lsl	r0, #15
	cmp	r3, r0
	bne	.L8da9a
	b	.L8da82
.L8da4e:
	mov	r0, r10
	bl	Func_8d428
	cmp	r0, #0
	beq	.L8da68
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	bl	_call_via_r3
.L8da68:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8da76
	b	.L8dd6a
.L8da76:
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_1776c
	b	.L8dd6a
.L8da82:
	mov	r0, r10
	bl	Func_8d428
	cmp	r0, #0
	beq	.L8da90
	ldrh	r0, [r7, #8]
	b	.L8da92
.L8da90:
	ldr	r0, =0x976
.L8da92:
	mov	r1, #1
	bl	_Func_1776c
	b	.L8dd6a
.L8da9a:
	bl	Func_916b0
	mov	r0, r10
	bl	Func_8d428
	cmp	r0, #0
	bne	.L8daaa
	b	.L8dd46
.L8daaa:
	ldr	r1, [r7, #8]
	mov	r3, #0xf0
	lsl	r3, #12
	mov	r0, #0x80
	and	r3, r1
	lsl	r0, #9
	mov	r2, #1
	cmp	r3, r0
	bne	.L8dac2
	cmp	r6, #7
	bgt	.L8dac2
	mov	r2, #0
.L8dac2:
	cmp	r2, #0
	bne	.L8dac8
	b	.L8dd3c
.L8dac8:
	ldr	r2, =0x1ff
	ldr	r3, [r7]
	and	r3, r2
	mov	r11, r2
	cmp	r3, #0x13
	bne	.L8dadc
	mov	r0, r8
	bl	Func_8ece0
	ldr	r1, [r7, #8]
.L8dadc:
	ldr	r3, =0xfff00000
	mov	r0, #0xc0
	and	r3, r1
	lsl	r0, #14
	cmp	r3, r0
	bne	.L8db98
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8daf8
	mov	r0, r8
	bl	Func_8ed1c
.L8daf8:
	mov	r0, r8
	bl	Func_8ed4c
	mov	r6, r0
	bl	Func_8f0d8
	mov	r0, #0x53
	bl	_Func_f9080
	ldrh	r0, [r7, #8]
	mov	r1, #5
	bl	_Func_19908
	ldr	r5, =0x970
	mov	r1, #3
	mov	r0, r5
	bl	_Func_1776c
	mov	r1, #0
	ldr	r0, =0x3e7
	bl	Func_8c2dc
	mov	r0, #1
	bl	_Func_1ef08
	mov	r0, #0x7e
	bl	_Func_f9080
	add	r0, r5, #1
	mov	r1, #1
	bl	_Func_1776c
	bl	_Func_1f5d4
	mov	r1, #2
	mov	r0, r6
	bl	_Func_c300
	mov	r0, #0xf6
	bl	_Func_f9080
	add	r5, #2
	mov	r0, #0x1e
	bl	Func_9163c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_1776c
	mov	r0, r8
	bl	Func_8ed78
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	bne	.L8db6a
	b	.L8dd50
.L8db6a:
	mov	r0, r10
	bl	_Func_79358
	b	.L8dd50

	.pool_aligned

.L8db98:
	mov	r0, #0xa0
	lsl	r0, #15
	cmp	r3, r0
	bne	.L8dc18
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8dbb4
	mov	r0, r8
	bl	Func_8ec8c
.L8dbb4:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dbd0
	ldr	r2, .L8dbf8	@ 0x1000
	mov	r1, r10
	orr	r1, r2
	ldr	r3, =ewram_240
	mov	r0, #0x8d
	lsl	r0, #2
	mov	r10, r1
	add	r3, r0
	mov	r2, r10
	strh	r2, [r3]
.L8dbd0:
	ldrh	r1, [r7, #8]
	mov	r0, #0x63
	bl	Func_8b05c
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r5, r1
	strh	r0, [r3]
	ldr	r5, =ewram_240
	ldr	r3, =0x22b
	add	r2, r5, r3
	mov	r3, #2
	strb	r3, [r2]
	ldrh	r1, [r7, #8]
	mov	r0, #0x63
	bl	Func_8b320
	mov	r0, #0xf7
	b	.L8dc08

	.align	2, 0
.L8dbf8:
	.word	0x1000
	.pool

.L8dc08:
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_Func_f9080
	ldr	r0, =0x973
	b	.L8dd3e
.L8dc18:
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	bne	.L8dc80
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_8ef70
	mov	r5, r0
	mov	r0, #0x1e
	bl	Func_30f8
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8dc48
	mov	r0, r8
	bl	Func_8ed1c
.L8dc48:
	mov	r0, r5
	bl	Func_8f0d8
	mov	r0, #0x53
	bl	_Func_f9080
	ldrh	r0, [r7, #8]
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x969
	mov	r1, #3
	bl	_Func_1776c
	ldrh	r0, [r7, #8]
	bl	_Func_79700
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dc78
	mov	r0, r10
	bl	_Func_79358
.L8dc78:
	mov	r0, r5
	bl	_Func_c0f4
	b	.L8dd50
.L8dc80:
	ldr	r3, =ewram_434
	ldr	r2, =0xfff
	ldr	r0, [r3]
	and	r1, r2
	bl	Func_8ef70
	mov	r9, r0
	mov	r0, #0x1e
	bl	Func_30f8
	ldrh	r0, [r7, #8]
	bl	_Func_78618
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	ldr	r5, =0xffff
	cmp	r6, r3
	bne	.L8dcde
	ldr	r0, [r7, #8]
	ldr	r1, =0xfff
	and	r0, r1
	mov	r1, #2
	bl	_Func_19908
	ldr	r5, =0x968
	mov	r1, #1
	mov	r0, r5
	add	r5, #4
	bl	_Func_1776c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_1776c
	mov	r0, r9
	bl	Func_8f0c8
	ldr	r3, [r7]
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0x13
	bne	.L8dd50
	mov	r0, r8
	bl	Func_8ec50
	b	.L8dd50
.L8dcde:
	ldr	r3, [r7]
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0x13
	bne	.L8dcee
	mov	r0, r8
	bl	Func_8ed1c
.L8dcee:
	mov	r0, r9
	bl	Func_8f0d8
	mov	r0, #0x53
	bl	_Func_f9080
	ldr	r0, [r7, #8]
	mov	r1, #2
	and	r0, r5
	bl	_Func_19908
	ldr	r1, =ewram_434
	ldr	r3, [r1]
	cmp	r6, r3
	bne	.L8dd16
	ldr	r0, =0x96a
	mov	r1, #3
	bl	_Func_1776c
	b	.L8dd26
.L8dd16:
	mov	r0, r6
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x96b
	mov	r1, #3
	bl	_Func_1776c
.L8dd26:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dd34
	mov	r0, r10
	bl	_Func_79358
.L8dd34:
	mov	r0, r9
	bl	_Func_c0f4
	b	.L8dd50
.L8dd3c:
	ldr	r0, =0x96f
.L8dd3e:
	mov	r1, #1
	bl	_Func_1776c
	b	.L8dd50
.L8dd46:
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_1776c
.L8dd50:
	bl	Func_91750
	bl	Func_9202c
	b	.L8dd6a
.L8dd5a:
	ldr	r0, =0x92d
	mov	r1, #1
	bl	_Func_1776c
	ldr	r0, =0x94d
	mov	r1, #1
	bl	_Func_1776c
.L8dd6a:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79374
.L8dd72:
	mov	r0, #0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8d9a4

.thumb_func_start Func_8ddb8
	push	{lr}
	ldr	r2, =.L9e686
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
	mov	r1, #0x10
	b	.L8ddd2
.L8ddc8:
	add	r2, #2
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
.L8ddd2:
	cmp	r3, r4
	beq	.L8dde0
	add	r2, #2
	cmp	r0, r3
	bne	.L8ddc8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
.L8dde0:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end Func_8ddb8

.thumb_func_start Func_8ddec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #1
	sub	sp, #4
	neg	r1, r1
	mov	r2, #0x20
	mov	r9, r0
	str	r1, [sp]
	mov	r11, r2
	bl	Func_8ba1c
	mov	r7, r0
	cmp	r7, #0
	beq	.L8def2
	mov	r3, #0
	mov	r10, r3
.L8de16:
	cmp	r10, r9
	beq	.L8dee8
	mov	r0, r10
	bl	Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L8dee8
	mov	r1, #0x59
	add	r1, r6
	ldrb	r2, [r1]
	mov	r3, #8
	and	r3, r2
	mov	r8, r1
	cmp	r3, #0
	bne	.L8dee8
	ldr	r4, [r6, #0xc]
	ldr	r1, [r7, #0xc]
	sub	r3, r4, r1
	cmp	r3, #0
	blt	.L8de48
	ldr	r2, =0x2fffff
	cmp	r3, r2
	ble	.L8de50
	b	.L8dee8
.L8de48:
	ldr	r2, =0x2fffff
	sub	r3, r1, r4
	cmp	r3, r2
	bgt	.L8dee8
.L8de50:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L8de5e
	ldr	r3, =0xffff
	add	r0, r3
.L8de5e:
	sub	r2, r4, r1
	asr	r0, #16
	cmp	r2, #0
	bge	.L8de6a
	ldr	r1, =0xffff
	add	r2, r1
.L8de6a:
	asr	r1, r2, #16
	ldr	r3, [r7, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r2, r3
	cmp	r2, #0
	bge	.L8de7a
	ldr	r3, =0xffff
	add	r2, r3
.L8de7a:
	asr	r3, r2, #16
	mov	r2, r0
	mul	r2, r0
	mov	r0, r2
	mov	r2, r1
	mul	r2, r1
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L8deb2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #1
	mov	r1, #0xd
	bl	Func_af0_from_thumb
	mov	r5, r0
.L8deb2:
	cmp	r5, r11
	bge	.L8dee8
	ldr	r3, [r7, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	Func_44d0
	lsl	r0, #16
	lsr	r0, #16
	cmp	r5, #0xb
	ble	.L8dee2
	ldrh	r3, [r7, #6]
	sub	r3, r0, r3
	lsl	r3, #16
	ldr	r1, =0xffffd001
	asr	r0, r3, #16
	cmp	r0, r1
	blt	.L8dee8
	ldr	r2, =0x2fff
	cmp	r0, r2
	bgt	.L8dee8
.L8dee2:
	mov	r3, r10
	str	r3, [sp]
	mov	r11, r5
.L8dee8:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x42
	ble	.L8de16
.L8def2:
	ldr	r0, [sp]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8ddec

.thumb_func_start Func_8df1c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r1, #1
	str	r0, [sp, #8]
	neg	r1, r1
	mov	r0, r8
	str	r1, [sp, #4]
	bl	Func_8ddb8
	str	r0, [sp]
	ldr	r0, [sp, #8]
	bl	Func_8ba1c
	mov	r7, r0
	cmp	r7, #0
	bne	.L8df4c
	b	.L8e05c
.L8df4c:
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r2, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r2, r3
	mov	r3, #0
	mov	r11, r2
	mov	r9, r3
.L8df60:
	ldr	r1, [sp, #8]
	cmp	r9, r1
	beq	.L8e052
	mov	r0, r9
	bl	Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L8e052
	mov	r2, #0x59
	add	r2, r6
	mov	r10, r2
	ldrb	r2, [r2]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L8e052
	mov	r0, #0x80
	mov	r3, r8
	lsl	r0, #12
	cmp	r3, #0xd
	bne	.L8df90
	mov	r0, #0xc0
	lsl	r0, #14
.L8df90:
	mov	r1, r8
	cmp	r1, #5
	bne	.L8df9a
	mov	r0, #0x80
	lsl	r0, #15
.L8df9a:
	mov	r2, r8
	cmp	r2, #2
	bne	.L8dfa4
	mov	r0, #0x80
	lsl	r0, #13
.L8dfa4:
	ldr	r1, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L8dfb4
	cmp	r2, r0
	ble	.L8dfba
	b	.L8e052
.L8dfb4:
	sub	r3, r1
	cmp	r3, r0
	bgt	.L8e052
.L8dfba:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L8dfc8
	ldr	r3, =0xffff
	add	r0, r3
.L8dfc8:
	ldr	r2, [r6, #0x10]
	ldr	r3, [r7, #0x10]
	sub	r2, r3
	asr	r0, #16
	cmp	r2, #0
	bge	.L8dfd8
	ldr	r1, =0xffff
	add	r2, r1
.L8dfd8:
	asr	r3, r2, #16
	mov	r1, r3
	mul	r1, r3
	mov	r2, r0
	mul	r2, r0
	mov	r3, r1
	mov	r0, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r3, r10
	ldrb	r2, [r3]
	mov	r3, #0x10
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L8e006
	lsl	r0, r5, #1
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r5, r0
.L8e006:
	ldr	r1, [sp]
	cmp	r5, r1
	bge	.L8e052
	ldr	r3, [r7, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	Func_44d0
	mov	r2, #0xc0
	lsl	r0, #16
	lsr	r0, #16
	lsl	r2, #5
	cmp	r5, #0x13
	ble	.L8e02c
	mov	r2, #0x80
	lsl	r2, #5
.L8e02c:
	mov	r3, r8
	cmp	r3, #2
	bne	.L8e036
	mov	r2, #0x80
	lsl	r2, #6
.L8e036:
	cmp	r5, #0xb
	ble	.L8e04c
	mov	r1, r11
	sub	r3, r0, r1
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0
	bge	.L8e048
	neg	r0, r0
.L8e048:
	cmp	r0, r2
	bge	.L8e052
.L8e04c:
	mov	r2, r9
	str	r2, [sp, #4]
	str	r5, [sp]
.L8e052:
	mov	r3, #1
	add	r9, r3
	mov	r1, r9
	cmp	r1, #0x42
	ble	.L8df60
.L8e05c:
	ldr	r0, [sp, #4]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8df1c

.thumb_func_start Func_8e078
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, r1
	mov	r6, r2
	bl	Func_92054
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L8e0a8
	mov	r0, #0x7c
	bl	_Func_f9080
	mov	r1, #4
	mov	r0, r5
	bl	_Func_c300
	mov	r0, #0xc
	bl	Func_30f8
	mov	r0, r7
	mov	r1, r6
	bl	Func_8ef70
.L8e0a8:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8e078

.thumb_func_start Func_8e0b0
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L8e10a
	ldr	r0, [r0, #0x50]
	sub	r4, r1, #1
	mov	r12, r0
	cmp	r1, #0
	bne	.L8e0d8
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	ldr	r1, =.L9e6b8
	lsr	r3, #1
	mov	r2, #7
	and	r3, r2
	ldrb	r4, [r1, r3]
.L8e0d8:
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8e102
	mov	r0, r12
	add	r0, #0x28
	mov	r1, r3
.L8e0e8:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.L8e0fc
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L8e0fc
	ldrb	r3, [r2, #5]
	cmp	r3, #0xf
	beq	.L8e0fc
	strb	r4, [r2, #5]
.L8e0fc:
	sub	r1, #1
	cmp	r1, #0
	bne	.L8e0e8
.L8e102:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L8e10a:
	pop	{r0}
	bx	r0
.func_end Func_8e0b0

.thumb_func_start Func_8e118
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcb6
	ldr	r3, [r3]
	add	r1, r3, r2
	mov	r2, #0
	strh	r2, [r1]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8e138
	ldr	r0, =0x2090
	bl	Func_8e5d8
.L8e138:
	pop	{r0}
	bx	r0
.func_end Func_8e118

.thumb_func_start Func_8e14c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	ldr	r5, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r5]
	ldr	r6, [r3, #0x10]
	sub	sp, #4
	bl	Func_8ba1c
	ldrh	r0, [r0, #6]
	mov	r11, r0
	ldr	r0, [r5]
	bl	Func_8ddec
	ldr	r3, =0x1ff
	mov	r2, r8
	and	r2, r3
	mov	r9, r0
	mov	r8, r2
	bl	Func_8bd24
	mov	r3, #1
	ldr	r1, [r6]
	neg	r3, r3
	mov	r10, r0
	cmp	r1, r3
	beq	.L8e224
.L8e196:
	mov	r3, #4
	ldrsh	r5, [r6, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r6, #4]
	and	r5, r3
	ldr	r3, .L8e1d4	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r7, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #4
	bne	.L8e216
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	str	r4, [sp]
	bl	Func_8d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e216
	cmp	r7, #0
	beq	.L8e1f2
	mov	r2, r11
	ldr	r1, =0x17ff
	sub	r3, r5, r2
	add	r3, r1
	b	.L8e1e8

	.align	2, 0
.L8e1d4:
	.word	0x800
	.pool

.L8e1e8:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e216
.L8e1f2:
	mov	r1, r8
	ldr	r2, [r6]
	ldrb	r3, [r6, #1]
	cmp	r1, #0
	beq	.L8e200
	cmp	r3, r8
	bne	.L8e216
.L8e200:
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L8e210
	cmp	r4, r9
	bne	.L8e216
	mov	r0, r6
	b	.L8e226
.L8e210:
	mov	r0, r6
	cmp	r4, r10
	beq	.L8e226
.L8e216:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e196
.L8e224:
	mov	r0, #0
.L8e226:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8e14c

.thumb_func_start Func_8e23c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =0x3ff
	mov	r2, #1
	sub	sp, #8
	mov	r11, r3
	neg	r2, r2
	str	r2, [sp]
	mov	r2, r11
	and	r2, r0
	mov	r3, #0xf
	asr	r0, #10
	and	r0, r3
	mov	r11, r2
	mov	r10, r0
	str	r1, [sp, #4]
	bl	_Func_795fc
	mov	r2, r10
	mov	r7, #0
	mov	r8, r0
	cmp	r2, #0xf
	bne	.L8e2be
	mov	r3, #0
	mov	r10, r3
	mov	r6, #0
	cmp	r10, r8
	bge	.L8e2de
	ldr	r3, =ewram_240
	ldr	r0, =0x1ff
	mov	r2, #0xfc
	lsl	r2, #1
	mov	r9, r0
	add	r5, r3, r2
.L8e28a:
	ldrb	r0, [r5]
	bl	_Func_77394
	mov	r4, #0
	add	r0, #0xd8
	mov	r1, #0xe
.L8e296:
	ldrh	r2, [r0]
	mov	r3, r9
	and	r3, r2
	add	r0, #2
	cmp	r3, r11
	bne	.L8e2a4
	add	r4, #1
.L8e2a4:
	sub	r1, #1
	cmp	r1, #0
	bge	.L8e296
	cmp	r7, r4
	bge	.L8e2b4
	ldrb	r3, [r5]
	mov	r7, r4
	mov	r10, r3
.L8e2b4:
	add	r6, #1
	add	r5, #1
	cmp	r6, r8
	blt	.L8e28a
	b	.L8e2de
.L8e2be:
	mov	r0, r10
	bl	_Func_77394
	ldr	r4, =0x1ff
	add	r0, #0xd8
	mov	r1, #0xe
.L8e2ca:
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	add	r0, #2
	cmp	r3, r11
	bne	.L8e2d8
	add	r7, #1
.L8e2d8:
	sub	r1, #1
	cmp	r1, #0
	bge	.L8e2ca
.L8e2de:
	cmp	r7, #0
	bne	.L8e2f0
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_1776c
	mov	r0, #1
	neg	r0, r0
	b	.L8e470
.L8e2f0:
	mov	r0, r11
	bl	Func_8e14c
	mov	r6, r0
	cmp	r6, #0
	beq	.L8e376
	ldr	r3, [r6, #8]
	cmp	r3, #0
	beq	.L8e376
	ldr	r0, =0x143
	bl	_Func_79374
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79374
	ldrh	r2, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L8e334
	mov	r0, r10
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r11
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0x91c
	mov	r1, #1
	bl	_Func_1776c
.L8e334:
	mov	r0, #0x80
	ldr	r3, [r6, #8]
	lsl	r0, #9
	cmp	r3, r0
	bge	.L8e366
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ddec
	mov	r5, r0
	bl	Func_916b0
	ldr	r0, [r6, #8]
	bl	Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	Func_92f84
	bl	Func_91750
	b	.L8e370
.L8e366:
	mov	r0, r11
	mov	r1, r10
	ldr	r2, [sp, #4]
	bl	_call_via_r3
.L8e370:
	mov	r3, #0
	str	r3, [sp]
	b	.L8e448
.L8e376:
	mov	r7, #0xa1
	ldr	r0, =0x143
	lsl	r7, #1
	bl	_Func_79374
	mov	r0, r7
	bl	_Func_79358
	mov	r0, r11
	bl	_Func_78414
	ldr	r3, =iwram_1ebc
	ldrh	r5, [r0, #0x28]
	ldr	r3, [r3]
	mov	r8, r3
	cmp	r5, #0
	beq	.L8e448
	ldr	r0, =0x145
	bl	_Func_79358
	mov	r0, r7
	bl	_Func_79374
	cmp	r5, #0x95
	bne	.L8e3fc
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8e3fc
	mov	r0, r11
	mov	r1, #2
	bl	_Func_19908
	mov	r1, #0xd
	ldr	r0, =0x924
	bl	_Func_1776c
	mov	r0, #1
	bl	Func_91d84
	mov	r6, r0
	bl	_Func_19a54
	mov	r0, #0
	cmp	r6, #0
	bne	.L8e470
	ldr	r1, =ewram_240
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r1, r0
	ldrh	r2, [r3]
	sub	r0, #0x80
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r2, =0x242
	add	r3, r1, r2
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r2, #0xb8
	lsl	r2, #1
	ldr	r3, =0x3e7
	add	r2, r8
	strh	r3, [r2]
.L8e3fc:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r11
	mov	r1, #2
	bl	_Func_19908
	ldr	r6, =0xcc6
	ldr	r0, =0x91c
	mov	r1, #1
	bl	_Func_1776c
	mov	r1, #0
	mov	r0, r5
	bl	Func_96fb0
	add	r6, r8
	mov	r2, #0
	mov	r5, #1
	mov	r8, r2
	strb	r5, [r6]
	bl	Func_96810
	mov	r3, r8
	strb	r3, [r6]
	bl	Func_97194
	mov	r0, r11
	bl	_Func_78414
	ldrb	r3, [r0, #0xc]
	and	r5, r3
	cmp	r5, #0
	beq	.L8e448
	ldr	r0, =0x143
	bl	_Func_79358
.L8e448:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e45c
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_1776c
.L8e45c:
	ldr	r0, =0x143
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e46e
	mov	r0, r10
	ldr	r1, [sp, #4]
	bl	_Func_788c4
.L8e46e:
	ldr	r0, [sp]
.L8e470:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8e23c

.thumb_func_start Func_8e4b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	ldr	r3, =iwram_1ebc
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
	ldr	r3, [r3]
	mov	r9, r0
	ldr	r0, [r5]
	sub	sp, #0xc
	ldr	r7, [r3, #0x10]
	mov	r10, r1
	bl	Func_8ba1c
	ldrh	r0, [r0, #6]
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r0, [r5]
	bl	Func_8df1c
	mov	r3, #0
	str	r0, [r6]
	mov	r8, r0
	mov	r11, r3
	bl	Func_8bd24
	ldr	r2, =0x70000005
	str	r0, [sp, #4]
	cmp	r9, r2
	bne	.L8e502
	mov	r3, #1
	mov	r11, r3
.L8e502:
	mov	r2, #1
	ldr	r1, [r7]
	neg	r2, r2
	cmp	r1, r2
	beq	.L8e5bc
.L8e50c:
	mov	r3, #4
	ldrsh	r5, [r7, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r7, #4]
	and	r5, r3
	ldr	r3, .L8e54c	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r6, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #5
	bne	.L8e5ae
	mov	r2, #6
	ldrsh	r0, [r7, r2]
	str	r4, [sp]
	bl	Func_8d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e5ae
	cmp	r6, #0
	beq	.L8e56a
	ldr	r2, [sp, #8]
	sub	r3, r5, r2
	ldr	r2, =0x17ff
	add	r3, r2
	b	.L8e560

	.align	2, 0
.L8e54c:
	.word	0x800
	.pool

.L8e560:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e5ae
.L8e56a:
	ldrb	r0, [r7, #1]
	str	r4, [sp]
	bl	_Func_78b9c
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp]
	cmp	r3, r10
	bne	.L8e5ae
	mov	r3, r11
	cmp	r3, #0
	bne	.L8e58c
	ldr	r1, [r7]
	ldr	r3, =0x7000000f
	and	r3, r1
	cmp	r3, r9
	bne	.L8e5ae
	b	.L8e58e
.L8e58c:
	ldr	r1, [r7]
.L8e58e:
	mov	r3, #0x80
	and	r3, r1
	mov	r0, r7
	cmp	r3, #0
	bne	.L8e5be
	mov	r3, #0x10
	and	r3, r1
	cmp	r3, #0
	beq	.L8e5a6
	cmp	r4, r8
	bne	.L8e5ae
	b	.L8e5be
.L8e5a6:
	ldr	r2, [sp, #4]
	mov	r0, r7
	cmp	r4, r2
	beq	.L8e5be
.L8e5ae:
	add	r7, #0xc
	ldr	r3, [r7]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e50c
.L8e5bc:
	mov	r0, #0
.L8e5be:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8e4b4

.thumb_func_start Func_8e5d8
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =0x3ff
	mov	r5, r0
	and	r3, r5
	mov	r8, r3
	mov	r0, r8
	mov	r3, #0xf
	lsr	r5, #10
	sub	sp, #4
	and	r5, r3
	bl	_Func_78b9c
	ldr	r6, =ewram_240
	mov	r3, #0xfa
	lsl	r3, #1
	ldrb	r0, [r0, #0xc]
	add	r6, r3
	mov	r9, r0
	ldr	r0, [r6]
	bl	Func_8ba1c
	mov	r10, sp
	mov	r1, r9
	mov	r2, r10
	ldr	r0, =0x30000005
	bl	Func_8e4b4
	mov	r2, r10
	mov	r11, r0
	mov	r1, r9
	ldr	r0, =0x20000005
	bl	Func_8e4b4
	mov	r1, #0
	mov	r10, r0
	mov	r0, r8
	bl	Func_96fb0
	ldr	r0, [r6]
	ldr	r1, [sp]
	bl	Func_970f8
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r11
	bl	Func_96b28
	bl	Func_96af0
	bl	Func_97174
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r10
	bl	Func_96b28
	bl	Func_97194
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8e5d8

.thumb_func_start Func_8e680
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r0, =0x3ff
	ldr	r3, =iwram_1ebc
	mov	r2, r8
	and	r2, r0
	mov	r9, r2
	ldr	r3, [r3]
	mov	r0, r9
	sub	sp, #0xc
	mov	r10, r3
	bl	_Func_78b9c
	mov	r3, r8
	ldrb	r0, [r0, #0xc]
	lsr	r6, r3, #10
	mov	r3, #0xf
	and	r6, r3
	mov	r11, r0
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r2, #0
	str	r2, [sp]
	bl	Func_91660
	ldr	r0, =0x145
	bl	_Func_79374
	cmp	r6, #0xf
	bne	.L8e6d4
	mov	r6, #0
.L8e6d4:
	mov	r0, #0xbf
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e6fa
	mov	r0, r6
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r9
.L8e6ea:
	mov	r1, #4
	bl	_Func_19908
	ldr	r0, =0x91f
.L8e6f2:
	mov	r1, #1
	bl	_Func_1776c
	b	.L8e91e
.L8e6fa:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e71a
	mov	r2, r9
	cmp	r2, #0x90
	bne	.L8e71a
	mov	r0, r6
	mov	r1, #1
	bl	_Func_19908
	mov	r0, #0x90
	b	.L8e6ea
.L8e71a:
	mov	r3, r9
	cmp	r3, #0x95
	bne	.L8e78e
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e740
	mov	r0, r6
	mov	r1, #1
	bl	_Func_19908
	mov	r0, #0x95
	mov	r1, #4
	bl	_Func_19908
	ldr	r0, =0x921
	b	.L8e6f2
.L8e740:
	mov	r0, #0x95
	mov	r1, #4
	bl	_Func_19908
	mov	r1, #0xd
	ldr	r0, =0x920
	bl	_Func_1776c
	mov	r0, #1
	bl	Func_91d84
	mov	r5, r0
	bl	_Func_19a54
	mov	r0, #0
	cmp	r5, #0
	beq	.L8e764
	b	.L8e920
.L8e764:
	ldr	r1, =ewram_240
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r1, r0
	ldrh	r2, [r3]
	sub	r0, #0x80
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r2, =0x242
	add	r3, r1, r2
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r2, #0xb8
	lsl	r2, #1
	ldr	r3, =0x3e7
	add	r2, r10
	strh	r3, [r2]
	mov	r2, #1
	str	r2, [sp]
.L8e78e:
	mov	r7, #0x80
	lsl	r7, #6
	mov	r3, r8
	and	r7, r3
	cmp	r7, #0
	beq	.L8e7a2
	mov	r0, r8
	bl	Func_8e5d8
	b	.L8e920
.L8e7a2:
	cmp	r6, #7
	bgt	.L8e7ee
	mov	r0, r9
	bl	_Func_78b9c
	ldrb	r5, [r0, #9]
	mov	r0, r6
	bl	_Func_77394
	mov	r2, #0x3a
	ldrsh	r3, [r0, r2]
	cmp	r3, r5
	bge	.L8e7e6
	mov	r0, r6
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r9
	mov	r1, #4
	bl	_Func_19908
	ldr	r0, =0x91e
	mov	r1, #1
	bl	_Func_1776c
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L8e7dc
	b	.L8e91e
.L8e7dc:
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r10
	strh	r7, [r3]
	b	.L8e91e
.L8e7e6:
	neg	r1, r5
	mov	r0, r6
	bl	_Func_783dc
.L8e7ee:
	add	r5, sp, #8
	mov	r2, r5
	mov	r1, r11
	ldr	r0, =0x10000005
	bl	Func_8e4b4
	mov	r2, r5
	str	r0, [sp, #4]
	mov	r1, r11
	mov	r0, #5
	bl	Func_8e4b4
	mov	r2, r5
	mov	r1, r11
	mov	r8, r0
	ldr	r0, =0x50000005
	bl	Func_8e4b4
	ldr	r5, =0x141
	mov	r7, r0
	mov	r3, #1
	mov	r0, #0xa0
	neg	r3, r3
	lsl	r0, #1
	str	r3, [sp, #8]
	bl	_Func_79358
	mov	r0, r5
	bl	_Func_79358
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.L8e83a
	mov	r2, r8
	cmp	r2, #0
	bne	.L8e83a
	cmp	r7, #0
	beq	.L8e86e
.L8e83a:
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, r11
	bl	Func_8df1c
	mov	r2, r8
	str	r0, [sp, #8]
	cmp	r2, #0
	beq	.L8e874
	ldrh	r2, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L8e874
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_Func_79374
	ldr	r0, =0x141
	bl	_Func_79374
	b	.L8e874
.L8e86e:
	mov	r0, r5
	bl	_Func_79374
.L8e874:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e886
	bl	Func_8b8e8
.L8e886:
	mov	r0, r9
	mov	r1, #0
	bl	Func_96fb0
	ldr	r2, =0xcc6
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	ldr	r1, [sp, #8]
	bl	Func_970f8
	bl	Func_9728c
	mov	r1, r6
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #4]
	bl	Func_96b28
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e8d4
	ldr	r0, =0x141
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e8d0
	bl	Func_96960
	b	.L8e8d4
.L8e8d0:
	bl	Func_96810
.L8e8d4:
	bl	Func_97174
	mov	r5, #0xa0
	ldr	r2, [sp, #8]
	mov	r0, r8
	mov	r1, r6
	lsl	r5, #1
	bl	Func_96b28
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8e8f4
	bl	Func_96ab0
.L8e8f4:
	mov	r0, r5
	bl	_Func_79374
	ldr	r0, =0x141
	bl	_Func_79374
	ldr	r2, =0xcc6
	mov	r3, #0
	add	r2, r10
	strb	r3, [r2]
	bl	Func_97194
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e91e
	bl	Func_8b98c
.L8e91e:
	mov	r0, #0
.L8e920:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8e680

.thumb_func_start Func_8e96c
	push	{lr}
	mov	r1, r0
	sub	sp, #4
	lsl	r1, #16
	mov	r2, sp
	lsr	r1, #16
	ldr	r0, =0x70000005
	bl	Func_8e4b4
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end Func_8e96c

.thumb_func_start Func_8e990
	push	{lr}
	lsl	r0, #16
	lsr	r0, #16
	bl	Func_8e14c
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r1}
	bx	r1
.func_end Func_8e990

.thumb_func_start Func_8e9a8
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	_Func_11f54
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x14]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8e9a8

.thumb_func_start Func_8e9c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	sub	sp, #0xc
	mov	r1, #0
	ldr	r2, [r3]
	ldr	r3, [r3, #0x4c]
	str	r1, [sp]
	ldr	r2, [r2, #0x10]
	mov	r10, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r2, r3
	mov	r8, r2
	add	r0, sp, #8
	str	r1, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000014
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r10
	cmp	r3, #0
	bne	.L8e9fc
	b	.L8ebe2
.L8e9fc:
	mov	r4, #1
	add	r10, r4
	ldrb	r7, [r3]
	mov	r1, r10
	ldrb	r5, [r1]
	add	r10, r4
	cmp	r7, #0xff
	bne	.L8ea12
	cmp	r5, #0xff
	bne	.L8ea12
	b	.L8ebe2
.L8ea12:
	mov	r2, r10
	ldrb	r2, [r2]
	mov	r3, #1
	add	r10, r3
	mov	r3, r2
	sub	r3, #0x64
	str	r2, [sp, #4]
	cmp	r3, #0x8b
	bls	.L8ea26
	b	.L8ebc8
.L8ea26:
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x24]
	bl	_call_via_r0
	mov	r6, r0
	mov	r4, #1
	ldr	r2, [r6]
	neg	r4, r4
	cmp	r2, r4
	bne	.L8ea3c
	b	.L8ebc8
.L8ea3c:
	mov	r1, #0x80
	lsl	r7, #20
	lsl	r1, #12
	mov	r11, r7
	mov	r9, r1
	lsl	r7, r5, #20
.L8ea48:
	mov	r4, #4
	ldrsh	r3, [r6, r4]
	ldr	r1, [sp, #4]
	cmp	r3, r1
	beq	.L8ea54
	b	.L8ebb8
.L8ea54:
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r3, #0x13
	bne	.L8eb02
	mov	r4, r9
	mov	r1, r11
	mov	r0, #0x14
	add	r1, r9
	mov	r2, #0
	add	r3, r7, r4
	bl	_Func_c150
	mov	r5, r0
	cmp	r5, #0
	bne	.L8ea74
	b	.L8ebb8
.L8ea74:
	bl	Func_8e9a8
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8eaaa
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0xa0
	lsl	r3, #15
	cmp	r2, r3
	bne	.L8eaa2
	mov	r0, r5
	bl	_Func_c0f4
	b	.L8ebb8
.L8eaa2:
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
.L8eaaa:
	mov	r0, r5
	bl	_Func_c4ac
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L8eaba
	ldr	r4, =0xffff
	add	r2, r4
.L8eaba:
	mov	r3, r5
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8eacc
	ldr	r1, =0xffff
	add	r3, r1
.L8eacc:
	mov	r2, r5
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	mov	r3, #1
	sub	r2, #0x43
	strb	r3, [r2]
	add	r2, #0x36
	strb	r3, [r2]
	ldrh	r3, [r6, #4]
	mov	r2, r8
	strb	r3, [r2, #4]
	ldr	r3, [r5, #8]
	str	r5, [r2]
	cmp	r3, #0
	bge	.L8eaf0
	ldr	r4, =0xfffff
	add	r3, r4
.L8eaf0:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	mov	r1, r8
	strb	r3, [r1, #6]
	cmp	r0, #0
	bge	.L8eba2
	ldr	r2, =0xfffff
	add	r0, r2
	b	.L8eba2
.L8eb02:
	cmp	r3, #3
	bne	.L8ebb8
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0xc0
	lsl	r3, #14
	cmp	r2, r3
	bne	.L8ebb8
	mov	r4, #6
	ldrsh	r0, [r6, r4]
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8ebb8
	mov	r4, r9
	mov	r1, r11
	mov	r0, #0x1c
	add	r1, r9
	mov	r2, #0
	add	r3, r7, r4
	bl	_Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L8ebb8
	bl	Func_8e9a8
	mov	r1, #0
	mov	r0, r5
	bl	_Func_c528
	mov	r0, r5
	bl	_Func_c4ac
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L8eb5a
	ldr	r1, =0xffff
	add	r2, r1
.L8eb5a:
	mov	r3, r5
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8eb6c
	ldr	r2, =0xffff
	add	r3, r2
.L8eb6c:
	mov	r2, r5
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	mov	r3, #1
	sub	r2, #0xd
	strb	r3, [r2]
	sub	r2, #0x36
	strb	r3, [r2]
	mov	r3, r8
	str	r5, [r3]
	ldrh	r3, [r6, #4]
	mov	r4, r8
	strb	r3, [r4, #4]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8eb92
	ldr	r1, =0xfffff
	add	r3, r1
.L8eb92:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	mov	r2, r8
	strb	r3, [r2, #6]
	cmp	r0, #0
	bge	.L8eba2
	ldr	r3, =0xfffff
	add	r0, r3
.L8eba2:
	mov	r4, r8
	asr	r3, r0, #20
	strb	r3, [r4, #7]
	ldr	r2, [sp]
	mov	r1, #8
	add	r2, #1
	add	r8, r1
	str	r2, [sp]
	cmp	r2, #9
	ble	.L8ebc8
	b	.L8ebe2
.L8ebb8:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r4, #1
	neg	r4, r4
	mov	r2, r3
	cmp	r3, r4
	beq	.L8ebc8
	b	.L8ea48
.L8ebc8:
	mov	r1, r10
	mov	r2, #1
	add	r10, r2
	ldrb	r7, [r1]
	mov	r3, r10
	ldrb	r5, [r3]
	add	r10, r2
	cmp	r7, #0xff
	beq	.L8ebdc
	b	.L8ea12
.L8ebdc:
	cmp	r5, #0xff
	beq	.L8ebe2
	b	.L8ea12
.L8ebe2:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8e9c0

.thumb_func_start Func_8ec14
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0x8e
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	ldrb	r3, [r2, #4]
	mov	r4, #1
	neg	r4, r4
	mov	r1, #0
	cmp	r3, r0
	bne	.L8ec30
	mov	r4, #0
	b	.L8ec40
.L8ec30:
	add	r1, #1
	add	r2, #8
	cmp	r1, #9
	bgt	.L8ec40
	ldrb	r3, [r2, #4]
	cmp	r3, r0
	bne	.L8ec30
	mov	r4, r1
.L8ec40:
	mov	r0, r4
	pop	{r1}
	bx	r1
.func_end Func_8ec14

.thumb_func_start Func_8ec4c
	bx	lr
.func_end Func_8ec4c

.thumb_func_start Func_8ec50
	push	{lr}
	bl	Func_8ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ec84
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L8ec78
	mov	r1, #5
	bl	_Func_c300
.L8ec78:
	mov	r0, #0x7d
	bl	_Func_f9080
	mov	r0, #0xc
	bl	Func_30f8
.L8ec84:
	pop	{r0}
	bx	r0
.func_end Func_8ec50

.thumb_func_start Func_8ec8c
	push	{r5, lr}
	bl	Func_8ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ecd4
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r3]
	mov	r0, #0x12
	bl	Func_30f8
	cmp	r5, #0
	beq	.L8ecbc
	mov	r0, r5
	mov	r1, #7
	bl	_Func_c300
.L8ecbc:
	mov	r0, #0x92
	bl	_Func_f9080
	cmp	r5, #0
	beq	.L8ecd4
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x28]
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c528
.L8ecd4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8ec8c

.thumb_func_start Func_8ece0
	push	{lr}
	bl	Func_8ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ed14
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L8ed08
	mov	r1, #4
	bl	_Func_c300
.L8ed08:
	mov	r0, #0x7c
	bl	_Func_f9080
	mov	r0, #0xc
	bl	Func_30f8
.L8ed14:
	pop	{r0}
	bx	r0
.func_end Func_8ece0

.thumb_func_start Func_8ed1c
	push	{lr}
	bl	Func_8ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ed44
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L8ed44
	mov	r1, #2
	bl	_Func_c300
.L8ed44:
	pop	{r0}
	bx	r0
.func_end Func_8ed1c

.thumb_func_start Func_8ed4c
	push	{lr}
	bl	Func_8ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L8ed5e
	mov	r0, #0
	b	.L8ed6e
.L8ed5e:
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
.L8ed6e:
	pop	{r1}
	bx	r1
.func_end Func_8ed4c

.thumb_func_start Func_8ed78
	push	{lr}
	bl	Func_8ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8eda2
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L8eda2
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #0
	strb	r3, [r2]
.L8eda2:
	pop	{r0}
	bx	r0
.func_end Func_8ed78

.thumb_func_start Func_8edac
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ec14
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L8ee00
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r0, r3, r2
	ldr	r5, [r0]
	cmp	r5, #0
	beq	.L8ee00
	cmp	r6, r1
	bne	.L8ede0
	ldrb	r3, [r0, #6]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #12
	add	r6, r3, r2
.L8ede0:
	cmp	r7, r1
	bne	.L8edee
	ldrb	r3, [r0, #7]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #12
	add	r7, r3, r2
.L8edee:
	str	r6, [r5, #8]
	str	r7, [r5, #0x10]
	mov	r0, #0
	mov	r1, r6
	mov	r2, r7
	bl	_Func_11f54
	str	r0, [r5, #0x14]
	str	r0, [r5, #0xc]
.L8ee00:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8edac

.thumb_func_start Func_8ee0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	bl	Func_8ba1c
	ldr	r3, =iwram_1ebc
	mov	r6, #0x8e
	ldr	r3, [r3]
	lsl	r6, #1
	add	r4, r3, r6
	ldrb	r3, [r4, #4]
	mov	r5, r0
	mov	r7, #0
	cmp	r3, #0
	beq	.L8eebc
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	mov	r9, r2
	mov	r10, r3
	ldr	r6, =0xfff80000
	ldr	r2, =0x1ffffe
	mov	r3, #0x80
	lsl	r3, #12
	mov	r14, r6
	mov	r12, r2
	mov	r11, r3
.L8ee54:
	ldrb	r3, [r4, #6]
	mov	r6, r9
	lsl	r0, r3, #20
	sub	r2, r6, r0
	mov	r3, r2
	add	r3, r14
	mov	r8, r3
	ldrb	r3, [r4, #7]
	mov	r6, r10
	lsl	r1, r3, #20
	sub	r3, r6, r1
	mov	r6, r14
	add	r6, r3, r6
	str	r6, [sp]
	ldr	r6, =0x7ffff
	add	r2, r6
	cmp	r2, r12
	bhi	.L8eeae
	add	r3, r6
	cmp	r3, r12
	bhi	.L8eeae
	mov	r2, r11
	add	r3, r0, r2
	str	r3, [r5, #8]
	add	r3, r1, r2
	str	r3, [r5, #0x10]
	ldr	r0, [sp]
	mov	r1, r8
	bl	Func_44d0
	mov	r1, r0
	lsl	r1, #16
	mov	r0, #0xa0
	mov	r2, r5
	lsr	r1, #16
	lsl	r0, #13
	add	r2, #8
	bl	Func_447c
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	b	.L8eebc
.L8eeae:
	add	r7, #1
	add	r4, #8
	cmp	r7, #9
	bgt	.L8eebc
	ldrb	r3, [r4, #4]
	cmp	r3, #0
	bne	.L8ee54
.L8eebc:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8ee0c

.thumb_func_start Func_8eee4
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	sub	sp, #0xc
	cmp	r3, r2
	bhi	.L8eefe
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L8eefe:
	bl	Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #9
	bhi	.L8ef60
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	lsl	r5, #4
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	Func_447c
	ldr	r0, =0x11d
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L8ef60
	ldr	r1, =.L9e87c
	bl	_Func_c2d8
	mov	r1, #0
	mov	r0, r5
	bl	_Func_c300
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
.L8ef60:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8eee4

.thumb_func_start Func_8ef70
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =iwram_1ebc
	lsl	r0, #2
	ldr	r6, [r2]
	add	r0, #0x14
	ldr	r7, [r6, r0]
	sub	sp, #0xc
	mov	r9, r1
	mov	r10, r2
	mov	r0, #0
	cmp	r7, #0
	bne	.L8ef92
	b	.L8f0b8
.L8ef92:
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	ldrh	r1, [r7, #6]
	mov	r2, r5
	lsl	r0, #13
	bl	Func_447c
	ldr	r1, =0xfff00000
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	mov	r8, r3
	ldr	r3, [r5, #8]
	and	r3, r1
	add	r7, r3, r2
	ldr	r2, =0xcb8
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8effe
	mov	r3, r10
	sub	r3, #0x58
	ldr	r5, [r3]
	mov	r6, #0x3f
.L8efd4:
	ldr	r1, [r5]
	cmp	r1, #0
	beq	.L8eff6
	ldr	r2, [r5, #0x6c]
	ldr	r3, =Func_8f28c
	cmp	r2, r3
	bne	.L8efea
	mov	r0, r5
	bl	_Func_c0f4
	ldr	r1, [r5]
.L8efea:
	ldr	r3, =.L9e87c
	cmp	r1, r3
	bne	.L8eff6
	mov	r0, r5
	bl	_Func_c0f4
.L8eff6:
	sub	r6, #1
	add	r5, #0x70
	cmp	r6, #0
	bge	.L8efd4
.L8effe:
	mov	r0, #3
	bl	Func_30f8
	mov	r2, #0x80
	mov	r3, r7
	lsl	r2, #13
	mov	r0, #0x16
	mov	r1, r8
	bl	_Func_c150
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0
	beq	.L8f0b8
	ldr	r1, =.L9e6c0
	mov	r0, r7
	bl	_Func_c2d8
	ldr	r6, [r7, #0x50]
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r6, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r7, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_48b0
	mov	r5, r0
	mov	r0, r9
	bl	_Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	Func_3fa4
	ldr	r3, .L8f094	@ 0x3ff
	ldrh	r2, [r6, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r6, #8]
	mov	r0, #0x11
	bl	Func_2dd8
	ldr	r3, =Func_8eee4
	str	r3, [r7, #0x6c]
	mov	r0, r7
	b	.L8f0b8

	.align	2, 0
.L8f094:
	.word	0x3ff
	.pool

.L8f0b8:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8ef70

.thumb_func_start Func_8f0c8
	push	{lr}
	cmp	r0, #0
	beq	.L8f0d2
	bl	_Func_c0f4
.L8f0d2:
	pop	{r0}
	bx	r0
.func_end Func_8f0c8

.thumb_func_start Func_8f0d8
	push	{r5, r6, lr}
	mov	r6, r0
	cmp	r6, #0
	beq	.L8f132
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r6
	str	r3, [r6, #0x30]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r5, r0
	ldr	r2, [r5, #0xc]
	mov	r3, #0x90
	lsl	r3, #14
	add	r2, r3
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	bl	_Func_d14c
	mov	r0, #3
	bl	Func_30f8
	mov	r0, r5
	mov	r1, #0x1c
	bl	_Func_c300
	ldr	r1, =.L9e75c
	mov	r0, r6
	bl	_Func_c2d8
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
.L8f132:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8f0d8

.thumb_func_start Func_8f140
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	cmp	r5, #0
	beq	.L8f1ac
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r3, #1
	and	r3, r6
	mov	r7, r0
	cmp	r3, #0
	beq	.L8f182
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	ldr	r1, =.L9e6c0
	mov	r0, r5
	bl	_Func_c2d8
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x48]
	ldr	r3, =Func_8eee4
	str	r3, [r5, #0x6c]
.L8f182:
	cmp	r6, #3
	bne	.L8f18c
	mov	r0, #0x3c
	bl	Func_30f8
.L8f18c:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.L8f19a
	mov	r0, r5
	bl	Func_8f0d8
.L8f19a:
	cmp	r6, #3
	bne	.L8f1a4
	mov	r0, #0x50
	bl	Func_30f8
.L8f1a4:
	mov	r0, r7
	mov	r1, #1
	bl	_Func_c300
.L8f1ac:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8f140

.thumb_func_start Func_8f1c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r9, r0
	ldr	r0, [r3]
	mov	r10, r1
	bl	Func_8ba1c
	mov	r1, #0xc1
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_48b0
	ldr	r2, [r7, #0xc]
	mov	r3, #0x90
	lsl	r3, #14
	add	r2, r3
	mov	r8, r0
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x16
	bl	_Func_c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L8f276
	ldr	r5, [r6, #0x50]
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r5, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r5, #9]
	mov	r0, r9
	bl	_Func_1a370
	mov	r2, #0x80
	lsl	r2, #3
	add	r2, r8
	mov	r1, #0x80
	ldrb	r0, [r5, #0x1c]
	bl	Func_3fa4
	mov	r0, #0x11
	bl	Func_2dd8
	mov	r3, #1
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L8f252
	ldr	r3, =Func_8eee4
	str	r3, [r6, #0x6c]
.L8f252:
	mov	r3, #2
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L8f262
	mov	r0, r6
	bl	Func_8f0d8
.L8f262:
	mov	r0, #0x50
	bl	Func_30f8
	mov	r0, r7
	mov	r1, #1
	bl	_Func_c300
	mov	r0, r6
	bl	_Func_c0f4
.L8f276:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8f1c0

.thumb_func_start Func_8f28c
	push	{r5, r6, lr}
	sub	sp, #0xc
	mov	r5, r0
	bl	Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #9
	bhi	.L8f2f4
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	lsl	r5, #4
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	Func_447c
	ldr	r0, =0x11d
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L8f2f4
	ldr	r1, =.L9e87c
	bl	_Func_c2d8
	mov	r1, #0
	mov	r0, r5
	bl	_Func_c300
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
.L8f2f4:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8f28c

.thumb_func_start Func_8f304
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L8f31e
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L8f31e:
	pop	{r1}
	bx	r1
.func_end Func_8f304

.thumb_func_start Func_8f32c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r1, #0xfa
	ldr	r7, [r3, #0x10]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #8
	bl	Func_8ba1c
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	str	r3, [sp]
	cmp	r7, #0
	bne	.L8f364
	b	.L8f46e
.L8f364:
	b	.L8f458
.L8f366:
	ldrb	r3, [r7]
	mov	r10, r3
	mov	r0, r10
	add	r7, #1
	bl	Func_8ed4c
	cmp	r0, #0
	bne	.L8f458
	mov	r3, r10
	sub	r3, #0x64
	cmp	r3, #0x8b
	bhi	.L8f458
	ldr	r1, [sp, #4]
	sub	r3, r1, r5
	cmp	r3, #0
	blt	.L8f38c
	cmp	r3, #8
	ble	.L8f394
	b	.L8f458
.L8f38c:
	ldr	r2, [sp, #4]
	sub	r3, r5, r2
	cmp	r3, #8
	bgt	.L8f458
.L8f394:
	ldr	r1, [sp]
	mov	r2, r8
	sub	r3, r1, r2
	cmp	r3, #0
	blt	.L8f3a4
	cmp	r3, #5
	ble	.L8f3ae
	b	.L8f458
.L8f3a4:
	ldr	r2, [sp]
	mov	r1, r8
	sub	r3, r1, r2
	cmp	r3, #5
	bgt	.L8f458
.L8f3ae:
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x24]
	bl	_call_via_r0
	mov	r6, r0
	mov	r3, #1
	ldr	r2, [r6]
	neg	r3, r3
	cmp	r2, r3
	beq	.L8f458
	mov	r3, #0x80
	lsl	r5, #20
	lsl	r3, #12
	mov	r11, r5
	mov	r9, r3
.L8f3cc:
	mov	r1, #4
	ldrsh	r3, [r6, r1]
	cmp	r3, r10
	bne	.L8f44a
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #3
	bne	.L8f44a
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0x80
	lsl	r3, #14
	cmp	r2, r3
	beq	.L8f40c
	cmp	r2, r3
	bhi	.L8f3fc
	cmp	r2, #0
	beq	.L8f40c
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r2, r3
	beq	.L8f40c
	b	.L8f44a
.L8f3fc:
	mov	r1, #0xc0
	lsl	r1, #14
	cmp	r2, r1
	beq	.L8f40c
	mov	r3, #0xa0
	lsl	r3, #15
	cmp	r2, r3
	bne	.L8f44a
.L8f40c:
	mov	r2, #1
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	neg	r2, r2
	cmp	r0, r2
	beq	.L8f44a
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8f44a
	mov	r1, r8
	lsl	r3, r1, #20
	mov	r1, r11
	mov	r0, #0x16
	add	r1, r9
	mov	r2, #0
	add	r3, r9
	bl	_Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L8f44a
	ldr	r1, =.L9e8a0
	bl	_Func_c2d8
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	ldr	r3, =Func_8f28c
	str	r3, [r5, #0x6c]
.L8f44a:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r1, #1
	neg	r1, r1
	mov	r2, r3
	cmp	r3, r1
	bne	.L8f3cc
.L8f458:
	ldrb	r5, [r7]
	add	r7, #1
	ldrb	r2, [r7]
	add	r7, #1
	mov	r8, r2
	cmp	r5, #0xff
	beq	.L8f468
	b	.L8f366
.L8f468:
	cmp	r2, #0xff
	beq	.L8f46e
	b	.L8f366
.L8f46e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8f32c

.thumb_func_start Func_8f498
	ldr	r3, =iwram_1ecc
	ldr	r2, =0x539
	ldr	r0, [r3]
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	mov	r4, #0x80
	lsl	r4, #19
	ldrh	r2, [r3, #0xa]
	ldr	r1, .L8f4f8	@ 0x6000
	ldrh	r2, [r4]
	orr	r2, r1
	strh	r2, [r4]
	ldrh	r1, [r0]
	ldr	r2, =REG_WININ
	strh	r1, [r2]
	add	r0, #2
	ldrh	r1, [r0]
	add	r2, #2
	strh	r1, [r2]
	add	r0, #2
	ldrh	r2, [r0]
	ldr	r1, =REG_WIN0H
	strh	r2, [r1]
	add	r0, #2
	ldrh	r4, [r0]
	ldr	r2, =REG_WIN1H
	strh	r4, [r2]
	mov	r4, #0xa0
	add	r2, #2
	strh	r4, [r2]
	add	r2, #2
	strh	r4, [r2]
	b	.L8f51c

	.align	2, 0
.L8f4f8:
	.word	0x6000
	.pool

.L8f51c:
	add	r0, #2
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_8f498

.thumb_func_start Func_8f52c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r6, [r3]
	ldr	r3, [r3, #0x5c]
	sub	sp, #0x18
	ldr	r0, =0x53c
	str	r3, [sp, #0x14]
	add	r4, r3, r0
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	cmp	r2, #0
	beq	.L8f5fc
	ldr	r5, =0x53d
	add	r1, r3, r5
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L8f5c4
	mov	r3, #0
	strb	r3, [r4]
	ldr	r7, [sp, #0x14]
	ldr	r0, =0x53e
	add	r3, r7, r0
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	cmp	r2, #0
	bne	.L8f5b8
	ldr	r1, =0x53b
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0x40
	bne	.L8f588
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0x81ff
	b	.L8f590
.L8f588:
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0x9fff
.L8f590:
	and	r3, r2
	strh	r3, [r1]
	ldr	r0, =Func_8f498
	bl	Func_4278
	ldr	r0, =Func_8f52c
	bl	Func_4278
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
	bl	.L8fe1e
.L8f5b8:
	ldr	r5, [sp, #0x14]
	mov	r7, #0xa5
	lsl	r7, #3
	add	r3, r5, r7
	strh	r2, [r3]
	b	.L8f5fc
.L8f5c4:
	ldr	r2, [sp, #0x14]
	ldr	r5, =0x53b
	add	r3, r2, r5
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r7, [sp, #0x14]
	ldr	r3, =0x53a
	add	r5, r7, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =Func_af0
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r5, =0x52a
	add	r3, r0
	add	r2, r7, r5
	strh	r3, [r2]
.L8f5fc:
	ldr	r7, [sp, #0x14]
	ldr	r0, =0x539
	add	r3, r7, r0
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r4, r7, r3
	add	r0, r4, #4
	str	r4, [sp]
	bl	_Func_1edec
	mov	r1, #0xa5
	lsl	r1, #3
	add	r3, r7, r1
	ldrh	r3, [r3]
	ldr	r4, [sp]
	cmp	r3, #0x4d
	bls	.L8f62e
	bl	.L8fe10
.L8f62e:
	ldr	r2, =.L8f638
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8f638:
	.word	.L8f770
	.word	.L8f818
	.word	.L8f8e4
	.word	.L8f958
	.word	.L8f9ea
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fa52
	.word	.L8fb3c
	.word	.L8fc32
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fe10
	.word	.L8fd0e
.L8f770:
	ldr	r3, .L8f798	@ 0x7f7f
	strh	r3, [r4]
	ldr	r3, .L8f79c	@ 1
	add	r4, #2
	strh	r3, [r4]
	ldr	r2, [sp, #0x14]
	ldr	r5, =0x52a
	add	r3, r2, r5
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8f7e4
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8f7e8

	.align	2, 0
.L8f798:
	.word	0x7f7f
.L8f79c:
	.word	1
	.pool

.L8f7e4:
	mov	r3, #0x1f
	and	r5, r3
.L8f7e8:
	ldr	r3, =.L9e8ac
	ldrb	r5, [r3, r5]
	mov	r7, #0
	mov	r3, #0xf1
	mov	r8, r7
	sub	r6, r3, r5
.L8f7f4:
	str	r4, [sp]
	bl	Func_4458
	mov	r3, r6
	mul	r3, r0
	mov	r0, #1
	lsr	r3, #16
	lsl	r2, r3, #8
	ldr	r4, [sp]
	add	r3, r5
	add	r8, r0
	orr	r2, r3
	mov	r1, r8
	strh	r2, [r4]
	add	r4, #4
	cmp	r1, #0x9f
	bls	.L8f7f4
	b	.L8fe10
.L8f818:
	ldr	r2, [sp, #0x14]
	ldr	r5, =0x52a
	add	r3, r2, r5
	ldrh	r5, [r3]
	mov	r3, #0x1f
	and	r3, r5
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r3, =Data_9f840
	lsl	r2, #2
	add	r2, r3
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L8f83e
	ldrh	r3, [r2]
	strh	r3, [r4]
	ldrh	r3, [r2, #2]
	b	.L8f844
.L8f83e:
	ldrh	r3, [r2, #2]
	strh	r3, [r4]
	ldrh	r3, [r2]
.L8f844:
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	mov	r7, #0
	add	r2, #4
	mov	r8, r7
	mov	r10, r2
.L8f852:
	mov	r2, r10
	ldrh	r7, [r2]
	ldrh	r0, [r2, #2]
	cmp	r7, #0
	beq	.L8f8d4
	cmp	r0, #0
	beq	.L8f876
	mov	r1, #0
	mov	r9, r1
	cmp	r9, r7
	bge	.L8f8d4
.L8f868:
	mov	r2, #1
	add	r9, r2
	strh	r0, [r4]
	add	r4, #4
	cmp	r9, r7
	blt	.L8f868
	b	.L8f8d4
.L8f876:
	ldrb	r3, [r2, #4]
	ldrb	r6, [r2, #6]
	mov	r11, r3
	ldrb	r0, [r2, #7]
	ldrb	r3, [r2, #5]
	cmp	r7, #0
	beq	.L8f8d4
	mov	r5, r11
	sub	r5, r3, r5
	sub	r0, r6
	str	r5, [sp, #0x10]
	str	r0, [sp, #0xc]
	mov	r2, #0
	mov	r3, #0
	mov	r9, r7
.L8f894:
	mov	r0, r3
	mov	r1, r7
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r4, [sp]
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #8]
	mov	r5, r0
	mov	r1, r7
	mov	r0, r2
	bl	Func_af0_from_thumb
	add	r5, r11
	add	r0, r6, r0
	ldr	r4, [sp]
	lsl	r5, #8
	add	r5, r0
	strh	r5, [r4]
	mov	r5, #1
	ldr	r0, [sp, #0xc]
	ldr	r2, [sp, #8]
	neg	r5, r5
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #0x10]
	add	r9, r5
	add	r2, r0
	mov	r0, r9
	add	r4, #4
	add	r3, r1
	cmp	r0, #0
	bne	.L8f894
.L8f8d4:
	mov	r2, #1
	add	r8, r2
	mov	r1, #8
	mov	r3, r8
	add	r10, r1
	cmp	r3, #2
	bls	.L8f852
	b	.L8fe10
.L8f8e4:
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x52a
	add	r3, r5, r7
	ldrh	r3, [r3]
	sub	r5, r3, #1
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L8f914
	ldr	r3, .L8f900	@ 1
	strh	r3, [r4]
	ldr	r3, .L8f904	@ 0x7f7f
	b	.L8f91a

	.align	2, 0
.L8f900:
	.word	1
.L8f904:
	.word	0x7f7f
	.pool

.L8f914:
	ldr	r3, =0x7f7f
	strh	r3, [r4]
	ldr	r3, =1
.L8f91a:
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	mov	r3, #0x1f
	and	r5, r3
	mov	r0, #0
	mov	r8, r0
	lsl	r5, #4
.L8f92a:
	str	r4, [sp]
	bl	Func_4458
	lsl	r0, #4
	lsr	r0, #16
	add	r0, r5, r0
	ldr	r4, [sp]
	cmp	r0, #0xff
	bls	.L8f948
	mov	r0, #0xff
	b	.L8f948

	.pool_aligned

.L8f948:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	strh	r0, [r4]
	add	r4, #4
	cmp	r2, #0x9f
	bls	.L8f92a
	b	.L8fe10
.L8f958:
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x52a
	ldr	r2, .L8f990	@ 0x7f7f
	add	r3, r5, r7
	ldrh	r5, [r3]
	ldr	r3, .L8f994	@ 1
	strh	r2, [r4]
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	cmp	r5, #0x20
	bls	.L8f97c
	strh	r3, [r4]
	add	r4, #2
	mov	r3, #0x40
	strh	r2, [r4]
	sub	r5, r3, r5
	add	r4, #2
.L8f97c:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	mov	r0, #0
	lsl	r3, #16
	ldr	r7, =Func_948
	mov	r11, r3
	mov	r8, r0
	b	.L8f9a0

	.align	2, 0
.L8f990:
	.word	0x7f7f
.L8f994:
	.word	1
	.pool

.L8f9a0:
	mov	r5, r8
	sub	r5, #0x50
	mov	r0, r5
	mul	r0, r5
	mov	r1, r11
	lsl	r0, #16
	str	r4, [sp]
	sub	r0, r1, r0
	bl	_call_via_r7
	mov	r3, #0x78
	asr	r0, #8
	sub	r6, r3, r0
	ldr	r4, [sp]
	add	r0, #0x78
	cmp	r6, #0
	bge	.L8f9c4
	mov	r6, #0
.L8f9c4:
	cmp	r0, #0
	bge	.L8f9ca
	mov	r0, #0
.L8f9ca:
	cmp	r6, #0xf0
	ble	.L8f9d0
	mov	r6, #0xf0
.L8f9d0:
	cmp	r0, #0xf0
	ble	.L8f9d6
	mov	r0, #0xf0
.L8f9d6:
	lsl	r3, r6, #8
	mov	r2, #1
	add	r3, r0
	add	r8, r2
	strh	r3, [r4]
	mov	r3, r8
	add	r4, #4
	cmp	r3, #0x9f
	bls	.L8f9a0
	b	.L8fe10
.L8f9ea:
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x52a
	add	r3, r5, r7
	ldrh	r5, [r3]
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L8fa10
	ldr	r3, .L8fa04	@ 1
	strh	r3, [r4]
	ldr	r3, .L8fa08	@ 0x7f7f
	b	.L8fa16

	.align	2, 0
.L8fa04:
	.word	1
.L8fa08:
	.word	0x7f7f
	.pool

.L8fa10:
	ldr	r3, =0x7f7f
	strh	r3, [r4]
	ldr	r3, =1
.L8fa16:
	add	r4, #2
	strh	r3, [r4]
	add	r4, #2
	mov	r3, #0x1f
	and	r3, r5
	lsl	r2, r3, #4
	sub	r2, r3
	lsl	r2, #4
	lsr	r5, r2, #5
	mov	r3, #0xf0
	sub	r3, r5
	mov	r0, #0
	lsl	r3, #8
	mov	r8, r0
	add	r3, #0xf0
	b	.L8fa40

	.pool_aligned

.L8fa40:
	mov	r1, #2
	add	r8, r1
	mov	r2, r8
	strh	r5, [r4]
	strh	r3, [r4, #4]
	add	r4, #8
	cmp	r2, #0x9f
	bls	.L8fa40
	b	.L8fe10
.L8fa52:
	mov	r2, r6
	add	r2, #0xe4
	ldr	r3, =0xffff0000
	ldr	r5, [r2]
	ldr	r6, [r2, #4]
	and	r5, r3
	and	r6, r3
	mov	r7, #0xfa
	ldr	r3, =ewram_240
	lsl	r7, #1
	add	r3, r7
	ldr	r0, [r3]
	str	r4, [sp]
	bl	Func_8ba1c
	ldr	r3, [r0, #8]
	sub	r3, r5
	ldr	r4, [sp]
	cmp	r3, #0
	bge	.L8fa7e
	ldr	r1, =0xffff
	add	r3, r1
.L8fa7e:
	ldr	r2, [r0, #0xc]
	asr	r7, r3, #16
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	sub	r0, r3, r6
	cmp	r0, #0
	bge	.L8fa90
	ldr	r2, =0xffff
	add	r0, r2
.L8fa90:
	asr	r3, r0, #16
	sub	r3, #0x10
	ldr	r5, [sp, #0x14]
	mov	r10, r3
	ldr	r0, =0x536
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x534
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	bne	.L8fac8
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8facc
.L8fac8:
	mov	r3, #0x1f
	and	r5, r3
.L8facc:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L8fada
	mov	r5, #0
.L8fada:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	ldr	r5, =Func_948
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
	mov	r9, r5
.L8faee:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #15
	str	r4, [sp]
	sub	r0, r2, r0
	bl	_call_via_r9
	asr	r0, #8
	sub	r6, r7, r0
	ldr	r4, [sp]
	add	r0, r7, r0
	cmp	r6, #0
	bge	.L8fb16
	mov	r6, #0
.L8fb16:
	cmp	r0, #0
	bge	.L8fb1c
	mov	r0, #0
.L8fb1c:
	cmp	r6, #0xf0
	ble	.L8fb22
	mov	r6, #0xf0
.L8fb22:
	cmp	r0, #0xf0
	ble	.L8fb28
	mov	r0, #0xf0
.L8fb28:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	add	r4, #4
	cmp	r5, #0x9f
	bls	.L8faee
	b	.L8fe10
.L8fb3c:
	mov	r1, r6
	add	r1, #0xe4
	ldr	r3, =0xffff0000
	ldr	r2, [r1]
	ldr	r7, [sp, #0x14]
	ldr	r1, [r1, #4]
	ldr	r0, =0x52c
	and	r2, r3
	and	r1, r3
	add	r3, r7, r0
	ldr	r3, [r3]
	sub	r3, r2
	cmp	r3, #0
	bge	.L8fb5c
	ldr	r2, =0xffff
	add	r3, r2
.L8fb5c:
	ldr	r5, [sp, #0x14]
	mov	r0, #0xa6
	lsl	r0, #3
	asr	r7, r3, #16
	add	r3, r5, r0
	ldr	r3, [r3]
	sub	r1, r3, r1
	cmp	r1, #0
	bge	.L8fb72
	ldr	r2, =0xffff
	add	r1, r2
.L8fb72:
	asr	r3, r1, #16
	sub	r3, #0x10
	lsl	r2, r3, #1
	mov	r10, r3
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	ldr	r5, [sp, #0x14]
	ldr	r0, =0x534
	sub	r3, r2
	mov	r9, r3
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x536
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8fbb0
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8fbb4
.L8fbb0:
	mov	r3, #0x1f
	and	r5, r3
.L8fbb4:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
.L8fbc4:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #15
	str	r4, [sp]
	sub	r0, r2, r0
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r0, #8
	sub	r6, r7, r0
	add	r0, r7, r0
	ldr	r4, [sp]
	cmp	r6, r0
	bge	.L8fc02
	mov	r3, #0x1f
	mov	r5, r9
	ldr	r1, =.L9e8ce
	and	r3, r5
	ldrsb	r3, [r1, r3]
	sub	r6, r3
	add	r0, r3
	cmp	r6, r0
	blt	.L8fc02
	mov	r6, #0xf0
	mov	r0, #0xf0
.L8fc02:
	cmp	r6, #0
	bge	.L8fc08
	mov	r6, #0
.L8fc08:
	cmp	r0, #0
	bge	.L8fc0e
	mov	r0, #0
.L8fc0e:
	cmp	r6, #0xf0
	ble	.L8fc14
	mov	r6, #0xf0
.L8fc14:
	cmp	r0, #0xf0
	ble	.L8fc1a
	mov	r0, #0xf0
.L8fc1a:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r2, #2
	mov	r5, r8
	add	r4, #4
	add	r9, r2
	cmp	r5, #0x9f
	bls	.L8fbc4
	b	.L8fe10
.L8fc32:
	mov	r2, r6
	add	r2, #0xe4
	ldr	r3, =0xffff0000
	ldr	r5, [r2]
	ldr	r6, [r2, #4]
	and	r5, r3
	and	r6, r3
	mov	r7, #0xfa
	ldr	r3, =ewram_240
	lsl	r7, #1
	add	r3, r7
	ldr	r0, [r3]
	str	r4, [sp]
	bl	Func_8ba1c
	ldr	r3, [r0, #8]
	sub	r3, r5
	ldr	r4, [sp]
	cmp	r3, #0
	bge	.L8fc5e
	ldr	r1, =0xffff
	add	r3, r1
.L8fc5e:
	ldr	r2, [r0, #0xc]
	asr	r7, r3, #16
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	sub	r0, r3, r6
	cmp	r0, #0
	bge	.L8fc70
	ldr	r2, =0xffff
	add	r0, r2
.L8fc70:
	asr	r3, r0, #16
	sub	r3, #0x10
	ldr	r5, [sp, #0x14]
	mov	r10, r3
	ldr	r0, =0x534
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x536
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8fca8
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8fcac
.L8fca8:
	mov	r3, #0x1f
	and	r5, r3
.L8fcac:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	ldr	r5, =Func_948
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
	mov	r9, r5
.L8fcc0:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #15
	str	r4, [sp]
	sub	r0, r2, r0
	bl	_call_via_r9
	asr	r0, #8
	sub	r6, r7, r0
	ldr	r4, [sp]
	add	r0, r7, r0
	cmp	r6, #0
	bge	.L8fce8
	mov	r6, #0
.L8fce8:
	cmp	r0, #0
	bge	.L8fcee
	mov	r0, #0
.L8fcee:
	cmp	r6, #0xf0
	ble	.L8fcf4
	mov	r6, #0xf0
.L8fcf4:
	cmp	r0, #0xf0
	ble	.L8fcfa
	mov	r0, #0xf0
.L8fcfa:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	add	r4, #4
	cmp	r5, #0x9f
	bls	.L8fcc0
	b	.L8fe10
.L8fd0e:
	mov	r2, r6
	add	r2, #0xe4
	ldr	r3, =0xffff0000
	ldr	r5, [r2]
	ldr	r6, [r2, #4]
	and	r5, r3
	and	r6, r3
	mov	r7, #0xfa
	ldr	r3, =ewram_240
	lsl	r7, #1
	add	r3, r7
	ldr	r0, [r3]
	str	r4, [sp]
	bl	Func_8ba1c
	ldr	r3, [r0, #8]
	sub	r3, r5
	ldr	r4, [sp]
	cmp	r3, #0
	bge	.L8fd3a
	ldr	r1, =0xffff
	add	r3, r1
.L8fd3a:
	ldr	r2, [r0, #0xc]
	asr	r7, r3, #16
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	sub	r0, r3, r6
	cmp	r0, #0
	bge	.L8fd4c
	ldr	r2, =0xffff
	add	r0, r2
.L8fd4c:
	asr	r3, r0, #16
	sub	r3, #8
	ldr	r5, [sp, #0x14]
	mov	r10, r3
	ldr	r0, =0x534
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	add	r3, r5, r0
	ldrh	r3, [r3]
	ldr	r1, =0x536
	strh	r3, [r4]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	ldr	r2, =0x52a
	strh	r3, [r4]
	add	r3, r5, r2
	ldrh	r5, [r3]
	mov	r2, #0x20
	mov	r3, r5
	and	r3, r2
	add	r4, #2
	cmp	r3, #0
	beq	.L8fdac
	mov	r3, #0x1f
	and	r3, r5
	sub	r5, r2, r3
	b	.L8fdb0

	.pool_aligned

.L8fdac:
	mov	r3, #0x1f
	and	r5, r3
.L8fdb0:
	lsl	r3, r5, #2
	add	r5, r3, r5
	mov	r3, r5
	mul	r3, r5
	ldr	r5, =Func_948
	lsl	r3, #16
	mov	r11, r3
	mov	r3, #0
	mov	r8, r3
	mov	r9, r5
.L8fdc4:
	mov	r0, r8
	mov	r1, r10
	sub	r5, r0, r1
	mov	r3, r5
	mul	r3, r5
	lsl	r0, r3, #1
	add	r0, r3
	mov	r2, r11
	lsl	r0, #14
	str	r4, [sp]
	sub	r0, r2, r0
	bl	_call_via_r9
	asr	r0, #8
	sub	r6, r7, r0
	ldr	r4, [sp]
	add	r0, r7, r0
	cmp	r6, #0
	bge	.L8fdec
	mov	r6, #0
.L8fdec:
	cmp	r0, #0
	bge	.L8fdf2
	mov	r0, #0
.L8fdf2:
	cmp	r6, #0xf0
	ble	.L8fdf8
	mov	r6, #0xf0
.L8fdf8:
	cmp	r0, #0xf0
	ble	.L8fdfe
	mov	r0, #0xf0
.L8fdfe:
	lsl	r3, r6, #8
	add	r3, r0
	strh	r3, [r4]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	add	r4, #4
	cmp	r5, #0x9f
	bls	.L8fdc4
.L8fe10:
	ldr	r7, [sp, #0x14]
	ldr	r0, =0x539
	add	r3, r7, r0
	ldrb	r2, [r3]
	mov	r1, #1
	eor	r2, r1
	strb	r2, [r3]
.L8fe1e:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8f52c

.thumb_func_start Func_8fe38
	push	{r5, r6, lr}
	mov	r1, #0xa8
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	Func_48f4
	mov	r5, #0
	mov	r4, r0
	mov	r0, sp
	str	r5, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xa5
	lsl	r2, #3
	add	r3, r4, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r4, r2
	strh	r5, [r3]
	ldr	r3, =0x534
	add	r2, r4, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r2, =0x536
	mov	r3, #1
	add	r4, r2
	mov	r1, #0xc8
	strh	r3, [r4]
	lsl	r1, #4
	ldr	r0, =Func_8f52c
	bl	Func_41d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_8f498
	bl	Func_41d8
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8fe38

.thumb_func_start Func_8feb0
	push	{lr}
	ldr	r0, =Func_8f52c
	bl	Func_42c8
	ldr	r0, =Func_8f498
	bl	Func_42c8
	pop	{r0}
	bx	r0
.func_end Func_8feb0

.thumb_func_start Func_8fecc
	push	{lr}
	mov	r1, #0xa8
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end Func_8fecc

.thumb_func_start Func_8fefc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0xff
	mov	r10, r1
	asr	r2, r0, #8
	ldr	r1, =iwram_1e70
	mov	r6, r3
	and	r2, r3
	ldr	r7, [r1]
	and	r6, r0
	cmp	r2, #4
	bls	.L8ff1c
	b	.L90168
.L8ff1c:
	lsl	r3, r2, #2
	ldr	r2, =.L8ff24
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8ff24:
	.word	.L8ff38
	.word	.L8ff4c
	.word	.L8ffa2
	.word	.L9003c
	.word	.L900c0
.L8ff38:
	mov	r0, #0
	bl	Func_3b70
	mov	r0, r10
	bl	Func_3bb4
	mov	r0, #1
	bl	Func_30f8
	b	.L90168
.L8ff4c:
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r0, #0x80
	ldrh	r1, [r3]
	lsl	r0, #8
	bl	Func_91220
	mov	r0, r10
	bl	Func_91254
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =ewram_2090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r5, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L8ff98
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L8ff98:
	strh	r5, [r4]
	mov	r0, #0
	bl	Func_91240
	b	.L9019c
.L8ffa2:
	bl	Func_8fecc
	mov	r1, #0xa5
	mov	r5, r0
	lsl	r1, #3
	mov	r2, #0
	add	r3, r5, r1
	mov	r8, r2
	add	r1, #2
	strh	r6, [r3]
	mov	r2, r8
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r3, =0x534
	add	r1, #0xc
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	add	r2, r5, r1
	mov	r3, #1
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_8f52c
	bl	Func_41d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_8f498
	bl	Func_41d8
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =ewram_2090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L90018
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L90018:
	strh	r6, [r4]
	ldr	r2, =0x53a
	add	r3, r5, r2
	mov	r1, r8
	strb	r1, [r3]
	ldr	r3, =0x53b
	ldr	r1, =0x53c
	add	r2, r5, r3
	mov	r3, #0x20
	strb	r3, [r2]
	add	r3, r5, r1
	mov	r2, r10
	add	r1, #1
	strb	r2, [r3]
	add	r3, r5, r1
	mov	r2, r8
	strb	r2, [r3]
	b	.L9019c
.L9003c:
	bl	Func_8fecc
	mov	r1, #0xa5
	mov	r5, r0
	lsl	r1, #3
	add	r3, r5, r1
	ldr	r2, =0x52a
	mov	r1, #0x20
	mov	r8, r1
	strh	r6, [r3]
	add	r3, r5, r2
	mov	r2, r8
	strh	r2, [r3]
	mov	r0, #0xf
	bl	Func_907b0
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_90658
	bl	Func_41d8
	ldr	r1, =ewram_2090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9009e
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L9009e:
	strh	r6, [r4]
	ldr	r1, =0x53a
	mov	r2, #0
	add	r3, r5, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r5, r1
	mov	r1, r8
	strb	r1, [r3]
	ldr	r1, =0x53c
	add	r3, r5, r1
	mov	r1, r10
	strb	r1, [r3]
	ldr	r1, =0x53d
	add	r3, r5, r1
	strb	r2, [r3]
	b	.L9019c
.L900c0:
	ldr	r7, [r1]
	bl	Func_8fecc
	mov	r3, #0x80
	lsl	r3, #1
	ldr	r1, .L900f4	@ 0
	add	r2, r7, r3
	ldr	r3, .L900f8	@ 0x50
	mov	r8, r1
	mov	r1, #0x81
	mov	r9, r3
	lsl	r1, #1
	mov	r3, #0x50
	strh	r3, [r2]
	add	r2, r7, r1
	mov	r5, r0
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	cmp	r6, #0
	bne	.L90134
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_903bc
	b	.L9013a

	.align	2, 0
.L900f4:
	.word	0
.L900f8:
	.word	0x50
	.pool

.L90134:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_90488
.L9013a:
	bl	Func_41d8
	ldr	r2, =Func_90584
	mov	r1, #0
	mov	r0, #1
	bl	Func_307c
	ldr	r2, =0x53a
	mov	r1, r9
	add	r3, r5, r2
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r8
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r10
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r8
	strb	r1, [r3]
.L90168:
	ldr	r1, =ewram_2090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r5, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9019a
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L9019a:
	strh	r5, [r4]
.L9019c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8fefc

.thumb_func_start Func_901c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xff
	asr	r2, r0, #8
	mov	r6, r3
	and	r2, r3
	mov	r7, r1
	and	r6, r0
	cmp	r2, #4
	bls	.L901d8
	b	.L90352
.L901d8:
	lsl	r3, r2, #2
	ldr	r2, =.L901e0
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L901e0:
	.word	.L901f4
	.word	.L90202
	.word	.L90214
	.word	.L90278
	.word	.L902e8
.L901f4:
	mov	r0, #0
	bl	Func_3bb4
	mov	r0, r7
	bl	Func_3b70
	b	.L90352
.L90202:
	mov	r0, #0x80
	lsl	r0, #8
	mov	r1, #0
	bl	Func_91200
	mov	r0, r7
	bl	Func_91254
	b	.L90352
.L90214:
	bl	Func_8fecc
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L9025c	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	ldr	r3, =0x534
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	ldr	r3, =0x536
	mov	r1, #0xc8
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_8f52c
	bl	Func_41d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_8f498
	bl	Func_41d8
	mov	r0, #1
	bl	Func_30f8
	b	.L902a8

	.align	2, 0
.L9025c:
	.word	0
	.pool

.L90278:
	bl	Func_8fecc
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L902c0	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	mov	r0, #0
	bl	Func_907b0
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0xc8
	ldr	r0, =Func_90658
	lsl	r1, #4
	bl	Func_41d8
.L902a8:
	ldr	r2, =0x53a
	ldr	r6, .L902c4	@ 0x20
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x40
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	b	.L902dc

	.align	2, 0
.L902c0:
	.word	0
.L902c4:
	.word	0x20
	.pool

.L902dc:
	strb	r7, [r3]
	ldr	r3, =0x53d
	mov	r2, r8
	add	r5, r3
	strb	r2, [r5]
	b	.L90352
.L902e8:
	bl	Func_8fecc
	mov	r5, r0
	cmp	r6, #0
	bne	.L90322
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_903bc
	bl	Func_41d8
	ldr	r2, =Func_90584
	mov	r0, #1
	mov	r1, #0
	bl	Func_307c
	ldr	r2, =0x53a
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r6, [r3]
	b	.L90352
.L90322:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_90488
	bl	Func_41d8
	ldr	r2, =Func_90584
	mov	r1, #0
	mov	r0, #1
	bl	Func_307c
	ldr	r2, =0x53a
	mov	r1, #0
	add	r3, r5, r2
	strb	r1, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r1, [r3]
.L90352:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_901c0

.thumb_func_start Func_90378
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L903a6
	cmp	r2, #0
	beq	.L9038e
	ldrh	r2, [r4, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	strh	r3, [r4, #0x14]
.L9038e:
	cmp	r1, #0
	beq	.L9039a
	ldrh	r2, [r4, #0x14]
	ldr	r3, =0xfbff
	and	r3, r2
	strh	r3, [r4, #0x14]
.L9039a:
	cmp	r0, #0
	beq	.L903a6
	ldrh	r2, [r4, #0x14]
	ldr	r3, =0xf7ff
	and	r3, r2
	strh	r3, [r4, #0x14]
.L903a6:
	pop	{r0}
	bx	r0
.func_end Func_90378

.thumb_func_start Func_903bc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r3, #0x5c
	ldr	r7, [r3]
	cmp	r2, #0
	beq	.L9042a
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L903f6
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Func_903bc
	bl	Func_4278
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	b	.L9045e
.L903f6:
	ldr	r2, =0x53b
	add	r3, r6, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =Func_af0
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r1, =0x52a
	add	r3, r0
	add	r2, r6, r1
	strh	r3, [r2]
.L9042a:
	ldr	r2, =0x52a
	add	r3, r6, r2
	ldrh	r2, [r3]
	cmp	r2, #0x4f
	bls	.L9044a
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xc8
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.L9045e
.L9044a:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	strh	r2, [r3]
	ldr	r3, .L90464	@ 0x9f
	sub	r3, r2
	mov	r2, #0x81
	lsl	r2, #1
	add	r1, r7, r2
	strh	r3, [r1]
.L9045e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L90464:
	.word	0x9f
.func_end Func_903bc

.thumb_func_start Func_90488
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r3, #0x5c
	ldr	r7, [r3]
	cmp	r2, #0
	beq	.L904f6
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L904c2
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Func_90488
	bl	Func_4278
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	b	.L9057c
.L904c2:
	ldr	r2, =0x53b
	add	r3, r6, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =Func_af0
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r1, =0x52a
	add	r3, r0
	add	r2, r6, r1
	strh	r3, [r2]
.L904f6:
	ldr	r2, =0x52a
	add	r3, r6, r2
	ldrh	r5, [r3]
	cmp	r5, #0x4f
	bls	.L90514
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xc8
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xfa
	b	.L9057a
.L90514:
	cmp	r5, #0
	beq	.L90568
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L90568
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r5
	add	r3, r7, r1
	add	r2, #0x50
	strh	r2, [r3]
	ldr	r3, .L90540	@ 0x50
	mov	r2, #0x81
	lsl	r2, #1
	sub	r3, r5
	add	r1, r7, r2
	strh	r3, [r1]
	b	.L9057c

	.align	2, 0
.L90540:
	.word	0x50
	.pool

.L90568:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x9f
.L9057a:
	strh	r3, [r2]
.L9057c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_90488

.thumb_func_start Func_90584
	push	{lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	mov	r4, r3
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r12, r3
.L90592:
	mov	r0, #0x84
	lsl	r0, #1
	add	r0, r12
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L905fc
	cmp	r3, #1
	bgt	.L905a8
	cmp	r3, #0
	beq	.L90648
	b	.L90652
.L905a8:
	cmp	r3, #2
	beq	.L905cc
	cmp	r3, #3
	bne	.L90652
	mov	r3, #0x82
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	ldr	r2, .L905ec
	orr	r3, r2
	b	.L905e2
.L905cc:
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
.L905e2:
	strh	r3, [r1]
	mov	r3, #9
	strh	r3, [r0]
	b	.L90652

	.align	2, 0
.L905ec:
	.word	2
	.pool

.L905fc:
	mov	r3, #0x82
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90620
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	ldr	r2, .L90640	@ 2
	orr	r3, r2
	strh	r3, [r1]
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	b	.L90592
.L90620:
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	strh	r3, [r1]
	mov	r3, #3
	strh	r3, [r0]
	b	.L90592

	.align	2, 0
.L90640:
	.word	2
	.pool

.L90648:
	cmp	r4, #0x9e
	bhi	.L90652
	mov	r3, #1
	strh	r3, [r0]
	b	.L90592
.L90652:
	pop	{r0}
	bx	r0
.func_end Func_90584

.thumb_func_start Func_90658
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	cmp	r2, #0
	beq	.L906cc
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L90698
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Func_90658
	bl	Func_4278
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
	b	.L9076a
.L90698:
	ldr	r7, =0x53b
	add	r3, r6, r7
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =Func_af0
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r7, #0x11
	add	r3, r0
	add	r2, r6, r7
	strh	r3, [r2]
.L906cc:
	ldr	r1, =0x52a
	ldr	r2, =0x539
	add	r3, r6, r1
	ldrh	r3, [r3]
	add	r1, r6, r2
	sub	r0, r3, #1
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	mov	r3, #0x20
	and	r3, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L906ec
	mov	r5, #0xf
.L906ec:
	mov	r3, #0x1f
	and	r3, r0
	lsl	r0, r3, #1
	ldr	r3, =.L9e8ee
	mov	r7, #0x3f
	mov	r4, #0
	mov	r12, r3
	mov	r14, r7
.L906fc:
	mov	r1, r14
	mov	r3, r0
	and	r3, r1
	mov	r7, r12
	ldrb	r2, [r7, r3]
	mov	r7, #0xa1
	lsr	r3, r2, #1
	add	r3, r6, r3
	lsl	r7, #3
	add	r1, r3, r7
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L90726
	ldrb	r3, [r1]
	mov	r2, #0xf
	and	r2, r3
	lsl	r3, r5, #4
	orr	r2, r3
	strb	r2, [r1]
	b	.L90730
.L90726:
	ldrb	r2, [r1]
	mov	r3, #0xf0
	and	r3, r2
	orr	r3, r5
	strb	r3, [r1]
.L90730:
	add	r4, #1
	add	r0, #1
	cmp	r4, #1
	bls	.L906fc
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L90768
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	mov	r1, #0xa1
	lsl	r1, #3
	add	r3, #4
	add	r2, r6, r1
	stmia	r3!, {r2}
	mov	r2, #0xc0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000008
	str	r2, [r3]
.L90768:
	strh	r4, [r0]
.L9076a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_90658

.thumb_func_start Func_907b0
	push	{r5, lr}
	ldr	r3, =iwram_1ecc
	sub	sp, #4
	ldr	r5, [r3]
	ldr	r3, =0xf000f000
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	beq	.L90802
	mov	r1, #0
	mov	r3, #7
.L907d6:
	lsl	r1, #4
	sub	r3, #1
	orr	r1, r4
	cmp	r3, #0
	bge	.L907d6
	mov	r3, #0xa1
	lsl	r3, #3
	add	r2, r5, r3
	mov	r3, #7
.L907e8:
	sub	r3, #1
	stmia	r2!, {r1}
	cmp	r3, #0
	bge	.L907e8
	mov	r2, #0xa1
	lsl	r2, #3
	mov	r1, #0xc0
	add	r0, r5, r2
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L90802:
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_907b0

.thumb_func_start Func_90824
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xa8
	mov	r8, r0
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	Func_48f4
	mov	r6, #0
	mov	r5, r0
	mov	r0, sp
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0
	bl	Func_907b0
	mov	r2, #0xa5
	lsl	r2, #3
	add	r3, r5, r2
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, =0x52a
	mov	r1, #0xc8
	add	r5, r3
	lsl	r1, #4
	strh	r6, [r5]
	ldr	r0, =Func_90658
	bl	Func_41d8
	mov	r0, #0x78
	bl	Func_30f8
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_90824

.thumb_func_start Func_9088c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r8, r3
	cmp	r3, #0
	ble	.L908ca
	ldr	r1, =Func_af0
	ldr	r2, =0x53f
	mov	r10, r1
.L908a8:
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r1, #0
	ldrsh	r0, [r6, r1]
	str	r2, [sp]
	sub	r0, r3
	mov	r1, r8
	bl	_call_via_r10
	ldr	r2, [sp]
	sub	r2, #1
	strh	r0, [r5]
	add	r7, #2
	add	r6, #2
	add	r5, #2
	cmp	r2, #0
	bge	.L908a8
.L908ca:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9088c

.thumb_func_start Func_908e0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ed0
	mov	r1, #0xc4
	ldr	r6, [r3]
	mov	r0, #0xa9
	lsl	r1, #5
	lsl	r0, #1
	add	r5, r6, r1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L908fa
	b	.L90a44
.L908fa:
	ldr	r2, =0x2a01
	add	r1, r6, r2
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L90908
	b	.L90a44
.L90908:
	add	r2, #1
	add	r3, r6, r2
	ldrb	r2, [r3]
	add	r2, #1
	strb	r2, [r3]
	lsl	r2, #24
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	asr	r2, #24
	cmp	r2, r3
	bge	.L90948
	mov	r3, #0xe0
	lsl	r3, #2
	ldr	r4, =0x53f
	add	r1, r6, r3
	mov	r0, #0
.L90928:
	ldrh	r3, [r1]
	ldrh	r2, [r5]
	add	r0, #1
	add	r3, r2
	strh	r3, [r1]
	add	r5, #2
	add	r1, #2
	cmp	r0, r4
	ble	.L90928
	b	.L90966

	.pool_aligned

.L90948:
	mov	r1, #0xe0
	mov	r2, #0xe0
	lsl	r1, #2
	lsl	r2, #4
	add	r0, r6, r1
	add	r1, r6, r2
	mov	r2, #0xa8
	ldr	r3, =Func_1af8
	lsl	r2, #4
	bl	_call_via_r3
	ldr	r3, =0x2a01
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
.L90966:
	mov	r1, #0xa8
	lsl	r1, #6
	add	r3, r6, r1
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #7
	mov	r2, #0x8c
	add	r3, r6, r3
	lsl	r2, #6
	add	r4, r3, r2
	mov	r3, #0xf8
	mov	r2, #0xe0
	lsl	r3, #7
	mov	r0, #0xe0
	lsl	r2, #2
	ldr	r7, .L90998	@ 0x3e0
	ldr	r5, .L9099c	@ 0x1f
	mov	r12, r3
	lsl	r0, #1
	add	r1, r6, r2
	b	.L909a8

	.align	2, 0
.L90998:
	.word	0x3e0
.L9099c:
	.word	0x1f
	.pool

.L909a8:
	ldrh	r3, [r1]
	mov	r2, r12
	and	r2, r3
	ldrh	r3, [r1, #2]
	lsl	r3, #16
	asr	r3, #21
	and	r3, r7
	orr	r2, r3
	ldrh	r3, [r1, #4]
	lsl	r3, #16
	asr	r3, #26
	and	r3, r5
	orr	r2, r3
	sub	r0, #1
	strh	r2, [r4]
	add	r1, #6
	add	r4, #2
	cmp	r0, #0
	bne	.L909a8
	mov	r3, #0xa8
	lsl	r3, #6
	add	r1, r6, r3
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	ldrb	r2, [r1]
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #7
	mov	r1, #0x8c
	add	r0, r6, r3
	lsl	r1, #6
	ldr	r5, =ewram_2090
	add	r6, r0, r1
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r1, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.L90a16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r5
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r6}
	strh	r2, [r5]
	mov	r2, #0xa0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000070
	str	r2, [r3]
.L90a16:
	strh	r1, [r4]
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.L90a42
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r1, #0x93
	add	r2, #1
	add	r3, r5
	lsl	r1, #6
	add	r3, #4
	strh	r2, [r5]
	add	r2, r0, r1
	stmia	r3!, {r2}
	ldr	r2, =0x5000200
	stmia	r3!, {r2}
	ldr	r2, =0x84000070
	str	r2, [r3]
.L90a42:
	strh	r6, [r4]
.L90a44:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_908e0

.thumb_func_start Func_90a5c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r8, r2
	mov	r1, #0xe0
	mov	r2, r3
	mov	r3, #0x80
	sub	sp, #0x28
	lsl	r1, #1
	lsl	r3, #8
	str	r1, [sp, #0x24]
	cmp	r0, r3
	bne	.L90a86
	mov	r3, #0xa0
	lsl	r3, #19
	ldrh	r0, [r3]
.L90a86:
	cmp	r2, #1
	bne	.L90a90
	mov	r1, #0xe0
	str	r1, [sp, #0x24]
	b	.L90aa4
.L90a90:
	cmp	r2, #2
	bne	.L90aa4
	mov	r3, #0xa8
	lsl	r3, #3
	add	r8, r3
	mov	r1, #0xe0
	mov	r3, #0xe0
	lsl	r1, #1
	str	r3, [sp, #0x24]
	add	r10, r1
.L90aa4:
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r0, r1
	bcs	.L90afe
	ldr	r2, =0x7c00
	mov	r3, r0
	and	r3, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	ldr	r2, =0x3e0
	add	r8, r3
	mov	r3, r0
	and	r3, r2
	mov	r1, r8
	lsl	r3, #5
	strh	r3, [r1]
	ldr	r3, =0x1f
	mov	r2, #2
	add	r8, r2
	and	r0, r3
	lsl	r3, r0, #10
	mov	r1, r8
	strh	r3, [r1]
	ldr	r3, [sp, #0x24]
	sub	r3, #1
	add	r8, r2
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #1
	mov	r4, #0x80
	lsl	r4, #24
	b	.L90af4

	.pool_aligned

.L90af4:
	mov	r0, r8
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
	sub	r0, #6
	b	.L91156
.L90afe:
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r0, r3
	bcc	.L90b08
	b	.L90f3e
.L90b08:
	ldr	r1, =0xfffeffff
	add	r0, r1
	cmp	r0, #6
	bls	.L90b12
	b	.L90ef0
.L90b12:
	ldr	r2, =.L90b1c
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L90b1c:
	.word	.L90b38
	.word	.L90b86
	.word	.L90c22
	.word	.L90cb4
	.word	.L90d4e
	.word	.L90dd0
	.word	.L90e64
.L90b38:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90b44
	b	.L9115e
.L90b44:
	ldr	r6, =Func_af0
	mov	r5, r8
.L90b48:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, #0xf8
	lsl	r0, r4, #11
	lsl	r3, #8
	mov	r2, #2
	and	r0, r3
	mov	r3, #0xf8
	lsl	r3, #9
	add	r10, r2
	lsl	r2, r4, #7
	and	r2, r3
	mov	r3, #0xf8
	lsl	r3, #7
	and	r3, r4
	add	r0, r2
	add	r0, r3
	mov	r1, #7
	bl	_call_via_r6
	mov	r4, r0
	strh	r4, [r5]
	strh	r4, [r5, #2]
	strh	r4, [r5, #4]
	mov	r3, #1
	ldr	r1, [sp, #0x24]
	add	r9, r3
	add	r5, #6
	cmp	r9, r1
	bcc	.L90b48
	b	.L9115e
.L90b86:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90b92
	b	.L9115e
.L90b92:
	mov	r1, #0x1f
	ldr	r2, =.L9e96e
	mov	r11, r1
.L90b98:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r1, #2
	mov	r6, r4
	mov	r3, r11
	lsr	r0, r4, #5
	and	r6, r3
	and	r0, r3
	add	r10, r1
	lsr	r3, r4, #10
	mov	r1, r11
	and	r3, r1
	add	r0, r6, r0
	add	r0, r3
	str	r2, [sp]
	ldr	r3, =Func_af0
	mov	r1, #0xa
	bl	_call_via_r3
	mov	r4, r0
	lsl	r3, r4, #2
	add	r6, r3, #5
	lsl	r3, r4, #1
	add	r3, r4
	add	r5, r3, #5
	mov	r7, r5
	ldr	r2, [sp]
	cmp	r6, #7
	bgt	.L90bd4
	mov	r6, #8
.L90bd4:
	cmp	r5, #7
	bgt	.L90be0
	mov	r7, #8
	cmp	r5, #7
	bgt	.L90be0
	mov	r5, #8
.L90be0:
	cmp	r6, #0x1c
	ble	.L90be6
	mov	r6, #0x1c
.L90be6:
	cmp	r7, #0x1c
	ble	.L90bec
	mov	r7, #0x1c
.L90bec:
	cmp	r5, #0x1c
	ble	.L90bf2
	mov	r5, #0x1c
.L90bf2:
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	mov	r1, #1
	ldr	r3, [sp, #0x24]
	add	r9, r1
	cmp	r9, r3
	bcc	.L90b98
	b	.L9115e
.L90c22:
	mov	r1, #0
	ldr	r2, [sp, #0x24]
	mov	r9, r1
	cmp	r9, r2
	bcc	.L90c2e
	b	.L9115e
.L90c2e:
	mov	r3, #0x1f
	mov	r11, r3
.L90c32:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, r11
	mov	r6, r4
	and	r6, r3
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	and	r7, r3
	and	r5, r3
	mov	r3, r6
	orr	r3, r7
	mov	r2, #2
	orr	r3, r5
	add	r10, r2
	cmp	r3, #0
	beq	.L90c7e
	lsr	r3, r6, #1
	mov	r1, #3
	mov	r0, r7
	sub	r6, r3
	bl	Func_af0_from_thumb
	add	r6, #0xa
	sub	r7, r0
	mov	r0, r6
	bl	Func_91294
	add	r7, #8
	mov	r6, r0
	mov	r0, r7
	bl	Func_91294
	sub	r5, #7
	mov	r7, r0
	mov	r0, r5
	bl	Func_91294
	mov	r5, r0
.L90c7e:
	ldr	r2, =.L9e9ae
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	mov	r2, #2
	strh	r3, [r1]
	add	r8, r2
	ldr	r2, =.L9e96e
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	mov	r2, #2
	strh	r3, [r1]
	add	r8, r2
	ldr	r2, =.L9e92e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #2
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.L90c32
	b	.L9115e
.L90cb4:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90cc0
	b	.L9115e
.L90cc0:
	ldr	r1, =.L9e92e
	mov	r11, r1
.L90cc4:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r6, r4
	mov	r3, #2
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	and	r6, r1
	add	r10, r3
	and	r7, r1
	and	r5, r1
	cmp	r6, #9
	bgt	.L90ce0
	mov	r6, #0xa
.L90ce0:
	cmp	r7, #0xf
	bgt	.L90ce6
	mov	r7, #0x10
.L90ce6:
	cmp	r5, #0xf
	bgt	.L90cec
	mov	r5, #0x10
.L90cec:
	cmp	r6, #0x1c
	ble	.L90cf2
	mov	r6, #0x1c
.L90cf2:
	cmp	r7, #0x18
	ble	.L90cf8
	mov	r7, #0x18
.L90cf8:
	cmp	r5, #0x1a
	ble	.L90cfe
	mov	r5, #0x1a
.L90cfe:
	mov	r0, r6
	bl	Func_91294
	add	r7, #2
	mov	r6, r0
	mov	r0, r7
	bl	Func_91294
	add	r5, #2
	mov	r7, r0
	mov	r0, r5
	bl	Func_91294
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r2, #2
	mov	r1, r11
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #2
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.L90cc4
	b	.L9115e
.L90d4e:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90d5a
	b	.L9115e
.L90d5a:
	ldr	r1, =.L9e9ae
	mov	r11, r1
.L90d5e:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r6, r4
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	and	r6, r1
	and	r7, r1
	and	r5, r1
	add	r0, r6, r7
	mov	r1, #3
	mov	r3, #2
	add	r0, r5
	add	r10, r3
	bl	Func_af0_from_thumb
	bl	Func_91294
	asr	r3, r6, #1
	add	r6, r3, r0
	asr	r3, r7, #1
	add	r7, r3, r0
	asr	r3, r5, #1
	add	r5, r3, r0
	mov	r0, r6
	bl	Func_91294
	mov	r6, r0
	mov	r0, r7
	bl	Func_91294
	mov	r7, r0
	mov	r0, r5
	bl	Func_91294
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	mov	r1, r11
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.L90d5e
	b	.L9115e
.L90dd0:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.L90ddc
	b	.L9115e
.L90ddc:
	mov	r2, #0x1f
	mov	r11, r2
.L90de0:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	mov	r6, r4
	and	r7, r2
	and	r5, r2
	and	r6, r2
	asr	r3, r7, #3
	asr	r2, r5, #3
	add	r3, r2
	add	r6, r3
	mov	r1, #2
	mov	r0, r6
	add	r10, r1
	bl	Func_91294
	mov	r1, #3
	mov	r6, r0
	mov	r0, r7
	bl	Func_af0_from_thumb
	mov	r1, #3
	sub	r7, r0
	mov	r0, r5
	bl	Func_af0_from_thumb
	ldr	r1, =.L9e92e
	sub	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1, #2]
	ldr	r2, =.L9e96e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.L90de0
	b	.L9115e

	.pool_aligned

.L90e64:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.L90e70
	b	.L9115e
.L90e70:
	mov	r2, #0x1f
	mov	r11, r2
.L90e74:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	mov	r6, r4
	lsr	r7, r4, #5
	and	r6, r2
	and	r7, r2
	mov	r1, #2
	lsr	r3, r6, #1
	lsr	r5, r4, #10
	mov	r0, r7
	add	r10, r1
	mov	r1, #3
	and	r5, r2
	sub	r6, r3
	bl	Func_af0_from_thumb
	add	r6, #6
	sub	r7, r0
	mov	r0, r6
	bl	Func_91294
	add	r7, #4
	mov	r6, r0
	mov	r0, r7
	bl	Func_91294
	sub	r5, #6
	mov	r7, r0
	mov	r0, r5
	bl	Func_91294
	ldr	r2, =.L9e9ae
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r2, =.L9e96e
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	ldr	r2, =.L9e92e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r1, #4]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #6
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.L90e74
	b	.L9115e

	.pool_aligned

.L90ef0:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90efc
	b	.L9115e
.L90efc:
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.L90f14

	.pool_aligned

.L90f14:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r3, #2
	add	r10, r3
	mov	r3, r4
	and	r3, r5
	strh	r3, [r1]
	mov	r3, r4
	and	r3, r0
	lsl	r3, #5
	and	r4, r2
	strh	r3, [r1, #2]
	lsl	r3, r4, #10
	strh	r3, [r1, #4]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [sp, #0x24]
	add	r1, #6
	cmp	r9, r3
	bcc	.L90f14
	b	.L9115e
.L90f3e:
	mov	r3, #0x80
	lsl	r3, #14
	and	r3, r0
	cmp	r3, #0
	beq	.L90fde
	mov	r3, #0x1f
	str	r0, [sp, #0x20]
	mov	r1, r0
	lsr	r2, r0, #5
	lsr	r0, #10
	and	r1, r3
	mov	r11, r0
	and	r2, r3
	str	r1, [sp, #0x20]
	mov	r1, r11
	and	r1, r3
	str	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x24]
	mov	r2, #0
	mov	r9, r2
	mov	r11, r1
	cmp	r9, r3
	bcc	.L90f6e
	b	.L9115e
.L90f6e:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, #0xf8
	lsl	r0, r4, #11
	lsl	r3, #8
	mov	r2, #2
	and	r0, r3
	mov	r3, #0xf8
	lsl	r3, #9
	add	r10, r2
	lsl	r2, r4, #7
	and	r2, r3
	mov	r3, #0xf8
	lsl	r3, #7
	and	r3, r4
	add	r0, r2
	add	r0, r3
	mov	r1, #0x60
	ldr	r3, =Func_af0
	bl	_call_via_r3
	ldr	r1, [sp, #0x20]
	mov	r4, r0
	mov	r7, r1
	mul	r7, r4
	ldr	r2, [sp, #0x1c]
	mov	r0, r7
	mov	r6, r2
	mul	r6, r4
	mov	r5, r11
	mul	r5, r4
	bl	Func_912a8
	mov	r7, r0
	mov	r0, r6
	bl	Func_912a8
	mov	r6, r0
	mov	r0, r5
	bl	Func_912a8
	mov	r3, r8
	mov	r1, r8
	mov	r2, r8
	mov	r5, r0
	strh	r5, [r3]
	strh	r6, [r1, #2]
	strh	r7, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.L90f6e
	b	.L9115e
.L90fde:
	mov	r3, #0x80
	lsl	r3, #15
	and	r3, r0
	cmp	r3, #0
	bne	.L90fea
	b	.L910e8
.L90fea:
	mov	r3, #0x1f
	str	r0, [sp, #0x18]
	mov	r1, r0
	lsr	r2, r0, #5
	lsr	r0, #10
	and	r1, r3
	mov	r11, r0
	and	r2, r3
	str	r1, [sp, #0x18]
	mov	r1, r11
	and	r1, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x24]
	mov	r2, #0
	mov	r9, r2
	mov	r11, r1
	cmp	r9, r3
	bcc	.L91010
	b	.L9115e
.L91010:
	ldr	r2, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	add	r1, r2
	str	r1, [sp, #0x10]
	lsl	r1, r2, #16
	mov	r2, r11
	lsl	r3, #16
	lsl	r2, #16
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.L91028:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, #0x1f
	mov	r6, r4
	lsr	r0, r4, #5
	and	r6, r2
	and	r0, r2
	lsr	r3, r4, #10
	mov	r1, #2
	and	r3, r2
	add	r10, r1
	add	r0, r6, r0
	ldr	r1, [sp, #0x10]
	add	r0, r3
	add	r1, r11
	ldr	r3, =Func_af0
	lsl	r0, #4
	bl	_call_via_r3
	ldr	r3, [sp, #0x18]
	mov	r4, r0
	mov	r0, r3
	mul	r0, r4
	ldr	r2, [sp, #0xc]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	ldr	r3, =Func_888
	.call_via r3
	ldr	r1, [sp, #0x14]
	mov	r7, r0
	mov	r0, r1
	mul	r0, r4
	ldr	r2, [sp, #8]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	.call_via r3
	mov	r6, r0
	mov	r0, r11
	mul	r0, r4
	ldr	r3, [sp, #4]
	lsr	r0, #4
	asr	r1, r3, #4
	lsl	r0, #16
	ldr	r3, =Func_888
	.call_via r3
	mov	r5, r0
	lsr	r0, r7, #16
	bl	Func_91294
	mov	r7, r0
	lsr	r0, r6, #16
	bl	Func_91294
	mov	r6, r0
	lsr	r0, r5, #16
	bl	Func_91294
	ldr	r1, =.L9e92e
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, =.L9e92e
	mov	r2, #2
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #2
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.L91028
	b	.L9115e

	.pool_aligned

.L910e8:
	mov	r3, #0x80
	lsl	r3, #16
	and	r3, r0
	cmp	r3, #0
	beq	.L9113e
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcs	.L9115e
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.L91114

	.pool_aligned

.L91114:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r3, #2
	add	r10, r3
	mov	r3, r4
	and	r3, r5
	strh	r3, [r1]
	mov	r3, r4
	and	r3, r0
	lsl	r3, #5
	and	r4, r2
	strh	r3, [r1, #2]
	lsl	r3, r4, #10
	strh	r3, [r1, #4]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [sp, #0x24]
	add	r1, #6
	cmp	r9, r3
	bcc	.L91114
	b	.L9115e
.L9113e:
	cmp	r2, #2
	bne	.L91148
	mov	r1, #0xa8
	lsl	r1, #3
	add	r0, r1
.L91148:
	ldr	r3, [sp, #0x24]
	lsl	r2, r3, #1
	add	r2, r3
	mov	r4, #0x84
	lsl	r4, #24
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
.L91156:
	mov	r1, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L9115e:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_90a5c

.thumb_func_start Func_91174
	push	{lr}
	ldr	r1, =0x2a04
	mov	r0, #0x20
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000a81
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xa0
	lsl	r0, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #4
	mov	r0, #0x80
	add	r2, r4, r3
	mov	r1, r4
	mov	r3, #0
	lsl	r0, #9
	bl	Func_90a5c
	ldr	r1, =0xc8f
	ldr	r0, =Func_908e0
	bl	Func_41d8
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_91174

.thumb_func_start Func_911e8
	push	{lr}
	ldr	r0, =Func_908e0
	bl	Func_4278
	mov	r0, #0x20
	bl	Func_2dd8
	pop	{r0}
	bx	r0
.func_end Func_911e8

.thumb_func_start Func_91200
	push	{lr}
	ldr	r3, =iwram_1ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L91218
	mov	r3, #0xe0
	lsl	r3, #4
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_90a5c
.L91218:
	pop	{r0}
	bx	r0
.func_end Func_91200

.thumb_func_start Func_91220
	push	{lr}
	ldr	r3, =iwram_1ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L91238
	mov	r3, #0xe0
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_90a5c
.L91238:
	pop	{r0}
	bx	r0
.func_end Func_91220

.thumb_func_start Func_91240
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L9124c
	strh	r0, [r3]
.L9124c:
	pop	{r0}
	bx	r0
.func_end Func_91240

.thumb_func_start Func_91254
	push	{r5, lr}
	ldr	r3, =iwram_1ed0
	ldr	r4, [r3]
	mov	r5, r0
	cmp	r4, #0
	beq	.L91286
	ldr	r1, =0x2a01
	add	r3, r4, r1
	add	r1, #1
	mov	r2, #0
	strb	r5, [r3]
	add	r3, r4, r1
	strb	r2, [r3]
	mov	r3, #0xe0
	lsl	r3, #4
	mov	r2, #0xe0
	add	r1, r4, r3
	mov	r3, #0xc4
	lsl	r2, #2
	lsl	r3, #5
	add	r0, r4, r2
	add	r2, r4, r3
	mov	r3, r5
	bl	Func_9088c
.L91286:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91254

.thumb_func_start Func_91294
	push	{lr}
	cmp	r0, #0x1f
	ble	.L9129e
	mov	r0, #0x1f
	b	.L912a4
.L9129e:
	cmp	r0, #0
	bge	.L912a4
	mov	r0, #0
.L912a4:
	pop	{r1}
	bx	r1
.func_end Func_91294

.thumb_func_start Func_912a8
	push	{lr}
	mov	r3, #0xf8
	lsl	r3, #7
	cmp	r0, r3
	ble	.L912b4
	mov	r0, r3
.L912b4:
	pop	{r1}
	bx	r1
.func_end Func_912a8

.thumb_func_start Func_912b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ee0
	ldr	r1, [r3]
	sub	r3, #0x70
	ldr	r3, [r3]
	add	r3, #0xe4
	mov	r11, r1
	mov	r1, #2
	ldrsh	r2, [r3, r1]
	sub	sp, #0x10
	str	r2, [sp, #8]
	mov	r1, #6
	ldrsh	r2, [r3, r1]
	str	r2, [sp, #4]
	mov	r5, r11
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.L912ea
	b	.L91480
.L912ea:
	ldr	r2, [r3, #0x10]
	mov	r10, r2
	mov	r2, #0x16
	ldrsh	r1, [r3, r2]
	ldr	r7, [r3, #8]
	str	r1, [sp]
	add	r3, #0x22
	ldrb	r3, [r3]
	mov	r1, #0xbd
	mov	r8, r3
	ldr	r3, =iwram_1b10
	lsl	r1, #1
	ldr	r2, =0xfff80000
	add	r3, r1
	add	r7, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	lsl	r2, #13
	lsr	r3, #5
	add	r2, r10
	mov	r1, r7
	mov	r0, r8
	mov	r9, r3
	bl	_Func_11f54
	mov	r2, #0x80
	lsl	r2, #14
	asr	r6, r0, #16
	add	r2, r10
	mov	r0, r8
	mov	r1, r7
	bl	_Func_11f54
	asr	r0, #16
	sub	r0, #0x10
	cmp	r0, r6
	ble	.L91336
	mov	r6, r0
.L91336:
	cmp	r6, #0
	ble	.L913c8
	ldr	r3, [sp]
	cmp	r6, r3
	ble	.L913c8
	ldr	r3, =0x40000800
	mov	r1, #0xd
	str	r3, [r5, #4]
	mov	r3, #0x80
	ldrb	r2, [r5, #9]
	lsl	r3, #3
	neg	r1, r1
	str	r3, [r5, #8]
	mov	r3, r1
	and	r3, r2
	strb	r3, [r5, #9]
	ldr	r3, .L9138c	@ 0x3ff
	mov	r2, r9
	and	r2, r3
	ldrh	r0, [r5, #8]
	ldr	r3, =0xfffffc00
	and	r3, r0
	orr	r3, r2
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	and	r1, r3
	mov	r3, #4
	orr	r1, r3
	strb	r1, [r5, #5]
	ldr	r3, .L91390	@ 0xfff0
	ldr	r1, [sp, #8]
	asr	r2, r7, #16
	and	r2, r3
	ldr	r3, .L91394	@ 0x1ff
	sub	r2, r1
	and	r2, r3
	ldrh	r1, [r5, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	mov	r2, r10
	b	.L913b0

	.align	2, 0
.L9138c:
	.word	0x3ff
.L91390:
	.word	0xfff0
.L91394:
	.word	0x1ff
	.pool

.L913b0:
	ldr	r1, [sp, #4]
	asr	r3, r2, #16
	mov	r2, #0xf0
	and	r3, r2
	sub	r3, r1
	sub	r3, r6
	add	r3, #0x10
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0
	bl	Func_3dec
.L913c8:
	mov	r2, #0x80
	lsl	r2, #13
	add	r7, r2
	mov	r1, r7
	add	r2, r10
	mov	r0, r8
	bl	_Func_11f54
	mov	r2, #0x80
	lsl	r2, #14
	asr	r6, r0, #16
	add	r2, r10
	mov	r0, r8
	mov	r1, r7
	bl	_Func_11f54
	asr	r0, #16
	mov	r5, r11
	sub	r0, #0x10
	add	r5, #0xc
	cmp	r0, r6
	ble	.L913f6
	mov	r6, r0
.L913f6:
	cmp	r6, #0
	ble	.L91480
	ldr	r2, [sp]
	cmp	r6, r2
	ble	.L91480
	ldr	r3, =0x40000800
	mov	r2, #0xd
	ldrb	r1, [r5, #9]
	str	r3, [r5, #4]
	neg	r2, r2
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r5, #9]
	ldr	r3, .L9144c	@ 0x3ff
	mov	r1, r9
	and	r1, r3
	mov	r9, r1
	ldr	r3, =0xfffffc00
	ldrh	r1, [r5, #8]
	and	r3, r1
	mov	r1, r9
	orr	r3, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	ldr	r3, .L91450	@ 0xfff0
	strb	r2, [r5, #5]
	asr	r2, r7, #16
	and	r2, r3
	ldr	r3, [sp, #8]
	sub	r2, r3
	ldr	r3, .L91454	@ 0x1ff
	ldrh	r1, [r5, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	b	.L91464

	.align	2, 0
.L9144c:
	.word	0x3ff
.L91450:
	.word	0xfff0
.L91454:
	.word	0x1ff
	.pool

.L91464:
	mov	r1, r10
	strh	r3, [r5, #6]
	mov	r2, #0xf0
	asr	r3, r1, #16
	and	r3, r2
	ldr	r2, [sp, #4]
	sub	r3, r2
	sub	r3, r6
	add	r3, #0x10
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0
	bl	Func_3dec
.L91480:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_912b8

.thumb_func_start Func_91494
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r1, #0x1c
	mov	r0, #0x24
	sub	sp, #4
	bl	Func_48f4
	mov	r1, #0x80
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_48b0
	ldr	r3, =0x11111111
	mov	r4, r0
	mov	r5, sp
	str	r3, [r5]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	mov	r2, r4
	lsl	r1, #2
	mov	r0, #0x5e
	bl	Func_3fa4
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_912b8
	bl	Func_41d8
	ldr	r2, =0x3f9e
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r2, #0x10
	add	r3, #2
	strh	r2, [r3]
	mov	r2, #0x1f
	add	r3, #2
	strh	r2, [r3]
	mov	r3, #0
	str	r3, [r5]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r7
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	cmp	r6, #0
	bne	.L91514
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r6, r0
.L91514:
	str	r6, [r7, #0x18]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_91494

.thumb_func_start Func_91540
	push	{lr}
	ldr	r0, =Func_912b8
	bl	Func_42c8
	pop	{r0}
	bx	r0
.func_end Func_91540

.thumb_func_start Func_91550
	push	{lr}
	ldr	r0, =Func_912b8
	bl	Func_439c
	pop	{r0}
	bx	r0
.func_end Func_91550

.thumb_func_start Func_91560
	push	{lr}
	mov	r2, r0
	ldr	r0, =.L9e9f0
	ldrh	r3, [r0]
	mov	r1, #0
	cmp	r3, r2
	beq	.L9157c
.L9156e:
	add	r1, #1
	add	r0, #4
	cmp	r1, #0x81
	bhi	.L9157c
	ldrh	r3, [r0]
	cmp	r3, r2
	bne	.L9156e
.L9157c:
	pop	{r1}
	bx	r1
.func_end Func_91560

	.section .rodata

.L9e680:
	.incrom 0x9e680, 0x9e686
.L9e686:
	.incrom 0x9e686, 0x9e6b8
.L9e6b8:
	.incrom 0x9e6b8, 0x9e6c0
.L9e6c0:
	.incrom 0x9e6c0, 0x9e75c
.L9e75c:
	.incrom 0x9e75c, 0x9e87c
.L9e87c:
	.incrom 0x9e87c, 0x9e8a0
.L9e8a0:
	.incrom 0x9e8a0, 0x9e8ac
.L9e8ac:
	.incrom 0x9e8ac, 0x9e8ce
.L9e8ce:
	.incrom 0x9e8ce, 0x9e8ee
.L9e8ee:
	.incrom 0x9e8ee, 0x9e92e
.L9e92e:
	.incrom 0x9e92e, 0x9e96e
.L9e96e:
	.incrom 0x9e96e, 0x9e9ae
.L9e9ae:
	.incrom 0x9e9ae, 0x9e9f0
.L9e9f0:
	.incrom 0x9e9f0, 0x9ebfc
