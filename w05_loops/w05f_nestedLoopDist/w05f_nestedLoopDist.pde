// code 1 fall 2019 
// bryan ma

// this code demonstrates the use of 
// distance with a 2d loop. same idea as 
// a single loop.

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  fill(255);
  
  for (int i = 0; i < width; i+=30) {
    for (int j = 0; j < height; j+=30) {
      float d = dist(mouseX, mouseY, i, j);
      float c = map(d, 0, 200, 255, 0);
      fill(c);
      if (d < 15) {
        fill(255, 0, 0);
      }
      ellipse(i, j, 30, 30); 
    }
  }
}
