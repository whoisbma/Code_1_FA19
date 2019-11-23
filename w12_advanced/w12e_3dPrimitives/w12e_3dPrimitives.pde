// 3d primitives - a 3d array of boxes
// bryan ma for code 2 sp 19

void setup() {
  size(800, 800, P3D);
  noStroke();
}

void draw() {
  background(255);
  float stepSize = 100;
  
  lights();
  translate(width/2, height/2, -1000);
  rotateY(frameCount * 0.005);
  for (int i = -5; i < 6; i++) {
    for (int j = -5; j < 6; j++) {
      for (int k = -5; k < 6; k++) {
        pushMatrix();
        translate(i * stepSize, j * stepSize, k * stepSize);
        fill(map(i, -5, 5, 0, 255), map(j, -5, 5, 0, 255), map(k, -5, 5, 0, 255));
        box(50);
        popMatrix();
      }
    }
  }
}
