// code 1 fall 2019
// bryan ma

// converting a 1 dimensional index into a 2 dimensional coordinate

// the key for converting a 1d index into 2d coordinates
// is how many columns the grid should be (gridWidth).

// the x position is found with a modulo, and the y position
// with a simple integer division.

int numTotal = 100;
int gridWidth = 10;

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(255);
  
  for (int i = 0; i < numTotal; i++) {
    // 1d index to 2d coordinates conversion
    float x = i % gridWidth;
    float y = i / gridWidth;
    
    float mappedX = map(x, 0, 9, 100, 500);
    float mappedY = map(y, 0, 9, 100, 500);
    
    float r = map(x, 0, 9, 0, 255);
    float g = map(y, 0, 9, 0, 255);
    float b = 150;
    fill(r, g, b);
    ellipse(mappedX, mappedY, 30, 30); 
  }
}
