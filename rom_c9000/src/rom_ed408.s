	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_ed408
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r9, r1
	ldr	r1, [sp, #0x30]
	mov	r10, r1
	str	r2, [sp, #0xc]
	mov	r2, r10
	mov	r8, r3
	mov	r1, #3
	cmp	r2, #3
	bne	.Led42c
	mov	r1, #6
.Led42c:
	mov	r3, #0xc
	mov	r2, r8
	and	r3, r2
	cmp	r3, #4
	bne	.Led438
	add	r1, #3
.Led438:
	cmp	r3, #8
	bne	.Led43e
	add	r1, #4
.Led43e:
	cmp	r3, #0xc
	bne	.Led444
	add	r1, #3
.Led444:
	cmp	r3, #0
	bne	.Led44a
	add	r1, #1
.Led44a:
	mov	r3, #2
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led456
	add	r1, #7
.Led456:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	add	r1, #2
	cmp	r3, #0
	bne	.Led464
	add	r1, #1
.Led464:
	cmp	r3, #0
	beq	.Led46e
	add	r1, #2
	add	r1, #2
	add	r1, #5
.Led46e:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	add	r1, #9
	cmp	r3, #0
	bne	.Led47c
	add	r1, #1
.Led47c:
	add	r1, #9
	cmp	r3, #0
	bne	.Led484
	add	r1, #1
.Led484:
	mov	r3, r10
	add	r1, #3
	cmp	r3, #1
	beq	.Led49c
	cmp	r3, #1
	bcc	.Led498
	cmp	r3, #2
	beq	.Led49c
	cmp	r3, #3
	beq	.Led4a0
.Led498:
	add	r1, #2
	b	.Led4a2
.Led49c:
	add	r1, #4
	b	.Led4a2
.Led4a0:
	add	r1, #6
.Led4a2:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	add	r1, #3
	cmp	r3, #0
	bne	.Led4b0
	add	r1, #2
.Led4b0:
	mov	r3, r10
	add	r1, #2
	cmp	r3, #1
	beq	.Led4d0
	cmp	r3, #1
	bcc	.Led4c4
	cmp	r3, #2
	beq	.Led4d4
	cmp	r3, #3
	beq	.Led4d8
.Led4c4:
	mov	r3, #0
.Led4c6:
	add	r3, #1
	add	r1, #2
	cmp	r3, #7
	ble	.Led4c6
	b	.Led4da
.Led4d0:
	add	r1, #0x19
	b	.Led4da
.Led4d4:
	add	r1, #0x20
	b	.Led4da
.Led4d8:
	add	r1, #0x1c
.Led4da:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	add	r1, #1
	cmp	r3, #0
	bne	.Led4e8
	add	r1, #2
.Led4e8:
	mov	r3, r10
	add	r1, #5
	cmp	r3, #1
	beq	.Led500
	cmp	r3, #1
	bcc	.Led4fc
	cmp	r3, #2
	beq	.Led500
	cmp	r3, #3
	beq	.Led504
.Led4fc:
	add	r1, #2
	b	.Led506
.Led500:
	add	r1, #4
	b	.Led506
.Led504:
	add	r1, #6
.Led506:
	add	r1, #8
	lsl	r1, #2
	bl	Func_48b0
	ldr	r6, =Data_edcc4
	mov	r5, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000003
	mov	r0, r6
	mov	r1, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0xc
	add	r6, #0xc
	mov	r1, r10
	cmp	r1, #3
	bne	.Led534
	ldr	r0, =Data_edcb8
	mov	r1, r5
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0xc
.Led534:
	mov	r4, #0xc
	mov	r2, r8
	and	r4, r2
	cmp	r4, #4
	bne	.Led54c
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	mov	r1, r5
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0xc
.Led54c:
	add	r6, #0xc
	cmp	r4, #8
	bne	.Led560
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	mov	r1, r5
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x10
.Led560:
	add	r6, #0x10
	cmp	r4, #0xc
	bne	.Led574
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	mov	r1, r5
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0xc
.Led574:
	add	r6, #0xc
	cmp	r4, #0
	bne	.Led57e
	ldr	r3, [r6]
	stmia	r5!, {r3}
.Led57e:
	mov	r3, #2
	mov	r1, r8
	and	r3, r1
	add	r6, #4
	cmp	r3, #0
	beq	.Led5bc
	ldr	r3, [r6]
	stmia	r5!, {r3}
	ldr	r3, [r6, #4]
	stmia	r5!, {r3}
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Led59e
	ldr	r3, [r6, #8]
	b	.Led5a0
.Led59e:
	ldr	r3, [r6, #0xc]
.Led5a0:
	stmia	r5!, {r3}
	ldr	r3, [r6, #0x10]
	stmia	r5!, {r3}
	ldr	r3, [r6, #0x14]
	stmia	r5!, {r3}
	mov	r2, #1
	ldr	r3, [sp, #0xc]
	lsl	r2, r3
	ldr	r3, [r6, #0x18]
	add	r3, r2
	stmia	r5!, {r3}
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	stmia	r5!, {r3}
.Led5bc:
	add	r6, #0x20
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	str	r5, [sp, #8]
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r2, #1
	mov	r1, r8
	and	r1, r2
	cmp	r1, #0
	bne	.Led5de
	mov	r3, r9
	lsl	r2, r3
	ldr	r3, [r6]
	add	r3, r2
	sub	r3, #1
	stmia	r5!, {r3}
.Led5de:
	add	r6, #4
	cmp	r1, #0
	beq	.Led638
	ldr	r3, [r6]
	stmia	r5!, {r3}
	ldr	r3, [r6, #4]
	stmia	r5!, {r3}
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led5fe
	ldr	r3, [r6, #8]
	stmia	r5!, {r3}
	ldr	r3, [r6, #0xc]
	b	.Led604
.Led5fe:
	ldr	r3, [r6, #0x10]
	stmia	r5!, {r3}
	ldr	r3, [r6, #0x14]
.Led604:
	stmia	r5!, {r3}
	ldr	r3, [r6, #0x18]
	stmia	r5!, {r3}
	ldr	r3, [r6, #0x1c]
	stmia	r5!, {r3}
	ldr	r3, =.Lef034
	mov	r2, r9
	lsl	r1, r2, #1
	ldrh	r2, [r3, r1]
	ldr	r3, [r6, #0x20]
	add	r3, r2
	stmia	r5!, {r3}
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led62a
	ldr	r3, [r6, #0x24]
	b	.Led62c
.Led62a:
	ldr	r3, [r6, #0x28]
.Led62c:
	stmia	r5!, {r3}
	ldr	r3, =.Lef034
	ldrh	r2, [r3, r1]
	ldr	r3, [r6, #0x2c]
	add	r3, r2
	stmia	r5!, {r3}
.Led638:
	add	r6, #0x30
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r11, r5
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000006
	mov	r0, r6
	mov	r1, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x18
	add	r6, #0x18
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r7, #1
	mov	r4, r8
	and	r4, r7
	cmp	r4, #0
	bne	.Led666
	ldr	r3, [r6]
	stmia	r5!, {r3}
.Led666:
	add	r6, #4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000005
	mov	r0, r6
	mov	r1, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x14
	add	r6, #0x14
	str	r5, [sp, #4]
	ldr	r3, [r6]
	stmia	r5!, {r3}
	ldr	r3, [sp, #0xc]
	sub	r3, #3
	mov	r2, r7
	lsl	r2, r3
	ldr	r3, [r6, #4]
	add	r3, r2
	sub	r3, #1
	stmia	r5!, {r3}
	mov	r2, r9
	ldr	r3, [r6, #8]
	sub	r2, #3
	lsl	r2, #7
	add	r3, r2
	stmia	r5!, {r3}
	ldr	r3, [r6, #0xc]
	stmia	r5!, {r3}
	add	r6, #0x10
	cmp	r4, #0
	bne	.Led6a8
	ldr	r3, [r6]
	stmia	r5!, {r3}
.Led6a8:
	add	r6, #4
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r12, r5
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led6c2
	ldr	r3, [r6]
	b	.Led6c4
.Led6c2:
	ldr	r3, [r6, #4]
.Led6c4:
	stmia	r5!, {r3}
	mov	r2, r10
	add	r6, #8
	mov	r4, r5
	cmp	r2, #1
	beq	.Led6fc
	cmp	r2, #1
	bcc	.Led6dc
	cmp	r2, #2
	beq	.Led712
	cmp	r2, #3
	beq	.Led732
.Led6dc:
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led6ec
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edaf0
	b	.Led6f0
.Led6ec:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edaf8
.Led6f0:
	mov	r1, r5
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #8
	b	.Led750
.Led6fc:
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led70c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edb10
	b	.Led726
.Led70c:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edb00
	b	.Led726
.Led712:
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led722
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edbf8
	b	.Led726
.Led722:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edbe8
.Led726:
	mov	r1, r5
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x10
	b	.Led750
.Led732:
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led742
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edca0
	b	.Led746
.Led742:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edc88
.Led746:
	mov	r1, r5
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x18
.Led750:
	add	r6, #0x10
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	sub	r3, r4, r5
	sub	r3, #8
	ldr	r1, =0xffffff
	ldmia	r6!, {r2}
	lsr	r3, #2
	and	r3, r1
	add	r2, r3
	stmia	r5!, {r2}
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	bne	.Led77c
	ldr	r3, [r6]
	stmia	r5!, {r3}
	ldr	r3, [r6, #4]
	stmia	r5!, {r3}
.Led77c:
	add	r6, #8
	mov	r2, r12
	sub	r3, r5, r2
	sub	r3, #8
	ldr	r2, [r2]
	lsr	r3, #2
	and	r3, r1
	orr	r2, r3
	mov	r3, r12
	str	r2, [r3]
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r12, r5
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	str	r5, [sp]
	mov	r1, r10
	cmp	r1, #1
	beq	.Led7de
	cmp	r1, #1
	bcc	.Led7ae
	cmp	r1, #2
	beq	.Led7fe
	cmp	r1, #3
	beq	.Led88c
.Led7ae:
	ldr	r3, =Data_edaf0
	ldr	r1, =Data_edaf8
	mov	r7, #4
	mov	r2, r8
	mov	r4, #0
	and	r7, r2
	mov	r9, r3
	mov	r14, r1
.Led7be:
	cmp	r7, #0
	beq	.Led7c8
	ldr	r3, =REG_DMA3SAD
	mov	r0, r9
	b	.Led7cc
.Led7c8:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r14
.Led7cc:
	mov	r1, r5
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #8
	add	r4, #1
	cmp	r4, #7
	ble	.Led7be
	b	.Led8b6
.Led7de:
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led7ee
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edb84
	b	.Led7f2
.Led7ee:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edb20
.Led7f2:
	mov	r1, r5
	ldr	r2, =0x84000019
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x64
	b	.Led8b6
.Led7fe:
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led80c
	ldr	r4, =Data_edc48
	b	.Led80e
.Led80c:
	ldr	r4, =Data_edc08
.Led80e:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x40
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x40
	b	.Led8b6

	.pool_aligned

.Led88c:
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led89a
	ldr	r4, =.Leefdc
	b	.Led89c
.Led89a:
	ldr	r4, =.Leefa4
.Led89c:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x8400000e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x38
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x8400000e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x38
.Led8b6:
	add	r6, #0x10
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r3, #1
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	bne	.Led8ce
	ldr	r3, [r6]
	stmia	r5!, {r3}
	ldr	r3, [r6, #4]
	stmia	r5!, {r3}
.Led8ce:
	add	r6, #8
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	ldr	r2, [sp]
	sub	r3, r2, r5
	ldr	r1, =0xffffff
	sub	r3, #8
	ldmia	r6!, {r2}
	lsr	r3, #2
	and	r3, r1
	add	r2, r3
	stmia	r5!, {r2}
	mov	r2, r12
	sub	r3, r5, r2
	sub	r3, #8
	ldr	r2, [r2]
	lsr	r3, #2
	and	r3, r1
	orr	r2, r3
	mov	r3, r12
	str	r2, [r3]
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r12, r5
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led910
	ldr	r3, [r6]
	b	.Led912
.Led910:
	ldr	r3, [r6, #4]
.Led912:
	stmia	r5!, {r3}
	mov	r2, r10
	add	r6, #8
	mov	r4, r5
	cmp	r2, #1
	beq	.Led94a
	cmp	r2, #1
	bcc	.Led92a
	cmp	r2, #2
	beq	.Led960
	cmp	r2, #3
	beq	.Led980
.Led92a:
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led93a
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edaf0
	b	.Led93e
.Led93a:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edaf8
.Led93e:
	mov	r1, r5
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #8
	b	.Led99e
.Led94a:
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led95a
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edb10
	b	.Led974
.Led95a:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edb00
	b	.Led974
.Led960:
	mov	r3, #4
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Led970
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edbf8
	b	.Led974
.Led970:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edbe8
.Led974:
	mov	r1, r5
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x10
	b	.Led99e
.Led980:
	mov	r3, #4
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Led990
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edca0
	b	.Led994
.Led990:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_edc88
.Led994:
	mov	r1, r5
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0x18
.Led99e:
	add	r6, #0x10
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	sub	r3, r4, r5
	sub	r3, #8
	ldr	r4, =0xffffff
	ldmia	r6!, {r2}
	lsr	r3, #2
	and	r3, r4
	add	r2, r3
	stmia	r5!, {r2}
	mov	r1, r12
	sub	r3, r5, r1
	sub	r3, #8
	ldr	r2, [r1]
	lsr	r3, #2
	and	r3, r4
	orr	r2, r3
	str	r2, [r1]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000003
	mov	r0, r6
	mov	r1, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r5, #0xc
	add	r6, #0xc
	ldr	r2, [sp, #4]
	sub	r3, r2, r5
	sub	r3, #8
	ldmia	r6!, {r2}
	lsr	r3, #2
	and	r3, r4
	add	r2, r3
	stmia	r5!, {r2}
	ldr	r1, [sp, #8]
	sub	r3, r5, r1
	sub	r3, #8
	ldr	r2, [r1]
	lsr	r3, #2
	and	r3, r4
	orr	r2, r3
	str	r2, [r1]
	mov	r2, r11
	sub	r3, r5, r2
	sub	r3, #8
	ldr	r2, [r2]
	lsr	r3, #2
	and	r3, r4
	orr	r2, r3
	mov	r3, r11
	str	r2, [r3]
	ldmia	r6!, {r3}
	stmia	r5!, {r3}
	ldmia	r6!, {r3}
	str	r3, [r5]
	ldr	r3, =Data_ede48
	eor	r3, r6
	neg	r2, r3
	orr	r2, r3
	lsr	r2, #31
	mov	r0, #1
	sub	r0, r2
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ed408

	.section .rodata

.Leefa4:
	.incrom 0xeefa4, 0xeefdc
.Leefdc:
	.incrom 0xeefdc, 0xef034
.Lef034:
	.incrom 0xef034, 0xef054
