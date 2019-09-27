// code 1 fall 2019
// bryan ma

// you don't need to know how to use 
// these 3d functions yet. this is just
// a demonstration that you can nest loops
// arbitrary numbers of times. if we're 
// working with a 3 dimensional space,
// its useful to have 3 iterator variables
// to control each dimension.

void setup() {
  size(900, 900, P3D);
}

void draw() {
  background(255);
  translate(300, 300);
  lights();
  rotateY(radians(mouseX));
  rotateX(radians(mouseY));
  noStroke();
  for (int i = 0; i <= 10; i++) {
    for (int j = 0; j <= 10; j++) {
      for (int k = 0; k <= 10; k++) {
        pushMatrix();
        float x = map(i, 0, 10, -500, 500);
        float y = map(j, 0, 10, -500, 500);
        float z = map(k, 0, 10, -500, 500);
        translate(x, y, z);
        float angleX, angleY, angleZ;
        angleX = map(i, 0, 10, 0, TWO_PI);
        angleY = map(j, 0, 10, 0, TWO_PI);
        angleZ = map(k, 0, 10, 0, TWO_PI);
        rotateX(angleX + radians(frameCount));
        rotateY(angleY + radians(frameCount));
        rotateZ(angleZ + radians(frameCount));
        float r, g, b;
        r = map(i, 0, 10, 0, 255);
        g = map(j, 0, 10, 0, 255);
        b = map(k, 0, 10, 0, 255);
        fill(r, g, b);
        box(25);
        popMatrix();
      }
    }
  }
}
