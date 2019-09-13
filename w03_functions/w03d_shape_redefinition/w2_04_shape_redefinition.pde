// shape redefinition
// code 1 - fall 2018
// bryan ma

// this code defines a custom function, myRectangle, 
//  that behaves exactly as the basic rect() function does.
//  it takes four floating point arguments (x,y,w,h) to draw four lines based on them.

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  myRectangle(200, 200, 200, 200);
}

void myRectangle(float x, float y, float w, float h) {
  line(x, y, x+w, y);
  line(x+w, y, x+w, y+h);
  line(x+w, y+h, x, y+h);
  line(x, y+h, x, y);
}
