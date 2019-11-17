// bryan ma for code 2 sp 19

ArrayList<Mover> movers = new ArrayList<Mover>();

void setup() {
  size(800, 600);
}

void draw() {
  background(255);

  for (int i = 0; i < movers.size(); i++) {
    Mover m = movers.get(i);
    for (int j = 0; j < movers.size(); j++) {
      if (i != j) {
        Mover otherM = movers.get(j);
        PVector force = new PVector(otherM.pos.x, otherM.pos.y);
        force.sub(m.pos);

        float distance = force.mag();
        distance = constrain(distance, 5, 25);
        force.normalize();
        float strength = (0.4 * m.mass * otherM.mass) / (distance * distance);
        force.mult(strength);
        m.applyForce(force);
      }
    }
    m.update();
    m.display();
  }
}

void mousePressed() {
  movers.add(new Mover(mouseX, mouseY));
}
