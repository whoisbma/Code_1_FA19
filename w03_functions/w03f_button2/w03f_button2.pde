// code 1 week 3
// bryan ma

// button - second version

boolean buttonOn = true;

void setup() {
  size(600, 600);
}

void draw() {
  if (buttonOn) {
    background(200, 150, 180);
  } else {
    background(150);
  }

  ellipse(width/2, height/2, 100, 100);
  line(width/2, height/2, mouseX, mouseY);
}

void mousePressed() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  if (d < 50) {
    buttonOn = !buttonOn;
  }
}
