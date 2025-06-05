/* Overlay compression tool.
 *
 * Input is assumed to be Thumb code. It is pre-processed by
 * transforming BL instructions to make the offsets absolute (relative
 * to start of text) instead of PC-relative.
 *
 * Two LZSS variants are tried and the best result is kept. The first
 * (mode 1) is basically classic LZSS encoding with a flag bit and 4-bit
 * length/12-bit distance, plus a tweak for optional 8-bit length. The
 * second (mode 0) is a custom encoding optimizing for shorter distances
 * and lengths.
 *
 * Both variants apply a one-byte lookahead, inserting a literal byte to
 * obtain a longer copy. However, the mode 0 variant only does this
 * once.
 *
 * Both algorithms do not use the maximum distance that can be encoded.
 * Further research is needed; for now, the maximums are hard-coded to
 * obtain matching output.
 *
 * Thanks to Dyrati for figuring out the lookahead logic.
 */

#include <assert.h>
#include <fcntl.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define BUFFER_SIZE 32768

struct token {
	unsigned distance;
	unsigned length;
};

static char *input_path, *output_path;

static uint8_t input[BUFFER_SIZE];
static unsigned input_length;

static struct token tokens[BUFFER_SIZE];
static unsigned num_tokens;

static uint8_t mode0_output[BUFFER_SIZE], mode1_output[BUFFER_SIZE];
static unsigned mode0_length, mode1_length;

static uint32_t mode0_bit_buffer;
static unsigned mode0_num_bits;

static void print_usage(const char *progname) {
	fprintf(stderr, "Usage: %s -i input-file -o output-file\n", progname);
}

static int parse_options(int argc, char *argv[]) {
	int c;
	while ((c = getopt(argc, argv, "i:o:")) != -1) {
		switch (c) {
			case 'i':
				input_path = optarg;
				break;
			case 'o':
				output_path = optarg;
				break;
			case '?':
				return 1;
			default:
				abort();
		}
	}

	if (input_path == NULL || output_path == NULL) {
		return 1;
	}

	return 0;
}

static void load_input(const char *pathname) {
	int fd = open(pathname, O_RDONLY);
	if (fd < 0) {
		perror(pathname);
		exit(EXIT_FAILURE);
	}

	ssize_t got;

	do {
		got = read(fd, input + input_length, sizeof(input) - input_length);
		if (got < 0) {
			perror("read");
			exit(EXIT_FAILURE);
		}
		input_length += got;
	} while (got > 0 && input_length < BUFFER_SIZE);

	if (input_length == BUFFER_SIZE) {
		uint8_t c;
		got = read(fd, &c, 1);
		if (got < 0) {
			perror("read");
			exit(EXIT_FAILURE);
		}
		if (got > 0) {
			fprintf(stderr, "input file longer than max %zu\n", sizeof(input));
			exit(EXIT_FAILURE);
		}
	}

	close(fd);
}

static void encode_thumb(void) {
	uint16_t *insns = (uint16_t *) input;

	for (unsigned pc = 2; pc < input_length; pc += 2) {
		uint16_t lo = insns[0], hi = insns[1];

		if ((lo & 0xf800) == 0xf000 && (hi & 0xf800) == 0xf800) {
			int32_t rel = ((lo & ~0xf800) << 12) | ((hi & ~0xf800) << 1);
			if (rel & 0x400000) {
				rel |= 0xff800000;
			}
			uint32_t abs = rel + pc;
			insns[0] = ((abs >> 12) & 0x07ff) | 0xf000;
			insns[1] = ((abs >>  1) & 0x07ff) | 0xf800;
		}

		insns++;
	}
}

static struct token null_token(void) {
	return (struct token){0};
}

static struct token literal_token(void) {
	return (struct token){ .distance = 0, .length = 1 };
}

static struct token find_longest_match(unsigned start, unsigned max_distance, unsigned max_length) {
	struct token best = literal_token();

	if (max_distance > start) {
		max_distance = start;
	}

