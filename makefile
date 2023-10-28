CC=g++  
CXXFLAGS = -std=c++0x
CFLAGS=-I
DEBUG=
BIN_DIR=./bin
STORE_DIR=./store

skiplist: main.cpp 
	mkdir -p $(BIN_DIR)
	mkdir -p $(STORE_DIR)
	$(CC) $(DEBUG) -o $(BIN_DIR)/main main.cpp --std=c++11 -pthread 
	rm -f ./*.o

clean: 
	rm -f ./*.o ./bin/main
