class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  float size;

  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = random(1, 5);
    size = 5 * mass;
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void display() {
    fill(240);
    stroke(0);
    ellipse(pos.x, pos.y, size, size);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
}
