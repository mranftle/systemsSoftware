CC = gcc
CFLAGS = -m32 -O3 -pg
#CFLAGS = -m32 -O3
all:  hist

clean:
	rm -f hist *.o

hist:  hist.c student.h input.h yourcode.h yourcode.c
	gcc $(CFLAGS) yourcode.c hist.c -o hist
#valgrind: hist
#	valgrind --tool=callgrind --callgrind-out-file=hist.callgrind ./hist
#	callgrind_annotate hist.callgrind | grep compute
