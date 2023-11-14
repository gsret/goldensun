	.include "macros.inc"

.thumb_func_start Func_8d5dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r7, r0
	bl	Func_8d394
	mov	r1, #1
	neg	r1, r1
	mov	r11, r0
	mov	r0, r7
	mov	r9, r1
	bl	Func_92054
	mov	r2, #0
	ldr	r3, =ewram_240
	ldr	r1, =0x24a
	str	r2, [sp]
	add	r3, r1
	mov	r10, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r8, r0
	cmp	r3, r7
	bne	.L8d678
	mov	r3, #1
	mov	r0, #7
	mov	r1, r7
	mov	r10, r3
	bl	Func_8d48c
	mov	r6, r0
	cmp	r6, #0
	bne	.L8d688
	mov	r1, r7
	mov	r0, #0
	bl	Func_8d48c
	mov	r1, #1
	mov	r6, r0
	str	r1, [sp]
	mov	r0, r9
	cmp	r6, #0
	bne	.L8d63e
	b	.L8d7ae
.L8d63e:
	mov	r2, #0x80
	ldr	r3, [r6, #8]
	lsl	r2, #9
	cmp	r3, r2
	blt	.L8d682
	mov	r0, r7
	bl	Func_915dc
	mov	r5, r0
	bl	Func_4458
	lsl	r0, #1
	ldr	r3, =0xe0b
	lsr	r0, #16
	lsl	r5, #1
	add	r5, r0
	add	r5, r3
	bl	Func_916b0
	mov	r0, r5
	bl	Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	Func_92f84
	bl	Func_91750
	b	.L8d794
.L8d678:
	mov	r0, #0
	mov	r1, r7
	bl	Func_8d48c
	mov	r6, r0
.L8d682:
	cmp	r6, #0
	bne	.L8d688
	b	.L8d794
.L8d688:
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bne	.L8d690
	b	.L8d794
.L8d690:
	mov	r1, r10
	cmp	r1, #0
	bne	.L8d6f0
	mov	r2, r8
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, r8
	bl	_Func_c344
	mov	r2, r8
	ldrh	r2, [r2, #6]
	str	r2, [sp, #4]
	mov	r1, r11
	ldrb	r3, [r1, #0x16]
	mov	r2, #0x80
	lsl	r3, #24
	lsl	r2, #17
	cmp	r3, r2
	bls	.L8d6c2
	mov	r1, #0xc0
	lsl	r1, #18
	cmp	r3, r1
	bne	.L8d6ee
.L8d6c2:
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
	ldr	r0, [r5]
	bl	Func_92054
	ldr	r3, [r0, #8]
	str	r3, [r0, #0x38]
	ldr	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r3, [r0, #0x10]
	str	r3, [r0, #0x40]
	mov	r3, r10
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x28]
	str	r3, [r0, #0x2c]
	mov	r2, #0
	ldr	r1, [r5]
	mov	r0, r7
	bl	Func_92848
.L8d6ee:
	ldr	r3, [r6, #8]
.L8d6f0:
	mov	r1, #0x80
	lsl	r1, #9
	cmp	r3, r1
	bge	.L8d716
	ldr	r0, [sp]
	bl	_Func_17620
	bl	Func_916b0
	ldr	r0, [r6, #8]
	bl	Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	Func_92f84
	bl	Func_91750
	b	.L8d722
.L8d716:
	bl	Func_91660
	ldr	r3, [r6, #8]
	mov	r0, r7
	bl	_call_via_r3
.L8d722:
	mov	r2, r10
	cmp	r2, #0
	bne	.L8d790
	mov	r2, r8
	mov	r1, #4
	ldrsh	r3, [r2, r1]
	ldr	r2, [r2]
	lsl	r3, #2
	ldr	r3, [r3, r2]
	cmp	r3, #0x10
	bne	.L8d780
	mov	r3, r11
	mov	r0, #0x16
	ldrsb	r0, [r3, r0]
	cmp	r0, #3
	bne	.L8d76a
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	bl	Func_92054
	mov	r2, r8
	str	r0, [r2, #0x68]
	mov	r1, r8
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r8
	ldr	r1, =Data_9ff40
	bl	Func_93a6c
	b	.L8d780
.L8d76a:
	cmp	r0, #1
	bne	.L8d780
	add	r1, sp, #4
	ldrh	r1, [r1]
	mov	r3, r8
	add	r3, #0x64
	strh	r1, [r3]
	mov	r0, r8
	ldr	r1, =Data_9fc1c
	bl	_Func_c2d8
.L8d780:
	mov	r2, r8
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r8
	mov	r1, #0x10
	bl	_Func_c344
.L8d790:
	mov	r2, #0
	mov	r9, r2
.L8d794:
	mov	r3, r10
	cmp	r3, #0
	beq	.L8d7ac
	ldr	r5, =ewram_240
	ldr	r1, =0x24a
	add	r5, r1
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	bl	Func_9ade8
	ldr	r3, =0xffff
	strh	r3, [r5]
.L8d7ac:
	mov	r0, r9
.L8d7ae:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8d5dc

.thumb_func_start Func_8d7d8
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r1, r7
	mov	r0, #6
	bl	Func_8d48c
	mov	r6, #1
	mov	r5, r0
	neg	r6, r6
	cmp	r5, #0
	beq	.L8d81e
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L8d81e
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r3, r2
	bge	.L8d816
	bl	Func_916b0
	ldr	r0, [r5, #8]
	bl	Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	Func_92f84
	mov	r6, #0
	bl	Func_91750
	b	.L8d81e
.L8d816:
	mov	r0, r7
	bl	_call_via_r3
	mov	r6, #0
.L8d81e:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8d7d8

.thumb_func_start Func_8d828
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r1, r6
	mov	r0, #2
	bl	Func_8d48c
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	mov	r8, r3
	cmp	r5, #0
	beq	.L8d88e
	ldr	r1, [r5, #8]
	cmp	r1, #0
	beq	.L8d88e
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8d864
	sub	r2, #0x64
	add	r2, r8
	mov	r3, #0
	strh	r3, [r2]
	ldr	r1, [r5, #8]
.L8d864:
	mov	r3, #0x80
	lsl	r3, #9
	cmp	r1, r3
	bge	.L8d886
	bl	Func_916b0
	ldr	r0, [r5, #8]
	bl	Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	Func_92f84
	mov	r7, #0
	bl	Func_91750
	b	.L8d8de
.L8d886:
	mov	r0, r6
	bl	_call_via_r1
	b	.L8d8dc
.L8d88e:
	mov	r0, #1
	mov	r1, r6
	bl	Func_8d48c
	mov	r5, r0
	cmp	r5, #0
	beq	.L8d8de
	ldr	r2, [r5]
	mov	r3, #0x30
	and	r2, r3
	cmp	r2, #0x30
	beq	.L8d8c8
	cmp	r2, #0x30
	bgt	.L8d8d2
	cmp	r2, #0
	beq	.L8d8b4
	cmp	r2, #0x20
	beq	.L8d8bc
	b	.L8d8d2
.L8d8b4:
	mov	r0, #0x7b
	bl	_Func_f9080
	b	.L8d8d2
.L8d8bc:
	mov	r0, #0x80
	bl	_Func_f9080
	bl	Func_94354
	b	.L8d8d2
.L8d8c8:
	mov	r0, #0x81
	bl	_Func_f9080
	bl	Func_94368
.L8d8d2:
	mov	r3, #0xb8
	ldr	r2, [r5, #8]
	lsl	r3, #1
	add	r3, r8
	strh	r2, [r3]
.L8d8dc:
	mov	r7, #0
.L8d8de:
	mov	r0, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8d828

.thumb_func_start Func_8d8f0
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	cmp	r0, #0xfc
	beq	.L8d918
	cmp	r0, #0xfc
	bgt	.L8d90e
	cmp	r0, #0xf9
	beq	.L8d93e
	b	.L8d98e
.L8d90e:
	cmp	r0, #0xfd
	beq	.L8d956
	cmp	r0, #0xfe
	beq	.L8d93e
	b	.L8d98e
.L8d918:
	mov	r3, #0xce
	lsl	r3, #1
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8d98e
	mov	r0, r1
	mov	r2, #0
	mov	r1, #6
	bl	Func_92708
	b	.L8d950
.L8d93e:
	mov	r3, #0xce
	lsl	r3, #1
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	bl	Func_93c00
.L8d950:
	mov	r3, #0
	strh	r3, [r5]
	b	.L8d98e
.L8d956:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	ldr	r1, =iwram_1ae8
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8d976
	bl	Func_93e28
	b	.L8d984
.L8d976:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L8d984
	bl	Func_93fa0
.L8d984:
	mov	r3, #0xce
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
.L8d98e:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8d8f0
