	.include "macros.inc"

.thumb_func_start Func_91584
	push	{lr}
	bl	Func_8ba1c
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L915a0
	ldr	r0, [r0, #0x50]
	cmp	r0, #0
	beq	.L915a0
	ldr	r0, [r0, #0x28]
	cmp	r0, #0
	bne	.L915a4
.L915a0:
	mov	r0, #0
	b	.L915a8
.L915a4:
	mov	r3, #0
	ldrsh	r0, [r0, r3]
.L915a8:
	pop	{r1}
	bx	r1
.func_end Func_91584

.thumb_func_start Func_915ac
	push	{lr}
	ldr	r3, =ewram_240
	ldr	r2, =0x20a
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L915c4
	bl	Func_91560
	ldrb	r0, [r0, #2]
	cmp	r0, #0xff
	bne	.L915c8
.L915c4:
	mov	r0, #0
	b	.L915ce
.L915c8:
	mov	r3, #0x80
	lsl	r3, #1
	add	r0, r3
.L915ce:
	pop	{r1}
	bx	r1
.func_end Func_915ac

.thumb_func_start Func_915dc
	push	{lr}
	bl	Func_91584
	bl	Func_91560
	ldrb	r0, [r0, #3]
	pop	{r1}
	bx	r1
.func_end Func_915dc

.thumb_func_start Func_915ec
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L9162a
	ldr	r0, =iwram_1c94
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L91612
	mov	r3, #0xe6
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
.L91612:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9162a
	mov	r3, #0xe6
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #1
	neg	r3, r3
	str	r3, [r2]
.L9162a:
	pop	{r0}
	bx	r0
.func_end Func_915ec

.thumb_func_start Func_9163c
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L91656
	cmp	r0, #0
	beq	.L91656
	bl	Func_30f8
.L91656:
	pop	{r0}
	bx	r0
.func_end Func_9163c

.thumb_func_start Func_91660
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x30]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x40]
	mov	r2, #0xf9
	mov	r3, #0
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x2c]
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9169e
	mov	r1, #0xc
	bl	_Func_c300
	b	.L916a4
.L9169e:
	mov	r1, #1
	bl	_Func_c300
.L916a4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91660

.thumb_func_start Func_916b0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r6, [r3]
	bl	_Func_1c428
	bl	Func_91660
	ldr	r2, =0xcb6
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L916ce
	bl	Func_8e118
.L916ce:
	ldr	r2, =0xcc2
	mov	r5, #0
	add	r3, r6, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r6, r2
	strh	r5, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r2, #0xe6
	lsl	r2, #1
	add	r3, r6, r2
	str	r5, [r3]
	mov	r3, #0xed
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, =0xffff
	strh	r3, [r2]
	mov	r3, #0xee
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	neg	r3, r3
	strh	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	neg	r3, r3
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_915ec
	bl	Func_41d8
	mov	r0, #0x99
	lsl	r0, #1
	bl	_Func_79374
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	ldr	r3, [r3, r2]
	str	r3, [r6, r2]
	add	r2, #4
	add	r3, r6, r2
	str	r5, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_916b0

.thumb_func_start Func_91750
	push	{lr}
	ldr	r0, =Func_915ec
	bl	Func_4278
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	Func_9335c
	bl	_Func_77c10
	pop	{r0}
	bx	r0
.func_end Func_91750

.thumb_func_start Func_91778
	bx	lr
.func_end Func_91778

.thumb_func_start Func_9177c
	bx	lr
.func_end Func_9177c

.thumb_func_start Func_91780
	push	{r5, lr}
	mov	r5, r0
	bl	Func_9177c
	mov	r0, r5
	bl	Func_8b674
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91780

.thumb_func_start Func_917ac
	push	{r5, lr}
	mov	r5, r0
	bl	Func_8b824
	mov	r1, r0
	mov	r0, r5
	bl	Func_8b3ec
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_917ac

.thumb_func_start Func_917c4
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	str	r0, [r3, #0x10]
	bx	lr
.func_end Func_917c4

.thumb_func_start Func_917d0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	_Func_77394
	mov	r0, r5
	bl	_Func_7961c
	cmp	r6, #0
	beq	.L917ec
	mov	r0, r5
	mov	r1, r6
	bl	_Func_21390
.L917ec:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_917d0

.thumb_func_start Func_917f4
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r0
	bl	_Func_7961c
	mov	r0, r6
	bl	_Func_7961c
	mov	r0, r5
	mov	r1, r6
	bl	_Func_21488
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_917f4

.thumb_func_start Func_91814
	push	{r5, r6, lr}
	lsr	r5, r0, #10
	mov	r3, #0xf
	ldr	r6, =0x3ff
	and	r5, r3
	and	r6, r0
	cmp	r5, #7
	ble	.L9182a
	mov	r0, #1
	neg	r0, r0
	b	.L9184e
.L9182a:
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	bne	.L9183a
	mov	r0, #2
	neg	r0, r0
	b	.L9184e
.L9183a:
	mov	r0, r5
	mov	r1, r6
	bl	_Func_78bc0
	cmp	r0, #0
	bne	.L9184c
	mov	r0, #3
	neg	r0, r0
	b	.L9184e
.L9184c:
	mov	r0, #0
.L9184e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_91814

.thumb_func_start Func_91858
	push	{r5, r6, lr}
	ldr	r6, =ewram_240
	mov	r3, #0x88
	lsl	r3, #2
	add	r5, r6, r3
	ldrh	r0, [r5]
	bl	Func_91814
	cmp	r0, #0
	beq	.L91870
	mov	r3, #0
	strh	r3, [r5]
.L91870:
	ldr	r3, =0x222
	add	r5, r6, r3
	ldrh	r0, [r5]
	bl	Func_91814
	cmp	r0, #0
	beq	.L91882
	mov	r3, #0
	strh	r3, [r5]
.L91882:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_91858

.thumb_func_start Func_91890
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	bl	_Func_79664
	bl	Func_91858
	mov	r0, r5
	bl	_Func_77394
	mov	r6, r0
	ldrh	r1, [r6, #0x34]
	ldrh	r3, [r6, #0x36]
	strh	r1, [r6, #0x38]
	strh	r3, [r6, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L918ca
	mov	r3, #0
	cmp	r0, #0
	blt	.L918ca
	mov	r3, r0
.L918ca:
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L918de
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L918de
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L918de:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L918fc
	mov	r3, #0
	cmp	r0, #0
	blt	.L918fc
	mov	r3, r0
.L918fc:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L91910
	mov	r2, #0x3a
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L91910
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L91910:
	ldr	r3, =0x131
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r8, r3
	bl	_Func_795fc
	cmp	r8, r0
	bge	.L91948
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r5, r0
.L9192c:
	ldrb	r0, [r7]
	bl	_Func_77394
	mov	r6, r0
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	add	r7, #1
	cmp	r3, #0
	beq	.L91942
	mov	r3, #1
	add	r8, r3
.L91942:
	sub	r5, #1
	cmp	r5, #0
	bne	.L9192c
.L91948:
	mov	r2, r8
	cmp	r2, #0
	bne	.L919c4
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	_Func_77394
	mov	r5, #1
	mov	r6, r0
	strh	r5, [r6, #0x38]
	lsl	r5, #14
	mov	r3, #0x34
	ldrsh	r1, [r6, r3]
	mov	r0, r5
	bl	Func_af0_from_thumb
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bgt	.L9197e
	mov	r5, #0
	cmp	r0, #0
	blt	.L9197e
	mov	r5, r0
.L9197e:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L91992
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L91992
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L91992:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L919b0
	mov	r3, #0
	cmp	r0, #0
	blt	.L919b0
	mov	r3, r0
.L919b0:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L919c4
	mov	r2, #0x3a
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L919c4
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L919c4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_91890

.thumb_func_start Func_919d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	mov	r8, r0
	mov	r10, r2
	bl	_Func_795fc
	mov	r6, r0
	cmp	r10, r6
	bge	.L91a0c
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r5, r6
.L919fa:
	ldrb	r0, [r7]
	mov	r1, r8
	bl	_Func_78af8
	sub	r5, #1
	add	r7, #1
	add	r10, r0
	cmp	r5, #0
	bne	.L919fa
.L91a0c:
	lsl	r3, r6, #4
	sub	r3, r6
	lsl	r3, #1
	cmp	r10, r3
	blt	.L91a40
	mov	r0, r8
	mov	r1, #2
	bl	_Func_19908
	ldr	r5, =0x97d
	mov	r1, #1
	mov	r0, r5
	bl	_Func_1776c
	add	r5, #1
	mov	r0, r8
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_1776c
	mov	r0, #1
	neg	r0, r0
	b	.L91a42
.L91a40:
	mov	r0, #0
.L91a42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_919d8

.thumb_func_start Func_91a58
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r7, #0xec
	mov	r11, r3
	lsl	r7, #1
	add	r7, r11
	mov	r3, #0
	ldrsh	r2, [r7, r3]
	sub	sp, #0xc
	str	r2, [sp]
	mov	r6, r0
	bl	_Func_78618
	mov	r2, #1
	mov	r8, r0
	neg	r2, r2
	cmp	r8, r2
	beq	.L91a8c
	b	.L91baa
.L91a8c:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0x96a
	mov	r1, #1
	bl	_Func_1776c
	ldr	r0, =0x977
	mov	r1, #1
	bl	_Func_1776c
	mov	r3, #8
	mov	r2, #4
	add	r3, sp
	add	r2, sp
	mov	r9, r3
	mov	r10, r2
.L91ab0:
	ldr	r7, =0x978
	mov	r1, #1
	mov	r0, r7
	bl	_Func_1776c
	mov	r0, r9
	mov	r1, r10
	bl	_Func_b3444
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bne	.L91b34
	mov	r0, r6
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L91aee
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	add	r0, r7, #4
	mov	r1, #1
	bl	_Func_1776c
	b	.L91ab0
.L91aee:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	add	r0, r7, #1
	mov	r1, #5
	bl	_Func_1776c
	mov	r0, #1
	bl	Func_91d84
	mov	r5, r0
	bl	_Func_19a54
	cmp	r5, #0
	bne	.L91ab0
	mov	r1, #1
	mov	r0, r6
	bl	_Func_78ad0
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	add	r0, r7, #2
	mov	r1, #1
	bl	_Func_1776c
	mov	r3, #0xec
	mov	r2, sp
	lsl	r3, #1
	ldrh	r2, [r2]
	add	r3, r11
	strh	r2, [r3]
	b	.L91bee
.L91b34:
	ldr	r0, [sp, #8]
	bl	_Func_77394
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_Func_784b0
	cmp	r0, #0
	ble	.L91b56
	mov	r5, r0
.L91b48:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	sub	r5, #1
	bl	_Func_78948
	cmp	r5, #0
	bne	.L91b48
.L91b56:
	mov	r0, r6
	bl	_Func_78618
	mov	r8, r0
	mov	r0, #0x53
	bl	_Func_f9080
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	bne	.L91b84
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0x96a
	mov	r1, #3
	bl	_Func_1776c
	b	.L91b9c
.L91b84:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r8
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x96b
	mov	r1, #3
	bl	_Func_1776c
.L91b9c:
	mov	r3, #0xec
	mov	r2, sp
	lsl	r3, #1
	ldrh	r2, [r2]
	add	r3, r11
	strh	r2, [r3]
	b	.L91bee
.L91baa:
	mov	r0, #0x53
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	ldr	r5, =0x96a
	mov	r1, #3
	mov	r0, r5
	bl	_Func_1776c
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	beq	.L91be8
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r8
	mov	r1, #1
	bl	_Func_19908
	add	r0, r5, #1
	mov	r1, #3
	bl	_Func_1776c
.L91be8:
	mov	r3, sp
	ldrh	r3, [r3]
	strh	r3, [r7]
.L91bee:
	mov	r0, r8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_91a58

.thumb_func_start Func_91c1c
	push	{r5, lr}
	mov	r5, r2
	mov	r1, r0
	mov	r0, r5
	bl	_Func_78588
	cmp	r0, #0
	blt	.L91c30
	mov	r0, r5
	b	.L91c34
.L91c30:
	mov	r0, #1
	neg	r0, r0
.L91c34:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_91c1c

.thumb_func_start Func_91c3c
	bx	lr
.func_end Func_91c3c

.thumb_func_start Func_91c40
	bx	lr
.func_end Func_91c40

.thumb_func_start Func_91c44
	push	{r5, r6, r7, lr}
	mov	r7, r1
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L91c76
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L91c76
	ldr	r3, [r0, #0x50]
	mov	r6, r3
	mov	r5, #0
	add	r6, #0x24
	b	.L91c66
.L91c64:
	add	r5, #1
.L91c66:
	cmp	r5, #0x59
	bgt	.L91c76
	mov	r0, #1
	bl	Func_30f8
	ldrb	r3, [r6]
	cmp	r7, r3
	beq	.L91c64
.L91c76:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_91c44

.thumb_func_start Func_91c7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r8, r0
	ldr	r6, [r3]
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r0, [r3]
	sub	sp, #4
	mov	r9, r1
	bl	Func_8d394
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #0xfc
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r3, [r3]
	mov	r11, r1
	mov	r1, #0xfe
	lsl	r1, #1
	mov	r2, #1
	mov	r10, r3
	add	r3, r6, r1
	ldr	r5, [r3]
	str	r2, [sp]
	ldr	r2, =iwram_1c94
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L91cda
	mov	r7, r2
.L91cc6:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L91cc6
	b	.L91cda
.L91cd4:
	mov	r0, #1
	bl	Func_30f8
.L91cda:
	bl	_Func_17364
	cmp	r0, #0
	beq	.L91cd4
	mov	r0, #3
	bl	Func_30f8
	mov	r3, r9
	cmp	r3, #0
	bne	.L91d0e
	mov	r0, r10
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xa]
	add	r1, r2, r3
	cmp	r5, #0
	beq	.L91d06
	ldrh	r2, [r5, #0xe]
	ldrh	r3, [r5, #0xa]
	add	r2, r3
	cmp	r1, r2
	bge	.L91d06
	mov	r1, r2
.L91d06:
	cmp	r1, #0xf
	ble	.L91d0e
	mov	r1, #0
	str	r1, [sp]
.L91d0e:
	ldr	r2, =0xcc2
	add	r3, r6, r2
	add	r2, #2
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r0, [sp]
	mov	r3, #0
	bl	_Func_28df4
	mov	r5, r0
	cmp	r5, #0
	beq	.L91d48
	mov	r1, #4
	mov	r0, r8
	bl	Func_924d4
	mov	r0, r11
	bl	_Func_19e48
	bl	_Func_19a54
	mov	r0, r8
	mov	r1, #4
	bl	Func_91c44
	b	.L91d62
.L91d48:
	mov	r1, #3
	mov	r0, r8
	bl	Func_924d4
	mov	r0, r11
	bl	_Func_19e48
	bl	_Func_19a54
	mov	r0, r8
	mov	r1, #3
	bl	Func_91c44
.L91d62:
	mov	r0, r5
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_91c7c

.thumb_func_start Func_91d84
	push	{lr}
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	_Func_28df4
	pop	{r1}
	bx	r1
.func_end Func_91d84

.thumb_func_start Func_91d94
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r0
	bl	_Func_78e28
	mov	r0, #0x53
	bl	_Func_f9080
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r6
	mov	r1, #4
	bl	_Func_19908
	ldr	r0, =0x1e
	mov	r1, #3
	bl	_Func_1776c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_91d94

.thumb_func_start Func_91dc8
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	Func_8fefc
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91dc8

.thumb_func_start Func_91df4
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	Func_901c0
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91df4

.thumb_func_start Func_91e20
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_91e20

.thumb_func_start Func_91e3c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe0
	strh	r2, [r3]
	ldr	r2, =ewram_240
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end Func_91e3c

.thumb_func_start Func_91e6c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe2
	strh	r2, [r3]
	ldr	r2, =ewram_240
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe3
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end Func_91e6c

.thumb_func_start Func_91e9c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bx	lr
.func_end Func_91e9c

.thumb_func_start Func_91eb0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r6, r1
	ldr	r7, [r3]
	mov	r5, r0
	bl	Func_8b05c
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r7, r1
	strh	r0, [r3]
	cmp	r5, #0x62
	bne	.L91ed8
	cmp	r6, #0
	bne	.L91ed8
	ldr	r3, =ewram_240
	ldr	r2, =0x21
	add	r1, #0x5a
	add	r3, r1
	strh	r2, [r3]
.L91ed8:
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L91ef8
	ldr	r3, =ewram_240
	add	r2, #0x56
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	add	r0, #8
	bl	Func_8adf0
.L91ef8:
	mov	r0, r5
	mov	r1, r6
	bl	Func_8b320
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_91eb0

.thumb_func_start Func_91f14
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r5, #0x80
	ldr	r3, [r3]
	lsl	r5, #4
	mov	r8, r3
	and	r5, r0
	mov	r3, #0xff
	mov	r7, r1
	and	r0, r3
	cmp	r5, #0
	bne	.L91f34
	bl	Func_9537c
.L91f34:
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r6, =ewram_240
	add	r3, r7, r1
	mov	r1, #0x8d
	lsl	r1, #2
	orr	r3, r5
	add	r2, r6, r1
	strh	r3, [r2]
	mov	r0, r7
	bl	Func_8b074
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	strh	r0, [r3]
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L91f74
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r0, [r3]
	bl	Func_8ba1c
	add	r0, #8
	bl	Func_8adf0
.L91f74:
	mov	r1, #0
	mov	r0, #0
	bl	Func_8b320
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_91f14

.thumb_func_start Func_91f90
	ldr	r3, =ewram_240
	mov	r4, #0xe7
	lsl	r4, #1
	add	r2, r3, r4
	strh	r0, [r2]
	mov	r2, #0xe8
	lsl	r2, #1
	add	r3, r2
	strh	r1, [r3]
	bx	lr
.func_end Func_91f90

.thumb_func_start Func_91fa8
	ldr	r3, =ewram_240
	mov	r4, #0xe9
	lsl	r4, #1
	add	r2, r3, r4
	strh	r0, [r2]
	mov	r2, #0xea
	lsl	r2, #1
	add	r3, r2
	strh	r1, [r3]
	bx	lr
.func_end Func_91fa8

.thumb_func_start Func_91fc0
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	mov	r12, r3
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r12
	strh	r0, [r3]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r3, r12
	strh	r1, [r3]
	mov	r3, #0xb8
	lsl	r3, #1
	add	r2, r3
	ldr	r3, =0x3e7
	strh	r3, [r2]
	bx	lr
.func_end Func_91fc0

.thumb_func_start Func_91ff0
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	mov	r5, r0
	add	r3, r2
	strh	r5, [r3]
	mov	r2, #1
	lsl	r3, r5, #16
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	bne	.L9200c
	ldr	r5, =0x121
.L9200c:
	mov	r0, #0x95
	lsl	r0, #1
	bl	_Func_f9080
	mov	r0, r5
	bl	_Func_f9080
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91ff0

.thumb_func_start Func_9202c
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L92046
	bl	_Func_f9080
.L92046:
	pop	{r0}
	bx	r0
.func_end Func_9202c

.thumb_func_start Func_92054
	push	{lr}
	bl	Func_8ba1c
	cmp	r0, #0
	bne	.L92060
	mov	r0, #0
.L92060:
	pop	{r1}
	bx	r1
.func_end Func_92054

.thumb_func_start Func_92064
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r2
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L92076
	str	r5, [r0, #0x34]
	str	r6, [r0, #0x30]
.L92076:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_92064

.thumb_func_start Func_9207c
	push	{r5, lr}
	mov	r5, r1
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L9209a
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r5
	bl	Func_93a6c
.L9209a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_9207c

.thumb_func_start Func_920a0
	push	{lr}
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L920ba
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	bl	_Func_c4ac
.L920ba:
	pop	{r0}
	bx	r0
.func_end Func_920a0

.thumb_func_start Func_920c0
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L920de
	mov	r0, r6
	bl	Func_92054
	ldr	r1, =Data_9ff40
	str	r0, [r5, #0x68]
	mov	r0, r5
	bl	Func_93a6c
.L920de:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_920c0

.thumb_func_start Func_920e8
	push	{lr}
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L920f6
	bl	_Func_c4ec
.L920f6:
	pop	{r0}
	bx	r0
.func_end Func_920e8

.thumb_func_start Func_920fc
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92122
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r6
	bl	Func_93a6c
	mov	r0, r5
	bl	_Func_c4ec
.L92122:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_920fc

.thumb_func_start Func_92128
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92150
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	_Func_d14c
.L92150:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92128

.thumb_func_start Func_92158
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92186
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	mov	r0, r5
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	bl	_Func_d14c
	mov	r0, r5
	bl	_Func_ca6c
.L92186:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92158

.thumb_func_start Func_9218c
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L921bc
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	_Func_d14c
.L921bc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9218c

.thumb_func_start Func_921c4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92202
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	_Func_d14c
	mov	r0, r5
	bl	_Func_ca6c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
.L92202:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_921c4

.thumb_func_start Func_92208
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r8, r1
	mov	r10, r2
	bl	Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L92280
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	mov	r5, r3
	cmp	r3, #0
	bge	.L9222c
	add	r5, #0xf
.L9222c:
	asr	r5, #4
	lsl	r5, #4
	mov	r2, r6
	add	r2, #0x5b
	sub	r5, r3, r5
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	bl	_Func_c4ac
	lsl	r5, #16
	mov	r0, r6
	mov	r1, #2
	bl	_Func_c300
	asr	r5, #16
	mov	r3, #8
	ldr	r1, [r6, #8]
	sub	r3, r5
	lsl	r3, #16
	add	r1, r3
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, r6
	bl	_Func_d14c
	mov	r0, r6
	bl	_Func_ca6c
	mov	r0, r7
	mov	r1, r8
	bl	Func_92b08
	mov	r3, r10
	lsl	r0, r3, #16
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	_Func_d14c
.L92280:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92208

.thumb_func_start Func_9228c
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L922bc
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	ldr	r1, [r5, #8]
	lsl	r3, r6, #16
	add	r1, r3
	ldr	r3, [r5, #0x10]
	lsl	r0, r7, #16
	add	r3, r0
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	bl	_Func_d14c
.L922bc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9228c

.thumb_func_start Func_922c4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L922fc
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	ldr	r1, [r5, #8]
	lsl	r3, r6, #16
	add	r1, r3
	ldr	r3, [r5, #0x10]
	lsl	r0, r7, #16
	add	r3, r0
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	bl	_Func_d14c
.L922fc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_922c4

.thumb_func_start Func_92304
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	bl	Func_8ba1c
	mov	r1, r6
	mov	r7, r0
	mov	r2, r8
	mov	r0, r5
	bl	Func_922c4
	cmp	r7, #0
	beq	.L92332
	mov	r0, r7
	bl	_Func_ca6c
	mov	r0, r7
	mov	r1, #1
	bl	_Func_c300
.L92332:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92304

.thumb_func_start Func_9233c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L923a6
	ldr	r2, =0x4ccc
	mov	r0, r6
	ldr	r1, =0x9999
	bl	Func_92064
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_92054
	cmp	r0, #0
	beq	.L9237c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	Func_923e4
.L9237c:
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	mov	r2, r8
	mov	r0, r6
	mov	r1, r7
	bl	Func_9228c
	ldr	r1, =.L9fbcc
	mov	r0, r5
	bl	_Func_c2d8
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
.L923a6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9233c

.thumb_func_start Func_923c4
	push	{r5, lr}
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L923dc
	bl	_Func_ca6c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
.L923dc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_923c4

.thumb_func_start Func_923e4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L9244a
	bl	_Func_c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	str	r6, [r5, #8]
	str	r7, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9244a
	mov	r3, r5
	add	r3, #0x22
	mov	r1, r6
	ldrb	r0, [r3]
	cmp	r1, #0
	bge	.L9242a
	ldr	r3, =0xffff
	add	r1, r3
.L9242a:
	mov	r2, r7
	asr	r1, #16
	cmp	r2, #0
	bge	.L92436
	ldr	r3, =0xffff
	add	r2, r3
.L92436:
	asr	r2, #16
	bl	_Func_11f54
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	lsl	r0, #16
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r0, [r5, #0x14]
.L9244a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_923e4

.thumb_func_start Func_92454
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r6, r2
	mov	r8, r3
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L924c4
	bl	_Func_c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r2, r8
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	str	r7, [r5, #8]
	str	r6, [r5, #0xc]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L924c4
	mov	r3, r5
	add	r3, #0x22
	mov	r1, r7
	ldrb	r0, [r3]
	cmp	r1, #0
	bge	.L924a4
	ldr	r3, =0xffff
	add	r1, r3
.L924a4:
	mov	r3, r8
	asr	r1, #16
	cmp	r3, #0
	bge	.L924b0
	ldr	r2, =0xffff
	add	r3, r2
.L924b0:
	asr	r2, r3, #16
	bl	_Func_11f54
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	lsl	r0, #16
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r0, [r5, #0x14]
.L924c4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92454

.thumb_func_start Func_924d4
	push	{r5, lr}
	mov	r5, r1
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L924e6
	mov	r1, r5
	bl	_Func_c300
.L924e6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_924d4

.thumb_func_start Func_924ec
	push	{r5, lr}
	mov	r5, r1
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L924fe
	mov	r1, r5
	bl	_Func_c344
.L924fe:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_924ec

.thumb_func_start Func_92504
	push	{r5, r6, r7, lr}
	sub	sp, #4
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L9253e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9253e
	ldr	r3, [r0, #0x50]
	mov	r6, r3
	add	r6, #0x24
	ldrb	r3, [r6]
	mov	r7, sp
	mov	r5, #0
	str	r3, [r7]
	b	.L9252c
.L9252a:
	add	r5, #1
.L9252c:
	cmp	r5, #0x59
	bgt	.L9253e
	mov	r0, #1
	bl	Func_30f8
	ldrb	r2, [r6]
	ldr	r3, [r7]
	cmp	r3, r2
	beq	.L9252a
.L9253e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92504

.thumb_func_start Func_92548
	push	{r5, lr}
	mov	r5, r0
	bl	Func_924d4
	mov	r0, r5
	bl	Func_92504
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_92548

.thumb_func_start Func_9255c
	bx	lr
.func_end Func_9255c

.thumb_func_start Func_92560
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L92596
	mov	r1, r0
	add	r1, #0x55
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	lsl	r3, r5, #16
	strb	r2, [r1]
	str	r3, [r0, #0x28]
	cmp	r5, #5
	ble	.L9258a
	mov	r0, #0x99
	bl	_Func_f9080
	b	.L92590
.L9258a:
	mov	r0, #0x98
	bl	_Func_f9080
.L92590:
	mov	r0, r6
	bl	Func_9163c
.L92596:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_92560

	.section .rodata

.L9fbcc:
	.incrom 0x9fbcc, 0x9fbec
