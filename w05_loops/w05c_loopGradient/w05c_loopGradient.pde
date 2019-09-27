// code 1 fall 2019
// bryan ma

// this code uses a loop to draw a gradient,
// using lines with mapped colors.

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  for (int i = 100; i < 500; i++) {
    float r = map(i, 100, 500, 50, 250);
    float g = map(i, 500, 100, 50, 250);
    float b = 150;
    stroke(r, g, b);
    line(100, i, 500, i);
  }

}
