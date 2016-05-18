INCLUDE_ARGS = -I/usr/local/include
LINK_ARGS = -L/usr/local/lib -lGLEW -framework OpenGL -framework GLUT
CFLAGS = -Wall

torusdraw: torusdraw.o torus.o
	g++ $(INCLUDE_ARGS) $(LINK_ARGS) torusdraw.o torus.o -o torusdraw

torusdraw.o: TorusDraw.cpp
	g++ $(CFLAGS) $(INCLUDE_ARGS) -c TorusDraw.cpp

torus.o: Torus.cpp
	g++ $(CFLAGS) $(INCLUDE_ARGS) -c Torus.cpp

clean:
	rm *.o
