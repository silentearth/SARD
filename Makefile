CDIR := ./
BINDIR := ./bin/
SOURCES := $(shell find $(SRCDIR) -name "*.c")
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))
CFLAGS := -Werror

CC := gcc

ALLFILES := $(SOURCES)

.PHONY : all

all: test

test: $(OBJECTS)
	$(CC) $^ -o $(BINDIR)/$@ $(CFLAGS)

