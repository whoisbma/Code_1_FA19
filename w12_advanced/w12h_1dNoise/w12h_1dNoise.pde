// 1D noise vs. sin vs. random
// bryan ma for code 2 sp 19

void setup() {
  size(800, 600);
  noLoop();
}

void drawRandomness() {
  fill(0);
  textSize(24);
  text("randomness", 60, 100);
  beginShape();
  noFill();
  for (int i = 0; i <= width; i += 10) {
    vertex(i, random(0, height/3));
  }
  endShape();
}

void drawNoise() {
  fill(0);
  textSize(24);
  text("1D noise", 60, height/2);
  beginShape();
  noFill();
  for (int i = 0; i <= width; i += 10) {
    vertex(i, map(sin(i * 0.01), -1, 1, height, 2 * height/3));
  }
  endShape();
}

void drawOscillation() {
  fill(0);
  textSize(24);
  text("regular oscillation", 60, 500);
  beginShape();
  noFill();
  for (int i = 0; i <= width; i += 10) {
    vertex(i, map(noise(i * 0.01), 0, 1, 2 * height/3, height/3));
  }
  endShape();
}

void draw() {
  background(255);
  drawRandomness();
  drawNoise();
  drawOscillation();
}
