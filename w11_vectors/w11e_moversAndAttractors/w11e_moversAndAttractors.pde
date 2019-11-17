// bryan ma for code 2 sp 19

ArrayList<Mover> movers = new ArrayList<Mover>();
ArrayList<Attractor> attractors = new ArrayList<Attractor>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 50; i++) {
    movers.add(new Mover(random(width), random(height)));
  }
}

void draw() {
  background(255);
  
  for (Attractor a : attractors) {
    a.display();
  }

  for (Mover m : movers) {
    for (Attractor a : attractors) {
      PVector aForce = new PVector(a.pos.x, a.pos.y);
      aForce.sub(m.pos);
      aForce.normalize();
      aForce.mult(0.02 * a.mass);
      m.applyForce(aForce);
    }
    m.update();
    m.display();
  }
}

void mousePressed() {
  attractors.add(new Attractor(mouseX, mouseY));
}
