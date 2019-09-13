// simple functions
// code 1 - fall 2018
// bryan ma

// this code demonstrates defining simple functions to encapsulate behavior.
// these functions take no arguments and so their behavior is pre-determined.

void setup() {
  size(600, 600);
  sayHello();
}

void draw() {
  background(255);
  drawLinesFromCenter();
}

void sayHello() {
  println("Hello!");
}

void drawLinesFromCenter() {
  line(width/2, height/2, 0, 0);
  line(width/2, height/2, width/4, 0); 
  line(width/2, height/2, width/2, 0);
  line(width/2, height/2, 3*width/4, 0);
  line(width/2, height/2, width, 0);
  line(width/2, height/2, width, height/4);
  line(width/2, height/2, width, height/2);
  line(width/2, height/2, width, 3*height/4);
  line(width/2, height/2, width, height);
  line(width/2, height/2, 0, height/4);
  line(width/2, height/2, 0, height/2);
  line(width/2, height/2, 0, 3*height/4);
  line(width/2, height/2, 0, height);
  line(width/2, height/2, width/4, height);
  line(width/2, height/2, width/2, height);
  line(width/2, height/2, 3*width/4, height);
}
