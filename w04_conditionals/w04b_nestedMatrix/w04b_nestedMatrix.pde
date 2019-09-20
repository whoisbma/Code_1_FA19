// code 1 fall 2019
// bryan ma

// nested transformations with pushMatrix and popMatrix
// simple "solar system" effect, each rectangular planet 
// rotates on its own axis as well as those of its parents

float angle = 0;

void setup() {
  size(1000, 800);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(80);

  // sun
  pushMatrix();
  translate(width/2, height/2);
  scale(0.5);
  rotate(radians(angle));
  angle = angle + 1;
  fill(255, 255, 0);
  rect(0, 0, 100, 100);
  
  // green planet rotates around the sun
  pushMatrix();
  translate(-700, 200);
  rotate(radians(-angle * 2));
  fill(0, 255, 0);
  rect(0, 0, 40, 40);
  popMatrix();
  // go back to sun matrix
  
  // blue planet rotates around the sun
  pushMatrix();
  translate(400, 0);
  rotate(radians(angle * 2));
  fill(0, 100, 255);
  rect(0, 0, 50, 50);
  
  // grey moon rotates around the blue planet
  pushMatrix();
  translate(100, 0);
  rotate(radians(angle * 3));
  fill(150);
  rect(0, 0, 30, 30);
  popMatrix();
  // go back to blue planet matrix
  
  // purple moon rotates around the blue planet
  pushMatrix();
  translate(-100, 0);
  rotate(radians(angle * 4));
  fill(200, 50, 150);
  noStroke();
  rect(0, 0, 20, 20);
  popMatrix();
  // back to blue planet matrix
  popMatrix();
  // back to sun matrix
  popMatrix();
  // back to initial (0,0) matrix

}
