.PHONY: clean
.SUFFIXES: .c .o .a

vpath %.c src
vpath %.h include

hello: hello.o libprint.a
	$(CC) $(CLAGS) -o $@ $^ -I./include

libprint.a: print.o
	$(AR) -rs $@ $^

hello.o: hello.c
	$(CC) $(CLAGS) -c $^ -I./include

clean:
	rm -f *.o *.a hello