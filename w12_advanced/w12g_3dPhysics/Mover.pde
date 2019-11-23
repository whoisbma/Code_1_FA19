class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  float size;

  Mover() {
    pos = new PVector(random(-300, 300), random(-300, 300), random(-300, 300));
    vel = new PVector(0, 0, 0);
    acc = new PVector(0, 0, 0);
    mass = random(1, 5);
    size = 5 * mass;
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void display() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    fill(255);
    noStroke();
    box(size);
    popMatrix();
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
}
