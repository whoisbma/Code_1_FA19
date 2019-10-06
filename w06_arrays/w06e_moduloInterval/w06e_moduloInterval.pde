// code 1 fall 2019
// bryan ma

// the modulo operator is very useful for
// doing things at a set interval.

// in this sketch the background color is set
// once every 30 frames, and the fill color of 
// a rect is updated every frame, but only every 
// other second.

float bgCol = 0;
float rectColor = 0;

boolean updated = false;

void setup() {
  size(600, 600);
}

void draw() {
  background(bgCol);
  fill(rectColor);
  rect(200, 200, 200, 200);
  
  if (frameCount % 30 == 0) {
    bgCol = random(255);
  }
  
  if (second() % 2 == 0) {
    println(second());
    rectColor = random(255);
  }
  
}
