# target … : prerequisites …
# (탭)recipe
# 				…
#				…

CC = g++
CXXFLAGS = -Wall -O2
OBJS = foo.o bar.o main.o

# foo.o: foo.h foo.cpp
# 	$(CC) $(CXXFLAGS) -c foo.cpp

# bar.o: bar.h bar.cpp
# 	$(CC) $(CXXFLAGS) -c bar.cpp

%.o: %.cpp %.h
	$(CC) $(CXXFLAGS) -c $<

# main.o: main.cpp foo.h bar.h
# 	$(CC) $(CXXFLAGS) -c main.cpp

main: $(OBJS)
	$(CC) $(CXXFLAGS) $(OBJS) -o main

.PHONY: clean
clean:
	rm $(OBJS) main

include main.d