	.include "macros.inc"

.thumb_func_start Func_10424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r4, r3
	mov	r11, r2
	lsl	r1, #7
	lsl	r3, r4, #7
	ldr	r2, =ewram_10000
	add	r1, r0
	add	r3, r11
	lsl	r1, #2
	lsl	r3, #2
	sub	sp, #0x24
	add	r3, r2
	add	r1, r2
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	ldr	r3, =iwram_1e70
	mov	r0, #0x82
	ldr	r3, [r3]
	lsl	r0, #1
	add	r2, r3, r0
	add	r0, sp, #0xc
	mov	r9, r0
	mov	r6, #2
.L1045e:
	ldr	r3, [r2]
	asr	r3, #20
	str	r3, [r0]
	ldr	r3, [r2, #4]
	sub	r6, #1
	asr	r3, #20
	str	r3, [r0, #4]
	add	r2, #0x30
	add	r0, #8
	cmp	r6, #0
	bge	.L1045e
	ldr	r3, [sp, #0x48]
	mov	r7, r4
	add	r3, r7, r3
	cmp	r7, r3
	bcs	.L1052c
	ldr	r1, [sp, #0x44]
	str	r3, [sp]
	mov	r3, #0x80
	sub	r3, r1
	lsl	r3, #2
	mov	r8, r3
.L1048a:
	ldr	r2, [sp, #0x44]
	mov	r1, r11
	add	r3, r1, r2
	cmp	r1, r3
	bcs	.L10518
	mov	r12, r7
	mov	r4, r12
	mov	r14, r3
	mov	r3, #0xf
	and	r4, r3
	mov	r10, r3
	mov	r12, r4
.L104a2:
	ldr	r2, [sp, #8]
	ldmia	r2!, {r5}
	mov	r0, r2
	ldr	r4, [sp, #4]
	str	r0, [sp, #8]
	ldr	r3, =0xfff
	ldr	r2, =0xfffff000
	and	r5, r3
	ldr	r3, [r4]
	and	r3, r2
	orr	r3, r5
	stmia	r4!, {r3}
	mov	r2, r1
	mov	r0, r4
	mov	r3, r10
	mov	r4, r12
	and	r2, r3
	lsl	r3, r4, #5
	add	r3, r2
	str	r0, [sp, #4]
	mov	r6, #0
	mov	r0, r9
	lsl	r4, r3, #2
.L104d0:
	ldr	r3, [r0]
	cmp	r3, r1
	bgt	.L10504
	add	r3, #0x10
	cmp	r3, r1
	ble	.L10504
	ldr	r3, [r0, #4]
	cmp	r3, r7
	bgt	.L10504
	add	r3, #0xc
	cmp	r3, r7
	ble	.L10504
	lsl	r3, r5, #3
	ldr	r2, =0x6002800
	ldr	r5, =ewram_20000
	add	r0, r4, r2
	add	r2, r3, r5
	ldr	r2, [r2]
	str	r2, [r0]
	ldr	r0, =ewram_20004
	add	r2, r3, r0
	ldr	r3, =0x6002840
	add	r0, r4, r3
	ldr	r3, [r2]
	str	r3, [r0]
	b	.L10512
.L10504:
	mov	r2, #0x80
	lsl	r2, #4
	add	r6, #1
	add	r4, r2
	add	r0, #8
	cmp	r6, #2
	ble	.L104d0
.L10512:
	add	r1, #1
	cmp	r1, r14
	bcc	.L104a2
.L10518:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	ldr	r5, [sp]
	add	r3, r8
	add	r4, r8
	add	r7, #1
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	cmp	r7, r5
	bcc	.L1048a
.L1052c:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10424

.thumb_func_start Func_10560
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r0, [r7]
	ldr	r3, =0xffff
	mov	r12, r0
	sub	sp, #8
	mov	r10, r1
	mov	r8, r2
	cmp	r12, r3
	beq	.L105be
	mov	r9, r3
	add	r6, r7, #2
.L10580:
	mov	r2, #0
	ldrsh	r1, [r6, r2]
	mov	r4, #2
	ldrsh	r3, [r6, r4]
	mov	r4, #4
	ldrsh	r2, [r6, r4]
	mov	r4, #6
	ldrsh	r5, [r6, r4]
	lsl	r3, #16
	lsl	r2, #16
	lsr	r3, #16
	lsr	r2, #16
	lsl	r1, #16
	lsl	r5, #16
	str	r3, [sp]
	str	r2, [sp, #4]
	lsr	r1, #16
	mov	r2, r10
	mov	r3, r8
	lsr	r5, #16
	bl	Func_10424
	add	r7, #0xa
	mov	r0, r5
	bl	Func_30f8
	ldrh	r0, [r7]
	mov	r12, r0
	add	r6, #0xa
	cmp	r12, r9
	bne	.L10580
.L105be:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10560

.thumb_func_start Func_105d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	ldr	r6, [sp, #0x48]
	lsl	r1, #7
	add	r1, r0
	ldr	r0, [sp, #0x44]
	mov	r4, r3
	lsl	r3, r6, #7
	add	r3, r0
	mov	r11, r2
	ldr	r2, =ewram_10000
	lsl	r1, #2
	lsl	r3, #2
	add	r1, r2
	add	r3, r2
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1e70
	mov	r1, #0x82
	ldr	r3, [r3]
	lsl	r1, #1
	add	r0, sp, #0xc
	add	r2, r3, r1
	mov	r9, r0
	mov	r5, #2
.L10612:
	ldr	r3, [r2]
	asr	r3, #20
	str	r3, [r0]
	ldr	r3, [r2, #4]
	sub	r5, #1
	asr	r3, #20
	str	r3, [r0, #4]
	add	r2, #0x30
	add	r0, #8
	cmp	r5, #0
	bge	.L10612
	add	r3, r6, r4
	cmp	r6, r3
	bge	.L106d4
	str	r3, [sp]
	mov	r2, r11
	mov	r3, #0x80
	sub	r3, r2
	lsl	r3, #2
	mov	r8, r3
.L1063a:
	ldr	r1, [sp, #0x44]
	mov	r4, r11
	add	r3, r1, r4
	cmp	r1, r3
	bge	.L106c0
	mov	r12, r6
	mov	r5, #0xf
	mov	r0, r12
	and	r0, r5
	mov	r14, r3
	mov	r10, r5
	mov	r12, r0
.L10652:
	ldr	r4, [sp, #8]
	ldmia	r4!, {r3}
	ldr	r0, [sp, #4]
	ldr	r7, =0xfff
	mov	r2, r4
	str	r2, [sp, #8]
	mov	r4, r12
	stmia	r0!, {r3}
	and	r7, r3
	mov	r2, r1
	mov	r3, r10
	and	r2, r3
	lsl	r3, r4, #5
	mov	r5, r0
	add	r3, r2
	str	r5, [sp, #4]
	mov	r0, r9
	mov	r5, #0
	lsl	r4, r3, #2
.L10678:
	ldr	r3, [r0]
	cmp	r3, r1
	bgt	.L106ac
	add	r3, #0x10
	cmp	r3, r1
	ble	.L106ac
	ldr	r3, [r0, #4]
	cmp	r3, r6
	bgt	.L106ac
	add	r3, #0xc
	cmp	r3, r6
	ble	.L106ac
	ldr	r5, =0x6002800
	add	r0, r4, r5
	ldr	r5, =ewram_20000
	lsl	r3, r7, #3
	add	r2, r3, r5
	ldr	r2, [r2]
	str	r2, [r0]
	ldr	r0, =ewram_20004
	add	r2, r3, r0
	ldr	r3, =0x6002840
	add	r0, r4, r3
	ldr	r3, [r2]
	str	r3, [r0]
	b	.L106ba
.L106ac:
	mov	r2, #0x80
	lsl	r2, #4
	add	r5, #1
	add	r4, r2
	add	r0, #8
	cmp	r5, #2
	ble	.L10678
.L106ba:
	add	r1, #1
	cmp	r1, r14
	blt	.L10652
.L106c0:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	ldr	r5, [sp]
	add	r3, r8
	add	r4, r8
	add	r6, #1
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	cmp	r6, r5
	blt	.L1063a
.L106d4:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_105d4

.thumb_func_start Func_10704
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r14, r3
	ldr	r3, [sp, #0x1c]
	mov	r12, r2
	ldr	r2, [sp, #0x18]
	ldr	r4, =ewram_10000
	lsl	r3, #7
	add	r3, r2
	lsl	r1, #7
	mov	r8, r4
	lsl	r3, #2
	add	r1, r0
	add	r3, r8
	lsl	r1, #2
	mov	r2, r14
	mov	r10, r3
	add	r8, r1
	cmp	r2, #0
	ble	.L10770
	mov	r5, #0
.L10732:
	lsr	r3, r5, #7
	mov	r4, r10
	mov	r2, r8
	add	r1, r4, r3
	add	r0, r2, r3
	mov	r3, r12
	cmp	r3, #0
	ble	.L10762
	ldr	r7, =0xfff
	ldr	r6, =0xfffff000
	mov	r4, #0
.L10748:
	ldr	r2, [r1]
	ldmia	r0!, {r3}
	and	r2, r7
	and	r3, r6
	orr	r2, r3
	stmia	r1!, {r2}
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r4, r2
	mov	r4, r3
	lsr	r3, r4, #16
	cmp	r3, r12
	blt	.L10748
.L10762:
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r5, r4
	mov	r5, r3
	lsr	r3, r5, #16
	cmp	r3, r14
	blt	.L10732
.L10770:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10704

.thumb_func_start Func_10788
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	ldr	r5, [sp, #0x48]
	lsl	r1, #7
	add	r1, r0
	ldr	r0, [sp, #0x44]
	mov	r4, r3
	lsl	r3, r5, #7
	add	r3, r0
	mov	r11, r2
	ldr	r2, =ewram_10000
	lsl	r1, #2
	lsl	r3, #2
	add	r1, r2
	add	r3, r2
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1e70
	mov	r1, #0x82
	ldr	r3, [r3]
	lsl	r1, #1
	add	r0, sp, #0xc
	add	r2, r3, r1
	mov	r9, r0
	mov	r6, #2
.L107c6:
	ldr	r3, [r2]
	asr	r3, #20
	str	r3, [r0]
	ldr	r3, [r2, #4]
	sub	r6, #1
	asr	r3, #20
	str	r3, [r0, #4]
	add	r2, #0x30
	add	r0, #8
	cmp	r6, #0
	bge	.L107c6
	mov	r7, r5
	add	r3, r7, r4
	cmp	r7, r3
	bge	.L10892
	str	r3, [sp]
	mov	r2, r11
	mov	r3, #0x80
	sub	r3, r2
	lsl	r3, #2
	mov	r8, r3
.L107f0:
	ldr	r1, [sp, #0x44]
	mov	r4, r11
	add	r3, r1, r4
	cmp	r1, r3
	bge	.L1087e
	mov	r12, r7
	mov	r5, #0xf
	mov	r0, r12
	and	r0, r5
	mov	r14, r3
	mov	r10, r5
	mov	r12, r0
.L10808:
	ldr	r3, [sp, #8]
	ldmia	r3!, {r5}
	mov	r2, r3
	ldr	r4, [sp, #4]
	str	r2, [sp, #8]
	ldr	r3, =0xfff
	ldr	r2, =0xfffff000
	and	r5, r3
	ldr	r3, [r4]
	and	r3, r2
	orr	r3, r5
	stmia	r4!, {r3}
	mov	r2, r1
	mov	r0, r4
	mov	r3, r10
	mov	r4, r12
	and	r2, r3
	lsl	r3, r4, #5
	add	r3, r2
	str	r0, [sp, #4]
	mov	r6, #0
	mov	r0, r9
	lsl	r4, r3, #2
.L10836:
	ldr	r3, [r0]
	cmp	r3, r1
	bgt	.L1086a
	add	r3, #0x10
	cmp	r3, r1
	ble	.L1086a
	ldr	r3, [r0, #4]
	cmp	r3, r7
	bgt	.L1086a
	add	r3, #0xc
	cmp	r3, r7
	ble	.L1086a
	lsl	r3, r5, #3
	ldr	r2, =0x6002800
	ldr	r5, =ewram_20000
	add	r0, r4, r2
	add	r2, r3, r5
	ldr	r2, [r2]
	str	r2, [r0]
	ldr	r0, =ewram_20004
	add	r2, r3, r0
	ldr	r3, =0x6002840
	add	r0, r4, r3
	ldr	r3, [r2]
	str	r3, [r0]
	b	.L10878
.L1086a:
	mov	r2, #0x80
	lsl	r2, #4
	add	r6, #1
	add	r4, r2
	add	r0, #8
	cmp	r6, #2
	ble	.L10836
.L10878:
	add	r1, #1
	cmp	r1, r14
	blt	.L10808
.L1087e:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	ldr	r5, [sp]
	add	r3, r8
	add	r4, r8
	add	r7, #1
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	cmp	r7, r5
	blt	.L107f0
.L10892:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10788

.thumb_func_start Func_108c4
	ldr	r3, =iwram_1e70
	ldr	r4, [r3]
	mov	r2, #0xe0
	ldrh	r1, [r4, #0x14]
	ldr	r3, =0xf1ff
	lsl	r2, #4
	and	r2, r0
	and	r3, r1
	orr	r3, r2
	strh	r3, [r4, #0x14]
	bx	lr
.func_end Func_108c4
