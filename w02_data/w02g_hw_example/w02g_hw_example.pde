// code 1 - fall 19

// bryan ma

// homework example - 
// a scene that responds to mouse input
// and uses variables to store, name, and change values. 

int backgroundColor = 250;

float faceX = 400;
float faceY = 400;
float faceW = 400;
float faceH = 500;
float rEyeX = faceX + 100;
float rEyeY = faceY;
float lEyeX = faceX - 100;
float lEyeY = faceY;
float lPupilSize = 50;
float rPupilSize = 50;

void setup() {
  size(800, 800);
}

void draw() {
  background(backgroundColor);

  // draw ears
  strokeWeight(1);
  fill(220);
  ellipse(faceX - 200, faceY, 50, 120);
  ellipse(faceX + 200, faceY, 50, 120);

  // draw head
  strokeWeight(1);
  fill(230);
  ellipse(faceX, faceY, faceW, faceH);

  // draw eyes
  fill(255);
  ellipse(rEyeX, rEyeY, 100, 100);
  ellipse(lEyeX, lEyeY, 100, 100);
  fill(0);
  float mouseDistanceModifier = 0.06;
  ellipse(rEyeX + (mouseX - width/2) * mouseDistanceModifier, 
    rEyeY + (mouseY - height/2) * mouseDistanceModifier, rPupilSize, rPupilSize);
  ellipse(lEyeX + (mouseX - width/2) * mouseDistanceModifier, 
    lEyeY + (mouseY - height/2) * mouseDistanceModifier, lPupilSize, lPupilSize);

  // draw nose
  strokeWeight(1);
  line(faceX, faceY, faceX + 20, faceY + 120);
  strokeWeight(2);
  line(faceX - 20, faceY + 130, faceX + 20, faceY + 120);

  // draw mouth
  strokeWeight(2);
  noFill();
  arc(faceX, faceY + 150, 200, 50, PI/3, 2*PI/3);
}

void mousePressed() {
  backgroundColor = (int)random(255);
  lPupilSize = random(10, 80);
  rPupilSize = random(10, 80);
}
