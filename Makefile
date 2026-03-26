NAME=main

CC=cc
CFLAGS= -Wall -Wextra -Werror
LDFLAGS=
MAKEFLAGS+=--silent

SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:%.c=%.o)
INCLUDES=$(wildcard *.h)

.PHONY: all clean fclean re run debug sanitize

all: $(NAME)

$(NAME): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(NAME)
	./$(NAME)

clean:
	rm -r $(OBJECTS)

fclean: clean
	rm -r $(NAME)

re: fclean all

debug: CFLAGS+= -g
debug: re

sanitize: CFLAGS += -fsanitize=address
sanitize: LDFLAGS += -fsanitize=address
sanitize: re
