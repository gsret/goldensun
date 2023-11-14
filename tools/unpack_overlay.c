#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <getopt.h>
#include <limits.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

static char *rom_path;
static unsigned rom_offset;
static char *output_path;

static uint8_t *input;
static uint8_t output[32768];

static unsigned input_cursor;
static unsigned output_cursor;

static bool done;

static int parse_unsigned(const char *str, unsigned *val) {
	char *endptr;
	unsigned long ul;

	errno = 0;
	ul = strtoul(str, &endptr, 0);

	if (ul > UINT_MAX) {
		errno = ERANGE;
	}

	if (errno) {
		perror("parse_unsigned");
		return 1;
	}

	if (endptr == str) {
		fprintf(stderr, "parse_unsigned: not a number: %s\n", str);
		return 1;
	}

	*val = ul;
	return 0;
}

static void print_usage(const char *progname) {
	fprintf(stderr, "Usage: %s -r rom-file [-a offset] [-o output-file]\n", progname);
}

static int parse_options(int argc, char *argv[]) {
	int c;
	while ((c = getopt(argc, argv, "a:o:r:")) != -1) {
		int rc;
		switch (c) {
			case 'a':
				rc = parse_unsigned(optarg, &rom_offset);
				if (rc) {
					return 1;
				}
				break;
			case 'o':
				output_path = optarg;
				break;
			case 'r':
				rom_path = optarg;
				break;
			case '?':
				return 1;
			default:
				abort();
		}
	}

	if (rom_path == NULL) {
		fprintf(stderr, "ROM file path (option -r) is required\n");
		return 1;
	}

	return 0;
}

static void *open_rom(const char *path) {
	int fd = open(path, O_RDONLY);
	if (fd == -1) {
		perror(path);
		return NULL;
	}

	struct stat st;
	if (fstat(fd, &st)) {
		perror("fstat");
		return NULL;
	}

	assert(st.st_size > 0);

	void *map = mmap(NULL, st.st_size, PROT_READ, MAP_SHARED, fd, 0);
	if (map == MAP_FAILED) {
		perror("mmap");
		return NULL;
	}

	return map;
}

static uint8_t read_byte(void) {
	return input[input_cursor++];
}

static void write_byte(uint8_t byte) {
	assert(output_cursor < sizeof(output));
	output[output_cursor++] = byte;
}

static void copy_output(unsigned start, unsigned count) {
	assert(start < output_cursor);
	for (unsigned i = 0; i < count; i++) {
		write_byte(output[start++]);
	}
}

static uint32_t mode0_read_bits(unsigned count) {
	static uint32_t bits = 0;
	static unsigned num_bits = 0;

	assert(count <= 16);

	while (num_bits < count) {
		bits |= read_byte() << num_bits;
		num_bits += 8;
	}

	uint32_t mask = (1 << count) - 1;
	uint32_t val = bits & mask;

	bits >>= count;
	num_bits -= count;

	return val;
}

static uint32_t mode0_read_bit(void) {
	return mode0_read_bits(1);
}

static uint32_t mode0_read_byte(void) {
	return mode0_read_bits(8);
}

static void mode0_literal(void) {
	write_byte(mode0_read_byte());
}

static unsigned mode0_count(void) {
	unsigned count = mode0_read_bits(2);
	if (count) {
		return count + 7;
	}

	count = mode0_read_bits(7);
	if (count) {
		return count + 10;
	}

	return 0;
}

static unsigned mode0_offset(void) {
	if (mode0_read_bit()) {
		return 1 + mode0_read_bits(5);
	}

	assert(output_cursor > 33);
	unsigned max_offset = output_cursor - 33;
	unsigned offset_bits;

	if (max_offset < (1 << 11)) {
		offset_bits = 0;
		while (max_offset) {
			offset_bits++;
			max_offset >>= 1;
		}
		assert(offset_bits < 12);
	} else {
		offset_bits = 12;
	}

	return 33 + mode0_read_bits(offset_bits);
}

