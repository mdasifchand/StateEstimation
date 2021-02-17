# Localization Challenge
# Makefile

INCLUDE = -I/usr/include/ -I/eigen-3.2.10/
LIBRARIES = controller.a -L/usr/lib/x86_64-linux-gnu/ -lGL -lGLU -lglut -lm 


COMPILER = g++ --std=c++11
COMPILERFLAGS = -no-pie $(INCLUDE)


PROGRAM =	localization_test

SOURCE =	main.cpp main.h 

OBJECT =	main.o


.cc.o: $(SOURCE)
	$(COMPILER) -c $(COMPILERFLAGS) $<

all: $(PROGRAM)

$(PROGRAM): $(OBJECT) $(SOURCE)
	$(COMPILER) $(COMPILERFLAGS) -o $(PROGRAM) $(OBJECT) $(LIBRARIES)

clean:
	-rm -rf core *.o *~ .*~ $(PROGRAM)