	for (unsigned distance = 1; distance <= max_distance; distance++) {
		unsigned length = 0;

		for (; length < max_length; length++) {
			unsigned ip = start + length;
			if (ip >= input_length) break;
			unsigned mp = start - distance + length;
			if (input[ip] != input[mp]) break;
		}

		if (length > best.length) {
			best.distance = distance;
			best.length = length;
		}
	}

	return best;
}

static void compress_mode0(void) {
	const unsigned max_length = 137;
	struct token previous = {0}, replacement = {0};
	bool replacement_done = false;
	unsigned pos = 0;

	while (pos < input_length) {
		/* Very strange.
		 * The longer distance occurs only in one file:
		 * GS1(US) @ 0x7d30e0 (file 948)
		 */
		unsigned max_distance = (pos > 12000 && pos < 12200) ? 4125 : 4123;
		struct token current = find_longest_match(pos, max_distance, max_length);

		if (!replacement_done) {
			if (previous.length > 1 && replacement.length > 2) {
				unsigned current_length = previous.length + current.length;
				unsigned replacement_length = replacement.length + 1;

				if (replacement_length >= current_length) {
					tokens[num_tokens - 1] = literal_token();
					pos = pos - previous.length + 1;
					current = replacement;
					replacement_done = true;
				}
			}

			if (current.length > 1) {
				replacement = find_longest_match(pos + 1, max_distance, max_length);
			} else {
				replacement = null_token();
			}

			previous = current;
		}

		assert(num_tokens < BUFFER_SIZE);
		tokens[num_tokens++] = current;

		pos += current.length;
	}

	assert(num_tokens < BUFFER_SIZE);
	tokens[num_tokens++] = null_token();
}

static void mode0_flush(void) {
	while (mode0_num_bits > 16) {
		assert(mode0_length < BUFFER_SIZE);
		mode0_output[mode0_length++] = mode0_bit_buffer;
		mode0_bit_buffer >>= 8;
		mode0_num_bits -= 8;
	}
}

static void mode0_flush_final(void) {
	while (mode0_num_bits > 8) {
		assert(mode0_length < BUFFER_SIZE);
		mode0_output[mode0_length++] = mode0_bit_buffer;
		mode0_bit_buffer >>= 8;
		mode0_num_bits -= 8;
	}
	if (mode0_num_bits) {
		assert(mode0_length < BUFFER_SIZE);
		mode0_output[mode0_length++] = mode0_bit_buffer;
	}
}

static void mode0_push_bits(unsigned num_bits, unsigned val) {
	assert(num_bits <= 16);
	mode0_bit_buffer |= val << mode0_num_bits;
	mode0_num_bits += num_bits;
	mode0_flush();
}

static void encode_mode0_length(unsigned length) {
	if (length == 2) {
		mode0_push_bits(2, 0b00);
	} else if (length == 3) {
		mode0_push_bits(3, 0b010);
	} else if (length == 4) {
		mode0_push_bits(4, 0b0110);
	} else if (length == 5) {
		mode0_push_bits(5, 0b01110);
	} else if (length == 6) {
		mode0_push_bits(7, 0b0011110);
	} else if (length == 7) {
		mode0_push_bits(7, 0b1011110);
	} else {
		mode0_push_bits(6, 0b111110);
		if (length == 0) {
			mode0_push_bits(9, 0);
		} else if (length < 11) {
			mode0_push_bits(2, length - 7);
		} else {
			mode0_push_bits(2, 0);
			mode0_push_bits(7, length - 10);
		}
	}
}

static void encode_mode0_distance(unsigned pos, unsigned distance) {
	assert(distance > 0);

	if (distance < 33) {
		mode0_push_bits(1, 1);
		mode0_push_bits(5, distance - 1);
	} else {
		assert(distance - 33 <= 0xfff);
		assert(pos > 33);
		uint32_t max_distance = pos - 33;
		unsigned distance_bits;

		if (max_distance < (1 << 11)) {
			for (distance_bits = 0; max_distance; distance_bits++) {
				max_distance >>= 1;
			}
			assert(distance_bits > 0);
			assert(distance_bits < 12);
		} else {
			distance_bits = 12;
		}

		mode0_push_bits(1, 0);
		mode0_push_bits(distance_bits, distance - 33);
	}
}

