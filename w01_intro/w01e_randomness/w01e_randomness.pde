// code 1 week 1
// bryan ma

// randomness

void setup() {
  size(600, 600);
  strokeWeight(5);
}

void draw() {
  // set the background color to a random greyscale value between 10 and 50
  background(random(10, 50));
  
  // set the rgb channels of the stroke color to random values from 0-255
  stroke(random(255), random(255), random(255));
  
  // draw a line from the center to a random position on the canvas
  line(width/2, height/2, random(width), random(height));
}
