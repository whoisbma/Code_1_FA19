// functions with arguments pt2
// code 1 - fall 2018
// bryan ma

// this code is an iteration on the last sketch. 
// now different facial features are now encapsulated in their own functions.
// notice drawFace calls them all individually, passing down its x and y arguments.

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawFace(mouseX, mouseY);
}

void drawFace(float x, float y) {
  drawEars(x,y);
  drawHead(x,y);
  drawEyes(x,y);
  drawNose(x,y);
  drawMouth(x,y);
}

void drawEars(float x, float y) {
  strokeWeight(1);
  fill(220);
  ellipse(x - 140, y+10, 50, 90);
  ellipse(x + 140, y+10, 50, 90);
}

void drawHead(float x, float y) {
  strokeWeight(1);
  fill(230);
  ellipse(x, y, 300, 400);
}

void drawEyes(float x, float y) {
  fill(255);
  ellipse(x + 75, y-15, 50, 50);
  ellipse(x - 75, y-15, 50, 50);
  fill(15);
  ellipse(x + 75, y-15, 20, 20);
  ellipse(x - 75, y-15, 20, 20);
}

void drawNose(float x, float y) {
  strokeWeight(1);
  line(x, y, x + 20, y + 70);
  strokeWeight(2);
  line(x - 10, y + 90, x + 20, y + 70);
}

void drawMouth(float x, float y) {
  strokeWeight(2);
  noFill();
  arc(x, y + 100, 200, 50, PI/3, 2*PI/3);
}
