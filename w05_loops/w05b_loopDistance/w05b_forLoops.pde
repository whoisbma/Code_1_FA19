// code 1 fall 2019
// bryan ma

// this sketch uses a for loop to create 6 ellipses,
// then checks the distance to each one to change the 
// color if they are clicked on.

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i = 0; i <= 5; i++) {
    float x = map(i, 0, 5, 100, 500);
    float y = height/2;
    float radius = 35;
    
    fill(150, 255, 150);
    
    if (dist(mouseX, mouseY, x, y) < radius) {
      if (mousePressed) {
        fill(255, 150, 150);
      }
    }

    ellipse(x, y, radius * 2, radius * 2);
  }
}
