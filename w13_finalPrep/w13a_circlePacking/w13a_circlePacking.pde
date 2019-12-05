ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(800, 800);
}

boolean isColliding(float x, float y, float s) {
  for (Circle c : circles) {
    if (dist(x, y, c.p.x, c.p.y) < s + c.s) {
      return true;
    }
  }
  return false;
}

void draw() {
  background(0);
  float x = random(width);
  float y = random(height);
  float r = 30;

  int max = 30;
  int radius = (int)random(30, 80);
  int i = 0;
  while ((isColliding(x, y, r) && i < max) || dist(x, y, width/2, height/2) > 300) {
    x = random(width);
    y = random(height);
    if (i == max - 1 && radius > 5) {
      radius--;
      i = 0;
    }
    r = radius;
    i++;
  }
  if (i < max) {
    circles.add(new Circle(x, y, r));
  }


  for (Circle c : circles) {
    c.display();
  }
}

class Circle {
  PVector p;
  float s;
  color c;

  Circle(float x, float y, float _s) {
    p = new PVector(x, y);
    s = _s;
    c = color(random(255), random(255), random(255));
  }

  void display() {
    fill(c);
    ellipse(p.x, p.y, s*2, s*2);
  }
}
