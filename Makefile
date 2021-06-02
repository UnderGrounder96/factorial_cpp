# GNU Make Manual
# http://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents

CXX=g++
CXXFLAGS=-g -std=c++11 -Wall -pedantic
BIN=main.out

SRC=$(wildcard src/*.cpp)
OBJ=$(SRC:%.cpp=%.o)

# $^ evaluates to *.o
all: $(OBJ)
		$(CXX) -o $(BIN) $^

# $@ is the name of the target being generated - *.o
# $< evaluates to *.cpp
%.o: %.c
		$(CXX) $@ -c $<

run: $(BIN)
		./$(BIN)

clean:
		$(RM) src/*.o $(BIN)
