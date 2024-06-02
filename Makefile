# the compiler to use
CXX = clang++

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CXXFLAGS  = -g -Wall -Werror
 
LD = clang++ -o
LDFLAGS = -shared

SRCDIR = src
OBJDIR = obj
BINDIR = bin
INCLUDE = include
LIBDIR = lib

SOURCES   := $(wildcard $(SRCDIR)/*.cpp)
INCLUDES  := $(wildcard $(SRCDIR)/*.h)
OBJECTS   := $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

# the name to use for both the target source file, and the output file:
TARGET = helloworld_app

all: $(TARGET)

$(TARGET):
	@$(CXX) $(CFLAGS) -o $(BINDIR)/$(TARGET) $(SRCDIR)/$(TARGET).cpp -I $(INCLUDE) $(LIBDIR)/helloworld_lib.so
	@echo "Compile complete!" 

  
#$(TARGET): $(TARGET).cpp
#	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp $(LFLAGS)