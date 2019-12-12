// this program rotates two rectangles around a translation point.
// instead of using translation and rotation to create the circular
// motion, use sin and cosine. 

// if you do this successfully, you'll find that the rectangles 
// move in a circle, but don't spin on their own axis anymore.
// at this point, add a translation to recreate the original motion 
// exactly. 

// the solution will therefore involve the use of sin/cos for the
// circular motion, and a translation/rotation for the rect's rotation,
// instead of the two translation and one rotation operation that is 
// currently in place for each rectangle. 

float amplitude = 75;
float theta = 0;
float increment = TWO_PI/300;

void setup() {
  size(600, 400);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(255);
  
  theta = (theta + increment) % TWO_PI;

  fill(80);

  pushMatrix();
  translate(width/3, height/2);
  rotate(theta);
  pushMatrix();
  translate(amplitude, 0);
  rect(0, 0, 50, 50);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(2* width/3, height/2);
  rotate(-theta);
  pushMatrix();
  translate(-amplitude, 0);
  rect(0, 0, 50, 50);
  popMatrix();
  popMatrix();
}
