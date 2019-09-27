// code 1 fall 2019
// bryan ma

// this code uses a nested for loop to draw a grid

void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(255);
  
  for (int i = 0; i <= width; i+=20) {
    for (int j = 0; j <= height; j+=20) {
      
      float r = map(i, 0, width, 0, 255);
      float g = map(j, 0, height, 0, 255);
      float b = 125;
      
      fill(r, g, b);
      rect(i, j, 15, 15);
    }
  }
}
