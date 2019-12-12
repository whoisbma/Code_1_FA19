/*
this sketch draws a group of horizontal lines to the canvas.

add a conditional that makes every other line red.
*/

void setup(){
  size(600,600);
  strokeWeight(10);
  background(255);
}

void draw(){
  for (int i = 0; i <= 10; i ++) {
    line(0, 59 * i + 5, width, 59 * i + 5);
  }
}
