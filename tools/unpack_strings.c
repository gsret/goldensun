#include <assert.h>
#include <fcntl.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

#define HUFFMAN_OFFSET 0x3842c
#define DATA_OFFSET 0x736b8
#define NUM_STRINGS 10722

static char *rom_path;
static uint8_t *rom;
static char *output_path;

static int parse_options(int argc, char *argv[]) {
	int c;
	while ((c = getopt(argc, argv, "o:r:")) != -1) {
		switch (c) {
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

static void print_usage(const char *progname) {
	fprintf(stderr, "Usage: %s -r rom-file [-o output-file]\n", progname);
}

static void *open_rom() {
	int fd = open(rom_path, O_RDONLY);
	if (fd == -1) {
		perror(rom_path);
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

static FILE *open_output_file() {
	if (output_path == NULL) {
		return stdout;
	}

	FILE *fp = fopen(output_path, "wb");
	if (fp == NULL) {
		perror(output_path);
		return NULL;
	}

	return fp;
}

static int close_output_file(FILE *output_file) {
	int rc = fclose(output_file);
	if (rc) {
		perror("fclose");
	}
	return rc;
}

struct bit_reader {
	uint8_t bits;
	uint8_t avail;
	uint8_t *ptr;
	unsigned bytes_read;
};

static void bit_reader_init(struct bit_reader *reader, uint8_t *ptr) {
	reader->bits = 0;
	reader->avail = 0;
	reader->ptr = ptr;
}

static unsigned bit_reader_next(struct bit_reader *reader) {
	if (reader->avail == 0) {
		reader->bits = *(reader->ptr++);
		reader->avail = 8;
	}

	unsigned bit = reader->bits & 1;

	reader->bits >>= 1;
	reader->avail--;

	return bit;
}

static void *rom_pointer(uint32_t pointer) {
	unsigned offset = pointer & 0xffffff;
	return (void *) (rom + offset);
}

struct string_pointers {
	uint32_t data_ptr;
	uint32_t lengths_ptr;
};

struct huffman_pointers {
	uint32_t data_ptr;
	uint32_t offsets_ptr;
};

static uint8_t *get_huffman_tree(uint16_t chr) {
	assert(chr < 256);

	struct huffman_pointers *huffman_ptrs = rom_pointer(HUFFMAN_OFFSET);
	uint32_t data_ptr = huffman_ptrs->data_ptr;
	uint32_t offsets_ptr = huffman_ptrs->offsets_ptr;

	uint16_t *offsets = rom_pointer(offsets_ptr);
	uint16_t offset = offsets[chr];
	assert(offset != 0x8000);
	uint32_t tree_ptr = data_ptr + offset;

	return rom_pointer(tree_ptr);
}

static unsigned count_subtree_leaves(struct bit_reader *tree) {
	unsigned leaves = 0;
	int level = 0;

	while (level >= 0) {
		if (bit_reader_next(tree)) {
			leaves++;
			level--;
		} else {
			level++;
		}
	}

	return leaves;
}

static uint16_t get_char_value(uint8_t *leaves, unsigned leaf_id) {
	unsigned offset = leaf_id + (leaf_id >> 1);
	uint8_t *ptr = leaves - offset;
	uint8_t bytes[2] = { ptr[-1], ptr[-2] };

	uint16_t chr;
	if (leaf_id & 1) {
		chr = ((bytes[0] & 0x0f) << 8) | bytes[1];
	} else {
		chr = (bytes[0] << 4) | (bytes[1] >> 4);
	}

	return chr;
}

static uint16_t decompress_char(struct bit_reader *string_reader, uint16_t prev_chr) {
	unsigned leaf_id = 0;

	uint8_t *tree = get_huffman_tree(prev_chr);
	struct bit_reader tree_reader;
	bit_reader_init(&tree_reader, tree);

	while (bit_reader_next(&tree_reader) == 0) {
		if (bit_reader_next(string_reader)) {
			leaf_id += count_subtree_leaves(&tree_reader);
		}
	}

	return get_char_value(tree, leaf_id);
}

static char *decompress_string(uint8_t *string) {
	struct bit_reader string_reader;
	bit_reader_init(&string_reader, string);

	static char buf[512];
	char *p = buf;
	char *endp = buf + sizeof(buf);
	uint16_t c = 0;

	do {
		assert(p < endp);
		c = decompress_char(&string_reader, c);
		assert(c <= CHAR_MAX);
		*(p++) = c;
	} while (c);

	return buf;
}

static void print_string(char *string, FILE *fp) {
	char c;
	do {
		c = *(string++);
		if (c == 0) fprintf(fp, "\n");
		else if (c < 32) fprintf(fp, "\\x%02hhx", c);
		else fprintf(fp, "%c", c);
	} while (c);
}

static void print_strings(FILE *fp) {
	struct string_pointers *string_ptrs = rom_pointer(DATA_OFFSET);
	unsigned string_id = 0;

	for (unsigned i = 0; string_id < NUM_STRINGS; i++) {
		uint8_t *data = rom_pointer(string_ptrs[i].data_ptr);
		uint8_t *lengths = rom_pointer(string_ptrs[i].lengths_ptr);

		for (unsigned j = 0; j < 256 && string_id < NUM_STRINGS; j++, string_id++) {
			char *string = decompress_string(data);
			print_string(string, fp);
			assert(lengths[j] != 255);
			data += lengths[j];
		}
	}
}

int main(int argc, char *argv[]) {
	int rc = parse_options(argc, argv);
	if (rc) {
		print_usage(argv[0]);
		return 1;
	}

	rom = open_rom();
	if (rom == NULL) {
		return 1;
	}

	FILE *output_file = open_output_file();
	if (output_file == NULL) {
		return 1;
	}

	print_strings(output_file);

	return close_output_file(output_file);
}
