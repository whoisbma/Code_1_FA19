// code 1 fall 2019
// bryan ma

// this is a very simple while loop, for your reference. 
// but generally speaking, you should use for loops. 

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(255);

  int i = 0;
  while (i <= width) {
    fill(map(i, 0, width, 0, 255), 150, 150);
    ellipse(i, height/2, 50, 50);
    i += 50;
  }
}
