// code 1 fall 2019
// bryan ma

// another extremely useful application of the 
// modulo operator is to do very simple looping
// values.

// bgCol is the remainder of bgCol + 1 divided by 255,
// which means the range will loop from 0 to 255.

// lineX is the remainder of lineX + 1 divided by width,
// which means it will loop from 0 to width;

float bgCol = 0;
float lineX = 0;

void setup() {
  size(600, 300);
  strokeWeight(5);
}

void draw() {
  background(bgCol);
  
  stroke(255 - bgCol);
  line(0, height/2, lineX, height/2);
  
  lineX = (lineX + 5) % width;
  bgCol = (bgCol + 1) % 255;
}
