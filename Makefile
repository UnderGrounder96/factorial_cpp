CXX=g++
CXXFLAGS=-g -std=c++11 -Wall -pedantic
BIN=main.out

SRC=$(wildcard src/*.cpp)
OBJ=$(SRC:%.cpp=%.o)

all: $(OBJ)
		$(CXX) -o $(BIN) $^

%.o: %.c
		$(CXX) $@ -c $<

clean:
		rm -f src/*.o $(BIN)
