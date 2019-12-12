float[] xPos = new float[10];
float[] yPos = new float[10];

void setup() {
  size(600, 600);
  for (int i = 0; i < 10; i++) {
    xPos[i] = width/2;
    yPos[i] = height/2;
  }

  frameRate(15);
  background(125);
}

void draw() {

  for (int i = 0; i < 10; i++) {
    ellipse(xPos[i], yPos[i], 10, 10);

    float r = random(4);

    if (int(r) == 0) {
      xPos[i] += 5;
    } else if (int(r) == 1) {
      xPos[i] -= 5;
    } else if (int(r) == 2) {
      yPos[i] += 5;
    } else if (int(r) == 3) {
      yPos[i] -= 5;
    }
  }
} 
