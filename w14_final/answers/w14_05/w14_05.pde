// This sketch uses a loop to draw a group of 
// ellipses. It uses a single float to represent
// their x positions. Replace this float with an
// array of floats so that each ellipse can have 
// a unique x position, then increment the position
// if the mouse is inside the ellipse.

// create an array of values corresponding
// to each ellipse here:
int[] x = new int[10];

void setup() {
  size(600, 600);

  // give the array values  
  for (int i = 0; i < 10; i++) {
    x[i] = 30;
  }

  noStroke();
}

void draw() {
  background(50);
  for (int i = 0; i < 10; i++) {
    float y = 30 + i * 60;

    // check to see if you should increment 
    // the value at each position in the array
    // and then draw at that position
    if (dist(mouseX,mouseY,x[i], y) < 25) {
      x[i]++;
      fill(255);
    } else {
      fill(150);
    }

    ellipse(x[i], y, 50, 50);
  }
}
