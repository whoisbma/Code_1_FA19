// bryan ma for code 2 sp 19

ArrayList<Ball> balls = new ArrayList<Ball>();
PVector gravity = new PVector(0, 0.1);

void setup() {
  size(800, 600);
  balls.add(new Ball(300, 300));
}

void draw() {
  background(255);

  for (Ball b : balls) {
    PVector friction = b.vel.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(0.04);
    b.applyForce(friction);
    b.applyForce(gravity);
    b.update();
    b.display();
  }
}

void mousePressed() {
  balls.add(new Ball(mouseX, mouseY));
}
