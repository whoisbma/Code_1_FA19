ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(600, 600);
  
}

void draw() {
  background(150);
  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);
    c.update();
    c.display();
  }
}

void mousePressed() {
  circles.add(new Circle(mouseX, mouseY));
}

class Circle {
  float x;
  float y;
  float d;
  float incr;
  float maxSize;

  Circle(float x, float y) {
    this.x = x;
    this.y = y;
    this.d = 0;
    this.incr = 2;
    this.maxSize = 150;
  }

  void update() {
    if (d > maxSize || d < 0) {
      incr = -incr;
    }
    d += incr;
  }

  void display() {
    ellipse(x, y, d, d);
  }
}
