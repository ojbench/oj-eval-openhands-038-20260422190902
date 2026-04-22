CXX ?= g++
CXXFLAGS ?= -O2 -std=gnu++17 -pipe -s -Wall -Wextra -Wno-unused-parameter -Wno-sign-compare
LDFLAGS ?=

SRCS := main.cpp
OBJS := $(SRCS:.cpp=.o)

all: code

code: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) code

.PHONY: all clean
