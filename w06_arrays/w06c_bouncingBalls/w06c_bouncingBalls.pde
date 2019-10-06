// code 1 fall 2019
// bryan ma

// this code coordinates the use of multiple arrays to 
// create 100 bouncing balls. its the same idea as our old
// bouncing ball sketch, except there are 100 of each type of value.
// the for loop in setup() sets the initial values, and the for loop
// in draw() updates the values and uses them to draw an ellipse.

int numTotal = 100;

float[] xPositions = new float[numTotal];
float[] yPositions = new float[numTotal];
float[] xSpeeds = new float[numTotal];
float[] ySpeeds = new float[numTotal];
float[] radii = new float[numTotal];
float[] hues = new float[numTotal];

void setup() {
  size(600, 600);

  for (int i = 0; i < numTotal; i++) {
    xPositions[i] = width/2;
    yPositions[i] = height/2;
    xSpeeds[i] = cos(map(i, 0, numTotal, 0, TWO_PI)) * random(1, 5);
    ySpeeds[i] = sin(map(i, 0, numTotal, 0, TWO_PI)) * random(1, 5);
    radii[i] = random(5, 30);
    hues[i] = map(i, 0, numTotal, 0, 255);
  }
  
  noStroke();
  colorMode(HSB);
}

void draw() {
  background(200);
  for (int i = 0; i < numTotal; i++) {
    if (xPositions[i] < radii[i] || xPositions[i] > width - radii[i]) {
      xSpeeds[i] *= -1;
    } 

    if (yPositions[i] < radii[i] || yPositions[i] > height - radii[i]) {
      ySpeeds[i] *= -1;
    }
    
    xPositions[i] += xSpeeds[i];
    yPositions[i] += ySpeeds[i];

    fill(hues[i], 200, 200);
    ellipse(xPositions[i], yPositions[i], radii[i] * 2, radii[i] * 2);
  }
}
