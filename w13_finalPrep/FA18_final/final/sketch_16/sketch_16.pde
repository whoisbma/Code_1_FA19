/*
this sketch draws a repeatedly growing and shrinking ellipse.
your task is to change the program so that this behavior is
encapsulated inside a class. 

move all this behavior to a class, then have mouse clicks create
instances of the class on the screen. use an ArrayList to store
the instances of the class that you create, and update and display
all of them in the draw() loop. 
*/ 


float x = 300;
float y = 300;
float d = 0;
float incr = 2;
float maxSize = 150;

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(x, y, d, d);
  if (d > maxSize || d < 0) {
    incr = -incr;
  }
  d += incr;
}
