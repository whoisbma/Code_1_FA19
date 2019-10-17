// code 1 fall 2019
// bryan ma

// storing objects in an array

Ball[] b = new Ball[100];

void setup() {
  size(600, 600);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball(width/2, height/2);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < b.length; i++) {
    b[i].update();
    b[i].display();
  }
}

class Ball {
  float x;
  float y;
  float dx;
  float dy;
  float r;

  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-5, 5);
    dy = random(-5, 5);
    r = 40;
  }

  void update() {
    if (x > width - r || x < r) {
      dx *= -1;
    }
    if (y > height - r || y < r) {
      dy *= -1;
    }

    x += dx;
    y += dy;
  }

  void display() {
    ellipse(x, y, r * 2, r * 2);
  }
}
