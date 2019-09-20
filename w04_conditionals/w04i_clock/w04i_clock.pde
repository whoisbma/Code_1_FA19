// code 1 fall 2019
// bryan ma

// this code uses the processing time functions and
// maps their values using matrix transformations 
// to draw a very simple clock.

void setup() {
  size(600, 600);
  strokeWeight(4);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  strokeWeight(5);
  ellipse(0, 0, 410, 410);

  pushMatrix();
  rotate(map(second(), 0, 60, 0, TWO_PI));
  strokeWeight(1);
  line(0, 0, 0, -180);
  popMatrix();

  pushMatrix();
  rotate(map(minute(), 0, 60, 0, TWO_PI));
  strokeWeight(3);
  line(0, 0, 0, -150);
  popMatrix();
  
  pushMatrix();
  int hour = hour();
  if (hour > 12) {
    hour -= 12;
  }
  rotate(map(hour(), 0, 12, 0, TWO_PI));
  strokeWeight(4);
  line(0, 0, 0, -120);
  popMatrix();
  
}
