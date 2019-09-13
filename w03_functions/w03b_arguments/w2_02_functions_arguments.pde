// functions with arguments
// code 1 - fall 2018
// bryan ma

// this code demonstrates defining a function with arguments to customize behavior.
// the drawFace function takes two arguments, an x and a y. 
// the x and y arguments determine where the resulting drawing will be.

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawFace(width/2, height/2);
}

void drawFace(float x, float y) {

  // draw ears
  strokeWeight(1);
  fill(220);
  ellipse(x - 140, y+10, 50, 90);
  ellipse(x + 140, y+10, 50, 90);
  
  // draw head
  strokeWeight(1);
  fill(230);
  ellipse(x, y, 300, 400);
  
  // draw eyes
  fill(255);
  ellipse(x + 75, y-15, 50, 50);
  ellipse(x - 75, y-15, 50, 50);
  fill(15);
  ellipse(x + 75, y-15, 20, 20);
  ellipse(x - 75, y-15, 20, 20);
  
  // draw nose
  strokeWeight(1);
  line(x, y, x + 20, y + 70);
  strokeWeight(2);
  line(x - 10, y + 90, x + 20, y + 70);
  
  // draw mouth
  strokeWeight(2);
  noFill();
  arc(x, y + 100, 200, 50, PI/3, 2*PI/3);
}
