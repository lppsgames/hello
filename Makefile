# Makefile

# Compiler to use
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Target executable name
TARGET = hello

all: $(TARGET)

$(TARGET): hello.o
    $(CC) $(CFLAGS) -o $(TARGET) hello.o

hello.o: hello.c
    $(CC) $(CFLAGS) -c hello.c

clean:
    rm -f *.o $(TARGET)
