// this program has a manually filled 2D array 
// that represents a drawing, as seen in the example. 
// fix the draw function so that each cell in the array
// is drawn to the screen - currently it doesn't draw anything.

int grid[][] = 
  {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
  {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
  {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
  {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
  {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
};

int rows = 8, cols = 11; 

void setup() {
  size(600, 600); 
  background(255); 
  noStroke(); 
}

void draw() {
  background(255);
  translate(250, 250);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (grid[i][j] == 1) {
        fill(0);
      } else {
        fill(255);
      }

      rect(j * 10, i * 10, 10, 10);

      // add something that will draw each cell here
      // you already have a fill call above, so you'll
      // just need to draw a rect at the correct location.
    }  
  }
}
