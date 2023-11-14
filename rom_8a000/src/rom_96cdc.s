	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_96cdc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r1
	ldr	r1, =ewram_48a
	mov	r8, r0
	mov	r6, r2
	mov	r5, #0
	mov	r10, r1
.L96cf0:
	mov	r0, r5
	bl	Func_8ba1c
	mov	r1, r10
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	cmp	r5, r3
	beq	.L96d14
	cmp	r0, #0
	beq	.L96d14
	cmp	r0, r8
	beq	.L96d14
	mov	r3, r0
	add	r3, #0x5b
	strb	r7, [r3]
	mov	r1, r6
	bl	_Func_c344
.L96d14:
	add	r5, #1
	cmp	r5, #0x42
	ble	.L96cf0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96cdc

.thumb_func_start Func_96d2c
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
	ble	.L96d4e
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Func_c2d8
	b	.L96d78
.L96d4e:
	lsl	r0, #10
	bl	Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x90
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L96d78:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_96d2c

.thumb_func_start Func_96d84
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
	ble	.L96da6
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Func_c2d8
	b	.L96dd2
.L96da6:
	lsl	r0, #10
	bl	Func_2322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L96dd2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_96d84

.thumb_func_start Func_96ddc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r1, [r3, #0x10]
	sub	sp, #0xc
	mov	r2, #4
	mov	r10, r3
	add	r2, sp
	mov	r3, #0x3f
	str	r1, [sp]
	mov	r6, r0
	mov	r7, #0
	mov	r9, r2
	mov	r11, r3
.L96e04:
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0xc]
	mov	r0, #0x1a
	bl	_Func_c150
	lsl	r3, r7, #2
	mov	r1, r9
	str	r0, [r3, r1]
	cmp	r0, #0
	beq	.L96ebc
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, #0
	ldr	r5, [r0, #0x50]
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	ldr	r1, .L96e40	@ 0
	ldr	r3, =0x1999
	mov	r8, r1
	str	r6, [r0, #0x68]
	str	r3, [r0, #0x1c]
	str	r3, [r0, #0x18]
	cmp	r5, #0
	beq	.L96ebc
	b	.L96e4c

	.align	2, 0
.L96e40:
	.word	0
	.pool

.L96e4c:
	mov	r1, #0
	mov	r0, r5
	bl	_Func_ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	Func_3f3c
	mov	r3, r10
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L96eb4	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r11
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r11
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L96ebc

	.align	2, 0
.L96eb4:
	.word	0xfffffc00
	.pool

.L96ebc:
	add	r7, #1
	cmp	r7, #1
	ble	.L96e04
	ldr	r2, [sp, #4]
	ldr	r3, =Func_96d84
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	strb	r3, [r0, #9]
	mov	r3, r9
	ldr	r0, [r3, #4]
	ldr	r3, =Func_96d2c
	str	r3, [r0, #0x6c]
	ldr	r1, [sp]
	ldr	r3, [r1, #0x50]
	ldr	r4, [r0, #0x50]
	ldrb	r1, [r3, #9]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r4, #9]
	and	r2, r1
	orr	r2, r3
	add	r0, #0x23
	mov	r3, #2
	strb	r2, [r4, #9]
	strb	r3, [r0]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96ddc

.thumb_func_start Func_96f14
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L96f2c
	mov	r1, #7
	bl	_Func_c598
	b	.L96f34
.L96f2c:
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c598
.L96f34:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L96f46
	mov	r0, r5
	bl	Func_96ddc
.L96f46:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_96f14

.thumb_func_start Func_96f50
	push	{r5, r6, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L96f72
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	Func_b50_from_thumb
	mov	r1, r0
	mov	r0, r6
	bl	_Func_c598
.L96f72:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L96f82
	mov	r0, r6
	bl	Func_96ddc
.L96f82:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_96f50

.thumb_func_start Func_96f8c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r5, r3
	add	r5, #0x58
	mov	r6, #0x17
.L96f98:
	mov	r0, r5
	sub	r6, #1
	bl	Func_9b804
	add	r5, #0x48
	cmp	r6, #0
	bge	.L96f98
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_96f8c

.thumb_func_start Func_96fb0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	ldr	r0, =iwram_1ebc
	mov	r3, r0
	sub	r3, #0x4c
	ldr	r2, [r0]
	ldr	r7, [r3]
	ldr	r3, =0xcc6
	mov	r10, r2
	add	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	sub	sp, #4
	mov	r9, r1
	cmp	r6, #0
	bne	.L97004
	mov	r1, #0xe4
	lsl	r1, #3
	mov	r0, #0x38
	bl	Func_48b0
	mov	r5, r0
	mov	r0, sp
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x850001c8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L97006

	.pool_aligned

.L97004:
	ldr	r5, [r0, #0x74]
.L97006:
	mov	r3, r8
	strh	r3, [r5, #0x1c]
	mov	r0, r8
	bl	_Func_78b9c
	ldrb	r3, [r0, #0xc]
	strh	r3, [r5, #0x1e]
	ldr	r3, =0xcc6
	add	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	cmp	r6, #0
	bne	.L970d8
	bl	Func_96c24
	ldr	r3, .L97064	@ 0x200
	mov	r2, r5
	sub	r3, r0
	add	r2, #0x4a
	strh	r3, [r2]
	mov	r3, r5
	add	r3, #0x21
	mov	r4, r9
	strb	r4, [r3]
	mov	r0, #1
	add	r3, #1
	strb	r0, [r3]
	ldr	r2, =0x71c
	sub	r3, #2
	strb	r0, [r3]
	add	r3, #3
	strb	r0, [r3]
	add	r3, r5, r2
	strb	r0, [r3]
	ldr	r3, [r7, #4]
	str	r3, [r5, #0x4c]
	ldr	r3, [r7, #8]
	str	r3, [r5, #0x50]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #0x54]
	ldr	r3, =ewram_240
	mov	r12, r3
	mov	r3, #0xed
	lsl	r3, #1
	add	r3, r12
	b	.L97074

	.align	2, 0
.L97064:
	.word	0x200
	.pool

.L97074:
	ldrh	r1, [r3]
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	ldr	r3, =0x35
	cmp	r2, r3
	bne	.L97086
	mov	r3, r5
	add	r3, #0x45
	strb	r0, [r3]
.L97086:
	lsl	r3, r1, #16
	ldr	r2, =0x37
	asr	r3, #16
	cmp	r3, r2
	bne	.L97096
	mov	r3, r5
	add	r3, #0x45
	strb	r0, [r3]
.L97096:
	mov	r3, #0xfa
	lsl	r3, #1
	add	r3, r12
	mov	r1, #1
	ldr	r0, [r3]
	neg	r1, r1
	bl	Func_970f8
	mov	r2, #0x1e
	ldrsh	r3, [r5, r2]
	cmp	r3, #8
	beq	.L970b6
	mov	r3, #0xcc
	lsl	r3, #4
	add	r3, r10
	strh	r6, [r3]
.L970b6:
	bl	Func_4080
	mov	r3, r5
	add	r3, #0x46
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	lsl	r1, #1
	asr	r0, #16
	ldr	r2, =.L9c410
	bl	Func_3fa4
	mov	r1, #0xc8
	ldr	r0, =Func_96f8c
	lsl	r1, #4
	bl	Func_41d8
.L970d8:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96fb0

.thumb_func_start Func_970f8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f30
	ldr	r6, [r3]
	strh	r0, [r6, #0x18]
	lsl	r0, #16
	asr	r0, #16
	mov	r5, r1
	bl	Func_8ba1c
	strh	r5, [r6, #0x1a]
	lsl	r5, #16
	mov	r7, r0
	asr	r5, #16
	str	r7, [r6, #0x10]
	mov	r0, r5
	bl	Func_8ba1c
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r1, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	and	r1, r3
	str	r0, [r6, #0x14]
	str	r1, [r6]
	cmp	r0, #0
	beq	.L97152
	ldr	r3, [r0, #0x6c]
	str	r3, [r6, #0x38]
	ldr	r3, [r0]
	str	r3, [r6, #0x3c]
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	ldrb	r2, [r3, #5]
	mov	r3, r6
	add	r3, #0x44
	strb	r2, [r3]
	ldr	r3, [r0, #8]
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0xc]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #8]
	b	.L97168
.L97152:
	ldr	r3, [r7, #8]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	str	r3, [r6, #8]
	lsl	r0, #13
	add	r2, r6, #4
	bl	Func_447c
.L97168:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_970f8

.thumb_func_start Func_97174
	push	{lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, [r3, #0x10]
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r1, #0
	bl	_Func_c598
	mov	r0, #1
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_97174

.thumb_func_start Func_97194
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r1, [r3]
	mov	r2, r3
	sub	r2, #0x74
	sub	r3, #0xc0
	mov	r8, r1
	ldr	r2, [r2]
	ldr	r3, [r3]
	mov	r7, r8
	mov	r6, r8
	mov	r11, r2
	mov	r9, r3
	add	r7, #0x9d
	add	r6, #0x58
	mov	r5, #0x17
.L971c0:
	ldrb	r3, [r7]
	lsl	r3, #24
	add	r7, #0x48
	cmp	r3, #0
	beq	.L971d0
	mov	r0, r6
	bl	Func_9bb34
.L971d0:
	sub	r5, #1
	add	r6, #0x48
	cmp	r5, #0
	bge	.L971c0
	ldr	r3, =0xcc6
	add	r3, r11
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L97260
	ldr	r2, =Func_96d84
	ldr	r7, =Func_96d2c
	mov	r6, #0
	mov	r10, r2
.L971ee:
	ldr	r3, =iwram_1e64
	ldr	r3, [r3]
	mov	r1, #0
	mov	r5, #0
.L971f6:
	cmp	r5, #0x3f
	bgt	.L9720a
	ldr	r2, [r3, #0x6c]
	cmp	r2, r10
	beq	.L97208
	add	r5, #1
	add	r3, #0x70
	cmp	r2, r7
	bne	.L971f6
.L97208:
	mov	r1, #1
.L9720a:
	cmp	r1, #0
	beq	.L9721a
	mov	r0, #1
	add	r6, #1
	bl	Func_30f8
	cmp	r6, #0x1d
	ble	.L971ee
.L9721a:
	ldr	r2, =0xcc7
	mov	r3, #0
	add	r2, r11
	strb	r3, [r2]
	ldr	r0, =Func_96f8c
	bl	Func_4278
	mov	r3, r8
	add	r3, #0x46
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	Func_3f3c
	mov	r2, r8
	ldr	r3, [r2, #0x4c]
	mov	r1, r9
	str	r3, [r1, #4]
	ldr	r3, [r2, #0x50]
	str	r3, [r1, #8]
	ldr	r3, [r2, #0x54]
	str	r3, [r1, #0xc]
	mov	r1, #0x1e
	ldrsh	r3, [r2, r1]
	cmp	r3, #8
	beq	.L97256
	mov	r2, #0xcc
	lsl	r2, #4
	add	r2, r11
	mov	r3, #1
	strh	r3, [r2]
.L97256:
	bl	Func_9202c
	mov	r0, #0x38
	bl	Func_2dd8
.L97260:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_97194

.thumb_func_start Func_9728c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f30
	ldr	r6, [r3]
	sub	r3, #0x74
	ldr	r5, [r6, #0x10]
	ldr	r3, [r3]
	mov	r0, r5
	mov	r1, #0x14
	mov	r10, r3
	mov	r2, #0x1c
	ldrsh	r7, [r6, r2]
	bl	_Func_c300
	ldr	r3, [r5, #8]
	str	r3, [r5, #0x38]
	ldr	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x22
	add	r3, r6
	mov	r8, r3
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L972da
	mov	r0, #0xd4
	bl	_Func_f9080
	ldr	r3, =Func_96f14
	str	r3, [r5, #0x6c]
.L972da:
	mov	r3, r6
	add	r3, #0x23
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L97330
	mov	r0, r5
	mov	r1, #1
	mov	r2, #0
	bl	Func_96cdc
	mov	r0, r7
	mov	r1, #4
	bl	_Func_19908
	mov	r3, r6
	add	r3, #0x21
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L97318
	ldr	r2, =0x71c
	add	r3, r6, r2
	ldr	r0, =0x926
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	bl	_Func_1776c
	b	.L97326
.L97318:
	ldr	r2, =0x71c
	add	r3, r6, r2
	ldr	r0, =0x926
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	bl	_Func_1776c
.L97326:
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x10
	bl	Func_96cdc
.L97330:
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L97354
	mov	r2, r8
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L9734a
	ldr	r3, =Func_96f50
	str	r3, [r5, #0x6c]
.L9734a:
	mov	r0, r5
	mov	r1, #0x15
	bl	_Func_c300
	b	.L97358
.L97354:
	bl	Func_97174
.L97358:
	ldr	r2, =0xcc7
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9728c

	.section .rodata

.L9c410:
	.incrom 0x9c410, 0x9c510