static void encode_mode0(void) {
	unsigned pos = 0;

	for (unsigned i = 0; i < num_tokens; i++) {
		struct token t = tokens[i];
		if (t.length == 0) {
			encode_mode0_length(0);
		} else if (t.length == 1) {
			mode0_push_bits(1, 1);
			mode0_push_bits(8, input[pos]);
		} else {
			encode_mode0_length(t.length);
			encode_mode0_distance(pos, t.distance);
		}
		pos += t.length;
	}

	mode0_flush_final();
}

static void compress_mode1(void) {
	const unsigned max_distance = 4092, max_length = 272;
	struct token previous = {0}, replacement = {0};
	unsigned pos = 0;

	while (pos < input_length) {
		struct token current = find_longest_match(pos, max_distance, max_length);

		/* This matches every overlay in GS1(US).
		 * However, counterexamples exist in other ROMs:
		 * GS2(US) @ 0xf6c6c4
		 * Mario Golf(US) @ 0xcd9e78, 0xd25034, 0xd2fb08
		 */
		if (previous.length > 1 && replacement.length > 2) {
			unsigned current_length = previous.length + current.length;
			unsigned replacement_length = replacement.length + 1;

			if (replacement_length >= current_length) {
				tokens[num_tokens - 1] = literal_token();
				pos = pos - previous.length + 1;
				current = replacement;
			}
		}

		if (current.length > 1) {
			replacement = find_longest_match(pos + 1, max_distance, max_length);
		} else {
			replacement = null_token();
		}

		assert(num_tokens < BUFFER_SIZE);
		tokens[num_tokens++] = current;

		pos += current.length;
		previous = current;
	}

	assert(num_tokens < BUFFER_SIZE);
	tokens[num_tokens++] = null_token();
}

static void encode_mode1(void) {
	unsigned pos = 0;

	for (unsigned i = 0; i < num_tokens; i+= 8) {
		uint8_t flags = 0, data[24] = {0};
		unsigned d = 0;

		for (unsigned j = 0; j < 8 && i + j < num_tokens; j++) {
			struct token t = tokens[i + j];
			flags |= (t.length != 1) << (7 - j);

			if (t.length == 0) {
				data[d++] = 0;
				data[d++] = 0;
			} else if (t.length == 1) {
				data[d++] = input[pos];
			} else if (t.length <= 16) {
				assert(t.distance <= 0xfff);
				data[d++] = (t.distance >> 8 << 4) | (t.length - 1);
				data[d++] = t.distance & 0xff;
			} else {
				assert(t.distance <= 0xfff);
				assert(t.length - 17 <= 0xff);
				data[d++] = t.distance >> 8 << 4;
				data[d++] = t.distance & 0xff;
				data[d++] = t.length - 17;
			}

			pos += t.length;
		}

		assert(mode1_length + 1 + d < BUFFER_SIZE);
		mode1_output[mode1_length++] = flags;
		for (unsigned j = 0; j < d; j++) {
			mode1_output[mode1_length++] = data[j];
		}
	}
}

static void write_output(const char *pathname, const uint8_t *src, size_t len) {
	int fd = open(pathname, O_CREAT|O_TRUNC|O_WRONLY, 0644);
	if (fd < 0) {
		perror(pathname);
		exit(EXIT_FAILURE);
	}

	do {
		ssize_t rc = write(fd, src, len);
		if (rc < 0) {
			perror("write");
			exit(EXIT_FAILURE);
		}
		src += rc;
		len -= rc;
	} while (len > 0);

	close(fd);
}

int main(int argc, char *argv[]) {
	int rc = parse_options(argc, argv);
	if (rc) {
		print_usage(argv[0]);
		return 1;
	}

	load_input(input_path);

	encode_thumb();

	num_tokens = 0;
	compress_mode0();

	mode0_output[mode0_length++] = 0;
	encode_mode0();

	num_tokens = 0;
	compress_mode1();

	mode1_output[mode1_length++] = 1;
	encode_mode1();

	write_output(output_path,
		mode0_length < mode1_length ? mode0_output : mode1_output,
		mode0_length < mode1_length ? mode0_length : mode1_length);

	return 0;
}
