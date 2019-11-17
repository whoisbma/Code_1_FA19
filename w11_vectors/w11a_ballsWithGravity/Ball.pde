class Ball {
  PVector pos;
  PVector vel;
  PVector acc;

  float size = 50;

  Ball(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3));
    acc = new PVector(0, 0);
  }

  void update() {
    vel.add(acc);
    pos.add(vel);

    acc.mult(0);

    if (pos.x < size/2) {
      pos.x = size/2;
      vel.x *= -1;
    } else if (pos.x > width - size/2) {
      pos.x = width - size/2;
      vel.x *= -1;
    }

    if (pos.y > height - size/2) {
      pos.y = height - size/2;
      vel.y *= -1;
    }
  }

  void display() {
    fill(20, 50);
    ellipse(pos.x, pos.y, size, size);
  }

  void applyForce(PVector force) {
    acc.add(force);
  }
}