static void mode0_copy(unsigned count) {
	if (count == 0) {
		done = true;
		return;
	}

	unsigned offset = mode0_offset();
	assert(offset <= output_cursor);
	unsigned start = output_cursor - offset;
	copy_output(start, count);
}

static void decompress_mode0(void) {
	while (!done) {
		if (mode0_read_bit())
			mode0_literal();
		else if (!mode0_read_bit())
			mode0_copy(2);
		else if (!mode0_read_bit())
			mode0_copy(3);
		else if (!mode0_read_bit())
			mode0_copy(4);
		else if (!mode0_read_bit())
			mode0_copy(5);
		else if (mode0_read_bit())
			mode0_copy(mode0_count());
		else if (!mode0_read_bit())
			mode0_copy(6);
		else
			mode0_copy(7);
	}
}

static uint8_t mode1_read_command(void) {
	static uint8_t byte = 0;

	uint8_t cmd = byte >> 7;
	byte = byte << 1;

	if (byte == 0) {
		byte = read_byte();
		cmd = byte >> 7;
		byte = ((byte << 1) + 1) & 0xff;
	}

	return cmd;
}

static void mode1_literal() {
	write_byte(read_byte());
}

static void mode1_copy() {
	uint8_t lo = read_byte();
	uint8_t hi = read_byte();

	if (lo == 0 && hi == 0) {
		done = true;
		return;
	}

	unsigned count = lo & 0x0f;
	unsigned offset = ((lo & 0xf0) << 4) | hi;
	assert (offset <= output_cursor);

	if (count == 0) {
		count = 16 + read_byte();
	}

	copy_output(output_cursor - offset, count + 1);
}

static void decompress_mode1(void) {
	while (!done) {
		uint8_t cmd = mode1_read_command();
		switch (cmd) {
			case 0:
				mode1_literal();
				break;
			case 1:
				mode1_copy();
				break;
			default:
				fprintf(stderr, "decompress_mode1: invalid command: %hhu\n", cmd);
				exit(EXIT_FAILURE);
		}
	}
}

static void decode_thumb(void) {
	uint16_t *insns = (uint16_t *) output;

	for (unsigned pc = 2; pc < output_cursor; pc += 2) {
		uint16_t lo = insns[0], hi = insns[1];

		if ((lo & 0xf800) == 0xf000 && (hi & 0xf800) == 0xf800) {
			uint32_t abs = ((lo & ~0xf800) << 12) | ((hi & ~0xf800) << 1);
			int32_t rel = (abs - pc) & 0x7fffff;
			insns[0] = (rel >> 12) | 0xf000;
			insns[1] = (rel >>  1) | 0xf800;
		}

		insns++;
	}
}

static void pad_output() {
	while (output_cursor % 4) {
		output[output_cursor++] = 0;
	}
}

static int write_output(const char *path) {
	int fd;

	if (path != NULL) {
		fd = open(path, O_WRONLY | O_CREAT, 0644);
		if (fd < 0) {
			perror("open");
			return 1;
		}
	} else {
		fd = fileno(stdout);
		path = "stdout";
	}

	ssize_t written = write(fd, output, output_cursor);
	if (written < 0) {
		perror("write");
		return 1;
	} else if (written < output_cursor) {
		fprintf(stderr, "short write(): expected %u, got %zd\n", output_cursor, written);
		return 1;
	}

	return 0;
}

int main(int argc, char *argv[]) {
	int rc = parse_options(argc, argv);
	if (rc) {
		print_usage(argv[0]);
		return 1;
	}

	input = open_rom(rom_path);
	if (input == NULL) {
		return 1;
	}
	input += rom_offset;

	int mode = read_byte();
	switch (mode) {
		case 0:
			decompress_mode0();
			break;
		case 1:
			decompress_mode1();
			break;
		default:
			fprintf(stderr, "unknown mode %d. is offset correct?\n", mode);
			return 1;
	}

	decode_thumb();

	pad_output();

	return write_output(output_path);
}
