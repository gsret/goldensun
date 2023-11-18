#define _GNU_SOURCE

#include <assert.h>
#include <limits.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define NUM_CHARS (1 << 8)
#define NUM_NODES (2 * NUM_CHARS)

#define ITEMS_PER_FILE 256

static char *input_path;
static char *output_path;

static uint8_t *text;
static unsigned text_len;
static unsigned nstrings;

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

	return 0;
}

static void print_usage(const char *progname) {
	fprintf(stderr, "Usage: %s [-i input-path] [-o output-path]\n", progname);
}

static FILE *open_input_file(void) {
	if (input_path == NULL) return stdin;

	FILE *fp;
	assert((fp = fopen(input_path, "rb")) != NULL);
	return fp;
}

static FILE *open_output_file(const char *template, ...) {
	char *path;
	va_list args;
	va_start(args, template);
	assert(vasprintf(&path, template, args) != -1);
	va_end(args);

	FILE *fp;
	assert((fp = fopen(path, "wb")) != NULL);
	free(path);
	return fp;
}

static void read_strings(FILE *fp) {
	/* TODO: support extended chars; UTF-8? */

	unsigned nchars = 0;
	int c;
	char chr;

	while ((c = fgetc(fp)) != EOF) {
		assert(c >= 0 && c <= CHAR_MAX);
		chr = c;

		if (nchars == text_len) {
			text_len += 4096;
			text = realloc(text, text_len);
			assert(text != NULL);
		}

		if (chr == '\\') {
			assert((c = fgetc(fp)) == 'x');
			assert(fscanf(fp, "%02hhx", &chr) == 1);
		} else if (chr == '\n') {
			chr = '\0';
			nstrings++;
		}

		text[nchars++] = chr;
	}

	if (chr != '\0') {
		text[nchars++] = '\0';
		nstrings++;
	}

	text_len = nchars;
}

struct node {
	int16_t chr;
	unsigned freq;
	unsigned pos;
	struct node *parent;
	struct node *children[2];
};

struct tree {
	struct node *root;
	struct node nodes[NUM_NODES];
	unsigned nleaves;
	unsigned next_node_id;
};

struct queue {
	struct node *nodes[NUM_NODES];
	unsigned len;
};

static struct tree trees[NUM_CHARS] = { 0 };
static unsigned ntrees = 0;

static void init_tree(struct tree *tree) {
	for (unsigned i = 0; i < NUM_CHARS; i++) {
		tree->nodes[i].chr = i;
	}
	tree->next_node_id = NUM_CHARS;
}

static void count_frequency(struct tree *tree, uint8_t target) {
	uint8_t prev_chr = 0;

	for (size_t pos = 0; pos < text_len; pos++) {
		uint8_t chr = text[pos];

		if (prev_chr == target) {
			struct node *node = &tree->nodes[chr];
			if (node->freq == 0) node->pos = pos;
			node->freq++;
		}

		prev_chr = chr;
	}
}

static bool is_leaf(const struct node *node) {
	return node->chr != -1;
}

static bool sorted(const struct node *n1, const struct node *n2) {
	if (n1->freq != n2->freq) return n1->freq < n2->freq;
	if (is_leaf(n1) != is_leaf(n2)) return is_leaf(n1) > is_leaf(n2);
	if (n1->pos != n2->pos) return n1->pos < n2->pos;
	return true;
}

static void queue_push(struct queue *queue, struct node *node) {
	assert(queue->len < NUM_NODES);

	/* find insertion point */
	unsigned pos;
	for (pos = 0; pos < queue->len; pos++) {
		struct node *other = queue->nodes[pos];
		if (!sorted(node, other)) break;
	}

	/* push lower freqs back */
	if (pos < queue->len) {
		unsigned bytes = (queue->len - pos) * sizeof(struct node *);
		struct node **src = &queue->nodes[pos];
		struct node **dest = &queue->nodes[pos+1];
		memmove(dest, src, bytes);
	}

	queue->nodes[pos] = node;
	queue->len++;
}

static struct node *queue_pop(struct queue *queue) {
	return queue->nodes[--queue->len];
}

