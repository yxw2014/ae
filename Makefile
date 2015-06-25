OBJS = zmalloc.o ae.o main.o
FLAG = -O -g -Wall -DHAVE_EPOLL
LIBS =
BIN = ae
CC = gcc

all:$(OBJS)
	$(CC) -o $(BIN) $(FLAG) $(OBJS) $(LIBS)

%.o : %.c
	$(CC) -c $(FLAG) $< -o $@

.PHONY : clean

clean:
	rm -rf *.o
	rm -f $(BIN)
