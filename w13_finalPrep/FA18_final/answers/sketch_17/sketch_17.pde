ArrayList<Star> stars = new ArrayList<Star>();

void setup() {
  size(600, 600);
  for (int i = 0; i < 1000; i++) {
    stars.add(new Star(random(width), random(height), random(5)));
  }
  strokeWeight(2);
}

void draw() {
  background(0);
  for (int i = 0; i < stars.size(); i++) {
    Star s = stars.get(i);
    s.update();
    s.display();
  }
}

class Star {
  float x;
  float y;
  float brightness;
  float time;
  float incr;

  Star(float x, float y, float incr) {
    this.x = x;
    this.y = y;
    this.incr = incr;
    time = random(360);
  }

  void update() {
    time += incr;
    brightness = 255 * (sin(radians(time)) * 0.5 + 0.5);
  }

  void display() {
    stroke(brightness);
    point(x,y);
  }
}