static void enqueue_leaves(struct tree *tree, struct queue *queue) {
	for (unsigned i = 0; i < NUM_CHARS; i++) {
		struct node *node = &tree->nodes[i];
		if (node->freq) {
			queue_push(queue, node);
			tree->nleaves++;
		}
	}
}

static void build_tree(struct tree *tree, struct queue *queue) {
	while (queue->len > 1) {
		/* pop two nodes with lowest weight */
		struct node *child1 = queue_pop(queue);
		struct node *child2 = queue_pop(queue);

		/* create parent node with these as children */
		unsigned id = tree->next_node_id++;
		struct node *parent = &tree->nodes[id];
		parent->chr = -1;
		parent->pos = id;
		parent->children[0] = child1;
		parent->children[1] = child2;
		child1->parent = parent;
		child2->parent = parent;

		/* insert with weight set to sum of children's weights */
		parent->freq = child1->freq + child2->freq;
		queue_push(queue, parent);
	}

	if (queue->len) tree->root = queue_pop(queue);
}

static void build_trees(void) {
	for (unsigned i = 0; i < NUM_CHARS; i++) {
		struct tree *tree = &trees[i];
		init_tree(tree);
		count_frequency(tree, i);

		struct queue queue;
		queue.len = 0;

		enqueue_leaves(tree, &queue);
		build_tree(tree, &queue);

		if (tree->nleaves) ntrees = i + 1;
	}
}

struct bit_writer {
	uint8_t bits;
	uint8_t bits_pending;

	uint8_t *buf;
	unsigned buflen;

	unsigned bits_written;
	unsigned bytes_written;
};

static void bit_writer_init(struct bit_writer *writer, uint8_t *buf, unsigned buflen) {
	writer->bits = 0;
	writer->bits_pending = 0;

	writer->buf = buf;
	writer->buflen = buflen;

	writer->bits_written = 0;
	writer->bytes_written = 0;
}

static void bit_writer_flush(struct bit_writer *writer) {
	if (writer->bits_pending) {
		assert(writer->bytes_written < writer->buflen);
		writer->buf[writer->bytes_written++] = writer->bits;
		writer->bits = 0;
		writer->bits_pending = 0;
	}
}

static void bit_writer_append(struct bit_writer *writer, uint8_t bit) {
	writer->bits |= (bit << writer->bits_pending);
	writer->bits_pending++;
	writer->bits_written++;
	if (writer->bits_pending == 8) {
		bit_writer_flush(writer);
	}
}

struct serialized_tree {
	uint8_t leaf_array[NUM_CHARS + NUM_CHARS / 2];
	unsigned leaf_array_len;
	uint8_t topology[NUM_NODES / 8];
	unsigned topology_len;
};

struct tree_serializer {
	struct serialized_tree *serialized;
	unsigned next_leaf_id;
	struct bit_writer bit_writer;
};

static void serialize_leaf(struct tree_serializer *serializer, unsigned char chr) {
	struct serialized_tree *serialized = serializer->serialized;

	unsigned id = serializer->next_leaf_id++;
	unsigned offset = id + (id >> 1);

	uint8_t *end = serialized->leaf_array + serialized->leaf_array_len;
	uint8_t *ptr = end - offset;

	if (id & 1) {
		*(ptr-2) = chr;
		/* top nibble = 0 */
	} else {
		*(ptr-1) = (chr >> 4);
		*(ptr-2) |= ((chr & 0x0F) << 4);
	}
}

static void serialize_subtree(struct tree_serializer *serializer, const struct node *node) {
	if (is_leaf(node)) {
		bit_writer_append(&serializer->bit_writer, 1);
		serialize_leaf(serializer, node->chr);
	} else {
		bit_writer_append(&serializer->bit_writer, 0);
		serialize_subtree(serializer, node->children[0]);
		serialize_subtree(serializer, node->children[1]);
	}
}

