# Compiler
CC = gcc

# Compiler flags (include the path to SDL2 include directory)
CFLAGS = -I C:\\Users\\koushal\\OneDrive\\Desktop\\sdl_projects_1\\src\\include

# Linker flags (include the path to SDL2 library directory and link against SDL2)
LDFLAGS = -L C:\\Users\\koushal\\OneDrive\\Desktop\\sdl_projects_1\\src\\lib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image

# Source files
SRCS = main.c

# Executable name
EXEC = trial

# Default target
all: $(EXEC)

# Compile the source files into the executable
$(EXEC): $(SRCS)
	$(CC) -o $(EXEC) $(SRCS) $(CFLAGS) $(LDFLAGS)

# Run the program
run: $(EXEC)
	./$(EXEC)

# Clean up generated files
clean:
	rm -f $(EXEC)
	rm -f *.o

.PHONY: all clean run
