OUT = sspmconv.exe
CC = gcc

SRC = src/*.c
FLAGS = -O2

$(OUT): $(SRC)
	@echo ---- COMPILING sspmconv ----
	$(CC) $(SRC) -o $(OUT) $(FLAGS)
	@echo --------- FINISHED ---------

.PHONY: run
run: $(OUT)
	@echo ---- RUNNING ----
	@./$(OUT)

.PHONY: clean
clean: 
	@echo ---- REMOVING EXECUTABLE ----
	del $(OUT)