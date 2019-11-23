// zooming in and out on 2D noise
// bryan ma for code 2 sp 19

int rows = 100;
int cols = 100;
int w, h;

float xOffset = 0;

void setup() {
  size(800, 800);
  w = width/cols;
  h = height/rows;
  noStroke();
}

void draw() {
  float scale = map(mouseY, 0, height, 0.0001, 1);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {

      float noiseVal = noise(i * scale, j * scale);
      fill(map(noiseVal, 0, 1, 0, 255));
      rect(i * w, j * h, w, h);
    }
  }
}
