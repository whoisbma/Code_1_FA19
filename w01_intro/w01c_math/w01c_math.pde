// code 1 week 1
// bryan ma

// math operators

void setup() {
  size(600, 600);
}

void draw() {
  background(255);

  // draw an ellipse at the position of mouseX * 0.5, mouseY * 0.5.
  ellipse(mouseX * 0.5, mouseY * 0.5, 100, 100);

  // draw another ellipse at the position of width - mouseX, mouseY.
  ellipse(width - mouseX, mouseY, 100, 100);
}
