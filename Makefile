CXX = g++
CXXFLAGS = \
-std=c++23 \
-pedantic \
-Wall \
-Wextra \
-Wformat-security \
-Wduplicated-cond \
-Wfloat-equal \
-Wshadow \
-Wconversion \
-Wlogical-not-parentheses \
-Wnull-dereference \
-Werror \
-fstack-protector-strong \
-fsanitize=undefined \
-fno-sanitize-recover \
-g \
-fno-omit-frame-pointer \
-O1

.PHONY: all clean

all: water_jug_state_solver

water_jug_state_solver: water_jug_state_solver.cpp
	$(CXX) $(CXXFLAGS) -o water_jug_state_solver water_jug_state_solver.cpp
	
clean:
	rm -f water_jug_state_solver
