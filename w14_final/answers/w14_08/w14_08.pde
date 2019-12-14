// this program draws a line of ellipses to the
// screen that change their color over time.
// replace the 1 dimensional array with a 
// 2 dimensional array and draw it to the screen
// as shown in the example gif. Everything already 
// works, all you have to do is add a dimension.

int cols = 10;
int rows = 10;

float[][] x = new float[cols][rows];
float[][] y = new float[cols][rows];
float[][] col = new float[cols][rows];
float[][] rate = new float[cols][rows];

void setup() {
  size(600, 600);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      x[i][j] = map(i, 0, cols - 1, 100, 500);
      y[i][j] = map(j, 0, rows - 1, 100, 500);
      col[i][j] = random(255);
      rate[i][j] = random(-1, 1);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (col[i][j] > 255 || col[i][j] < 0) {
        rate[i][j] *= -1;
      }

      col[i][j] += rate[i][j];

      noStroke();
      fill(col[i][j]);
      ellipse(x[i][j], y[i][j], 25, 25);
    }
  }
}
