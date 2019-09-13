// code 1 week 3
// bryan ma

// this code demonstrates defining simple functions to encapsulate behavior.
// these functions take no arguments and so their behavior cannot be customized by the user.

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
  float x = width/2;
  float y = height/2;
  
  line(x, y, 0, 0);
  line(x, y, width/4, 0); 
  line(x, y, width/2, 0);
  line(x, y, 3*width/4, 0);
  line(x, y, width, 0);
  line(x, y, width, height/4);
  line(x, y, width, height/2);
  line(x, y, width, 3*height/4);
  line(x, y, width, height);
  line(x, y, 0, height/4);
  line(x, y, 0, height/2);
  line(x, y, 0, 3*height/4);
  line(x, y, 0, height);
  line(x, y, width/4, height);
  line(x, y, width/2, height);
  line(x, y, 3*width/4, height);
}
