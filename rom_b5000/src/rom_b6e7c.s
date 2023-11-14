	.include "macros.inc"

.thumb_func_start Func_b6e7c
	push	{r5, lr}
	mov	r5, r0
	mov	r4, #0
	ldr	r0, =.Lc593c
.Lb6e84:
	lsl	r1, r4, #1
	ldrh	r2, [r0, r1]
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r5, r3
	bne	.Lb6e96
	ldrh	r3, [r0, r1]
	lsr	r0, r3, #9
	b	.Lb6ea6
.Lb6e96:
	lsl	r3, r2, #16
	mov	r2, #1
	asr	r3, #16
	neg	r2, r2
	add	r4, #1
	cmp	r3, r2
	bne	.Lb6e84
	mov	r0, #6
.Lb6ea6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b6e7c

	.section .rodata

.Lc593c:
	.incrom 0xc593c, 0xc59a4
