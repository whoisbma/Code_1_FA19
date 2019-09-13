// code 1 week 3
// bryan ma

//  this code defines custom function getDistance that acts 
//  more or less the same as the Processing dist() function does.

float ellipse1x;
float ellipse1y;

float ellipse2x;
float ellipse2y;

void setup() {
  size(600, 600);
  
  ellipse1x = width/3;
  ellipse1y = height/2;
  
  ellipse2x = 2 * width/3;
  ellipse2y = height/2;
}

void draw() {
  if (getDistance(mouseX, mouseY, ellipse1x, ellipse1y) < 50) {
    background(100, 130, 160);
  }
  
  if (dist(mouseX, mouseY, ellipse2x, ellipse2y) < 50) {
    background(150, 100, 120);
  }
  
  fill(255);
  ellipse(ellipse1x, ellipse1y, 100, 100);
  ellipse(ellipse2x, ellipse2y, 100, 100);
}

float getDistance(float x1, float y1, float x2, float y2) {
  float xd = x1 - x2;
  float yd = y1 - y2;
  xd = sq(xd);
  yd = sq(yd);
  float result = sqrt(xd + yd);
  return result;
}
