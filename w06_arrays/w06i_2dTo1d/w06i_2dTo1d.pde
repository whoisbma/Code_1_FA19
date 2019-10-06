// code 1 fall 2019
// bryan ma

// converting a 2 dimensional coordinate into a 1 dimensional index

// the inverse of the previous sketch. idx = j + i * cols is the key.
// the main idea of these two sketches is just that the dimensionality
// of data is arbitrary, and can always be reconfigured. 

int cols = 5;
int rows = 5;

void setup() {
  size(600, 600);
  strokeWeight(8);
  colorMode(HSB);
}

void draw() {
  background(255);
  
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      // 2d coordinates to 1d index conversion
      float idx = j + i * cols;
 
      float xPos = map(idx, 0, cols*rows, 100, 500);
      float hue = map(idx, 0, cols*rows, 0, 255);
      stroke(hue, 150, 200);
      line(xPos, 200, xPos, 400);
    }
  }
}
