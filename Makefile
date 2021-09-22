CC = gcc
LD = gcc
RM = rm -f
CFLAGS = -Wall -Werror -g
OBJECTS := $(patsubst %.c, %.o, $(wildcard *.c))
MAIN = nsga2r

all: $(MAIN)

$(MAIN): $(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) -o $(MAIN) -lm

%.o: %.c nsga2.h rand.h
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(OBJECTS)
