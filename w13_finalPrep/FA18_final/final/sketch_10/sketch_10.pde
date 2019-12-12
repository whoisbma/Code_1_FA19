/*
this sketch uses a 2d array of integers. 
looping through a set of nested loops, it 
fills every entry of the array with the same 
size of 15. in the draw loop, based on the 
size saved to the array, it sets the size of 
an ellipse being drawn.

change the sketch so that the circles gradually 
get bigger as the array loops through the 'i' 
dimension. make a second 2D array to hold color 
information and make a color gradient along the 
'i' dimension as well. you might want to map 
color for this. your sketch does not have to 
match exactly, but should have a similar 
gradient in size and color.
*/

int gridW = 15;
int gridH = 15;

int[][] sizes = new int[gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      sizes[i][j] = 15;
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {

      float w = width/gridW;
      float h = height/gridH;
      float xPos = i * width/gridW + w/2;
      float yPos = j * height/gridH + h/2;

      ellipse(xPos, yPos, sizes[i][j], sizes[i][j]);
    }
  }
}
