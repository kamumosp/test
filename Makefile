# Makefile for building the test project
CC = g++ -std=c++11
CXX_FLAGS	= -O2
OBJ = test.o
TARGET = test.exe

all: $(TARGET)

%.o: %.c
	$(CC) $(CXX_FLAGS) -o $@ -c $<

$(TARGET): $(OBJ)
	$(CC) $(CXX_FLAGS) -o $@ $^

.PHONY: clean

clean:
	rm -rf $(TARGET) *.o *~ core
