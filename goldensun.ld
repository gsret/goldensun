MEMORY {
	bios	(x)	: ORIGIN = 0x00000000, LENGTH = 16K
	ewram	(rwx)	: ORIGIN = 0x02000000, LENGTH = 256K
	overlay (rwx)	: ORIGIN = 0x02008000, LENGTH = 32K
	iwram	(rwx)	: ORIGIN = 0x03000000, LENGTH = 32K
	io	(rw)	: ORIGIN = 0x04000000, LENGTH = 1K
	palette	(rw)	: ORIGIN = 0x05000000, LENGTH = 1K
	vram	(rw)	: ORIGIN = 0x06000000, LENGTH = 96K
	oam	(rw)	: ORIGIN = 0x07000000, LENGTH = 1K
	rom	(rx)	: ORIGIN = 0x08000000, LENGTH = 8M
	sram	(rw)	: ORIGIN = 0x0E000000, LENGTH = 64K
}

INCLUDE "wram.sym"

SECTIONS {
	__start_rom = ORIGIN(rom);
	__start_overlay = ORIGIN(overlay);

	header : {
		rom_header.o(.text)
	} > rom

	rom_c0 : {
		rom_c0/src/exports.o(.text)
		rom_c0/src/crt0.o(.text)
	} > rom

	rom_770 : {
		rom_c0/src/rom_770.o(.text)
	} > iwram AT > rom

	__load_start_rom_770 = LOADADDR(rom_770);

	rom_1b70 : {
		rom_c0/src/rom_1b70.o(.text)
		rom_c0/src/rom_2544.o(.text)
		rom_c0/src/rom_2dd8.o(.text)
		rom_c0/src/rom_2e00.o(.text)
		rom_c0/src/rom_30f8.o(.text)
		rom_c0/src/rom_3650.o(.text)
		rom_c0/src/rom_3adc.o(.text)
		rom_c0/src/rom_3d04.o(.text)
		rom_c0/src/rom_3e58.o(.text)
		rom_c0/src/rom_40e8.o(.text)
		rom_c0/src/rom_4458.o(.text)
		rom_c0/src/rom_447c.o(.text)
		rom_c0/src/rom_45e8.o(.text)
		rom_c0/src/rom_4858.o(.text)
		rom_c0/src/rom_49a8.o(.text)
		rom_c0/src/rom_5208.o(.text)
		rom_c0/src/rom_52f4.o(.text)
		rom_c0/src/rom_56cc.o(.text)
		rom_c0/src/rom_5cf8.o(.text)
		rom_c0/src/rom_6864.o(.text)
		rom_c0/src/rom_6878.o(.text)
		lib/call_via.o(.text)

		rom_c0/src/rom_2e00.o(.rodata)
		rom_c0/src/rom_447c.o(.rodata)
		rom_c0/src/rom_45e8.o(.rodata)
		rom_c0/src/rom_49a8.o(.rodata)
		rom_c0/src/rom_56cc.o(.rodata)
		rom_c0/src/rom_6878.o(.rodata)

		. += 0x1000;
	} > rom

	rom_9000 : ALIGN(0x1000) {
		rom_9000/src/exports.o(.text)
		rom_9000/src/rom_92b8.o(.text)
		rom_9000/src/rom_a97c.o(.text)
		rom_9000/src/rom_b074.o(.text)
		rom_9000/src/rom_b798.o(.text)
		rom_9000/src/rom_be70.o(.text)
		rom_9000/src/rom_c004.o(.text)
		rom_9000/src/rom_c880.o(.text)
		rom_9000/src/rom_ca2c.o(.text)
		rom_9000/src/rom_ca6c.o(.text)
		rom_9000/src/rom_d654.o(.text)
		rom_9000/src/rom_d924.o(.text)
		rom_9000/src/rom_e220.o(.text)
		rom_9000/src/rom_ea54.o(.text)
		rom_9000/src/rom_ebec.o(.text)
		rom_9000/src/rom_f9cc.o(.text)
		rom_9000/src/rom_10424.o(.text)
		rom_9000/src/rom_108e4.o(.text)
		rom_9000/src/rom_11568.o(.text)
		rom_9000/src/rom_11ce0.o(.text)
		rom_9000/src/rom_1219c.o(.text)

		rom_9000/src/rom_b798.o(.rodata)
		rom_9000/src/rom_b074.o(.rodata)
		rom_9000/src/rom_a97c.o(.rodata)
		rom_9000/src/rom_be70.o(.rodata)
		rom_9000/src/rom_c880.o(.rodata)
		rom_9000/src/rom_ca6c.o(.rodata)
		rom_9000/src/rom_d654.o(.rodata)
		rom_9000/src/rom_ebec.o(.rodata)
		rom_9000/src/rom_108e4.o(.rodata)
		rom_9000/src/rom_11ce0.o(.rodata)
		rom_9000/src/rom_1219c.o(.rodata)
		rom_9000/src/rom_c004.o(.rodata)
		rom_9000/src/rom_13624.o(.rodata)
		rom_9000/src/rom_f9cc.o(.rodata)
	} > rom

	rom_15000 : ALIGN(0x1000) {
		rom_15000/src/exports.o(.text)
		rom_15000/src/rom_15430.o(.text)
		rom_15000/src/rom_15e8c.o(.text)
		rom_15000/src/rom_178b0.o(.text)
		rom_15000/src/rom_17e88.o(.text)
		rom_15000/src/rom_18cac.o(.text)
		rom_15000/src/rom_1908c.o(.text)
		rom_15000/src/rom_19d2c.o(.text)
		rom_15000/src/rom_19ebc.o(.text)
		rom_15000/src/rom_1a66c.o(.text)
		rom_15000/src/rom_1aeec.o(.text)
		rom_15000/src/rom_1ca1c.o(.text)
		rom_15000/src/rom_1de5c.o(.text)
		rom_15000/src/rom_1fe2c.o(.text)
		rom_15000/src/rom_20198.o(.text)
		rom_15000/src/rom_21dfc.o(.text)
		rom_15000/src/rom_22a7c.o(.text)
		rom_15000/src/rom_23178.o(.text)

		rom_15000/src/rom_29910.o(.rodata)
		rom_15000/src/rom_19ebc.o(.rodata)
		rom_15000/src/rom_310a4.o(.rodata)
		rom_15000/src/rom_22a7c.o(.rodata)
		rom_15000/src/rom_317e4.o(.rodata)
		rom_15000/src/rom_178b0.o(.rodata)
		rom_15000/src/rom_32224.o(.rodata)
		rom_15000/src/rom_17e88.o(.rodata)
		rom_15000/src/rom_1908c.o(.rodata)
		rom_15000/src/rom_1aeec.o(.rodata)
		rom_15000/src/rom_346f8.o(.rodata)
		rom_15000/src/rom_1a66c.o(.rodata)
		rom_15000/src/rom_1ca1c.o(.rodata)
		rom_15000/src/rom_367e4.o(.rodata)
		rom_15000/src/rom_1de5c.o(.rodata)
		rom_15000/src/rom_20198.o(.rodata)
		rom_15000/src/rom_23178.o(.rodata)
		rom_15000/src/rom_3842c.o(.rodata)
		rom_15000/src/rom_15e8c.o(.rodata)
		rom_15000/src/rom_73812.o(.rodata)
		rom_15000/src/rom_1fe2c.o(.rodata)
		rom_15000/src/rom_73864.o(.rodata)

		. += 0x3000;
	} > rom

	rom_77000 : ALIGN(0x1000) {
		rom_77000/src/exports.o(.text)
		rom_77000/src/rom_77320.o(.text)
		rom_77000/src/rom_78414.o(.text)
		rom_77000/src/rom_78a8c.o(.text)
		rom_77000/src/rom_78b9c.o(.text)
		rom_77000/src/rom_78ed8.o(.text)
		rom_77000/src/rom_78ee8.o(.text)
		rom_77000/src/rom_79008.o(.text)
		rom_77000/src/rom_79338.o(.text)
		rom_77000/src/rom_79460.o(.text)

		rom_77000/src/rom_77320.o(.rodata)
		rom_77000/src/rom_79008.o(.rodata)
		rom_77000/src/rom_78a8c.o(.rodata)
		rom_77000/src/rom_78ee8.o(.rodata)
		rom_77000/src/rom_78414.o(.rodata)
		rom_77000/src/rom_78b9c.o(.rodata)
		rom_77000/src/rom_80ec8.o(.rodata)
		rom_77000/src/rom_78ed8.o(.rodata)
		rom_77000/src/rom_79460.o(.rodata)
	} > rom

	rom_8a000 : ALIGN(0x1000) {
		rom_8a000/src/exports.o(.text)
		rom_8a000/src/rom_8a5f8.o(.text)
		rom_8a000/src/rom_8ace0.o(.text)
		rom_8a000/src/rom_8b674.o(.text)
		rom_8a000/src/rom_8ba38.o(.text)
		rom_8a000/src/rom_8d5dc.o(.text)
		rom_8a000/src/rom_8d9a4.o(.text)
		rom_8a000/src/rom_91584.o(.text)
		rom_8a000/src/rom_9259c.o(.text)
		rom_8a000/src/rom_925e0.o(.text)
		rom_8a000/src/rom_92950.o(.text)
		rom_8a000/src/rom_93304.o(.text)
		rom_8a000/src/rom_944ec.o(.text)
		rom_8a000/src/rom_96cdc.o(.text)
		rom_8a000/src/rom_97384.o(.text)
		rom_8a000/src/rom_97b54.o(.text)
		rom_8a000/src/rom_9a44c.o(.text)
		rom_8a000/src/rom_9ad70.o(.text)
		rom_8a000/src/rom_9b698.o(.text)
		rom_8a000/src/rom_9bb64.o(.text)

		rom_8a000/src/rom_96cdc.o(.rodata)
		rom_8a000/src/rom_9b698.o(.rodata)
		rom_8a000/src/rom_8ace0.o(.rodata)
		rom_8a000/src/rom_8ba38.o(.rodata)
		rom_8a000/src/rom_8d9a4.o(.rodata)
		rom_8a000/src/rom_9259c.o(.rodata)
		rom_8a000/src/rom_92950.o(.rodata)
		rom_8a000/src/rom_944ec.o(.rodata)
		rom_8a000/src/rom_9f0b0.o(.rodata)
		rom_8a000/src/rom_97b54.o(.rodata)
		rom_8a000/src/rom_9ad70.o(.rodata)
		rom_8a000/src/rom_9bb64.o(.rodata)
		rom_8a000/src/rom_8a5f8.o(.rodata)
		rom_8a000/src/rom_8b674.o(.rodata)
		rom_8a000/src/rom_9f840.o(.rodata)
		rom_8a000/src/rom_91584.o(.rodata)
		rom_8a000/src/rom_925e0.o(.rodata)
		rom_8a000/src/rom_9fc1c.o(.rodata)
		rom_8a000/src/rom_93304.o(.rodata)
		rom_8a000/src/rom_9ff40.o(.rodata)
		rom_8a000/src/rom_97384.o(.rodata)
		rom_8a000/src/rom_9a44c.o(.rodata)
		rom_8a000/src/rom_a0138.o(.rodata)
	} > rom

	rom_a1000 : ALIGN(0x1000) {
		rom_a1000/src/exports.o(.text)
		rom_a1000/src/rom_a1050.o(.text)
		rom_a1000/src/rom_a172c.o(.text)
		rom_a1000/src/rom_a1814.o(.text)
		rom_a1000/src/rom_a47b4.o(.text)
		rom_a1000/src/rom_a4f08.o(.text)
		rom_a1000/src/rom_a5534.o(.text)
		rom_a1000/src/rom_a7380.o(.text)
		rom_a1000/src/rom_a8604.o(.text)
		rom_a1000/src/rom_aa538.o(.text)
		rom_a1000/src/rom_ad274.o(.text)
		rom_a1000/src/rom_ae88c.o(.text)

		rom_a1000/src/rom_a172c.o(.rodata)
		rom_a1000/src/rom_a5534.o(.rodata)
		rom_a1000/src/rom_ae88c.o(.rodata)
		rom_a1000/src/rom_a4f08.o(.rodata)
		rom_a1000/src/rom_a1050.o(.rodata)
		rom_a1000/src/rom_a47b4.o(.rodata)
		rom_a1000/src/rom_a8604.o(.rodata)
		rom_a1000/src/rom_af26c.o(.rodata)
		rom_a1000/src/rom_aa538.o(.rodata)
		rom_a1000/src/rom_a1814.o(.rodata)
		rom_a1000/src/rom_a7380.o(.rodata)
		rom_a1000/src/rom_ad274.o(.rodata)
	} > rom

	rom_b0000 : ALIGN(0x1000) {
		rom_b0000/src/exports.o(.text)
		rom_b0000/src/rom_b0070.o(.text)

		rom_b0000/src/rom_b0070.o(.rodata)
	} > rom

	rom_b5000 : ALIGN(0x1000) {
		rom_b5000/src/exports.o(.text)
		rom_b5000/src/rom_b5138.o(.text)
		rom_b5000/src/rom_b5368.o(.text)
		rom_b5000/src/rom_b5a0c.o(.text)
		rom_b5000/src/rom_b6e7c.o(.text)
		rom_b5000/src/rom_b6eb4.o(.text)
		rom_b5000/src/rom_b6f44.o(.text)
		rom_b5000/src/rom_b7410.o(.text)
		rom_b5000/src/rom_b8228.o(.text)
		rom_b5000/src/rom_b9b30.o(.text)
		rom_b5000/src/rom_bb588.o(.text)
		rom_b5000/src/rom_bbb0c.o(.text)
		rom_b5000/src/rom_bffb8.o(.text)
		rom_b5000/src/rom_c10e8.o(.text)
		rom_b5000/src/rom_c1a34.o(.text)

		rom_b5000/src/rom_c2a0c.o(.rodata)
		rom_b5000/src/rom_b5a0c.o(.rodata)
		rom_b5000/src/rom_b6eb4.o(.rodata)
		rom_b5000/src/rom_b7410.o(.rodata)
		rom_b5000/src/rom_bbb0c.o(.rodata)
		rom_b5000/src/rom_c10e8.o(.rodata)
		rom_b5000/src/rom_c3734.o(.rodata)
		rom_b5000/src/rom_b5368.o(.rodata)
		rom_b5000/src/rom_b6f44.o(.rodata)
		rom_b5000/src/rom_b6e7c.o(.rodata)
		rom_b5000/src/rom_b8228.o(.rodata)
		rom_b5000/src/rom_bffb8.o(.rodata)
		rom_b5000/src/rom_c1a34.o(.rodata)

		. += 0x1000;
	} > rom

	rom_c9000 : ALIGN(0x1000) {
		rom_c9000/src/exports.o(.text)
		rom_c9000/src/rom_c9048.o(.text)
		rom_c9000/src/rom_c91dc.o(.text)
		rom_c9000/src/rom_ca1e4.o(.text)
		rom_c9000/src/rom_ca57c.o(.text)
		rom_c9000/src/rom_cb1a4.o(.text)
		rom_c9000/src/rom_cc5d8.o(.text)
		rom_c9000/src/rom_cd260.o(.text)
		rom_c9000/src/rom_cd508.o(.text)
		rom_c9000/src/rom_ceb30.o(.text)
		rom_c9000/src/rom_cefd4.o(.text)
		rom_c9000/src/rom_cf2a0.o(.text)
		rom_c9000/src/rom_cf88c.o(.text)
		rom_c9000/src/rom_cfef4.o(.text)
		rom_c9000/src/rom_d1714.o(.text)
		rom_c9000/src/rom_d244c.o(.text)
		rom_c9000/src/rom_d2d98.o(.text)
		rom_c9000/src/rom_d45ec.o(.text)
		rom_c9000/src/rom_d5258.o(.text)
		rom_c9000/src/rom_d6504.o(.text)
		rom_c9000/src/rom_d6970.o(.text)
		rom_c9000/src/rom_d82b0.o(.text)
		rom_c9000/src/rom_d8948.o(.text)
		rom_c9000/src/rom_d9194.o(.text)
		rom_c9000/src/rom_d9ab8.o(.text)
		rom_c9000/src/rom_db6c8.o(.text)
		rom_c9000/src/rom_dbb24.o(.text)
		rom_c9000/src/rom_dbbdc.o(.text)
		rom_c9000/src/rom_dd2ac.o(.text)
		rom_c9000/src/rom_de974.o(.text)
		rom_c9000/src/rom_dfa18.o(.text)
		rom_c9000/src/rom_e0524.o(.text)
		rom_c9000/src/rom_e0564.o(.text)
		rom_c9000/src/rom_e28f4.o(.text)
		rom_c9000/src/rom_e3958.o(.text)
		rom_c9000/src/rom_e47b8.o(.text)
		rom_c9000/src/rom_e6638.o(.text)
		rom_c9000/src/rom_e7320.o(.text)
		rom_c9000/src/rom_ea0d8.o(.text)
		rom_c9000/src/rom_eb754.o(.text)
		rom_c9000/src/rom_ece7c.o(.text)
		rom_c9000/src/rom_ed408.o(.text)

		rom_c9000/src/rom_eda78.o(.rodata)
		rom_c9000/src/rom_c91dc.o(.rodata)
		rom_c9000/src/rom_ca57c.o(.rodata)
		rom_c9000/src/rom_cb1a4.o(.rodata)
		rom_c9000/src/rom_cc5d8.o(.rodata)
		rom_c9000/src/rom_ceb30.o(.rodata)
		rom_c9000/src/rom_cefd4.o(.rodata)
		rom_c9000/src/rom_cf2a0.o(.rodata)
		rom_c9000/src/rom_cf88c.o(.rodata)
		rom_c9000/src/rom_cfef4.o(.rodata)
		rom_c9000/src/rom_d1714.o(.rodata)
		rom_c9000/src/rom_d244c.o(.rodata)
		rom_c9000/src/rom_d2d98.o(.rodata)
		rom_c9000/src/rom_d45ec.o(.rodata)
		rom_c9000/src/rom_d5258.o(.rodata)
		rom_c9000/src/rom_ee2b4.o(.rodata)
		rom_c9000/src/rom_d6970.o(.rodata)
		rom_c9000/src/rom_d82b0.o(.rodata)
		rom_c9000/src/rom_d9ab8.o(.rodata)
		rom_c9000/src/rom_db6c8.o(.rodata)
		rom_c9000/src/rom_dbbdc.o(.rodata)
		rom_c9000/src/rom_dd2ac.o(.rodata)
		rom_c9000/src/rom_de974.o(.rodata)
		rom_c9000/src/rom_dfa18.o(.rodata)
		rom_c9000/src/rom_e0564.o(.rodata)
		rom_c9000/src/rom_e28f4.o(.rodata)
		rom_c9000/src/rom_e3958.o(.rodata)
		rom_c9000/src/rom_e47b8.o(.rodata)
		rom_c9000/src/rom_e6638.o(.rodata)
		rom_c9000/src/rom_e7320.o(.rodata)
		rom_c9000/src/rom_ea0d8.o(.rodata)
		rom_c9000/src/rom_eb754.o(.rodata)
		rom_c9000/src/rom_ece7c.o(.rodata)
		rom_c9000/src/rom_ed408.o(.rodata)
	} > rom

	rom_f0000 : ALIGN(0x1000) {
		rom_f0000/src/exports.o(.text)
		rom_f0000/src/rom_f0008.o(.text)
		rom_f0000/src/rom_f0254.o(.text)

		rom_f0000/src/rom_f0254.o(.rodata)
	} > rom

	rom_f2000 : ALIGN(0x1000) {
		rom_f2000/src/exports.o(.text)
		rom_f2000/src/rom_f2028.o(.text)

		rom_f2000/src/rom_f2028.o(.rodata)
	} > rom

	rom_f4000 : ALIGN(0x1000) {
		rom_f4000/src/exports.o(.text)
		rom_f4000/src/rom_f4008.o(.text)

		rom_f4000/src/rom_f4008.o(.rodata)
	} > rom

	rom_f6000 : ALIGN(0x1000) {
		rom_f6000/src/exports.o(.text)
		rom_f6000/src/rom_f6008.o(.text)

		rom_f6000/src/rom_f6008.o(.rodata)
	} > rom

	rom_f9000 : ALIGN(0x1000) {
		rom_f9000/src/exports.o(.text)
		rom_f9000/src/rom_f9080.o(.text)
		rom_f9000/src/rom_f95e0.o(.text)
		rom_f9000/src/rom_f9ef8.o(.text)

		rom_f9000/src/rom_f9080.o(.rodata)
		rom_f9000/src/rom_f95e0.o(.rodata)
		rom_f9000/src/rom_f9ef8.o(.rodata)
		rom_f9000/src/rom_fc624.o(.rodata)
	} > rom

	rom_185000 : ALIGN(0x1000) {
		rom_185000/src/exports.o(.text)
		rom_185000/src/rom_185008.o(.text)

		rom_185000/src/rom_185008.o(.rodata)

		. += 0x1000;
	} > rom

	rom_320000 : ALIGN(0x1000) {
		rom_320000/src/rom_320000.o(.rodata)
	} > rom

	.fill : {
		. = ORIGIN(rom) + LENGTH(rom) - 1;
		BYTE(0);
	} > rom

	/DISCARD/ : {
		*(*)
	}
}
