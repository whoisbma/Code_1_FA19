// 3d noise (x, z, time) in 3d
// bryan ma for code 2 sp 19

int rows = 100;
int cols = 100;
int w, d;

void setup() {
  size(1000, 600, P3D);
  w = 10;
  d = 10;
  strokeWeight(2);
}

void draw() {
  background(0);
  stroke(255);
  float maxHeight = 150;
  float scale = 0.05;

  translate(-50, 200, -800);
  rotateX(radians(-10));
  rotateY(radians(10));
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      pushMatrix();
      float y = noise((i + mouseX) * scale, j * scale, frameCount * 0.005) * maxHeight;
      translate(i * w, y, j * d);
      point(0, 0, 0);
      popMatrix();
    }
  }
}
