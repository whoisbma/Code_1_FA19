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
        if (distance < (m.size/2) + (otherM.size/2)) {
          force.normalize();
          force.mult(-2);
          m.applyForce(force);
        } else {
          PVector friction = m.vel.copy();
          friction.mult(-1);
          friction.normalize();
          friction.mult(0.01);
          m.applyForce(friction);
        }
      }
    }


    m.update();
    m.display();
  }
}

void mousePressed() {
  movers.add(new Mover(mouseX, mouseY));
}
