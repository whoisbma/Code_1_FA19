// code 1 fall 2019
// bryan ma

// this is an example of using a 2d array to store data 
// where two dimensions are useful. in this case we want to
// draw a grid of cubes. just as we would want to do a 2d for
// loop to draw them without data, we can use a 2d for loop
// to set and then draw 2d data.

// we have a 2d array of 15 by 15 x positions, a 2d array of 15
// by 15 y positions and a 2d array of angles, 't'. the x and y 
// values are used with the angle to draw rotating rectangles, 
// changing the value of t over time based on the mouse position.


int xDim = 15;
int yDim = 15;

float[][] x = new float[yDim][xDim];
float[][] y = new float[yDim][xDim];
float[][] t = new float[yDim][xDim];

void setup() {
  size(600, 600);
  
  for (int i = 0; i < yDim; i++) {
    for (int j = 0; j < xDim; j++) {
      x[i][j] = map(j, 0, xDim, 100, 500);
      y[i][j] = map(i, 0, yDim, 100, 500);
      t[i][j] = random(TWO_PI);
    }
  }
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(255);
  for (int i = 0; i < yDim; i++) {
    for (int j = 0; j < xDim; j++) {
      float d = dist(x[i][j], y[i][j], mouseX, mouseY);
      float sz = max(map(d, 0, 500, 20, 1), 1);
      
      pushMatrix();
      translate(x[i][j], y[i][j]);
      rotate(t[i][j]);
      fill(150);
      rect(0, 0, sz, sz);
      popMatrix();
      
      t[i][j] += map(d, 0, 500, 0.1, 0); 
    }
  }


}
