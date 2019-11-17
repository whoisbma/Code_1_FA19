// bryan ma for code 2 sp 19

ArrayList<Mover> movers = new ArrayList<Mover>();

void setup() {
  size(800, 600);
  movers.add(new Mover(300, 300));
}

void draw() {
  background(255);

  for (Mover m : movers) {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(m.pos);
    mouse.normalize();
    mouse.mult(0.1);
    m.applyForce(mouse);
    
    PVector friction = m.vel.copy();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(0.01);

    m.applyForce(friction);
    
    m.update();
    m.display();
  }
}

void mousePressed() {
  movers.add(new Mover(mouseX, mouseY));
}
