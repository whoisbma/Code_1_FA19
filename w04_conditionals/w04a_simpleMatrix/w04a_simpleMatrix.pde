// code 1 fall 2019
// bryan ma

// draw three rotated rectangles, 
// each maintaining their own matrix transformations
// with translate(), scale(), and rotate().

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(150);
  
  // first rectangle
  pushMatrix();
  translate(200, height/2);
  scale(1.0);  // this is normal scale
  rotate(PI/4);  
  rect(0, 0, 100, 100);
  popMatrix();  
  
  // second rectangle
  pushMatrix();
  translate(400, height/2);
  scale(0.5);
  rotate(radians(75));
  rect(0, 0, 150, 50);
  popMatrix();
  
  // third rectangle
  pushMatrix();
  translate(600, height/2);
  scale(1.5);
  rotate(radians(frameCount));
  rect(0, 0, 50, 150);
  popMatrix();
}
