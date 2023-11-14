	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	mov	r0, #0xe
	mov	r1, #0x17
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_40
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L8a
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
	beq	.L8a
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L7e
	mov	r0, r2
.L7e:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L86
	mov	r0, r2
.L86:
	add	r3, r0
	strh	r3, [r5, #6]
.L8a:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_40

.thumb_func_start OvlFunc_98
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, =0xfff40000
	str	r3, [r5, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0
	str	r3, [r5, #0x10]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_98

.thumb_func_start OvlFunc_bc
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x24]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x28]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	ldr	r1, [r0, #0x2c]
	str	r3, [r0, #0xc]
	ldr	r3, [r0, #0x18]
	add	r3, r1
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r1
	str	r3, [r0, #0x1c]
	ldr	r3, [r0, #0x48]
	sub	r2, r3
	str	r2, [r0, #0x28]
	mov	r0, #0
	bx	lr
.func_end OvlFunc_bc

.thumb_func_start OvlFunc_e4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lfc
	ldr	r0, =.L4194
	b	.L162
.Lfc:
	ldr	r3, =0x4e
	cmp	r2, r3
	bne	.L106
	ldr	r0, =.L420c
	b	.L162
.L106:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L110
	ldr	r0, =.L426c
	b	.L162
.L110:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L11a
	ldr	r0, =.L4314
	b	.L162
.L11a:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L124
	ldr	r0, =.L43ec
	b	.L162
.L124:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L12e
	ldr	r0, =.L4464
	b	.L162
.L12e:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L138
	ldr	r0, =.L4524
	b	.L162
.L138:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L142
	ldr	r0, =.L459c
	b	.L162
.L142:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L14c
	ldr	r0, =.L4644
	b	.L162
.L14c:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L156
	ldr	r0, =.L4704
	b	.L162
.L156:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L160
	ldr	r0, =.L477c
	b	.L162
.L160:
	ldr	r0, =.L4164
.L162:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e4

.thumb_func_start OvlFunc_1c8
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L1e0
	ldr	r0, =.L480c
	b	.L1ea
.L1e0:
	ldr	r3, =0x56
	mov	r0, #0
	cmp	r2, r3
	bne	.L1ea
	ldr	r0, =.L483c
.L1ea:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c8

.thumb_func_start OvlFunc_204
	ldr	r0, =.L485c
	bx	lr
.func_end OvlFunc_204

.thumb_func_start OvlFunc_20c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L224
	ldr	r0, =.L4940
	b	.L276
.L224:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L22e
	ldr	r0, =.L49a0
	b	.L276
.L22e:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L238
	ldr	r0, =.L4a00
	b	.L276
.L238:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L242
	ldr	r0, =.L4a60
	b	.L276
.L242:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L24c
	ldr	r0, =.L4aa8
	b	.L276
.L24c:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L256
	ldr	r0, =.L4b68
	b	.L276
.L256:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L260
	ldr	r0, =.L4b98
	b	.L276
.L260:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L26a
	ldr	r0, =.L4c40
	b	.L276
.L26a:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L274
	ldr	r0, =.L4cd0
	b	.L276
.L274:
	ldr	r0, =.L4928
.L276:
	pop	{r1}
	bx	r1
.func_end OvlFunc_20c

.thumb_func_start OvlFunc_2cc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_8e118
	bl	__Func_916b0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x98
	bl	__Func_f9080
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	mov	r0, #0
	bl	__Func_92064
	ldr	r1, [r5, #0xc]
	ldr	r2, [r6, #0xc]
	sub	r3, r1, r2
	cmp	r3, #0
	bge	.L312
	sub	r3, r2, r1
.L312:
	asr	r3, #14
	mov	r2, #0x80
	lsl	r3, #14
	lsl	r2, #11
	add	r3, r2
	str	r3, [r6, #0x28]
	mov	r0, #0
	mov	r1, #7
	bl	__Func_924d4
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	bl	__Func_923c4
	b	.L350
.L34a:
	mov	r0, #1
	bl	__Func_30f8
.L350:
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	asr	r2, #14
	asr	r3, #14
	cmp	r2, r3
	blt	.L34a
	bl	__Func_91750
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #0
	bl	OvlFunc_3850
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_9202c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2cc

.thumb_func_start OvlFunc_388
	push	{lr}
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4d
	mov	r1, #0x63
	bl	__Func_91f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__Func_91eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_388

.thumb_func_start OvlFunc_3b4
	push	{lr}
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4f
	mov	r1, #0x63
	bl	__Func_91f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__Func_91eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b4

.thumb_func_start OvlFunc_3e0
	push	{lr}
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x51
	mov	r1, #0x63
	bl	__Func_91f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__Func_91eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e0

.thumb_func_start OvlFunc_40c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L474
	mov	r3, #1
	mov	r7, #0x18
	mov	r6, #0x1a
	mov	r0, #0x18
	mov	r1, #0x1b
	mov	r2, #2
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.L44a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_10704
	b	.L45a
.L44a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L45a:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
.L474:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_40c

.thumb_func_start OvlFunc_47c
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #9
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L4b8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L4b8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_47c

.thumb_func_start OvlFunc_4cc
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x11
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L4f8
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.L4f8:
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4cc

.thumb_func_start OvlFunc_50c
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x1a
	mov	r5, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L546
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L546:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_50c

.thumb_func_start OvlFunc_55c
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x19
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L598
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L598:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_55c

.thumb_func_start OvlFunc_5ac
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x2b
	mov	r2, #0x29
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L5e8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L5e8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5ac

.thumb_func_start OvlFunc_5fc
	push	{r5, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x11
	mov	r2, #0xa
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L638
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L638:
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5fc

.thumb_func_start OvlFunc_650
	push	{r5, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x1a
	mov	r2, #0xf
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L68c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L68c:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_650

.thumb_func_start OvlFunc_6a0
	push	{r5, r6, lr}
	mov	r6, #0x80
	lsl	r6, #19
	ldrh	r2, [r6]
	ldr	r3, =0xfdff
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L5238
	ldrh	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcc	.L6c8
	mov	r3, #0x80
	lsl	r3, #2
	orr	r5, r3
.L6c8:
	lsl	r3, r5, #16
	lsr	r3, #16
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6a0

.thumb_func_start OvlFunc_6dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e70
	mov	r0, #0xe6
	ldr	r5, [r3]
	sub	sp, #8
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xb2
	lsl	r2, #1
	ldr	r7, =0x1999
	add	r6, r5, r2
	mov	r5, #0
.L70a:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__Func_30f8
	cmp	r5, #8
	bne	.L742
	mov	r0, #8
	bl	__Func_92054
	str	r7, [r0, #0x18]
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0x98
	mov	r2, #0xd8
	str	r7, [r0, #0x1c]
	lsl	r1, #16
	mov	r0, #8
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #8
	ldr	r1, =.L3d48
	bl	__Func_9207c
.L742:
	add	r5, #1
	cmp	r5, #0x17
	ble	.L70a
	ldr	r2, =OvlFunc_6a0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	ldr	r2, =.L5238
	ldr	r3, .L78c	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L75a:
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L75a
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_307c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	b	.L7ac

	.align	2, 0
.L78c:
	.word	0
	.pool

.L7ac:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0
	bl	__Func_10704
	ldr	r0, =0x8fd
	bl	__Func_79358
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6dc

.thumb_func_start OvlFunc_7e8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e70
	sub	sp, #8
	ldr	r5, [r3]
	mov	r2, #0x1c
	mov	r3, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x29
	mov	r2, #0x10
	mov	r0, #0x5d
	bl	__Func_105d4
	mov	r0, #0xe6
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xb2
	lsl	r2, #1
	add	r5, r2
	mov	r6, #0x17
.L828:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	bge	.L828
	ldr	r2, =OvlFunc_6a0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	ldr	r2, =.L5238
	ldr	r3, .L880	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L84e:
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L84e
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_307c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	b	.L898

	.align	2, 0
.L880:
	.word	0
	.pool

.L898:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #0x4d
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r2, #0x10
	mov	r3, #4
	mov	r0, #0x4d
	bl	__Func_105d4
	ldr	r0, =0x8fe
	bl	__Func_79358
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e8

.thumb_func_start OvlFunc_8d4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	sub	sp, #8
	mov	r5, #1
	mov	r8, r3
	mov	r0, #0x71
	mov	r1, #0x1f
	mov	r2, #0x67
	mov	r3, #0x11
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #0x20
	mov	r2, #0x68
	mov	r3, #0x12
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x12
	mov	r1, #0x20
	mov	r2, #0x67
	mov	r0, #0x40
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xe6
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r5, #0xb2
	lsl	r5, #1
	add	r5, r8
	mov	r6, #0x17
.L93c:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	bge	.L93c
	ldr	r2, =OvlFunc_6a0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	ldr	r2, =.L5238
	ldr	r3, .L994	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L962:
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L962
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_307c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	b	.L9ac

	.align	2, 0
.L994:
	.word	0
	.pool

.L9ac:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xe
	mov	r2, #0x67
	mov	r3, #0x11
	mov	r0, #0x67
	bl	__Func_10424
	ldr	r0, =0x907
	bl	__Func_79358
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8d4

.thumb_func_start OvlFunc_9ec
	push	{lr}
	ldr	r0, =0x323
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.La2a
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__Func_10424
	ldr	r0, =0x323
	bl	__Func_79374
	b	.La58
.La2a:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__Func_10424
	ldr	r0, =0x323
	bl	__Func_79358
.La58:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_9ec

.thumb_func_start OvlFunc_a64
	push	{lr}
	bl	__Func_916b0
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0x7d
	bl	__Func_f9080
	bl	OvlFunc_9ec
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_9202c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_a64

.thumb_func_start OvlFunc_a94
	push	{lr}
	ldr	r0, =0x325
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lad2
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_10424
	ldr	r0, =0x325
	bl	__Func_79374
	b	.Lb00
.Lad2:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_10424
	ldr	r0, =0x325
	bl	__Func_79358
.Lb00:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_a94

.thumb_func_start OvlFunc_b0c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0x7d
	bl	__Func_f9080
	bl	OvlFunc_a94
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_9202c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_b0c

.thumb_func_start OvlFunc_b3c
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0x7d
	bl	__Func_f9080
	ldr	r0, =0x326
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb8c
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__Func_10424
	ldr	r0, =0x326
	bl	__Func_79374
	b	.Lbba
.Lb8c:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__Func_10424
	ldr	r0, =0x326
	bl	__Func_79358
.Lbba:
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_9202c
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_b3c

.thumb_func_start OvlFunc_bd8
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0x7d
	bl	__Func_f9080
	ldr	r0, =0x327
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc28
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__Func_10424
	ldr	r0, =0x327
	bl	__Func_79374
	b	.Lc56
.Lc28:
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__Func_10424
	ldr	r0, =0x327
	bl	__Func_79358
.Lc56:
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_9202c
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_bd8

.thumb_func_start OvlFunc_c74
	push	{lr}
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x23
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_c74

.thumb_func_start OvlFunc_c88
	push	{lr}
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x23
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_c88

.thumb_func_start OvlFunc_c9c
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x18
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x1b
	mov	r2, #2
	mov	r0, #0x18
	bl	__Func_10704
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r0, #0xa
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r1, #0xc8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_92128
	mov	r1, #0xcc
	mov	r2, #0xd4
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_92128
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	bl	OvlFunc_40c
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_c9c

.thumb_func_start OvlFunc_d2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xa
	sub	sp, #4
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	ldr	r2, [r0, #8]
	ldr	r6, [r0, #0x50]
	mov	r9, r2
	str	r3, [sp]
	mov	r10, r0
	bl	__Func_916b0
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, =0x8fff
	mov	r7, #0
	mov	r8, r2
.Ld8e:
	mov	r3, #0x80
	lsl	r3, #12
	ldrh	r2, [r6, #0x1e]
	add	r7, r3
	lsr	r3, r7, #16
	add	r3, r2
	strh	r3, [r6, #0x1e]
	mov	r2, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r2, #7
	add	r0, r2
	bl	__Func_231c
	mov	r5, r0
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r1, [r6, #0x1e]
	cmp	r1, r8
	bhi	.Ldc0
	mov	r0, #1
	bl	__Func_30f8
	b	.Ld8e
.Ldc0:
	mov	r3, #0xe0
	lsl	r3, #7
	mov	r7, #0
	mov	r8, r3
.Ldc8:
	mov	r2, #0x80
	lsl	r2, #12
	add	r7, r2
	lsr	r3, r7, #16
	sub	r3, r1, r3
	strh	r3, [r6, #0x1e]
	mov	r3, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r3, #7
	add	r0, r3
	bl	__Func_231c
	mov	r5, r0
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r1, [r6, #0x1e]
	cmp	r1, r8
	bls	.Ldfa
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r1, [r6, #0x1e]
	b	.Ldc8
.Ldfa:
	mov	r3, #0x80
	mov	r7, #0x80
	lsl	r3, #8
	lsl	r7, #12
	mov	r11, r3
.Le04:
	lsr	r2, r7, #19
	lsr	r3, r7, #16
	add	r3, r2
	lsl	r3, #16
	mov	r7, r3
	lsr	r2, r7, #16
	add	r3, r2, r1
	strh	r3, [r6, #0x1e]
	mov	r3, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r3, #7
	add	r0, r3
	mov	r8, r2
	bl	__Func_231c
	mov	r5, r0
	ldrh	r0, [r6, #0x1e]
	add	r0, r11
	bl	__Func_2322
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r3, [r6, #0x1e]
	cmp	r3, r11
	bls	.Le44
	ldr	r2, [sp]
	lsl	r3, r0, #3
	sub	r3, r2, r3
	mov	r2, r10
	str	r3, [r2, #0xc]
.Le44:
	ldrh	r3, [r6, #0x1e]
	ldr	r2, =0xbfff
	add	r3, r8
	cmp	r3, r2
	bgt	.Le58
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r1, [r6, #0x1e]
	b	.Le04
.Le58:
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #0x1e]
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #5
	bl	OvlFunc_ec0
	bl	__Func_91750
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d2c

.thumb_func_start OvlFunc_ec0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	mov	r0, #0
	bl	__Func_92054
	mov	r8, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0x81
	mov	r6, r0
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xc4
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #10
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #6
	bl	__Func_924d4
	mov	r1, #0xc6
	mov	r2, #0x8c
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_92158
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x64
	bl	__Func_92adc
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =0x13333
	mov	r0, r10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r1, r10
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =OvlFunc_98
	mov	r2, r10
	mov	r0, #0
	str	r3, [r2, #0x6c]
	mov	r1, #4
	mov	r11, r0
	mov	r0, #8
	bl	__Func_924d4
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x44]
	ldr	r3, =0x3120000
	str	r3, [r7, #8]
	mov	r9, r3
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r5, #0x80
	mov	r3, #0xb4
	lsl	r3, #15
	lsl	r5, #10
	str	r3, [r7, #0x10]
	mov	r0, #0xa
	str	r5, [r7, #0x18]
	str	r5, [r7, #0x1c]
	bl	__Func_9163c
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, r5
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, [r6, #8]
	mov	r0, #0xe0
	lsl	r0, #12
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r2, [r6, #0x50]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x50
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x37
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #10
	bl	__Func_12330
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	mov	r6, r8
	bl	__Func_92064
	add	r6, #0x64
	mov	r3, r11
	mov	r0, #0
	strh	r3, [r6]
	ldr	r1, =.L3dec
	bl	__Func_9207c
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L108c
	mov	r2, #0x84
	mov	r0, #1
	ldr	r1, =0x36e0000
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
.L108c:
	mov	r0, #0xa0
	mov	r1, #0xa0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x8b
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	mov	r0, r9
	bl	__Func_933f8
	ldr	r0, [sp, #8]
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92b08
	mov	r5, r7
	mov	r0, #8
	ldr	r1, =0x195c2
	ldr	r2, =0xcae1
	bl	__Func_92064
	add	r5, #0x64
	mov	r0, r11
	strh	r0, [r5]
	ldr	r1, =.L3d78
	mov	r0, #8
	bl	__Func_9207c
.L10d0:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L10d0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_93874
.L10e6:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L10e6
	mov	r1, #2
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	ldr	r3, =0x3120000
	mov	r2, r10
	str	r3, [r2, #8]
	ldr	r6, =0xffc00000
	ldr	r3, =0x26a0000
	mov	r5, #0
	str	r5, [r2, #0x6c]
	str	r3, [r2, #0x10]
	str	r6, [r2, #0xc]
	mov	r0, #8
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	ldr	r3, =0x1999
	str	r3, [r7, #0x44]
	ldr	r3, =0x3333
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r2, #0x97
	str	r3, [r7, #0x28]
	mov	r0, #8
	ldr	r1, =0x312
	lsl	r2, #2
	mov	r8, r3
	bl	__Func_92158
	mov	r0, #8
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	bl	__Func_92064
	mov	r2, #0xa1
	ldr	r1, =0x312
	lsl	r2, #2
	mov	r0, #8
	bl	__Func_92128
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, #0xa0
	mov	r1, #0xe0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r3, #0xb
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x24
	mov	r2, #0x2b
	mov	r3, #0x24
	bl	__Func_10424
	mov	r3, #0x2b
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r0, #0x19
	mov	r1, #0x23
	mov	r2, #0xa
	bl	__Func_10704
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_923e4
	ldr	r5, =OvlFunc_2be0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r0, #0x78
	bl	__Func_9163c
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L121c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	ldr	r2, =0x22e
	bl	__Func_9218c
.L121c:
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0x92
	mov	r0, #0
	ldr	r1, =0x356
	lsl	r2, #2
	bl	__Func_921c4
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1250
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
.L1250:
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xc5
	mov	r1, r6
	ldr	r2, =0x2620000
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x94
	bl	__Func_f9080
	mov	r0, #0xf0
	bl	__Func_9163c
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1300
	mov	r1, #0x80
	mov	r0, r8
	lsl	r1, #8
	bl	__Func_933d4
	mov	r2, #0x92
	mov	r3, #1
	ldr	r0, =0x3560000
	mov	r1, #0
	lsl	r2, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0xd2
	mov	r2, #0x8a
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #1
	ldr	r1, =0x356
	ldr	r2, =0x232
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L12f0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L12f0:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L1300:
	bl	__Func_8acc4
	ldr	r0, =0x908
	bl	__Func_79358
	add	sp, #0xc
	b	.L1388

	.pool_aligned

.L1388:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ec0

.thumb_func_start OvlFunc_1398
	push	{r5, r6, lr}
	bl	__Func_916b0
	ldr	r5, =0x1953
	mov	r1, #1
	mov	r0, r5
	bl	__Func_1776c
	ldr	r0, =0x908
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13b4
	b	.L1640
.L13b4:
	ldr	r0, =0xf14
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13c0
	b	.L1640
.L13c0:
	ldr	r0, =0x205
	bl	__Func_79358
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0x316
	mov	r2, #0x8c
	bl	__Func_921c4
	mov	r1, #0xc3
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1406
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L1406:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xc8
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xc6
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0x6e
	mov	r0, #1
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc6
	and	r5, r3
	lsl	r1, #2
	mov	r2, #0x78
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0xa0
	lsl	r2, #9
	mov	r0, #1
	lsl	r1, #10
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xc7
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8a
	bl	__Func_92158
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc9
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__Func_92158
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc9
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xa6
	bl	__Func_92158
	mov	r1, #0xbf
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xa6
	bl	__Func_92158
	mov	r1, #0xbf
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xc6
	bl	__Func_92158
	mov	r0, #1
	ldr	r1, =0x312
	mov	r2, #0xc6
	bl	__Func_92158
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0xf6
	mov	r0, #1
	ldr	r1, =0x312
	bl	__Func_92158
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	bl	OvlFunc_ec0
.L1640:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1398

.thumb_func_start OvlFunc_1678
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L169e
	ldr	r0, =0x8fd
	bl	__Func_79338
	cmp	r0, #0
	beq	.L169a
	ldr	r0, =.L4d6c
	b	.L1704
.L169a:
	ldr	r0, =.L4d24
	b	.L1704
.L169e:
	ldr	r3, =0x4e
	cmp	r2, r3
	bne	.L16a8
	ldr	r0, =.L4d9c
	b	.L1704
.L16a8:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L16b2
	ldr	r0, =.L4dc0
	b	.L1704
.L16b2:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L16bc
	ldr	r0, =.L4e5c
	b	.L1704
.L16bc:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L16c6
	ldr	r0, =.L4ebc
	b	.L1704
.L16c6:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L16d0
	ldr	r0, =.L4f34
	b	.L1704
.L16d0:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L16da
	ldr	r0, =.L4fb8
	b	.L1704
.L16da:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L16e4
	ldr	r0, =.L506c
	b	.L1704
.L16e4:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L16ee
	ldr	r0, =.L50cc
	b	.L1704
.L16ee:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L16f8
	ldr	r0, =.L512c
	b	.L1704
.L16f8:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L1702
	ldr	r0, =.L5150
	b	.L1704
.L1702:
	ldr	r0, =.L4d18
.L1704:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1678

.thumb_func_start OvlFunc_1770
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L179e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L179e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
.L179e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.L17e6
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c300
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L17de
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.L17dc
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r3, #4
	mov	r0, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_12330
	ldr	r2, [r5, #0x14]
.L17dc:
	str	r2, [r5, #0xc]
.L17de:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.L17ec
.L17e6:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.L17ec:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L1816
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r3, #1
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x68]
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldrh	r2, [r6]
.L1816:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.L1828
	mov	r3, #0
	strh	r3, [r6]
.L1828:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1770

.thumb_func_start OvlFunc_1838
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r9, r0
	bl	__Func_916b0
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r0, #0x95
	mov	r1, #1
	ldr	r2, =0x1510000
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r1, #0x80
	mov	r2, #0xd4
	ldr	r0, =0x1270000
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r5, #0
	mov	r2, r9
	mov	r3, #0x64
	str	r5, [r2, #0x68]
	add	r3, r9
	ldr	r2, .L18e0	@ 0
	strh	r5, [r3]
	ldr	r6, =OvlFunc_1770
	mov	r8, r3
	mov	r7, r9
	ldr	r3, =0x6666
	mov	r10, r2
	add	r7, #0x66
	mov	r2, r9
	strh	r5, [r7]
	mov	r0, #0xa
	str	r3, [r2, #0x48]
	str	r6, [r2, #0x6c]
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0x9a
	mov	r0, #0xa
	lsl	r1, #1
	ldr	r2, =0x123
	bl	__Func_92158
	ldr	r1, =0x137
	mov	r0, #0xa
	mov	r2, #0xd7
	bl	__Func_92158
	mov	r3, r9
	mov	r2, r10
	b	.L1914

	.align	2, 0
.L18e0:
	.word	0
	.pool

.L1914:
	str	r5, [r3, #0x6c]
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_92adc
	bl	OvlFunc_2d08
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0xa7
	mov	r1, #1
	mov	r2, #0xf4
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r3, r9
	mov	r2, r8
	mov	r1, #0xa0
	str	r5, [r3, #0x68]
	mov	r0, #0xa
	strh	r5, [r2]
	lsl	r1, #1
	strh	r5, [r7]
	mov	r2, #0xe8
	str	r6, [r3, #0x6c]
	bl	__Func_92158
	mov	r1, #0xaa
	mov	r2, #0x83
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_92158
	mov	r1, #0xbb
	mov	r2, #0x83
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_92158
	mov	r3, r9
	str	r5, [r3, #0x6c]
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xf0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r1, #0xbe
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xa
	bl	__Func_92158
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd7
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r3, r8
	mov	r2, r9
	str	r5, [r2, #0x68]
	mov	r0, #0xa
	strh	r5, [r3]
	ldr	r1, =0x149
	strh	r5, [r7]
	str	r6, [r2, #0x6c]
	mov	r2, #0xdb
	bl	__Func_92158
	mov	r2, r9
	str	r5, [r2, #0x6c]
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #9
	bl	__Func_92054
	mov	r3, r10
	mov	r2, #0x11
	add	r0, #0x55
	mov	r5, #0xd
	strb	r3, [r0]
	mov	r9, r2
	str	r2, [sp]
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x12
	str	r3, [sp]
	mov	r10, r3
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r2, #0x13
	str	r2, [sp]
	mov	r3, #1
	mov	r8, r2
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r2, =0xb333
	ldr	r1, =0x16666
	mov	r0, #0xa
	bl	__Func_92064
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, #0xa0
	lsl	r6, #11
	str	r6, [r0, #0x28]
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r2, #0xd7
	mov	r0, #0xa
	ldr	r1, =0x127
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #3
	str	r6, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, r9
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r2, r10
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0
	mov	r0, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, =0x9999
	mov	r5, r0
	ldr	r0, =0x4cccc
	bl	__Func_933d4
	mov	r3, #1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x80
	ldr	r2, =.L3d34
	lsl	r1, #9
	mov	r0, #0xa
	bl	__Func_92a1c
	ldr	r0, =0x904
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1838

.thumb_func_start OvlFunc_1d0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_920a0
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r1, #0x80
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #15
	ldr	r0, =0x1170000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0xca
	lsl	r0, #16
	lsl	r1, #15
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	ldr	r3, .L1dd8	@ 0
	mov	r10, r3
	mov	r3, #0x66
	add	r3, r7
	mov	r2, #0x64
	mov	r5, #0
	add	r2, r7
	mov	r11, r3
	ldr	r6, =OvlFunc_1770
	ldr	r3, =0x6666
	str	r5, [r7, #0x68]
	mov	r8, r2
	strh	r5, [r2]
	mov	r2, r11
	strh	r5, [r2]
	mov	r0, #0xa
	str	r3, [r7, #0x48]
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	str	r6, [r7, #0x6c]
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #0xd4
	mov	r2, #0xc8
	bl	__Func_92158
	mov	r1, #0x67
	mov	r0, #0xa
	mov	r2, #0xc8
	b	.L1e00

	.align	2, 0
.L1dd8:
	.word	0
	.pool

.L1e00:
	bl	__Func_92158
	mov	r3, #0x5b
	add	r3, r7
	mov	r2, r10
	str	r5, [r7, #0x6c]
	mov	r0, #0xa
	strb	r2, [r3]
	mov	r9, r3
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r2, =0x9999
	ldr	r1, =0x13333
	mov	r0, #0xa
	bl	__Func_92064
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x99
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r2, #0xd6
	mov	r0, #0xa
	mov	r1, #0x56
	bl	__Func_92158
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #6
	mov	r0, #0xa
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r3, r8
	mov	r2, r11
	str	r5, [r7, #0x68]
	mov	r0, #0xa
	strh	r5, [r3]
	ldr	r1, =0x13333
	strh	r5, [r2]
	ldr	r2, =0x9999
	str	r6, [r7, #0x6c]
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xd7
	bl	__Func_92158
	mov	r3, r10
	mov	r2, r9
	mov	r1, #1
	str	r5, [r7, #0x6c]
	mov	r0, #0xa
	strb	r3, [r2]
	bl	__Func_924d4
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #0xe5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	bl	OvlFunc_2bb0
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r2, =iwram_1c94
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L1fcc
	mov	r6, r2
.L1fba:
	mov	r0, #1
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0x3b
	bhi	.L1fcc
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L1fba
.L1fcc:
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, =0x9999
	mov	r7, r0
	ldr	r0, =0x4cccc
	bl	__Func_933d4
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x905
	bl	__Func_79358
	bl	__Func_91750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d0c

.thumb_func_start OvlFunc_2020
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L2040
	bl	OvlFunc_20d0
	b	.L209e
.L2040:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L204c
	bl	OvlFunc_2310
	b	.L209e
.L204c:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L2058
	bl	OvlFunc_2428
	b	.L209e
.L2058:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L2064
	bl	OvlFunc_2490
	b	.L209e
.L2064:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L2070
	bl	OvlFunc_25c0
	b	.L209e
.L2070:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L207c
	bl	OvlFunc_26c0
	b	.L209e
.L207c:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L2088
	bl	OvlFunc_2804
	b	.L209e
.L2088:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L2094
	bl	OvlFunc_2934
	b	.L209e
.L2094:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L209e
	bl	OvlFunc_29dc
.L209e:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_2020

.thumb_func_start OvlFunc_20d0
	push	{r5, r6, lr}
	ldr	r0, =0x109
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L20f2
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L20f2
	bl	OvlFunc_2d58
.L20f2:
	bl	OvlFunc_3a44
	ldr	r0, =0x8fd
	bl	__Func_79338
	cmp	r0, #0
	bne	.L210c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L2124
.L210c:
	mov	r0, #8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2124
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
.L2124:
	mov	r0, #9
	bl	__Func_92054
	cmp	r0, #0
	beq	.L213c
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
.L213c:
	ldr	r0, =0x8fd
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L222c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_92950
	ldr	r0, =0x905
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	beq	.L21c8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =OvlFunc_2ce0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #0xf0
	mov	r2, #0xd7
	lsl	r2, #16
	lsl	r1, #15
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #3
	strh	r5, [r0, #6]
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r0, #16
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_2bb0
	b	.L22de
.L21c8:
	ldr	r0, =0x904
	bl	__Func_79338
	cmp	r0, #0
	bne	.L21d4
	b	.L22de
.L21d4:
	mov	r1, #0
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =OvlFunc_2ce0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	ldr	r2, =.L3d34
	mov	r0, #0xa
	lsl	r1, #9
	bl	__Func_92a1c
	b	.L22de
.L222c:
	ldr	r3, =iwram_1e70
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	ldr	r5, [r3]
	bl	__Func_923e4
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	ldrh	r2, [r5, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	mov	r0, #8
	strh	r3, [r5, #0x14]
	bl	OvlFunc_3460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L229a
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #9
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	mov	r0, #7
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L229a:
	mov	r0, #9
	bl	OvlFunc_3460
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L22de
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x11
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x1d
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L22de:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20d0

.thumb_func_start OvlFunc_2310
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2336
	ldr	r3, =iwram_1e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L23ae
.L2336:
	bl	OvlFunc_3a44
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L235a
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L235a
	bl	OvlFunc_2e1c
	b	.L23ae
.L235a:
	mov	r3, #0x25
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	mov	r3, #0x2d
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	ldr	r0, =0x8fe
	bl	__Func_79338
	cmp	r0, #0
	bne	.L23ae
	mov	r0, #9
	mov	r1, #2
	bl	__Func_92950
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xee
	mov	r2, #0xd1
	mov	r3, #0x80
	lsl	r0, #16
	lsl	r2, #17
	lsl	r3, #8
	mov	r1, #0
	bl	OvlFunc_2bb0
.L23ae:
	ldr	r0, =0x323
	bl	__Func_79338
	cmp	r0, #0
	beq	.L23e2
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__Func_10424
	b	.L240a
.L23e2:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__Func_10424
.L240a:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2310

.thumb_func_start OvlFunc_2428
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2444
	ldr	r3, =iwram_1e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	b	.L2458
.L2444:
	mov	r3, #0x35
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L2458:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #6
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L2474
	ldr	r0, =0x12f
	bl	__Func_79374
.L2474:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2428

.thumb_func_start OvlFunc_2490
	push	{lr}
	ldr	r0, =0x907
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L24b6
	ldr	r3, =iwram_1e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L2506
.L24b6:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L24d4
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L24d4
	bl	OvlFunc_2e84
.L24d4:
	bl	OvlFunc_3a44
	ldr	r0, =0x907
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2506
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_92950
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xbb
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r3, #0x80
	lsl	r0, #18
	lsl	r1, #12
	lsl	r2, #17
	lsl	r3, #8
	bl	OvlFunc_2bb0
.L2506:
	mov	r0, #9
	bl	OvlFunc_3460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2544
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x19
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x17
	mov	r1, #0xd
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L2544:
	ldr	r0, =0x325
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2578
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_10424
	b	.L25a0
.L2578:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_10424
.L25a0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2490

.thumb_func_start OvlFunc_25c0
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #2
	bne	.L25ec
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25ec
	mov	r1, #0xb3
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
.L25ec:
	mov	r0, #9
	bl	OvlFunc_3460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L262c
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #5
	mov	r5, r0
	mov	r0, #9
	bl	__Func_924d4
	mov	r3, #0x2b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	add	r5, #0x23
	mov	r0, #0x2d
	mov	r1, #0x29
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
.L262c:
	ldr	r0, =0x907
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2642
	ldr	r3, =iwram_1e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
.L2642:
	ldr	r0, =0x326
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2676
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__Func_10424
	b	.L269e
.L2676:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__Func_10424
.L269e:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25c0

.thumb_func_start OvlFunc_26c0
	push	{lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	OvlFunc_40c
	mov	r0, #9
	bl	OvlFunc_3460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2710
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x1a
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	mov	r1, #0
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L2710:
	mov	r0, #0xb
	bl	OvlFunc_3460
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L274c
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x11
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #1
	mov	r1, #0
	bl	__Func_10704
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L274c:
	mov	r0, #0xc
	bl	OvlFunc_3460
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L278a
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x1a
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #1
	mov	r1, #0
	bl	__Func_10704
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L278a:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_3428
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x327
	bl	__Func_79338
	cmp	r0, #0
	beq	.L27c8
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__Func_10424
	b	.L27f0
.L27c8:
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__Func_10424
.L27f0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_26c0

.thumb_func_start OvlFunc_2804
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0xe666
	str	r3, [r6, #0x18]
	ldr	r3, =0x9999
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0x1c]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, .L2888	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, =0xffe40000
	str	r3, [r0, #0xc]
	ldr	r0, =0x908
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2882
	ldr	r3, [r6, #8]
	mov	r2, #0xe0
	lsl	r2, #12
	add	r3, r2
	str	r3, [r6, #8]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r2, [r6, #0x50]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
.L2882:
	ldr	r0, =0x908
	b	.L28a0

	.align	2, 0
.L2888:
	.word	0
	.pool

.L28a0:
	bl	__Func_79338
	cmp	r0, #0
	beq	.L28da
	mov	r3, #0xb
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x24
	mov	r2, #0x2b
	mov	r3, #0x24
	bl	__Func_10424
	mov	r3, #0x2b
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x23
	mov	r2, #0xa
	mov	r3, #5
	bl	__Func_10704
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
.L28da:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L291c
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L291c
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, =0xffa80000
	str	r1, [r0, #0xc]
	mov	r0, #0xc6
	lsl	r0, #18
	ldr	r2, =0x2410000
	mov	r3, #0
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91750
.L291c:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2804

.thumb_func_start OvlFunc_2934
	push	{r5, lr}
	ldr	r0, =0x909
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L2958
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L2982
.L2958:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92b08
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
.L2982:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.L2996
	cmp	r3, #0x62
	bne	.L29b8
.L2996:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L29ca
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #0xc]
	bl	__Func_91750
	b	.L29ca
.L29b8:
	cmp	r3, #0x63
	bne	.L29ca
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L29ca
	bl	OvlFunc_3028
.L29ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2934

.thumb_func_start OvlFunc_29dc
	push	{lr}
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L2a08
	mov	r1, #0xb8
	mov	r2, #0xa4
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
.L2a08:
	pop	{r0}
	bx	r0
.func_end OvlFunc_29dc

.thumb_func_start OvlFunc_2a10
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #3
	bl	__Func_929d8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, =0x4ccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2a10

.thumb_func_start OvlFunc_2a48
	push	{r5, r6, lr}
	ldr	r3, =.L523c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L2a62
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.L2a82
	mov	r6, r5
	add	r6, #0x64
	b	.L2aa2
.L2a62:
	bl	__Func_4458
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	b	.L2aa0
.L2a82:
	bl	__Func_4458
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	sub	r3, r2
.L2aa0:
	str	r3, [r5, #8]
.L2aa2:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.L2ade
	ldr	r3, =.L523c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2abc
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.L2ac6
	b	.L2ace
.L2abc:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	b	.L2acc
.L2ac6:
	ldr	r3, [r5, #8]
	ldr	r1, =0xffff8000
	add	r3, r1
.L2acc:
	str	r3, [r5, #8]
.L2ace:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff334
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.L2af2
.L2ade:
	ldr	r3, [r5, #0x10]
	ldr	r2, =0x13333
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.L2af2:
	str	r3, [r5, #0x1c]
	bl	__Func_4458
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L2b10
	mov	r0, r5
	mov	r1, #7
	bl	__Func_929d8
	ldrh	r2, [r6]
.L2b10:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.L2b1a
	sub	r3, r2, #2
	b	.L2b28
.L2b1a:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.L2b28:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.L2b3a
	mov	r0, r5
	bl	__Func_c0f4
.L2b3a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2a48

.thumb_func_start OvlFunc_2b58
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L2b9c
	ldr	r3, =.L5240
	mov	r0, #0xde
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r3, #8]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L2b9c
	mov	r2, r5
	add	r2, #0x64
	mov	r3, #0x1e
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #1
	strh	r3, [r2]
	mov	r3, #0x14
	str	r3, [r5, #0x68]
	bl	OvlFunc_2a10
	ldr	r3, =OvlFunc_2a48
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #1
	bl	__Func_c300
.L2b9c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b58

.thumb_func_start OvlFunc_2bb0
	push	{lr}
	ldr	r4, =.L5240
	str	r2, [r4, #8]
	ldr	r2, =.L523c
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, #0xaa
	str	r3, [r2]
	bl	__Func_91ff0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2b58
	bl	__Func_41d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2bb0

.thumb_func_start OvlFunc_2be0
	push	{r5, r6, lr}
	ldr	r6, =iwram_1e40
	mov	r1, #3
	ldr	r0, [r6]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L2cbc
	bl	__Func_4458
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #4
	ldr	r2, =0x2fd0000
	lsr	r1, #16
	lsl	r1, #16
	mov	r3, #0x98
	add	r1, r2
	mov	r0, #0xc8
	ldr	r2, =0xffc00000
	lsl	r3, #18
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L2cbc
	ldr	r0, [r6]
	mov	r1, #9
	bl	_Func_b50
	cmp	r0, #0
	bne	.L2c3a
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.L2c34
	mov	r0, #0x91
	bl	__Func_f9080
	b	.L2c3a
.L2c34:
	mov	r0, #0x90
	bl	__Func_f9080
.L2c3a:
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Func_4458
	ldr	r3, =0x4ccc
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x6666
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x61
	mov	r3, #1
	str	r0, [r5, #0x1c]
	str	r0, [r5, #0x18]
	mov	r1, #0
	strb	r3, [r2]
	mov	r0, r5
	bl	__Func_c528
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, =.L401c
	mov	r0, r5
	bl	__Func_c2d8
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	str	r3, [r5, #0x24]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x28]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #9
	ldr	r2, =0xfffffd00
	lsr	r3, #16
	add	r3, r2
	str	r3, [r5, #0x2c]
.L2cbc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2be0

.thumb_func_start OvlFunc_2ce0
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.L2cf6
	mov	r1, #2
	bl	__Func_929d8
	b	.L2d00
.L2cf6:
	cmp	r2, #2
	bne	.L2d00
	mov	r1, #0
	bl	__Func_929d8
.L2d00:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ce0

.thumb_func_start OvlFunc_2d08
	push	{lr}
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_96fb0
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_970f8
	bl	__Func_9728c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_92950
	mov	r0, #1
	bl	__Func_967e4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_92950
	bl	__Func_97174
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_92950
	bl	__Func_97194
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_92950
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d08

.thumb_func_start OvlFunc_2d58
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r6, =iwram_1ebc
	ldr	r3, =0x201
	ldr	r2, [r6]
	mov	r1, #0xe0
	lsl	r1, #1
	str	r3, [r2, r1]
	mov	r8, r1
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xca
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xca
	bl	__Func_91a58
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_933d4
	mov	r0, #0xc8
	mov	r2, #0xf9
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_6dc
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =.L4d6c
	bl	__Func_917c4
	ldr	r2, [r6]
	mov	r3, #0x81
	lsl	r3, #2
	mov	r1, r8
	str	r3, [r2, r1]
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d58

.thumb_func_start OvlFunc_2e1c
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xa4
	mov	r2, #0xd4
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_923e4
	ldr	r0, =0x323
	bl	__Func_79358
	bl	OvlFunc_9ec
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =iwram_1ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	OvlFunc_7e8
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e1c

.thumb_func_start OvlFunc_2e84
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xf4
	mov	r2, #0x8a
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__Func_923e4
	ldr	r0, =0x325
	bl	__Func_79358
	bl	OvlFunc_a94
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =iwram_1ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	OvlFunc_8d4
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e84

.thumb_func_start OvlFunc_2eec
	push	{r5, lr}
	ldr	r5, =.L51b0
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x3c
	bne	.L2f04
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r3, #0
	str	r3, [r5]
.L2f04:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2eec

.thumb_func_start OvlFunc_2f10
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xae
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0x74
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x94
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2eec
	bl	__Func_41d8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #8
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	ldr	r2, =0xccc
	mov	r0, #9
	ldr	r1, =0x1999
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0xa4
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_92128
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0x6c
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #8
	bl	__Func_923c4
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x56
	mov	r1, #0x63
	bl	__Func_91f90
	mov	r0, #0x35
	mov	r1, #3
	bl	__Func_91eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f10

.thumb_func_start OvlFunc_2ffc
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3016
	mov	r0, #8
	mov	r1, #7
	bl	__Func_92950
	b	.L301e
.L3016:
	mov	r0, #8
	mov	r1, #6
	bl	__Func_92950
.L301e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ffc

.thumb_func_start OvlFunc_3028
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r1, #0xa4
	mov	r2, #0xb0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xa4
	mov	r2, #0xb0
	lsl	r2, #15
	mov	r0, #9
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #0
	bl	__Func_924d4
	ldr	r5, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L308a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L308a:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L309e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L309e:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L30b2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L30b2:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	ldr	r2, =0x4ccc
	mov	r0, #3
	ldr	r1, =0x9999
	bl	__Func_92064
	ldr	r1, =.L4054
	mov	r0, #1
	bl	__Func_9207c
	ldr	r1, =.L4084
	mov	r0, #2
	bl	__Func_9207c
	ldr	r1, =.L40b4
	mov	r0, #3
	bl	__Func_920fc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #1
	bl	__Func_92adc
	ldr	r0, =0x190c
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L316e
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	b	.L3184
.L316e:
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3184:
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	ldr	r0, =0x1910
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
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
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r1, #7
	mov	r0, #8
	bl	__Func_92950
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
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
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x67
	bl	__Func_f9080
	ldr	r6, =OvlFunc_2ffc
	mov	r1, #0xc8
	mov	r0, r6
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r5, =.L40e4
	mov	r0, #9
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #8
	bl	__Func_920fc
	mov	r0, r6
	bl	__Func_4278
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =.L412c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	ldr	r0, =0x909
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3028

.thumb_func_start OvlFunc_3410
	ldr	r3, =iwram_1ebc
	mov	r1, #0xbf
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	ldr	r3, =0x1018
	strh	r3, [r2]
	bx	lr
.func_end OvlFunc_3410

.thumb_func_start OvlFunc_3428
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xc0
	ldr	r3, [r0, #0xc]
	lsl	r2, #14
	cmp	r3, r2
	ble	.L3454
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92b08
	b	.L345c
.L3454:
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_92b08
.L345c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3428

.thumb_func_start OvlFunc_3460
	push	{lr}
	bl	__Func_92054
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #0xff
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0
	bl	__Func_12078
	pop	{r0}
	bx	r0
.func_end OvlFunc_3460

.thumb_func_start OvlFunc_3484
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xe8
	bl	__Func_f9080
	ldr	r2, [r5, #8]
	ldr	r3, =0xfff00000
	and	r2, r3
	mov	r10, r2
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r2
	ldr	r2, [r5, #0x10]
	and	r2, r3
	mov	r11, r2
	mov	r3, #0x80
	add	r10, r9
	lsl	r3, #10
	add	r9, r11
	ldr	r2, [r5, #0xc]
	mov	r1, r10
	str	r3, [r5, #0x34]
	mov	r0, r5
	mov	r3, r9
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x22
	strb	r6, [r3]
	mov	r2, r9
	mov	r3, r10
	str	r3, [r5, #8]
	str	r2, [r5, #0x10]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x2c]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
	mov	r0, #0xf
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #0x1e
	bl	__Func_30f8
	ldr	r5, [r5, #0x50]
	mov	r2, #1
	mov	r8, r2
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x27
	strb	r2, [r3]
	ldr	r0, [r5, #0x2c]
	bl	__Func_bc48
	str	r6, [r5, #0x2c]
	mov	r3, r8
	add	r5, #0x25
	strb	r3, [r5]
	mov	r2, #0xfa
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8ba1c
	mov	r5, r0
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	mov	r2, r9
	lsl	r3, #9
	str	r3, [r5, #0x48]
	ldr	r1, [r5, #0x50]
	str	r2, [r5, #0x10]
	sub	r6, #0xd
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #13
	add	r11, r3
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	mov	r1, r10
	mov	r3, r11
	bl	__Func_d14c
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	mov	r0, #0x14
	bl	__Func_30f8
	ldr	r2, [r5, #0x50]
	ldrb	r3, [r2, #9]
	and	r6, r3
	mov	r3, #8
	orr	r6, r3
	strb	r6, [r2, #9]
	mov	r0, #0x9f
	bl	__Func_f9080
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3484

.thumb_func_start OvlFunc_35a8
	bx	lr
.func_end OvlFunc_35a8

.thumb_func_start OvlFunc_35ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #7
	add	r6, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	sub	sp, #0xc
	and	r6, r3
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #13
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_447c
	ldr	r3, [r5]
	mov	r1, #0x80
	lsl	r1, #12
	ldr	r2, =0xfff00000
	add	r3, r1
	and	r3, r2
	mov	r9, r3
	ldr	r3, [r5, #8]
	add	r3, r1
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	mov	r1, #5
	mov	r10, r3
	add	r6, r2
	bl	__Func_c300
	mov	r0, #0xb8
	bl	__Func_f9080
	mov	r3, #0xf
	mov	r8, r3
.L3610:
	mov	r2, #0x80
	lsl	r2, #3
	add	r6, r2
	mov	r0, #0xc0
	mov	r2, r10
	mov	r3, r9
	str	r2, [r5, #8]
	lsl	r0, #13
	mov	r1, r6
	mov	r2, r5
	str	r3, [r5]
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #8]
	mov	r2, #0x80
	ldr	r3, [r5, #8]
	lsl	r2, #7
	str	r3, [r7, #0x10]
	add	r3, r6, r2
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L3610
	mov	r0, #0xe9
	bl	__Func_f9080
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_35ac

.thumb_func_start OvlFunc_3668
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r3, [r7, #6]
	ldr	r2, =0xffffc000
	add	r6, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	sub	sp, #0xc
	and	r6, r3
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #13
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_447c
	ldr	r3, [r5]
	mov	r1, #0x80
	lsl	r1, #12
	ldr	r2, =0xfff00000
	add	r3, r1
	and	r3, r2
	mov	r9, r3
	ldr	r3, [r5, #8]
	add	r3, r1
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	mov	r1, #6
	mov	r10, r3
	add	r6, r2
	bl	__Func_c300
	mov	r0, #0xb8
	bl	__Func_f9080
	mov	r3, #0xf
	mov	r8, r3
.L36ca:
	ldr	r2, =0xfffffc00
	mov	r0, #0xc0
	add	r6, r2
	mov	r2, r10
	mov	r3, r9
	str	r2, [r5, #8]
	lsl	r0, #13
	mov	r1, r6
	mov	r2, r5
	str	r3, [r5]
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #8]
	ldr	r2, =0xffffc000
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	add	r3, r6, r2
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L36ca
	mov	r0, #0xe9
	bl	__Func_f9080
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3668

.thumb_func_start OvlFunc_3724
	push	{lr}
	add	r0, #0x66
	mov	r3, #0x21
	strh	r3, [r0]
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_3724

.thumb_func_start OvlFunc_3738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xc0
	lsl	r0, #8
	mov	r9, r0
	ldrh	r3, [r7, #6]
	mov	r1, r9
	ldr	r0, [r7, #0xc]
	and	r1, r3
	sub	sp, #0xc
	mov	r9, r1
	cmp	r0, #0
	bge	.L375e
	ldr	r2, =0xffff
	add	r0, r2
.L375e:
	mov	r3, r7
	asr	r0, #16
	add	r3, #0x64
	mov	r10, r0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	mov	r1, r10
	sub	r3, r1
	ldr	r2, =.L51b4
	lsl	r3, #2
	add	r3, #0x40
	ldr	r2, [r2, r3]
	mov	r10, r2
	mov	r2, #0x66
	add	r2, r7
	mov	r8, r2
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.L37b0
	sub	r3, r2, #1
	mov	r0, #0xa0
	mov	r2, r8
	strh	r3, [r2]
	lsl	r0, #13
	lsl	r3, #16
	cmp	r3, r0
	bne	.L37a0
	mov	r0, #0xb8
	bl	__Func_f9080
.L37a0:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.L37b0
	mov	r0, #0xe9
	bl	__Func_f9080
.L37b0:
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0xc0
	str	r3, [r5, #8]
	mov	r0, r10
	lsl	r1, #8
	ldr	r3, =Func_888
	.call_via r3
	mov	r1, r9
	mov	r2, r5
	bl	__Func_447c
	ldr	r1, [r5]
	str	r1, [r7, #8]
	ldr	r2, [r5, #8]
	mov	r0, #2
	str	r2, [r7, #0x10]
	bl	__Func_11f54
	mov	r1, #0xc0
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r10
	ldr	r3, =Func_888
	.call_via r3
	neg	r0, r0
	mov	r1, r9
	mov	r2, r5
	bl	__Func_447c
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_11f54
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x14
	bgt	.L3832
	cmp	r6, r0
	bne	.L381c
	mov	r0, r7
	mov	r1, #2
	bl	__Func_c300
	b	.L3832
.L381c:
	cmp	r6, r0
	ble	.L382a
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
	b	.L3832
.L382a:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
.L3832:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3738

.thumb_func_start OvlFunc_3850
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r9, r0
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	bl	__Func_8ba1c
	mov	r10, r0
	bl	__Func_916b0
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.L3886
	ldrh	r2, [r6, #6]
	mov	r8, r2
.L3886:
	mov	r7, #0
	mov	r5, sp
	b	.L3898

	.pool_aligned

.L3890:
	mov	r3, #0x80
	lsl	r3, #7
	add	r8, r3
	add	r7, #1
.L3898:
	cmp	r7, #3
	bgt	.L38c4
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	str	r3, [r5, #8]
	lsl	r0, #13
	mov	r1, r8
	mov	r2, r5
	bl	__Func_447c
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_11f54
	ldr	r3, [r6, #0xc]
	cmp	r0, r3
	bne	.L3890
.L38c4:
	cmp	r7, #4
	beq	.L39b6
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x22
	strb	r3, [r2]
	mov	r5, #0
	mov	r2, r10
	str	r5, [r2, #8]
	str	r5, [r2, #0x10]
	mov	r1, #0x10
	ldr	r0, [r6, #0x50]
	bl	__Func_b8ac
	mov	r0, r9
	mov	r1, #1
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #13
	lsl	r1, #10
	bl	__Func_933d4
	mov	r3, r8
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	ldr	r3, =0xccc
	ldr	r2, .L391c	@ 0
	str	r3, [r6, #0x34]
	mov	r3, r6
	add	r3, #0x5b
	strb	r2, [r3]
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	bge	.L3928
	ldr	r3, =0xffff
	add	r2, r3
	b	.L3928

	.align	2, 0
.L391c:
	.word	0
	.pool

.L3928:
	mov	r3, r6
	asr	r2, #16
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xc0
	str	r3, [r5, #8]
	lsl	r0, #13
	mov	r1, r8
	mov	r2, r5
	bl	__Func_447c
	ldr	r1, [r5]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r5, #8]
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #0xe9
	bl	__Func_f9080
.L3966:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_12038
	cmp	r0, #0x62
	beq	.L3988
	cmp	r0, #0x62
	bgt	.L3982
	cmp	r0, #0x60
	beq	.L3998
	cmp	r0, #0x61
	beq	.L3990
	b	.L399e
.L3982:
	cmp	r0, #0x63
	beq	.L39ac
	b	.L399e
.L3988:
	mov	r0, r6
	bl	OvlFunc_35ac
	b	.L399e
.L3990:
	mov	r0, r6
	bl	OvlFunc_3668
	b	.L399e
.L3998:
	mov	r0, r6
	bl	OvlFunc_3724
.L399e:
	mov	r0, r6
	bl	OvlFunc_3738
	mov	r0, #1
	bl	__Func_30f8
	b	.L3966
.L39ac:
	mov	r0, r6
	bl	OvlFunc_3484
	bl	__Func_91750
.L39b6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3850

.thumb_func_start OvlFunc_39c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ed0
	ldr	r4, =.L525c
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	bgt	.L3a28
.L39d8:
	ldr	r1, =.L5260
	ldrh	r3, [r1]
	ldr	r5, =.L3d28
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	ldrsb	r0, [r5, r3]
	mov	r3, #1
	neg	r3, r3
	strh	r2, [r1]
	cmp	r0, r3
	bne	.L3a0c
	ldr	r3, .L39f8	@ 0
	strh	r3, [r1]
	b	.L39d8

	.align	2, 0
.L39f8:
	.word	0
	.pool

.L3a0c:
	add	r3, r2, #1
	strh	r3, [r1]
	lsl	r3, r2, #16
	asr	r3, #16
	ldrsb	r3, [r5, r3]
	ldr	r4, =.L525c
	lsl	r0, #1
	strh	r3, [r4]
	add	r0, r6, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x5000006
	ldr	r2, =0x80000009
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L3a28:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_39c8

.thumb_func_start OvlFunc_3a44
	push	{lr}
	ldr	r2, =0
	ldr	r3, =.L5260
	strh	r2, [r3]
	ldr	r3, =.L525c
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_39c8
	bl	__Func_41d8
	b	.L3a6c

	.pool_aligned

.L3a6c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a44

	.section .data

.L3d28:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d28, (0x3d34-0x3d28)
.L3d34:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d34, (0x3d48-0x3d34)
.L3d48:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d48, (0x3d78-0x3d48)
.L3d78:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d78, (0x3dec-0x3d78)
.L3dec:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3dec, (0x401c-0x3dec)
.L401c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x401c, (0x4054-0x401c)
.L4054:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4054, (0x4084-0x4054)
.L4084:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4084, (0x40b4-0x4084)
.L40b4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x40b4, (0x40e4-0x40b4)
.L40e4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x40e4, (0x412c-0x40e4)
.L412c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x412c, (0x4164-0x412c)
.L4164:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4164, (0x4194-0x4164)
.L4194:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4194, (0x420c-0x4194)
.L420c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x420c, (0x426c-0x420c)
.L426c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x426c, (0x4314-0x426c)
.L4314:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4314, (0x43ec-0x4314)
.L43ec:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x43ec, (0x4464-0x43ec)
.L4464:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4464, (0x4524-0x4464)
.L4524:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4524, (0x459c-0x4524)
.L459c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x459c, (0x4644-0x459c)
.L4644:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4644, (0x4704-0x4644)
.L4704:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4704, (0x477c-0x4704)
.L477c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x477c, (0x480c-0x477c)
.L480c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x480c, (0x483c-0x480c)
.L483c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x483c, (0x485c-0x483c)
.L485c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x485c, (0x4928-0x485c)
.L4928:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4928, (0x4940-0x4928)
.L4940:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4940, (0x49a0-0x4940)
.L49a0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x49a0, (0x4a00-0x49a0)
.L4a00:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4a00, (0x4a60-0x4a00)
.L4a60:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4a60, (0x4aa8-0x4a60)
.L4aa8:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4aa8, (0x4b68-0x4aa8)
.L4b68:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4b68, (0x4b98-0x4b68)
.L4b98:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4b98, (0x4c40-0x4b98)
.L4c40:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4c40, (0x4cd0-0x4c40)
.L4cd0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4cd0, (0x4d18-0x4cd0)
.L4d18:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d18, (0x4d24-0x4d18)
.L4d24:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d24, (0x4d6c-0x4d24)
.L4d6c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d6c, (0x4d9c-0x4d6c)
.L4d9c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d9c, (0x4dc0-0x4d9c)
.L4dc0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4dc0, (0x4e5c-0x4dc0)
.L4e5c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4e5c, (0x4ebc-0x4e5c)
.L4ebc:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4ebc, (0x4f34-0x4ebc)
.L4f34:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4f34, (0x4fb8-0x4f34)
.L4fb8:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4fb8, (0x506c-0x4fb8)
.L506c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x506c, (0x50cc-0x506c)
.L50cc:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x50cc, (0x512c-0x50cc)
.L512c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x512c, (0x5150-0x512c)
.L5150:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x5150, (0x51b0-0x5150)
.L51b0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x51b0, (0x51b4-0x51b0)
.L51b4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x51b4

	.section .bss

	.lcomm	.L5238, 4
	.lcomm	.L523c, 4
	.lcomm	.L5240, 0x1c
	.lcomm	.L525c, 4
	.lcomm	.L5260, 4
