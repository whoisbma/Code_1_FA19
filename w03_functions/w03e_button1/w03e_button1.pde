// code 1 week 3
// bryan ma

// button - first version

int c = 255;

void setup()  {
  size(600, 600);
}

void draw() {
  background(c);
  
  ellipse(width/2, height/2, 100, 100);
  line(width/2, height/2, mouseX, mouseY);
}

void mousePressed() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  if (d < 50) {
    if (c == 255) {
      c = 150;
    } else {
      c = 255;
    }
  }
}
