	.include "macros.inc"

	b	_start		@ entry point
	.incrom	0x4, 0xa0	@ nintendo logo
	.ascii	"Golden_Sun_A"	@ game title
	.ascii	"AGSE"		@ game code
	.ascii	"01"		@ maker code
	.byte	0x96		@ fixed value
	.byte	0		@ main unit code
	.byte	0		@ device type
	.space	7		@ reserved
	.byte	0		@ software version
	.byte	0x42		@ header checksum
	.space	2		@ reserved
