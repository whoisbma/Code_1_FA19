// code 1 week 1
// bryan ma

// using the console
// println() in processing
// console.log() in p5.js

void setup() {
  size(600, 600);
}

void draw() {
  background(20);
  
  // draw a line from the center of the canvas to the mouse position
  stroke(255);
  line(width/2, height/2, mouseX, mouseY);
  
  // use the console to print out the values of mouseX and mouseY
  println(mouseX + " - " + mouseY);
}