static void serialize_tree(const struct tree *tree, struct serialized_tree *serialized) {
	/* zero leaf_array so we can safely combine nibbles with OR */
	memset(serialized->leaf_array, 0, sizeof(serialized->leaf_array));

	unsigned nleaves = tree->nleaves;
	serialized->leaf_array_len = nleaves + (nleaves >> 1) + (nleaves & 1);

	struct tree_serializer serializer = { 0 };
	serializer.serialized = serialized;
	bit_writer_init(&serializer.bit_writer, serialized->topology, sizeof(serialized->topology));

	if (tree->root != NULL) {
		serialize_subtree(&serializer, tree->root);
		bit_writer_flush(&serializer.bit_writer);
	}

	serialized->topology_len = serializer.bit_writer.bytes_written;
}

static void write_offsets(uint16_t offsets[ITEMS_PER_FILE], unsigned count) {
	FILE *fp = open_output_file("huffman_tree_offsets.bin");
	assert(fwrite(offsets, sizeof(uint16_t), count, fp) == count);
	assert(fclose(fp) == 0);
}

static void write_trees(void) {
	/* TODO: support 12-bit chars; write trees to multiple files, 256 per */
	assert(ntrees <= ITEMS_PER_FILE);

	FILE *fp = open_output_file("huffman_trees.bin");
	uint16_t offsets[ITEMS_PER_FILE];
	unsigned pos = 0;

	for (unsigned i = 0; i < ntrees; i++) {
		struct serialized_tree serialized;
		struct tree *tree = &trees[i];
		serialize_tree(tree, &serialized);

		pos += serialized.leaf_array_len;
		offsets[i] = serialized.leaf_array_len ? pos : 0x8000;
		pos += serialized.topology_len;

		assert(fwrite(serialized.leaf_array, 1, serialized.leaf_array_len, fp) == serialized.leaf_array_len);
		assert(fwrite(serialized.topology, 1, serialized.topology_len, fp) == serialized.topology_len);
	}

	assert(fclose(fp) == 0);

	write_offsets(offsets, ntrees);
}

static void compress_char(uint8_t prev_chr, uint8_t next_chr, struct bit_writer *bit_writer) {
	uint8_t char_bits[256];

	/* start at the leaf node that holds next_chr */
	const struct tree *tree = &trees[prev_chr];
	const struct node *node = &tree->nodes[next_chr];
	assert(node->chr == next_chr);

	/* store bits into array from leaf to root */
	unsigned pos = 0;
	const struct node *parent;

	/* the leaf node can itself be the root (if there is only one output char) */
	while ((parent = node->parent) != NULL) {
		assert(pos < sizeof(char_bits));
		/* write 0 if node is parent's left child, 1 if right */
		char_bits[pos++] = (node == parent->children[1]);
		node = parent;
	}

	/* write out the bits in reverse order, from root to leaf */
	while (pos > 0) {
		bit_writer_append(bit_writer, char_bits[--pos]);
	}

	/* do not call bit_writer_flush here; next char starts immediately */
}

static unsigned compress_string(const uint8_t **ptr, FILE *fp) {
	uint8_t compressed[256];
	struct bit_writer bit_writer;
	bit_writer_init(&bit_writer, compressed, sizeof(compressed));

	uint8_t prev_chr = 0;
	const uint8_t *my_p = *ptr;

	do {
		assert(my_p < (text + text_len));
		uint8_t next_chr = *(my_p++);
		compress_char(prev_chr, next_chr, &bit_writer);
		prev_chr = next_chr;
	} while (prev_chr != 0);

	bit_writer_flush(&bit_writer);

	unsigned count = bit_writer.bytes_written;
	assert(fwrite(compressed, 1, count, fp) == count);

	*ptr = my_p;
	return count;
}

/* TODO: support length greater than 255 */
static void write_string_lengths(uint16_t lengths[ITEMS_PER_FILE], unsigned file_id, unsigned count) {
	FILE *fp = open_output_file("strings_%02u_lengths.bin", file_id);

	for (unsigned i = 0; i < count; i++) {
		unsigned length = lengths[i];
		assert(length < 255);
		fputc(length, fp);
	}

	assert(fclose(fp) == 0);
}

