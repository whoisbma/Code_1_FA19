/*
this sketch uses an incrementation variable to change the
color of a rectangle from black to white.

replace the incrementation approach with a color transition
based on a sin() function for a smoother cycle.

remember that sin() returns a value from -1 to 1.
*/

void setup() {
  size(600, 600);
}

void draw() {
  fill((sin(radians(frameCount)) * 0.5 + 0.5) * 255);
  rect(100, 100, 400, 400);
}
