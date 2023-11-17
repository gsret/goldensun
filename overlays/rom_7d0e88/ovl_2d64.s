	.include "macros.inc"

	.section .data

	.global	OvlData_2d64
OvlData_2d64:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2d64, (0x2da8-0x2d64)
	.ssize	OvlData_2d64