static void compress_strings_chunk(const uint8_t **ptr, unsigned file_id, unsigned count) {
	FILE *fp = open_output_file("strings_%02u.bin", file_id);

	uint16_t lengths[ITEMS_PER_FILE];
	for (unsigned i = 0; i < count; i++) {
		lengths[i] = compress_string(ptr, fp);
	}

	assert(fclose(fp) == 0);

	write_string_lengths(lengths, file_id, count);
}

static void compress_strings(void) {
	const uint8_t *ptr = text;
	unsigned file_id;

	for (file_id = 0; file_id < nstrings / ITEMS_PER_FILE; file_id++) {
		compress_strings_chunk(&ptr, file_id, ITEMS_PER_FILE);
	}

	unsigned remain = nstrings % ITEMS_PER_FILE;
	if (remain) {
		compress_strings_chunk(&ptr, file_id, remain);
	}
}

static void write_asm(const char *progname) {
	FILE *fp = open_output_file("strings.s");
	const char *path = output_path != NULL ? output_path : ".";

	fprintf(fp, "\t@ Generated by %s\n\n", progname);

	fprintf(fp, "\t.section .rodata\n\n");

	fprintf(fp, "\t.align\t2, 0\n");
	fprintf(fp, "HuffmanTrees:\n");
	fprintf(fp, "\t.incbin\t\"%s/huffman_trees.bin\"\n", path);
	fprintf(fp, "\t.size\tHuffmanTrees, . - HuffmanTrees\n\n");

	fprintf(fp, "\t.align\t2, 0\n");
	fprintf(fp, "HuffmanTreeOffsets:\n");
	fprintf(fp, "\t.incbin\t\"%s/huffman_tree_offsets.bin\"\n", path);
	fprintf(fp, "\t.size\tHuffmanTreeOffsets, . - HuffmanTreeOffsets\n\n");

	fprintf(fp, "\t.align\t2, 0\n");
	fprintf(fp, "\t.global\tHuffmanTreePointers\n");
	fprintf(fp, "HuffmanTreePointers:\n");
	fprintf(fp, "\t.word\tHuffmanTrees, HuffmanTreeOffsets\n");
	fprintf(fp, "\t.size\tHuffmanTreePointers, . - HuffmanTreePointers\n\n");

	unsigned nfiles = (nstrings / ITEMS_PER_FILE) + !!(nstrings % ITEMS_PER_FILE);

	fprintf(fp, "\t.align\t2, 0\n");
	for (unsigned file_id = 0; file_id < nfiles; file_id++) {
		fprintf(fp, "Strings_%u:\n", file_id);
		fprintf(fp, "\t.incbin\t\"%s/strings_%02u.bin\"\n", path, file_id);
		fprintf(fp, "\t.size\tStrings_%u, . - Strings_%u\n\n", file_id, file_id);

		fprintf(fp, "Strings_%u_Lengths:\n", file_id);
		fprintf(fp, "\t.incbin\t\"%s/strings_%02u_lengths.bin\"\n", path, file_id);
		fprintf(fp, "\t.size\tStrings_%u_Lengths, . - Strings_%u_Lengths\n\n", file_id, file_id);
	}

	fprintf(fp, "\t.align\t2, 0\n");
	fprintf(fp, "\t.global\tStringPointers\n");
	fprintf(fp, "StringPointers:\n");
	for (unsigned file_id = 0; file_id < nfiles; file_id++) {
		fprintf(fp, "\t.word\tStrings_%u, Strings_%u_Lengths\n", file_id, file_id);
	}
	fprintf(fp, "\t.size\tStringPointers, . - StringPointers\n\n");

	assert(fclose(fp) == 0);
}

int main(int argc, char *argv[]) {
	int rc = parse_options(argc, argv);
	if (rc) {
		print_usage(argv[0]);
		return 1;
	}

	FILE *input_file = open_input_file();
	read_strings(input_file);
	fclose(input_file);

	if (output_path != NULL) {
		if (chdir(output_path) != 0) {
			perror("chdir");
			return 1;
		}
	}

	build_trees();
	write_trees();
	compress_strings();
	write_asm(argv[0]);

	return 0;
}
