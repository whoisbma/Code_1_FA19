// code 1 fall 2019
// bryan ma

// this sketch creates a pattern with nested matrix 
// transformations instead of using conditionals. 
// notice the use of different transformations and 
// scaled values in the rotate() functions to create 
// different patterns before finally drawing a
// rectangle in the innermost matrix.

float angle = 0;
float x = 0;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  noStroke();
  background(220);
}

void draw() {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  angle -= 1;

  pushMatrix();
  translate(150, 150);
  rotate(radians(-angle * 2.2));

  pushMatrix();
  translate(80, 80);
  rotate(radians(angle * 3));

  pushMatrix();
  translate(120, 50);
  rotate(radians(angle*4));
  
  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  float b = 150;
  
  fill(r,g,b);
  noStroke();
  rect(0, 0, mouseX * 0.1, mouseY * 0.1);
  popMatrix();
  popMatrix();
  popMatrix();
  popMatrix();
}
