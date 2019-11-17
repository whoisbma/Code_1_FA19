

void setup() {
  size(600, 600);
  colorMode(RGB);
}

void draw() {
  color from = color(255, 0, 0, 50);
  color to = color(50, 55, 200, 50);

  color result = lerpColor(from, to, map(mouseX, 0, width, 0, 1));
  background(150);

  blendMode(ADD);
  for (int i = 0; i <= width; i+=25) {
    noStroke();
    fill(lerpColor(from, to, map(i, 0, width, 0, 1)));
    ellipse(i, height/2, 50, 50);
  }
  blendMode(LIGHTEST);
  for (int i = 0; i <= width; i+=25) {
    noStroke();
    fill(lerpColor(from, to, map(i, 0, width, 0, 1)));
    ellipse(i, height/2-100, 50, 50);
  }
  blendMode(MULTIPLY);
  for (int i = 0; i <= width; i+=25) {
    noStroke();
    fill(lerpColor(from, to, map(i, 0, width, 0, 1)));
    ellipse(i, height/2+100, 50, 50);
  }
}
