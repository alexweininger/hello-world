CC = gcc
CFLAGS = -g
POSTFLAGS =
DEPS = hello.h
OBJ = main.c hello.c

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $< $(POSTFLAGS)
hello: $(OBJ)
	gcc $(CFLAGS) -o $@ $^ $(POSTFLAGS)
clean:
	rm -f *.o hello
