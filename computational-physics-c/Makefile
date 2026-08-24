CC ?= gcc
CFLAGS ?= -std=gnu11 -Wall -Wextra -Iinclude
LDLIBS ?= -lm
BUILD_DIR := build/bin
SOURCES := $(shell find src -name '*.c')
PROGRAMS := $(patsubst src/%.c,$(BUILD_DIR)/%,$(SOURCES))

.PHONY: all clean list

all: $(PROGRAMS)

$(BUILD_DIR)/%: src/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $< $(LDLIBS) -o $@

list:
	@printf '%s\n' $(SOURCES)

clean:
	rm -rf build
