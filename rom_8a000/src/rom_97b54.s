	.include "macros.inc"

.thumb_func_start Func_97b54
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L9f0f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r0, [r1, r3]
	bx	lr
.func_end Func_97b54

.thumb_func_start Func_97b70
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r0, [r5, #0x68]
	sub	sp, #0xc
	cmp	r0, #0
	beq	.L97bba
	ldr	r2, [r0, #8]
	ldr	r3, [r5, #8]
	sub	r1, r2, r3
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	sub	r0, r2, r3
	cmp	r1, #0
	bne	.L97b90
	cmp	r0, #0
	beq	.L97bb2
.L97b90:
	bl	Func_44d0
	ldrh	r3, [r5, #6]
	sub	r0, r3
	lsl	r0, #16
	mov	r2, #0x80
	asr	r0, #16
	lsl	r2, #5
	cmp	r0, r2
	ble	.L97ba6
	mov	r0, r2
.L97ba6:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L97bae
	mov	r0, r2
.L97bae:
	add	r3, r0
	strh	r3, [r5, #6]
.L97bb2:
	mov	r2, r5
	add	r2, #0x5a
	mov	r3, #0
	strb	r3, [r2]
.L97bba:
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	bl	Func_4458
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xfff80000
	lsl	r0, #4
	sub	r3, r0
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
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
	beq	.L97c20
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x1999
	mov	r1, #0
	str	r3, [r5, #0x48]
	bl	_Func_c300
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #0xc
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Func_c2d8
.L97c20:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_97b70

.thumb_func_start Func_97c3c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #0x34
	str	r3, [sp, #0x18]
	ldr	r0, [r3, #0x10]
	str	r0, [sp, #0x14]
	mov	r7, #0x80
	ldr	r6, [r3, #0x14]
	ldr	r3, [r3]
	lsl	r7, #8
	add	r3, r7
	mov	r1, #0
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	cmp	r6, #0
	bne	.L97c6c
	b	.L97f3c
.L97c6c:
	bl	Func_97384
	ldr	r2, [sp, #0x14]
	str	r6, [r2, #0x68]
	ldr	r0, [sp, #0x14]
	ldr	r1, =.L9f0bc
	bl	_Func_c2d8
	ldr	r0, [sp, #0x14]
	bl	Func_98070
	mov	r10, r0
	cmp	r0, #0
	bne	.L97c8e
	bl	Func_9748c
	b	.L97f3c
.L97c8e:
	mov	r3, r10
	str	r6, [r3, #0x68]
	mov	r0, #0x28
	ldr	r3, [r6, #8]
	add	r0, sp
	str	r3, [r0]
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	mov	r9, r0
	str	r3, [r0, #8]
	ldr	r1, [sp, #8]
	mov	r0, r5
	mov	r2, r9
	bl	Func_447c
	mov	r2, r9
	mov	r0, r9
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r10
	bl	_Func_d14c
	mov	r0, r10
	bl	Func_98184
	mov	r3, #0x80
	mov	r1, r10
	lsl	r3, #11
	str	r3, [r1, #0x30]
	str	r7, [r1, #0x34]
	mov	r3, #4
	add	r1, #0x55
	str	r1, [sp]
	strb	r3, [r1]
	ldr	r3, =Func_96b88
	str	r3, [r6, #0x6c]
	ldr	r3, =0x6666
	str	r3, [r6, #0x30]
	ldr	r3, =0x3333
	add	r2, sp, #4
	str	r3, [r6, #0x34]
	ldrb	r2, [r2]
	mov	r3, r6
	add	r3, #0x5a
	strb	r2, [r3]
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	mov	r7, r9
	mov	r11, r5
	strb	r3, [r2]
	b	.L97ee4
.L97d00:
	ldr	r3, =iwram_1ae8
	ldr	r0, [r3]
	bl	Func_97b54
	lsl	r0, #16
	lsr	r0, #16
	ldr	r3, =0xffff
	mov	r8, r0
	cmp	r8, r3
	bne	.L97d4a
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	add	r3, r11
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r7, #8]
	ldr	r1, [sp, #8]
	mov	r0, r11
	mov	r2, r7
	bl	Func_447c
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r10
	bl	_Func_d14c
	mov	r0, r10
	mov	r1, #1
	bl	_Func_c300
	mov	r0, r10
	str	r5, [r0, #0x24]
	str	r5, [r0, #0x28]
	str	r5, [r0, #0x2c]
	b	.L97ee4
.L97d4a:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	add	r3, r11
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r7, #8]
	ldr	r1, [sp, #8]
	mov	r0, r11
	mov	r2, r7
	bl	Func_447c
	mov	r0, #0x80
	lsl	r0, #10
	mov	r1, r8
	mov	r2, r7
	bl	Func_447c
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r10
	bl	_Func_d14c
	mov	r0, r10
	bl	_Func_ca6c
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r11
	str	r3, [r7, #8]
	mov	r1, r8
	mov	r2, r7
	bl	Func_447c
	ldr	r3, [r6, #8]
	add	r5, sp, #0x1c
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	lsl	r0, #14
	mov	r1, r8
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r7
	bl	_Func_120dc
	cmp	r0, #0
	bgt	.L97e16
	mov	r0, r6
	mov	r1, r9
	bl	_Func_d98c
	cmp	r0, #0
	beq	.L97e36
	ldr	r1, [sp, #0x14]
	cmp	r0, r1
	bne	.L97e16
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x14]
	mov	r1, r9
	ldr	r0, [r2, #8]
	ldr	r4, [r3, #0x10]
	ldr	r2, =0xfff00000
	ldr	r3, [r1]
	and	r0, r2
	and	r3, r2
	and	r4, r2
	cmp	r0, r3
	bne	.L97dee
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r4, r3
	beq	.L97e16
.L97dee:
	ldr	r1, [r5]
	ldr	r2, =0xfff00000
	mov	r3, r1
	and	r3, r2
	mov	r12, r2
	cmp	r0, r3
	bne	.L97e36
	ldr	r2, [r5, #8]
	mov	r0, r12
	mov	r3, r2
	and	r3, r0
	cmp	r4, r3
	bne	.L97e36
	ldr	r3, [sp, #0x14]
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	_Func_11fd8
	cmp	r0, #0
	beq	.L97e32
.L97e16:
	mov	r0, r10
	mov	r1, #4
	bl	_Func_c300
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L97ee4
	mov	r0, #0x72
	bl	_Func_f9080
	b	.L97ee4
.L97e32:
	mov	r1, #1
	str	r1, [sp, #4]
.L97e36:
	mov	r0, #0xaf
	bl	_Func_f9080
	ldr	r2, [r7]
	str	r2, [sp, #0x10]
	ldr	r0, [sp, #8]
	ldr	r3, [r7, #8]
	mov	r1, r8
	str	r3, [sp, #0xc]
	sub	r3, r0, r1
	ldr	r2, =.L9f118
	lsl	r3, #16
	lsr	r3, #30
	ldrb	r1, [r2, r3]
	mov	r0, r10
	bl	_Func_c300
	mov	r0, #0xf
	bl	Func_30f8
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, =0x3333
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r9, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	_Func_d14c
	ldr	r1, [sp]
	mov	r3, r10
	mov	r2, r9
	mov	r0, #0
	strb	r0, [r1]
	str	r2, [r3, #0x30]
	str	r2, [r3, #0x34]
	mov	r0, r11
	mov	r1, r8
	mov	r2, r7
	bl	Func_447c
	ldr	r2, [r7, #4]
	mov	r0, r10
	ldr	r1, [r7]
	add	r2, r11
	ldr	r3, [r7, #8]
	bl	_Func_d14c
	ldr	r0, [sp, #4]
	cmp	r0, #1
	bne	.L97ece
	ldr	r2, [sp, #0x18]
	mov	r1, #0x18
	ldrsh	r0, [r2, r1]
	bl	Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [sp, #0x14]
	mov	r3, r9
	str	r3, [r0, #0x30]
	str	r3, [r0, #0x34]
	ldr	r0, [sp, #0x14]
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	_Func_d14c
.L97ece:
	mov	r0, r6
	bl	_Func_ca6c
	ldr	r1, [sp, #0x10]
	str	r1, [r6, #8]
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	str	r2, [r6, #0x10]
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	b	.L97ef8
.L97ee4:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =iwram_1c94
	ldr	r5, [r3]
	ldr	r3, =0x303
	and	r5, r3
	cmp	r5, #0
	bne	.L97ef8
	b	.L97d00
.L97ef8:
	ldr	r3, [sp, #0x18]
	add	r3, #0x44
	ldrb	r1, [r3]
	mov	r0, r6
	bl	_Func_c598
	ldr	r0, [sp, #0x18]
	ldr	r1, [r0, #0x3c]
	mov	r0, r6
	bl	_Func_c2d8
	ldr	r1, [sp, #0x18]
	ldr	r3, [r1, #0x38]
	str	r3, [r6, #0x6c]
	bl	Func_97174
	ldr	r2, [sp, #4]
	cmp	r2, #1
	bne	.L97f32
	ldr	r1, [sp, #0x18]
	mov	r3, #0x18
	ldrsh	r0, [r1, r3]
	bl	Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
.L97f32:
	bl	Func_9748c
	mov	r0, r10
	bl	Func_981b0
.L97f3c:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_97c3c

.thumb_Func_start Func_97f80
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	sub	sp, #0xc
	mov	r8, r2
.L97f90:
	mov	r3, r8
	mov	r7, #0
	ldrsb	r7, [r3, r7]
	cmp	r7, #0
	bne	.L97fd0
	ldr	r3, [r6, #0x14]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r1, r0
	lsl	r1, #16
	mov	r0, #0xf0
	mov	r2, r5
	lsl	r0, #13
	lsr	r1, #16
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x20]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	b	.L98002
.L97fd0:
	cmp	r7, #1
	bne	.L97fe8
	mov	r0, r6
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L98020
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L97f90
.L97fe8:
	cmp	r7, #2
	bne	.L9800c
	ldr	r3, [r6, #0x14]
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x18]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #3
	mov	r2, r6
	strh	r3, [r6, #0x32]
	add	r2, #0x42
	mov	r3, #1
	strb	r3, [r2]
.L98002:
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L98020
.L9800c:
	cmp	r7, #3
	bne	.L98020
	mov	r0, r6
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L98020
	mov	r0, r6
	bl	Func_9bb34
.L98020:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_97f80

.thumb_func_start Func_9802c
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #0xc
	ldr	r5, [r3, #0x10]
	bl	Func_97384
	mov	r0, r5
	bl	Func_98070
	mov	r5, r0
	bl	Func_98184
	cmp	r5, #0
	beq	.L98058
	mov	r0, r5
	mov	r1, #4
	bl	_Func_c300
	mov	r0, #0x1e
	bl	Func_30f8
.L98058:
	bl	Func_9748c
	mov	r0, r5
	bl	Func_981b0
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_9802c

.thumb_func_start Func_98070
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldrh	r3, [r0, #6]
	mov	r8, r0
	mov	r0, #0x80
	lsl	r0, #6
	mov	r2, r8
	add	r5, r3, r0
	ldr	r1, [r2, #8]
	mov	r3, #0xc0
	ldr	r2, [r2, #0xc]
	mov	r6, #0x80
	lsl	r3, #8
	mov	r0, r8
	lsl	r6, #13
	and	r5, r3
	add	r2, r6
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd7
	bl	Func_96c80
	mov	r10, r0
	cmp	r0, #0
	bne	.L980aa
	mov	r0, #0
	b	.L98166
.L980aa:
	mov	r3, #0x80
	mov	r2, r10
	lsl	r3, #7
	str	r3, [r2, #0x1c]
	str	r3, [r2, #0x18]
	ldr	r3, =Func_97b70
	str	r3, [r2, #0x6c]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2, #0x30]
	str	r3, [r2, #0x34]
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r0, r10
	mov	r1, #3
	bl	_Func_c300
	mov	r0, r10
	mov	r1, r6
	mov	r2, r5
	bl	Func_96bec
	mov	r3, #7
	mov	r9, r3
.L980dc:
	mov	r0, r8
	ldr	r2, [r0, #0xc]
	mov	r3, #0x80
	lsl	r3, #13
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	ldr	r0, =0x11d
	bl	Func_96c80
	mov	r7, r0
	cmp	r7, #0
	beq	.L98152
	ldr	r1, =.L9f0d4
	bl	_Func_c2d8
	bl	Func_4458
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r7
	add	r2, #0x55
	add	r0, r3
	str	r3, [r7, #0x34]
	mov	r3, #2
	str	r0, [r7, #0x30]
	strb	r3, [r2]
	ldr	r3, =0x51e
	str	r3, [r7, #0x48]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	sub	r5, r0
	str	r5, [r7, #0x28]
	bl	Func_4458
	lsl	r6, r0, #1
	add	r6, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r6, #3
	add	r6, r0
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r2, r8
	sub	r5, r0
	ldrh	r3, [r2, #6]
	lsr	r5, #3
	add	r5, r3
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	Func_96bec
.L98152:
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0
	bge	.L980dc
	mov	r0, #0x8a
	bl	_Func_f9080
	mov	r0, r10
.L98166:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_98070

.thumb_func_start Func_98184
	push	{lr}
	cmp	r0, #0
	beq	.L981a8
	ldr	r2, [r0, #0x18]
	ldr	r3, =0xffff
	cmp	r2, r3
	bgt	.L981a4
	mov	r1, #0x80
	lsl	r1, #5
	mov	r12, r3
.L98198:
	add	r3, r2, r1
	mov	r2, r3
	cmp	r3, r12
	ble	.L98198
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
.L981a4:
	bl	_Func_ca6c
.L981a8:
	pop	{r0}
	bx	r0
.func_end Func_98184

.thumb_func_start Func_981b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0x9a
	bl	_Func_f9080
	ldr	r5, =0xfffff800
	mov	r2, #0x1e
	mov	r8, r2
.L981c6:
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r2, #0x80
	ldrh	r3, [r7, #6]
	lsl	r2, #6
	add	r3, r2
	strh	r3, [r7, #6]
	ldr	r3, [r7, #0x18]
	add	r3, r5
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r5
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L981c6
	mov	r2, #0x80
	mov	r3, #7
	lsl	r2, #9
	mov	r8, r3
	mov	r10, r2
.L98202:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x11d
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L9825e
	ldr	r1, =.L9f0d4
	bl	_Func_c2d8
	bl	Func_4458
	mov	r3, r10
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	add	r0, r10
	mov	r3, #2
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	ldr	r3, =0xa3d
	str	r3, [r6, #0x48]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	sub	r5, r0
	str	r5, [r6, #0x28]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r5, #3
	add	r5, r2
	bl	Func_4458
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_96bec
.L9825e:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L98202
	mov	r0, #0x83
	bl	_Func_f9080
	mov	r0, r7
	bl	_Func_c0f4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_981b0

.thumb_func_start Func_98294
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e64
	ldr	r3, [r3]
	mov	r5, r0
	mov	r12, r3
	mov	r0, #0x3f
.L982a0:
	mov	r2, r12
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L982c6
	mov	r3, r12
	add	r3, #0x54
	ldrb	r4, [r3]
	cmp	r4, #1
	bne	.L982c6
	ldr	r1, [r2, #0x50]
	ldr	r2, [r1, #0x28]
	mov	r6, #0
	ldrsh	r3, [r2, r6]
	cmp	r3, #0xc8
	bne	.L982c6
	mov	r3, r1
	add	r3, #0x25
	strb	r5, [r2, #5]
	strb	r4, [r3]
.L982c6:
	mov	r2, #0x70
	sub	r0, #1
	add	r12, r2
	cmp	r0, #0
	bge	.L982a0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_98294

.thumb_func_start Func_982dc
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r1, #0xcc
	lsl	r1, #4
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r4, r0
	cmp	r3, #0
	beq	.L98312
	ldr	r3, =0xcba
	add	r2, r5, r3
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	ldrh	r1, [r2]
	cmp	r3, #0
	beq	.L98312
	sub	r3, r1, #1
	strh	r3, [r2]
.L98312:
	ldr	r1, =0xcbc
	add	r3, r5, r1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r0, [r4, #8]
	cmp	r0, #0
	bge	.L98324
	ldr	r1, =0xffff
	add	r0, r1
.L98324:
	asr	r0, #16
	ldr	r3, =Func_888
	sub	r0, r2, r0
	ldr	r1, =0xd105
	.call_via r3
	ldr	r2, =0xcbe
	add	r3, r5, r2
	mov	r1, r0
	ldr	r2, [r4, #0x10]
	mov	r0, #0
	ldrsh	r6, [r3, r0]
	ldr	r3, [r4, #0xc]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L98348
	ldr	r2, =0xffff
	add	r0, r2
.L98348:
	asr	r3, r0, #16
	sub	r3, r6, r3
	mov	r0, r3
	mul	r0, r3
	mov	r2, r1
	mul	r2, r1
	mov	r3, r0
	mov	r1, #0xe1
	add	r2, r3
	lsl	r1, #4
	cmp	r2, r1
	bge	.L9836c
	ldr	r2, =0xcba
	add	r3, r5, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	bne	.L98376
.L9836c:
	mov	r1, #0xbf
	lsl	r1, #1
	ldr	r3, =0x2090
	add	r2, r5, r1
	strh	r3, [r2]
.L98376:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_982dc

.thumb_func_start Func_983a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r5, =iwram_1ebc
	mov	r0, #6
	sub	sp, #4
	ldr	r6, [r5]
	bl	Func_98294
	mov	r0, #8
	bl	Func_8fe38
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r0, r3
	mov	r10, r0
	ldr	r0, [r0]
	ldr	r7, [r5, #0x10]
	bl	Func_8ba1c
	ldr	r2, =0x52c
	ldr	r3, [r0, #8]
	add	r5, r7, r2
	str	r3, [r5]
	mov	r3, #0xa6
	lsl	r3, #3
	add	r3, r7
	ldr	r2, [r0, #0xc]
	mov	r8, r3
	ldr	r3, [r0, #0x10]
	mov	r0, r8
	sub	r3, r2
	str	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	Func_91220
	mov	r1, #1
	ldr	r0, =0x10001
	bl	Func_91200
	mov	r0, #1
	bl	Func_91254
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0x50000005
	mov	r2, sp
	mov	r1, #8
	bl	Func_8e4b4
	cmp	r0, #0
	beq	.L9841c
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r2, [sp]
	bl	Func_96b28
.L9841c:
	mov	r0, #0x83
	bl	_Func_f9080
	ldr	r0, =0xcb8
	mov	r1, #1
	add	r3, r6, r0
	strh	r1, [r3]
	ldr	r2, [r5]
	cmp	r2, #0
	bge	.L98434
	ldr	r3, =0xffff
	add	r2, r3
.L98434:
	ldr	r0, =0xcbc
	asr	r2, #16
	add	r3, r6, r0
	strh	r2, [r3]
	mov	r3, r8
	ldr	r2, [r3]
	cmp	r2, #0
	bge	.L98448
	ldr	r0, =0xffff
	add	r2, r0
.L98448:
	ldr	r0, =0xcbe
	asr	r2, #16
	add	r3, r6, r0
	strh	r2, [r3]
	ldr	r3, =0xcba
	add	r2, r6, r3
	mov	r3, #0x96
	lsl	r3, #2
	add	r0, #2
	strh	r3, [r2]
	add	r3, r6, r0
	strh	r1, [r3]
	bl	Func_8f32c
	ldr	r2, =0x52a
	mov	r5, #0
	add	r6, r7, r2
.L9846a:
	mov	r0, #1
	bl	Func_30f8
	strh	r5, [r6]
	add	r5, #1
	cmp	r5, #0x12
	ble	.L9846a
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_982dc
	bl	Func_41d8
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_983a0

.thumb_func_start Func_984c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	mov	r2, r3
	ldr	r1, [r3]
	sub	r2, #0x64
	sub	r3, #0x74
	ldr	r6, [r3]
	ldr	r7, [r2]
	ldr	r2, =0xcb8
	add	r5, r6, r2
	mov	r8, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	sp, #4
	cmp	r3, #0
	beq	.L9859c
	mov	r0, #0xa7
	bl	_Func_f9080
	ldr	r0, =Func_982dc
	bl	Func_4278
	ldr	r1, =0xcba
	mov	r2, #0
	strh	r2, [r5]
	add	r3, r6, r1
	mov	r5, #0x80
	strh	r2, [r3]
	mov	r0, #0
	lsl	r5, #9
	bl	Func_98294
	mov	r1, #1
	mov	r0, r5
	bl	Func_91200
	mov	r0, #1
	bl	Func_91254
	mov	r0, #0
	mov	r1, #0
	bl	Func_91220
	mov	r1, #0
	mov	r0, r5
	bl	Func_91200
	mov	r0, #0x1e
	bl	Func_91254
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0x40000005
	mov	r2, sp
	mov	r1, #8
	bl	Func_8e4b4
	cmp	r0, #0
	beq	.L9854c
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	ldr	r2, [sp]
	bl	Func_96b28
.L9854c:
	mov	r3, r8
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L9859c
	ldr	r3, =0x53e
	ldr	r1, =0x53c
	add	r2, r7, r3
	ldr	r3, .L98578	@ 0
	strb	r3, [r2]
	add	r3, r7, r1
	mov	r2, #1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r7, r1
	strb	r2, [r3]
	mov	r0, #0xa
	bl	Func_30f8
	b	.L9859c

	.align	2, 0
.L98578:
	.word	0
	.pool

.L9859c:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_984c0

.thumb_func_start Func_985a8
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r5, [r3, #0x14]
	cmp	r5, #0
	beq	.L985f2
	bl	Func_98698
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0x7e
	bl	_Func_f9080
	mov	r0, #0x28
	bl	Func_30f8
	bl	Func_9748c
.L985f2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_985a8

.thumb_func_start Func_985fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	sub	sp, #0xc
	ldr	r7, [r3]
	bl	Func_98698
	mov	r0, #0x86
	bl	_Func_f9080
	mov	r3, #4
	mov	r6, sp
	mov	r8, r3
.L98618:
	ldr	r3, [r7, #4]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #8]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r3, #0x80
	lsl	r3, #11
	lsl	r5, #1
	add	r5, r3
	bl	Func_4458
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	ldr	r2, [r7, #8]
	ldr	r1, [r6]
	ldr	r3, [r6, #8]
	mov	r0, #0xd9
	str	r2, [r6, #4]
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L98660
	ldr	r1, =.L9f11c
	bl	_Func_c2d8
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.L98660:
	bl	Func_4458
	lsl	r0, #1
	lsr	r0, #16
	add	r0, #2
	bl	Func_30f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r3, r8
	cmp	r3, #0
	bge	.L98618
	mov	r0, #0x1e
	bl	Func_30f8
	bl	Func_9748c
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_985fc

.thumb_func_start Func_98698
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #0xc
	mov	r9, r3
	ldr	r7, [r3, #0x10]
	bl	Func_97384
	mov	r0, #0x17
	mov	r8, sp
	mov	r10, r8
	mov	r11, r0
.L986bc:
	mov	r2, r9
	mov	r5, #0x80
	ldr	r3, [r2]
	lsl	r5, #7
	cmp	r3, r5
	bne	.L986d6
	ldr	r3, [r7, #8]
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	mov	r2, #0xa0
	lsl	r2, #12
	b	.L986ea
.L986d6:
	mov	r5, #0xc0
	lsl	r5, #8
	cmp	r3, r5
	bne	.L986f8
	ldr	r3, [r7, #8]
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	mov	r2, #0xc0
	lsl	r2, #13
.L986ea:
	add	r3, r2
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	b	.L98716

	.pool_aligned

.L986f8:
	ldr	r3, [r7, #8]
	mov	r5, r10
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	mov	r0, #0xa0
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	mov	r2, r9
	ldr	r1, [r2]
	mov	r2, r10
	bl	Func_447c
.L98716:
	mov	r3, r10
	mov	r0, #0x8e
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	lsl	r0, #1
	ldr	r3, [r3, #8]
	bl	Func_96c80
	mov	r6, r0
	ldr	r4, [r6, #0x50]
	ldrb	r3, [r4, #5]
	mov	r0, r4
	add	r0, #0xc
	mov	r1, #0x20
	mov	r5, #0x21
	and	r1, r3
	neg	r5, r5
	ldrb	r3, [r0, #5]
	mov	r2, r5
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #5]
	ldrb	r2, [r4, #5]
	mov	r1, #0x3f
	lsr	r2, #6
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #5]
	ldrb	r3, [r4, #7]
	ldrb	r2, [r0, #7]
	lsr	r3, #6
	lsl	r3, #6
	and	r1, r2
	orr	r1, r3
	strb	r1, [r0, #7]
	ldrh	r1, [r4, #8]
	ldrh	r3, [r0, #8]
	ldr	r2, =0xfffffc00
	lsl	r1, #22
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	strh	r3, [r0, #8]
	ldrb	r2, [r4, #9]
	ldrb	r1, [r0, #9]
	lsr	r2, #4
	mov	r3, #0xf
	lsl	r2, #4
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	cmp	r6, #0
	beq	.L98812
	ldr	r3, =0xb333
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	str	r3, [r6, #0x30]
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	b	.L987a4

	.pool_aligned

.L987a4:
	mov	r1, #0xb
	bl	_Func_c598
	mov	r0, r6
	mov	r1, #7
	bl	_Func_c300
	mov	r0, r6
	ldr	r1, =.L9f0b4
	bl	_Func_c2d8
	mov	r0, r6
	mov	r1, #1
	bl	_Func_c528
	mov	r0, r9
	ldr	r3, [r0, #4]
	mov	r2, r8
	str	r3, [r2]
	ldr	r3, [r0, #8]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #8]
	mov	r3, #0xc0
	ldr	r1, [r0]
	lsl	r3, #8
	cmp	r1, r3
	bne	.L987e4
	mov	r0, #0xe0
	lsl	r0, #12
	bl	Func_447c
.L987e4:
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #11
	lsl	r5, #1
	add	r5, r0
	bl	Func_4458
	mov	r2, r8
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	mov	r5, r8
	mov	r2, r8
	ldr	r1, [r2]
	ldr	r3, [r5, #8]
	ldr	r2, [r2, #4]
	mov	r0, r6
	bl	_Func_d14c
.L98812:
	mov	r0, #0x83
	bl	_Func_f9080
	mov	r0, #2
	bl	Func_30f8
	mov	r0, #1
	neg	r0, r0
	add	r11, r0
	mov	r2, r11
	cmp	r2, #0
	blt	.L9882c
	b	.L986bc
.L9882c:
	mov	r0, #8
	bl	Func_30f8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_98698

.thumb_func_start Func_98848
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r6, [r3]
	ldr	r7, [r6, #0x14]
	sub	sp, #0x14
	ldr	r5, [r6, #0x10]
	cmp	r7, #0
	beq	.L98936
	bl	Func_97384
	mov	r0, r5
	str	r7, [r5, #0x68]
	ldr	r1, =.L9f0bc
	bl	_Func_c2d8
	ldr	r0, [r6, #4]
	add	r5, sp, #8
	str	r0, [r5]
	mov	r2, #0x80
	ldr	r1, [r6, #8]
	lsl	r2, #13
	add	r1, r2
	str	r1, [r5, #4]
	mov	r3, #0x80
	ldr	r2, [r6, #0xc]
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	str	r2, [r5, #8]
	lsl	r3, #8
	bl	Func_98a84
	ldr	r2, =0xffe00000
	str	r0, [sp]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	add	r0, r2
	mov	r3, #0
	ldr	r2, [r5, #8]
	bl	Func_98a84
	str	r0, [sp, #4]
	mov	r0, #0xf
	mov	r8, sp
	bl	Func_30f8
	mov	r6, r8
	mov	r5, #1
.L988ac:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.L988bc
	mov	r1, #0xe0
	ldrh	r2, [r0, #6]
	lsl	r1, #12
	bl	Func_96bec
.L988bc:
	sub	r5, #1
	cmp	r5, #0
	bge	.L988ac
	ldr	r0, [sp]
	bl	_Func_ca6c
	ldr	r3, =Func_96b88
	mov	r0, #0x82
	str	r3, [r7, #0x6c]
	bl	_Func_f9080
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #4
	ldr	r0, [sp]
	strb	r3, [r2]
	ldr	r5, [r7, #0xc]
	cmp	r0, #0
	beq	.L98926
	mov	r2, r8
	ldr	r3, [r2, #4]
	cmp	r3, #0
	beq	.L98926
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r5, r2
	cmp	r5, r3
	bgt	.L98926
	b	.L988f8
.L988f6:
	ldr	r0, [sp]
.L988f8:
	ldr	r3, [r0, #0xc]
	mov	r1, #0x80
	lsl	r1, #7
	add	r3, r1
	str	r3, [r0, #0xc]
	mov	r3, r8
	ldr	r2, [r3, #4]
	ldr	r3, [r2, #0xc]
	add	r3, r1
	str	r3, [r2, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r1
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0x80
	lsl	r3, #14
	add	r2, r5, r3
	ldr	r3, [r7, #0xc]
	cmp	r3, r2
	ble	.L988f6
	ldr	r0, [sp]
.L98926:
	bl	Func_981b0
	mov	r2, r8
	ldr	r0, [r2, #4]
	bl	Func_981b0
	bl	Func_9748c
.L98936:
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_98848

.thumb_func_start Func_98954
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r10, r3
	bl	Func_97384
	mov	r3, r10
	ldr	r0, [r3, #4]
	add	r5, sp, #8
	str	r0, [r5]
	ldr	r1, [r3, #8]
	mov	r3, #0x80
	lsl	r3, #13
	add	r1, r3
	str	r1, [r5, #4]
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	mov	r3, #0x80
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	str	r2, [r5, #8]
	lsl	r3, #8
	bl	Func_98a84
	ldr	r3, =0xffe00000
	str	r0, [sp]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	add	r0, r3
	ldr	r2, [r5, #8]
	mov	r3, #0
	bl	Func_98a84
	str	r0, [sp, #4]
	mov	r0, #0xf
	mov	r11, sp
	bl	Func_30f8
	mov	r0, #1
	mov	r7, r11
	mov	r8, r0
.L989b6:
	ldmia	r7!, {r6}
	cmp	r6, #0
	beq	.L989c8
	mov	r1, #0xc0
	ldrh	r2, [r6, #6]
	mov	r0, r6
	lsl	r1, #13
	bl	Func_96bec
.L989c8:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.L989b6
	ldr	r0, [sp]
	bl	_Func_ca6c
	mov	r0, #0x86
	bl	_Func_f9080
	mov	r0, #0x80
	mov	r3, #0x17
	lsl	r0, #10
	mov	r7, r5
	mov	r8, r3
	mov	r9, r0
.L989ec:
	mov	r3, r10
	ldr	r1, [r3, #4]
	str	r1, [r7]
	mov	r0, #0x80
	ldr	r2, [r3, #8]
	lsl	r0, #13
	add	r2, r0
	str	r2, [r7, #4]
	ldr	r3, [r3, #0xc]
	ldr	r0, =0x11d
	str	r3, [r7, #8]
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L98a44
	ldr	r1, =.L9f0d4
	bl	_Func_c2d8
	bl	Func_4458
	mov	r3, r9
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	add	r0, r9
	mov	r3, #0
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r5, #3
	add	r5, r0
	bl	Func_4458
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_96bec
.L98a44:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.L989ec
	ldr	r0, [sp]
	bl	_Func_c0f4
	mov	r3, r11
	ldr	r0, [r3, #4]
	bl	_Func_c0f4
	bl	Func_9748c
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_98954

.thumb_func_start Func_98a84
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	mov	r0, #0x8a
	mov	r7, r3
	bl	_Func_f9080
	mov	r1, r5
	mov	r0, #0xd7
	mov	r2, r6
	mov	r3, r8
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L98b02
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #3
	bl	_Func_c300
	mov	r2, #0x80
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L98b00
	ldr	r6, =0x2000
.L98ad8:
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	ldrh	r3, [r5, #6]
	add	r3, r6
	strh	r3, [r5, #6]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xffff
	cmp	r3, r2
	ble	.L98ad8
	b	.L98b00

	.pool_aligned

.L98b00:
	strh	r7, [r5, #6]
.L98b02:
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_98a84

.thumb_func_start Func_98b10
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r1, #0x40
	add	r1, r7
	sub	sp, #0xc
	mov	r10, r3
	mov	r8, r1
.L98b28:
	mov	r2, r8
	mov	r6, #0
	ldrsb	r6, [r2, r6]
	cmp	r6, #0
	bne	.L98b68
	ldr	r3, [r7, #0x14]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0x18]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r1, r0
	lsl	r1, #16
	mov	r0, #0xc8
	lsr	r1, #16
	lsl	r0, #13
	mov	r2, r5
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	b	.L98bd6
.L98b68:
	cmp	r6, #1
	bne	.L98b80
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L98bf4
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L98b28
.L98b80:
	cmp	r6, #2
	bne	.L98be0
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r2, r10
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #12
	mov	r2, r5
	bl	Func_447c
	mov	r0, r5
	bl	Func_974d8
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #4
	mov	r2, r7
	strh	r3, [r7, #0x32]
	add	r2, #0x42
	mov	r3, #1
	strb	r3, [r2]
.L98bd6:
	mov	r1, r8
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	b	.L98bf4
.L98be0:
	cmp	r6, #3
	bne	.L98bf4
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L98bf4
	mov	r0, r7
	bl	Func_9bb34
.L98bf4:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_98b10

.thumb_func_start Func_98c08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x86
	sub	sp, #0xc
	bl	_Func_f9080
	ldr	r1, [r5, #8]
	mov	r6, sp
	str	r1, [r6]
	ldr	r2, [r5, #0xc]
	str	r2, [r6, #4]
	ldr	r4, =0xffe00000
	ldr	r3, [r5, #0x10]
	ldr	r0, =0x11b
	str	r3, [r6, #8]
	add	r2, r4
	bl	Func_96c80
	cmp	r0, #0
	beq	.L98c4a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r2, #9
	mov	r3, #0x14
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	bl	_Func_c2d8
.L98c4a:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r8, r6
	mov	r7, #0xb
	mov	r10, r0
.L98c54:
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r0, =0x11d
	ldr	r3, [r3, #8]
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L98ca0
	ldr	r1, =.L9f0d4
	bl	_Func_c2d8
	bl	Func_4458
	mov	r2, r6
	add	r2, #0x55
	mov	r4, r10
	mov	r3, #0
	add	r0, r10
	str	r4, [r6, #0x34]
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r5, #3
	add	r5, r0
	bl	Func_4458
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_96bec
.L98ca0:
	sub	r7, #1
	cmp	r7, #0
	bge	.L98c54
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_98c08

.thumb_func_start Func_98ccc
	push	{lr}
	bl	Func_98cd8
	pop	{r0}
	bx	r0
.func_end Func_98ccc

.thumb_func_start Func_98cd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, [r3, #0x14]
	sub	sp, #0x2c
	mov	r9, r3
	str	r0, [sp, #8]
	bl	Func_97384
	mov	r0, #0x82
	bl	_Func_f9080
	add	r1, sp, #0x10
	mov	r5, r9
	mov	r10, r1
	mov	r2, #0xb
	add	r5, #0x58
	mov	r6, r10
	mov	r8, r2
.L98d0a:
	mov	r3, r9
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r6]
	mov	r0, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_974d8
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_9ba90
	mov	r0, r5
	ldr	r1, =Func_98b10
	bl	Func_9ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_9ba70
	ldr	r0, [r5]
	mov	r1, #9
	bl	_Func_b684
	ldr	r3, =0xb333
	mov	r0, #2
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	Func_30f8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x48
	cmp	r2, #0
	bge	.L98d0a
	mov	r3, r9
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #12
	mov	r2, r10
	bl	Func_447c
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, #0xd7
	ldr	r3, [r3, #8]
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	bne	.L98db4
	bl	Func_9748c
	b	.L98ff2

	.pool_aligned

.L98db4:
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r0, r9
	ldr	r3, [r0]
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, =0
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r3, r6
	add	r3, #0x55
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #5
	bl	_Func_c300
	mov	r1, #3
	mov	r0, r6
	bl	_Func_c598
	mov	r1, #0x80
	ldr	r3, [r6, #0x18]
	lsl	r1, #9
	cmp	r3, r1
	bge	.L98e0c
	b	.L98df4

	.pool_aligned

.L98df4:
	mov	r2, #0xa0
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6, #0x18]
	ldr	r0, =0xffff
	cmp	r3, r0
	ble	.L98df4
.L98e0c:
	mov	r0, #3
	bl	Func_30f8
	mov	r3, sp
	add	r3, #0x1c
	mov	r1, #0
	mov	r2, #2
	str	r3, [sp, #4]
	mov	r11, r1
	mov	r8, r2
	add	r7, sp, #0x24
.L98e22:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xd7
	bl	Func_96c80
	mov	r5, r0
	str	r0, [r7]
	sub	r7, #4
	cmp	r5, #0
	beq	.L98e70
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, r9
	ldr	r3, [r0]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	mov	r0, r5
	mov	r1, #5
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c598
	mov	r1, r11
	ldr	r0, [r5, #0x50]
	bl	Func_96c48
	mov	r11, r0
.L98e70:
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L98e22
	mov	r3, r9
	mov	r0, r11
	add	r3, #0x20
	ldrb	r0, [r0, #0x1c]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r11, r0
	cmp	r3, #0
	beq	.L98eb8
	mov	r1, r9
	ldr	r2, [r1, #0x10]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0xe0
	ldr	r1, [r2]
	lsl	r0, #14
	mov	r2, r10
	bl	Func_447c
	b	.L98ece
.L98eb8:
	mov	r0, r9
	ldr	r3, [r0, #4]
	mov	r1, r10
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #8]
.L98ece:
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	_Func_d14c
	ldr	r1, =.L9f12c
	mov	r0, r6
	bl	_Func_c2d8
	ldr	r0, [sp, #4]
	mov	r1, #2
	str	r0, [sp]
	mov	r7, r10
	mov	r8, r1
.L98eee:
	ldr	r3, [sp]
	ldmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	cmp	r5, #0
	beq	.L98f14
	mov	r0, #3
	bl	Func_30f8
	ldr	r1, [r7]
	mov	r0, r5
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	_Func_d14c
	mov	r0, r5
	ldr	r1, =.L9f0b4
	bl	_Func_c2d8
.L98f14:
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bge	.L98eee
	ldr	r3, [r6]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.L98f40
.L98f2a:
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0x3b
	bgt	.L98f40
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L98f2a
.L98f40:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.L98fb8
	mov	r3, r9
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L98fb8
	mov	r3, r9
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L98f68
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r1, #0x28]
.L98f68:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #13
	mov	r2, r10
	bl	Func_447c
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	_Func_120dc
	cmp	r0, #0
	bne	.L98fb8
	ldr	r0, [sp, #8]
	mov	r1, r10
	bl	_Func_d924
	cmp	r0, #0
	bne	.L98fb8
	ldr	r0, [sp, #8]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	str	r3, [r0, #0x30]
	mov	r2, r10
	mov	r0, r10
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	ldr	r0, [sp, #8]
	bl	_Func_d14c
.L98fb8:
	ldr	r0, =0x50000005
	add	r2, sp, #0xc
	mov	r1, #4
	bl	Func_8e4b4
	cmp	r0, #0
	beq	.L98fd6
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r1, [r3]
	ldr	r2, [sp, #0xc]
	bl	Func_96b28
.L98fd6:
	mov	r0, #0xa
	bl	Func_30f8
	bl	Func_9748c
	mov	r0, #0x14
	bl	Func_30f8
	mov	r2, r11
	cmp	r2, #0x60
	beq	.L98ff2
	mov	r0, r11
	bl	Func_3f3c
.L98ff2:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_98cd8

.thumb_func_start Func_99018
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.L9902e
	mov	r1, #2
	bl	_Func_c598
	b	.L99038
.L9902e:
	cmp	r2, #2
	bne	.L99038
	mov	r1, #0
	bl	_Func_c598
.L99038:
	pop	{r0}
	bx	r0
.func_end Func_99018

.thumb_func_start Func_99040
	push	{lr}
	cmp	r0, #0
	beq	.L99062
	ldr	r1, =0xfffff000
	ldr	r2, [r0, #0x1c]
	ldr	r3, [r0, #0x18]
	add	r2, r1
	str	r2, [r0, #0x1c]
	mov	r2, #0x80
	add	r3, r1
	lsl	r2, #5
	str	r3, [r0, #0x18]
	cmp	r3, r2
	bgt	.L99062
	ldr	r1, =Data_9f0b0
	bl	_Func_c2d8
.L99062:
	pop	{r0}
	bx	r0
.func_end Func_99040

.thumb_func_start Func_99070
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	cmp	r6, #0
	beq	.L990c0
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L990bc
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #17
	add	r1, r3
	mov	r2, r5
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L990c0
.L990bc:
	ldr	r3, =Func_99040
	str	r3, [r6, #0x6c]
.L990c0:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_99070

.thumb_func_start Func_990cc
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	cmp	r6, #0
	beq	.L9911c
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L99118
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #17
	sub	r1, r3
	mov	r2, r5
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L9911c
.L99118:
	ldr	r3, =Func_99040
	str	r3, [r6, #0x6c]
.L9911c:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_990cc

.thumb_func_start Func_99128
	push	{lr}
	ldr	r3, =iwram_1f30
	ldr	r2, [r3]
	ldr	r1, [r2, #0x14]
	cmp	r1, #0
	beq	.L99156
	mov	r3, r2
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L99148
	add	r2, #0x20
	mov	r3, #1
	strb	r3, [r2]
.L99148:
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	bl	Func_99160
.L99156:
	pop	{r0}
	bx	r0
.func_end Func_99128

.thumb_func_start Func_99160
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	sub	sp, #0x10
	mov	r8, r3
	mov	r9, r2
	bl	Func_97384
	mov	r0, #0x73
	bl	_Func_f9080
	mov	r3, #0xf
	add	r7, sp, #4
	mov	r10, r3
.L99186:
	mov	r0, #0xe8
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L99212
	bl	Func_4458
	mov	r2, #0x80
	lsl	r2, #8
	lsr	r0, #1
	add	r0, r2
	str	r0, [r6, #0x1c]
	str	r0, [r6, #0x18]
	bl	Func_4458
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L991b8
	ldr	r3, =Func_99070
	b	.L991ba
.L991b8:
	ldr	r3, =Func_990cc
.L991ba:
	str	r3, [r6, #0x6c]
	bl	Func_4458
	mov	r2, r6
	add	r2, #0x64
	mov	r3, #0x3c
	strh	r0, [r6, #6]
	strh	r3, [r2]
	bl	Func_4458
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #9
	strh	r0, [r3]
	mov	r0, r6
	bl	_Func_c598
	mov	r2, r8
	ldr	r3, [r2, #4]
	str	r3, [r7]
	ldr	r3, [r2, #8]
	str	r3, [r7, #4]
	ldr	r3, [r2, #0xc]
	str	r3, [r7, #8]
	bl	Func_4458
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #10
	lsl	r5, #2
	add	r5, r3
	bl	Func_4458
	mov	r2, r7
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	ldr	r3, [r7]
	str	r3, [r6, #0x38]
	ldr	r3, [r7, #4]
	str	r3, [r6, #0x3c]
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x40]
.L99212:
	mov	r0, #3
	bl	Func_30f8
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L99186
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0x73
	bl	_Func_f9080
	mov	r0, #0x32
	bl	Func_30f8
	mov	r2, r9
	cmp	r2, #0
	beq	.L992c2
	mov	r3, r8
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L992c2
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r3, #0xf
	mov	r10, r3
.L99254:
	mov	r1, #7
	mov	r0, r9
	bl	_Func_c598
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r9
	mov	r1, #0
	bl	_Func_c598
	mov	r0, #4
	bl	Func_30f8
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L99254
	mov	r3, r8
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L99298
	mov	r0, #0xdc
	bl	_Func_f9080
	mov	r0, r9
	mov	r1, #2
	bl	_Func_c300
.L99298:
	ldr	r3, =Func_99018
	mov	r2, r9
	str	r3, [r2, #0x6c]
	ldr	r0, =0x50000005
	mov	r2, sp
	mov	r1, #6
	bl	Func_8e4b4
	cmp	r0, #0
	beq	.L992bc
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	ldr	r2, [sp]
	bl	Func_96b28
.L992bc:
	mov	r0, #0x14
	bl	Func_30f8
.L992c2:
	bl	Func_9748c
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_99160

.thumb_func_start Func_992f0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	lsl	r0, #9
	bl	Func_2322
	mov	r1, r0
	mov	r0, #0x80
	ldr	r3, =Func_888
	lsl	r0, #11
	.call_via r3
	ldr	r3, [r5, #0x38]
	add	r3, r0
	str	r3, [r5, #8]
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x80
	mov	r3, r2
	cmp	r2, #0
	bge	.L9932e
	mov	r3, r1
	add	r3, #0xff
.L9932e:
	asr	r3, #7
	lsl	r3, #7
	sub	r3, r2, r3
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_992f0

.thumb_func_start Func_99340
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	mov	r6, r0
	sub	sp, #0xc
	ldr	r1, [r3]
	cmp	r6, #0
	beq	.L9939e
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L99396
	ldr	r3, [r1, #4]
	mov	r5, sp
	str	r3, [r5]
	mov	r0, #0xa0
	ldr	r3, [r1, #8]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r1, #0xc]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #16
	add	r1, r3
	mov	r2, r5
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L9939e
.L99396:
	ldr	r1, =Data_9f0b0
	mov	r0, r6
	bl	_Func_c2d8
.L9939e:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_99340

.thumb_func_start Func_993b0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, =iwram_1f30
	mov	r7, r5
	add	r7, #0x64
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r3, #1
	neg	r3, r3
	sub	sp, #0xc
	cmp	r0, r3
	beq	.L99410
	lsl	r0, #10
	bl	Func_2322
	mov	r1, r0
	mov	r0, #0xc0
	ldr	r3, =Func_888
	lsl	r0, #11
	.call_via r3
	ldr	r3, [r6, #4]
	add	r3, r0
	str	r3, [r5, #8]
	mov	r2, #0x80
	ldr	r3, [r6, #8]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0x10]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x40
	mov	r3, r2
	cmp	r2, #0
	bge	.L99408
	mov	r3, r1
	add	r3, #0x7f
.L99408:
	asr	r3, #6
	lsl	r3, #6
	sub	r3, r2, r3
	strh	r3, [r7]
.L99410:
	ldr	r3, =iwram_1e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	Func_b50_from_thumb
	cmp	r0, #0
	bne	.L9949c
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	bl	Func_4458
	lsl	r5, #1
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
	beq	.L9949c
	ldr	r3, =Func_992f0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x9999
	mov	r2, r5
	add	r2, #0x55
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xe5
	lsl	r3, #1
	str	r3, [r5, #0x48]
	bl	Func_4458
	mov	r3, r5
	lsr	r0, #9
	add	r3, #0x64
	strh	r0, [r3]
	ldr	r3, [r5, #8]
	mov	r0, r5
	str	r3, [r5, #0x38]
	mov	r1, #9
	bl	_Func_c598
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #0x48
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Func_c2d8
.L9949c:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_993b0

.thumb_func_start Func_994c0
	push	{lr}
	bl	Func_994d0
	bl	Func_97174
	pop	{r0}
	bx	r0
.func_end Func_994c0

.thumb_func_start Func_994d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r6, [r3, #0x10]
	bl	Func_97384
	mov	r2, #0
	mov	r8, r2
	mov	r7, #0
.L994ec:
	ldr	r2, [r6, #0xc]
	mov	r3, #0x80
	lsl	r3, #14
	add	r2, r3
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xe9
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L9952c
	ldr	r3, =0xb333
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	ldr	r3, =Func_99340
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0x78
	strh	r3, [r2]
	lsl	r3, r7, #13
	add	r2, #2
	strh	r3, [r2]
	sub	r2, #0x11
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, r8
	ldr	r0, [r5, #0x50]
	bl	Func_96c48
	mov	r8, r0
.L9952c:
	mov	r0, #1
	add	r7, #1
	bl	Func_30f8
	cmp	r7, #7
	ble	.L994ec
	mov	r2, r8
	ldrb	r2, [r2, #0x1c]
	mov	r0, #0x82
	mov	r9, r2
	bl	_Func_f9080
	mov	r0, #0x6e
	bl	Func_30f8
	mov	r0, #0xe9
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	Func_96c80
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	beq	.L99588
	ldr	r3, =0xb333
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r2, r10
	ldr	r3, [r2, #4]
	str	r3, [r6, #8]
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	mov	r2, r6
	str	r3, [r6, #0x10]
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #7
	bl	_Func_c598
.L99588:
	mov	r0, #0x83
	bl	_Func_f9080
	mov	r0, #0xc
	bl	Func_30f8
	cmp	r6, #0
	beq	.L995c6
	mov	r3, #3
	mov	r7, #0
	mov	r8, r3
.L9959e:
	mov	r3, r7
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L995b2
	mov	r0, r5
	mov	r1, #9
	bl	_Func_c598
	b	.L995ba
.L995b2:
	mov	r0, r5
	mov	r1, #0xa
	bl	_Func_c598
.L995ba:
	mov	r0, #2
	add	r7, #1
	bl	Func_30f8
	cmp	r7, #0x1d
	ble	.L9959e
.L995c6:
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c598
	mov	r0, #0x54
	bl	_Func_f9080
	cmp	r5, #0
	beq	.L99600
	ldr	r3, =Func_993b0
	mov	r2, r6
	str	r3, [r6, #0x6c]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, r10
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L995fa
	mov	r0, #0x80
	bl	Func_30f8
	b	.L99600
.L995fa:
	mov	r0, #0xc0
	bl	Func_30f8
.L99600:
	cmp	r6, #0
	beq	.L99636
	ldr	r3, =0xffff
	mov	r2, r6
	add	r2, #0x64
	strh	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x30]
	ldr	r3, =0x6666
	sub	r2, #0xa
	str	r3, [r6, #0x34]
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0xc0
	mov	r2, #0xe8
	lsl	r1, #16
	lsl	r2, #8
	mov	r0, r6
	bl	Func_96bec
	mov	r0, r6
	bl	_Func_ca6c
	mov	r0, r6
	bl	_Func_c0f4
.L99636:
	mov	r3, r9
	cmp	r3, #0x60
	beq	.L99642
	mov	r0, r9
	bl	Func_3f3c
.L99642:
	mov	r2, r10
	ldr	r3, [r2, #0x24]
	cmp	r3, #0
	beq	.L9964e
	bl	_call_via_r3
.L9964e:
	bl	Func_9748c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_994d0

.thumb_func_start Func_99678
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r5, =iwram_1ebc
	ldr	r0, [r3]
	ldr	r6, [r5]
	bl	Func_8ba1c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r5, #0x4c
	ldr	r5, [r5]
	cmp	r3, #3
	bne	.L996c8
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L996a8
	ldr	r2, =0x1fffff
	add	r3, r2
.L996a8:
	ldr	r0, [r0, #0x10]
	asr	r2, r3, #21
	mov	r1, #0x1f
	and	r2, r1
	cmp	r0, #0
	bge	.L996b8
	ldr	r3, =0x1fffff
	add	r0, r3
.L996b8:
	asr	r3, r0, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_20000
	lsl	r3, #2
	add	r5, r3, r2
	b	.L99706
.L996c8:
	mov	r2, r0
	add	r2, #0x22
	ldrb	r3, [r2]
	cmp	r3, #2
	bhi	.L996e4
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r3, #4
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r5, r3]
	b	.L996e6
.L996e4:
	ldr	r5, =ewram_10000
.L996e6:
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L996f0
	ldr	r2, =0xfffff
	add	r3, r2
.L996f0:
	ldr	r0, [r0, #0x10]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L996fc
	ldr	r3, =0xfffff
	add	r0, r3
.L996fc:
	asr	r3, r0, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r5, r3
.L99706:
	ldrb	r3, [r5, #2]
	cmp	r3, #0xfb
	beq	.L99716
	mov	r3, #0xbf
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, =0x2092
	strh	r3, [r2]
.L99716:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_99678

.thumb_func_start Func_99738
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	ldr	r2, [r6, #0x28]
	mov	r0, #0x9a
	mov	r10, r2
	bl	_Func_f9080
	ldr	r0, =Func_99678
	bl	Func_4278
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c300
	mov	r3, #0
	str	r3, [r5, #0x6c]
	mov	r3, #0x25
	add	r3, r6
	add	r6, #0x26
	mov	r9, r6
	mov	r11, r3
	mov	r1, #1
	mov	r7, #0
	mov	r6, r11
	mov	r8, r1
	mov	r5, r9
.L99788:
	mov	r2, #7
	mov	r3, r10
	strb	r2, [r3, #5]
	mov	r1, r8
	mov	r3, #2
	strb	r1, [r6]
	mov	r0, #2
	strb	r3, [r5]
	bl	Func_30f8
	mov	r2, r8
	mov	r3, #0
	strb	r2, [r6]
	mov	r0, #2
	strb	r3, [r5]
	add	r7, #1
	bl	Func_30f8
	cmp	r7, #4
	bls	.L99788
	mov	r1, #0
	mov	r2, #7
	mov	r5, r11
	mov	r7, #0
	mov	r8, r1
	mov	r6, #1
	mov	r11, r2
.L997be:
	mov	r1, r10
	mov	r3, r11
	strb	r3, [r1, #5]
	mov	r2, r8
	mov	r3, r9
	strb	r6, [r5]
	mov	r0, #2
	strb	r2, [r3]
	bl	Func_30f8
	mov	r1, r8
	mov	r2, r10
	strb	r1, [r2, #5]
	strb	r6, [r5]
	mov	r0, #2
	add	r7, #1
	bl	Func_30f8
	cmp	r7, #4
	bls	.L997be
	mov	r1, r9
	mov	r3, #1
	strb	r3, [r1]
	ldr	r3, =ewram_240
	mov	r1, #0x93
	lsl	r1, #2
	mov	r2, #0
	add	r3, r1
	strh	r2, [r3]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_99738

.thumb_func_start Func_99810
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L9982c
	mov	r1, #0xc8
	ldr	r0, =Func_99678
	lsl	r1, #4
	bl	Func_41d8
.L9982c:
	pop	{r0}
	bx	r0
.func_end Func_99810

.thumb_func_start Func_99838
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	sub	sp, #8
	str	r3, [sp, #4]
	mov	r2, #0xfa
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	ldr	r3, [r6, #0x28]
	mov	r0, #0x82
	mov	r9, r3
	bl	_Func_f9080
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c300
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x25
	add	r6, #0x26
	str	r3, [r5, #0x6c]
	mov	r11, r6
	mov	r8, r3
	str	r2, [sp]
	mov	r3, #1
	mov	r6, r2
	mov	r10, r3
	mov	r5, r11
.L9988a:
	mov	r3, r9
	mov	r2, #7
	strb	r2, [r3, #5]
	mov	r7, #2
	mov	r2, r10
	strb	r2, [r6]
	mov	r0, #2
	strb	r7, [r5]
	bl	Func_30f8
	mov	r3, r10
	mov	r2, #0
	strb	r3, [r6]
	mov	r0, #2
	strb	r2, [r5]
	bl	Func_30f8
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #9
	bls	.L9988a
	mov	r3, #0
	mov	r8, r3
	mov	r2, r8
	mov	r3, r9
	strb	r2, [r3, #5]
	mov	r2, r11
	strb	r7, [r2]
	ldr	r3, [sp]
	ldr	r5, =Func_99678
	mov	r6, #1
	mov	r1, #0xc8
	strb	r6, [r3]
	lsl	r1, #4
	mov	r0, r5
	bl	Func_41d8
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	strh	r6, [r3]
	bl	_call_via_r5
	mov	r2, #0xbf
	ldr	r3, [sp, #4]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	ldr	r2, =0x2092
	cmp	r3, r2
	bne	.L998fe
	bl	Func_99738
	mov	r3, r8
	strh	r3, [r5]
.L998fe:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_99838

.thumb_func_start Func_99920
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	cmp	r2, r3
	bgt	.L9999a
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #2
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	bl	_Func_c2d8
	mov	r5, #0
	mov	r7, #0
	str	r5, [r6, #0x6c]
	b	.L99984
.L99942:
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r5
	add	r2, #0x55
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x28]
	bl	Func_4458
	ldr	r3, =0x13333
	add	r0, r3
	str	r0, [r5, #0x30]
	bl	Func_4458
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r5
	bl	Func_96bec
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #6
	strh	r3, [r2]
	mov	r0, r5
	ldr	r1, =Data_9f0b0
	bl	_Func_c2d8
	add	r7, #1
.L99984:
	cmp	r7, #2
	bgt	.L9999a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xf0
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	bne	.L99942
.L9999a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_99920

.thumb_func_start Func_999a8
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r2, =0xffffb334
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	ldr	r3, [r6, #8]
	sub	r5, r0
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	cmp	r2, r3
	bgt	.L999d6
	ldr	r1, =Data_9f0b0
	mov	r0, r6
	bl	_Func_c2d8
.L999d6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_999a8

.thumb_func_start Func_999e4
	push	{lr}
	bl	Func_999f0
	pop	{r0}
	bx	r0
.func_end Func_999e4

.thumb_func_start Func_999f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r6, [r3]
	ldr	r0, [r6, #0x10]
	mov	r1, #0
	mov	r10, r0
	mov	r2, #0
	mov	r0, #0xef
	mov	r3, #0
	sub	sp, #0x2c
	mov	r8, r1
	bl	Func_96c80
	mov	r7, r0
	cmp	r7, #0
	bne	.L99a1e
	b	.L99cf0
.L99a1e:
	bl	Func_97384
	mov	r0, #0x8a
	bl	_Func_f9080
	ldr	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L99a52
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r6, #0xc]
	mov	r5, r6
	ldmia	r5!, {r1}
	mov	r0, #0x80
	lsl	r0, #13
	mov	r2, r5
	bl	Func_447c
	ldr	r1, [r5]
	ldr	r2, [r6, #0xc]
	mov	r0, #0
	bl	_Func_11f54
	str	r0, [r6, #8]
.L99a52:
	mov	r3, sp
	add	r3, #0x14
	str	r3, [sp, #4]
	mov	r0, r10
	ldr	r1, [sp, #4]
	ldr	r3, [r0, #8]
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	add	r3, sp, #8
	mov	r11, r3
	ldr	r3, [r6, #4]
	mov	r0, r11
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r2, [r6, #8]
	lsl	r1, #14
	add	r3, r2, r1
	str	r3, [r0, #4]
	ldr	r3, [r6, #0xc]
	str	r3, [r0, #8]
	mov	r3, r6
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L99a9e
	mov	r0, #0xa0
	lsl	r0, #15
	add	r3, r2, r0
	mov	r1, r11
	str	r3, [r1, #4]
.L99a9e:
	ldr	r2, [sp, #4]
	mov	r10, r11
	mov	r9, r2
.L99aa4:
	mov	r0, r10
	mov	r1, r9
	ldr	r5, [r1]
	ldr	r3, [r0]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #8]
	mov	r2, r10
	mov	r0, r9
	ldr	r3, [r2, #4]
	ldr	r5, [r0, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r9
	mov	r1, r10
	ldr	r5, [r2, #8]
	ldr	r3, [r1, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r3, #0xc0
	lsl	r3, #8
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r8
	mul	r0, r3
	str	r5, [r7, #0x10]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	add	r0, r3
	str	r0, [r7, #0x18]
	str	r0, [r7, #0x1c]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0xb
	blt	.L99aa4
	mov	r0, #0xa
	bl	Func_30f8
	mov	r3, r6
	add	r3, #0x45
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L99bd4
	mov	r3, r6
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0xa
	mov	r9, r2
	cmp	r3, #0
	bne	.L99b3e
	mov	r3, #0x18
	mov	r9, r3
.L99b3e:
	mov	r0, #0
	mov	r8, r0
	cmp	r8, r9
	bge	.L99bcc
	mov	r1, r9
	sub	r1, #1
	add	r6, sp, #0x20
	str	r1, [sp]
	mov	r10, r6
.L99b50:
	ldr	r3, [r7, #8]
	mov	r2, r10
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r2, #8]
	bl	Func_4458
	mov	r3, #0xc0
	lsl	r5, r0, #2
	lsl	r3, #10
	add	r5, r0
	add	r5, r3
	bl	Func_4458
	mov	r2, r10
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	ldr	r0, [sp]
	cmp	r8, r0
	bne	.L99b92
	mov	r0, #0x19
	bl	Func_30f8
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #8]
.L99b92:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	mov	r0, #0xf0
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L99bb8
	ldr	r3, [r6, #4]
	ldr	r1, =0xffe00000
	add	r3, r1
	str	r3, [r5, #0x14]
	ldr	r3, =Func_99920
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.L99bb8:
	mov	r0, #0x84
	bl	_Func_f9080
	mov	r0, #6
	bl	Func_30f8
	mov	r2, #1
	add	r8, r2
	cmp	r8, r9
	blt	.L99b50
.L99bcc:
	mov	r0, #0xa
	bl	Func_30f8
	b	.L99c76
.L99bd4:
	mov	r3, r6
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, #0xa
	mov	r9, r0
	cmp	r3, #0
	bne	.L99bea
	mov	r1, #0x1e
	mov	r9, r1
.L99bea:
	mov	r2, r9
	cmp	r2, #0
	beq	.L99c70
	add	r6, sp, #0x20
	mov	r8, r9
.L99bf4:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	mov	r3, #0xc0
	lsl	r5, r0, #2
	lsl	r3, #10
	add	r5, r0
	add	r5, r3
	bl	Func_4458
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	mov	r0, #0x8e
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	lsl	r0, #1
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L99c5e
	ldr	r3, =Func_999a8
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #8
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r0, r5
	mov	r1, #8
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #7
	bl	_Func_c598
.L99c5e:
	mov	r0, #6
	bl	Func_30f8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L99bf4
.L99c70:
	mov	r0, #0x46
	bl	Func_30f8
.L99c76:
	mov	r3, #0
	ldr	r6, [sp, #4]
	mov	r8, r3
	mov	r10, r11
.L99c7e:
	mov	r0, r10
	ldr	r5, [r0]
	ldr	r3, [r6]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #8]
	mov	r1, r10
	ldr	r5, [r1, #4]
	ldr	r3, [r6, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r3, [r6, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	ldr	r3, =0xffff4000
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r8
	mul	r0, r3
	str	r5, [r7, #0x10]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r7, #0x18]
	str	r0, [r7, #0x1c]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0xb
	blt	.L99c7e
	mov	r0, r7
	bl	_Func_c0f4
	bl	Func_9748c
.L99cf0:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_999f0

.thumb_func_start Func_99d18
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r5, [r3, #0x14]
	sub	sp, #0xc
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	bl	Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #4
	mov	r2, #0xc0
	lsl	r2, #13
	sub	r3, r0
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
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
	beq	.L99d8a
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x1999
	mov	r1, #0
	str	r3, [r5, #0x48]
	bl	_Func_c300
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #0xc
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Func_c2d8
.L99d8a:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_99d18

.thumb_func_start Func_99da4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, [r3, #0x10]
	sub	sp, #0x7c
	str	r0, [sp, #0x1c]
	ldr	r7, [r3, #0x14]
	mov	r11, r3
	cmp	r7, #0
	bne	.L99dc6
	b	.L9a268
.L99dc6:
	bl	Func_97384
	ldr	r1, [sp, #0x1c]
	str	r7, [r1, #0x68]
	ldr	r0, [sp, #0x1c]
	ldr	r1, =.L9f0bc
	bl	_Func_c2d8
	mov	r3, r11
	ldr	r0, [r3, #4]
	add	r2, sp, #0x20
	str	r0, [r2]
	mov	r10, r2
	ldr	r1, [r3, #8]
	mov	r2, #0x80
	lsl	r2, #13
	add	r1, r2
	mov	r3, r10
	str	r1, [r3, #4]
	mov	r3, r11
	ldr	r2, [r3, #0xc]
	mov	r3, r10
	str	r2, [r3, #8]
	mov	r3, #0x80
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #8
	bl	Func_9a3c4
	mov	r1, r10
	mov	r6, r0
	ldr	r2, =0xffe00000
	ldr	r0, [r1]
	mov	r3, r10
	add	r0, r2
	ldr	r1, [r1, #4]
	ldr	r2, [r3, #8]
	mov	r3, #0
	str	r6, [sp, #0x14]
	bl	Func_9a3c4
	mov	r5, r0
	ldr	r0, [sp, #0x14]
	str	r5, [sp, #0x18]
	cmp	r0, #0
	beq	.L99e28
	cmp	r5, #0
	bne	.L99e2e
.L99e28:
	bl	Func_9748c
	b	.L9a268
.L99e2e:
	mov	r0, #0xf
	bl	Func_30f8
	ldr	r1, [r7, #8]
	mov	r2, r10
	str	r1, [r2]
	ldr	r2, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r3
	mov	r0, r10
	str	r2, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	mov	r0, #0x80
	lsl	r0, #13
	add	r1, r0
	mov	r0, r6
	bl	_Func_d14c
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, =0xfff00000
	mov	r0, r10
	add	r1, r3
	ldr	r2, [r2, #4]
	ldr	r3, [r0, #8]
	mov	r0, r5
	bl	_Func_d14c
	mov	r0, r6
	bl	_Func_ca6c
	mov	r0, r5
	bl	_Func_ca6c
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	mov	r2, #0
	str	r2, [r6, #0x24]
	str	r3, [r6, #8]
	ldr	r0, =0xfff00000
	ldr	r3, [r1]
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, =Func_96b88
	mov	r1, #0xc8
	str	r2, [r5, #0x24]
	str	r3, [r7, #0x6c]
	lsl	r1, #4
	ldr	r0, =Func_99d18
	bl	Func_41d8
	mov	r0, #0x82
	bl	_Func_f9080
	mov	r1, r7
	add	r1, #0x55
	mov	r3, #4
	str	r1, [sp, #0x10]
	mov	r0, r7
	strb	r3, [r1]
	mov	r1, #0
	bl	_Func_c528
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.L99efe
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.L99efe
	ldr	r3, [r7, #0xc]
	ldr	r2, [r7, #0x14]
	mov	r0, #0xc0
	sub	r3, r2
	lsl	r0, #13
	cmp	r3, r0
	bgt	.L99efe
	mov	r1, #0xc0
	lsl	r1, #7
.L99ed4:
	ldr	r3, [r6, #0xc]
	add	r3, r1
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r5, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r1
	str	r3, [r7, #0xc]
	mov	r0, #1
	str	r1, [sp]
	bl	Func_30f8
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0xc]
	sub	r3, r2
	mov	r2, #0xc0
	lsl	r2, #13
	ldr	r1, [sp]
	cmp	r3, r2
	ble	.L99ed4
.L99efe:
	ldr	r3, [sp, #0x14]
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #8
	ldr	r0, [sp, #0x18]
	str	r1, [r3, #0x30]
	str	r2, [r3, #0x34]
	ldr	r3, =0x6666
	str	r1, [r0, #0x30]
	str	r2, [r0, #0x34]
	mov	r1, r7
	ldr	r2, =0x3333
	str	r3, [r7, #0x30]
	add	r1, #0x5a
	mov	r3, #0
	str	r2, [r7, #0x34]
	strb	r3, [r1]
	mov	r3, r7
	add	r3, #0x22
	str	r3, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r3, #2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #13
	mov	r5, r10
	mov	r9, r3
	str	r0, [sp, #8]
	b	.L9a0e8
.L99f3a:
	ldr	r3, =iwram_1ae8
	ldr	r0, [r3]
	bl	Func_97b54
	lsl	r0, #16
	lsr	r6, r0, #16
	ldr	r0, =0xffff
	cmp	r6, r0
	bne	.L99f84
	ldr	r1, [r7, #8]
	str	r1, [r5]
	ldr	r2, [r7, #0xc]
	add	r2, r9
	str	r2, [r5, #4]
	ldr	r3, [r7, #0x10]
	ldr	r0, [sp, #0x14]
	str	r3, [r5, #8]
	add	r1, r9
	bl	_Func_d14c
	ldr	r1, [r5]
	ldr	r2, =0xfff00000
	ldr	r0, [sp, #0x18]
	add	r1, r2
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #4]
	bl	_Func_d14c
	ldr	r0, [sp, #0x14]
	mov	r1, #1
	bl	_Func_c300
	ldr	r0, [sp, #0x18]
	mov	r1, #1
	bl	_Func_c300
	b	.L9a0e8
.L99f84:
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	add	r3, r9
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x80
	str	r3, [r5, #8]
	lsl	r0, #10
	mov	r1, r6
	mov	r2, r5
	bl	Func_447c
	ldr	r1, [r5]
	ldr	r0, [sp, #0x14]
	add	r1, r9
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	_Func_d14c
	ldr	r1, [r5]
	ldr	r3, =0xfff00000
	ldr	r0, [sp, #0x18]
	add	r1, r3
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	_Func_d14c
	ldr	r0, [sp, #0x14]
	bl	_Func_ca6c
	ldr	r0, [sp, #0x18]
	bl	_Func_ca6c
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0x14]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r9
	str	r3, [r5, #8]
	mov	r1, r6
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	_Func_d924
	mov	r8, r0
	cmp	r0, #0
	bne	.L9a00a
	ldr	r3, [r7, #0x14]
	mov	r0, #0x80
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #0x14]
	mov	r1, r10
	mov	r0, r7
	bl	_Func_120dc
	ldr	r3, [r7, #0x14]
	ldr	r1, =0xfff00000
	add	r3, r1
	str	r3, [r7, #0x14]
	cmp	r0, #0
	ble	.L9a02e
.L9a00a:
	ldr	r0, [sp, #0x14]
	mov	r1, #4
	bl	_Func_c300
	ldr	r0, [sp, #0x18]
	mov	r1, #4
	bl	_Func_c300
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L9a0e8
	mov	r0, #0x72
	bl	_Func_f9080
	b	.L9a0e8
.L9a02e:
	mov	r0, #0xaf
	bl	_Func_f9080
	ldr	r0, [sp, #0x14]
	mov	r2, r10
	mov	r1, #4
	ldr	r5, [r2]
	ldr	r6, [r2, #8]
	bl	_Func_c300
	ldr	r0, [sp, #0x18]
	mov	r1, #4
	bl	_Func_c300
	mov	r0, #0xf
	bl	Func_30f8
	ldr	r1, =0x3333
	mov	r3, r7
	add	r3, #0x5b
	mov	r0, r8
	strb	r0, [r3]
	str	r1, [r7, #0x30]
	str	r1, [r7, #0x34]
	mov	r2, r10
	mov	r0, r10
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r7
	bl	_Func_d14c
	ldr	r3, [sp, #0x14]
	ldr	r1, =0x3333
	str	r1, [r3, #0x30]
	str	r1, [r3, #0x34]
	ldr	r2, [sp, #8]
	str	r1, [r2, #0x30]
	str	r1, [r2, #0x34]
	mov	r3, r10
	ldr	r1, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r1, r0
	ldr	r2, [r3, #4]
	ldr	r0, [sp, #0x14]
	ldr	r3, [r3, #8]
	bl	_Func_d14c
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, =0xfff00000
	mov	r0, r10
	add	r1, r3
	ldr	r2, [r2, #4]
	ldr	r3, [r0, #8]
	ldr	r0, [sp, #8]
	bl	_Func_d14c
	mov	r0, r7
	bl	_Func_ca6c
	mov	r1, r8
	str	r5, [r7, #8]
	str	r6, [r7, #0x10]
	str	r1, [r7, #0x24]
	str	r1, [r7, #0x2c]
	mov	r0, #0xa
	bl	Func_30f8
	b	.L9a0fc

	.pool_aligned

.L9a0e8:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =iwram_1c94
	ldr	r2, [r3]
	ldr	r3, =0x303
	and	r2, r3
	cmp	r2, #0
	bne	.L9a0fc
	b	.L99f3a
.L9a0fc:
	ldr	r0, [sp, #0x14]
	mov	r1, #4
	bl	_Func_c300
	ldr	r0, [sp, #0x18]
	mov	r1, #4
	bl	_Func_c300
	ldr	r0, =Func_99d18
	bl	Func_4278
	mov	r0, #0x87
	bl	_Func_f9080
	mov	r0, #0xf
	bl	Func_30f8
	mov	r0, #0x87
	bl	_Func_f9080
	mov	r0, #0xf
	bl	Func_30f8
	ldr	r3, [r7, #8]
	mov	r2, r10
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	lsl	r0, #13
	add	r3, r0
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, sp
	str	r3, [r2, #8]
	add	r1, #0x2c
	mov	r2, #0x80
	lsl	r2, #10
	mov	r3, #0x13
	str	r1, [sp, #4]
	mov	r9, r2
	mov	r8, r3
.L9a14e:
	mov	r0, r10
	ldr	r1, [r0]
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #8]
	ldr	r0, =0x11d
	bl	Func_96c80
	ldr	r2, [sp, #4]
	mov	r6, r0
	stmia	r2!, {r6}
	mov	r1, r2
	str	r1, [sp, #4]
	cmp	r6, #0
	beq	.L9a1a2
	ldr	r1, =.L9f0d4
	bl	_Func_c2d8
	bl	Func_4458
	mov	r3, r9
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	add	r0, r9
	mov	r3, #0
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r5, #3
	add	r5, r0
	bl	Func_4458
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_96bec
.L9a1a2:
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bge	.L9a14e
	mov	r0, #0x83
	bl	_Func_f9080
	ldr	r0, [sp, #0x14]
	bl	_Func_c0f4
	ldr	r0, [sp, #0x18]
	bl	_Func_c0f4
	mov	r3, r11
	add	r3, #0x44
	ldrb	r1, [r3]
	mov	r0, r7
	bl	_Func_c598
	mov	r3, r11
	ldr	r1, [r3, #0x3c]
	mov	r0, r7
	bl	_Func_c2d8
	mov	r0, r11
	ldr	r3, [r0, #0x38]
	str	r3, [r7, #0x6c]
	ldr	r1, [sp, #0x10]
	mov	r3, #3
	strb	r3, [r1]
	mov	r3, #0xa0
	lsl	r3, #12
	str	r3, [r7, #0x28]
	ldr	r3, =0x3333
	str	r3, [r7, #0x44]
	ldr	r3, [sp, #0xc]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, [sp, #0x1c]
	str	r2, [r0, #0x6c]
	ldr	r0, [sp, #0x1c]
	mov	r1, #0
	bl	_Func_c598
	mov	r3, r11
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9a264
	ldr	r3, [r7, #0x28]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	blt	.L9a22c
.L9a216:
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x59
	bgt	.L9a22c
	ldr	r3, [r7, #0x28]
	cmp	r3, #0
	bge	.L9a216
.L9a22c:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r7, #0x28]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	bge	.L9a252
.L9a23c:
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x59
	bgt	.L9a252
	ldr	r3, [r7, #0x28]
	cmp	r3, #0
	blt	.L9a23c
.L9a252:
	mov	r0, r7
	bl	Func_9a6b8
	bl	Func_9748c
	mov	r0, #0x1e
	bl	Func_30f8
	b	.L9a268
.L9a264:
	bl	Func_9748c
.L9a268:
	add	sp, #0x7c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_99da4

.thumb_func_start Func_9a294
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r10, r3
	bl	Func_97384
	mov	r3, r10
	ldr	r0, [r3, #4]
	add	r5, sp, #8
	str	r0, [r5]
	ldr	r1, [r3, #8]
	mov	r3, #0x80
	lsl	r3, #13
	add	r1, r3
	str	r1, [r5, #4]
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	mov	r3, #0x80
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	str	r2, [r5, #8]
	lsl	r3, #8
	bl	Func_9a3c4
	ldr	r3, =0xffe00000
	str	r0, [sp]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	add	r0, r3
	ldr	r2, [r5, #8]
	mov	r3, #0
	bl	Func_9a3c4
	str	r0, [sp, #4]
	mov	r0, #0xf
	mov	r11, sp
	bl	Func_30f8
	mov	r0, #1
	mov	r7, r11
	mov	r8, r0
.L9a2f6:
	ldmia	r7!, {r6}
	cmp	r6, #0
	beq	.L9a308
	mov	r1, #0xc0
	ldrh	r2, [r6, #6]
	mov	r0, r6
	lsl	r1, #13
	bl	Func_96bec
.L9a308:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.L9a2f6
	ldr	r0, [sp]
	bl	_Func_ca6c
	mov	r0, #0x86
	bl	_Func_f9080
	mov	r0, #0x80
	mov	r3, #0x17
	lsl	r0, #10
	mov	r7, r5
	mov	r8, r3
	mov	r9, r0
.L9a32c:
	mov	r3, r10
	ldr	r1, [r3, #4]
	str	r1, [r7]
	mov	r0, #0x80
	ldr	r2, [r3, #8]
	lsl	r0, #13
	add	r2, r0
	str	r2, [r7, #4]
	ldr	r3, [r3, #0xc]
	ldr	r0, =0x11d
	str	r3, [r7, #8]
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L9a384
	ldr	r1, =.L9f0d4
	bl	_Func_c2d8
	bl	Func_4458
	mov	r3, r9
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	add	r0, r9
	mov	r3, #0
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r5, #3
	add	r5, r0
	bl	Func_4458
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_96bec
.L9a384:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.L9a32c
	ldr	r0, [sp]
	bl	_Func_c0f4
	mov	r3, r11
	ldr	r0, [r3, #4]
	bl	_Func_c0f4
	bl	Func_9748c
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9a294

.thumb_func_start Func_9a3c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	mov	r0, #0x8a
	mov	r7, r3
	bl	_Func_f9080
	mov	r1, r5
	mov	r0, #0xd7
	mov	r2, r6
	mov	r3, r8
	bl	Func_96c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L9a43e
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, r5
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	add	r2, #0x5a
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #1
	bl	_Func_c300
	mov	r2, #0x80
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L9a43c
	ldr	r6, =0x2000
.L9a414:
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	ldrh	r3, [r5, #6]
	add	r3, r6
	strh	r3, [r5, #6]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xffff
	cmp	r3, r2
	ble	.L9a414
	b	.L9a43c
	.pool_aligned

.L9a43c:
	strh	r7, [r5, #6]
.L9a43e:
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_9a3c4

	.section .rodata

.L9f0b4:
	.incrom 0x9f0b4, 0x9f0bc
.L9f0bc:
	.incrom 0x9f0bc, 0x9f0d4
.L9f0d4:
	.incrom 0x9f0d4, 0x9f0f8
.L9f0f8:
	.incrom 0x9f0f8, 0x9f118
.L9f118:
	.incrom 0x9f118, 0x9f11c
.L9f11c:
	.incrom 0x9f11c, 0x9f12c
.L9f12c:
	.incrom 0x9f12c, 0x9f160
