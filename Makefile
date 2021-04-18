CC = gcc
CFLAGS = -Wall
BUILD_DIR = build
SRC_DIR = src
TEST_DATA = test_data
TEST_DIR = test


all_targets = main 

all: $(all_targets)

$(all_targets): lib1.h
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o ./$(BUILD_DIR)/$(@) $(SRC_DIR)/$(@).c ./$(BUILD_DIR)/lib1.h



lib1.h: 
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c -o ./$(BUILD_DIR)/lib1.h $(SRC_DIR)/lib2.h


clean:
	rm -f -r $(BUILD_DIR)

