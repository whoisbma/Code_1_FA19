// 3d physics
// bryan ma for code 2 sp 19

ArrayList<Mover> movers = new ArrayList<Mover>();

void setup() {
  size(1000, 800, P3D);
  for (int i = 0; i < 100; i++) {
    movers.add(new Mover());
  }
}

void draw() {
  background(50);

  lights();
  translate(width/2, height/2, 0);
  rotateY(frameCount * 0.001);
  for (Mover m : movers) {
    PVector aForce = new PVector(mouseX - width/2, mouseY - height/2, 0);
    aForce.sub(m.pos);
    aForce.normalize();
    aForce.mult(0.1);
    m.applyForce(aForce);

    m.update();
    m.display();
  }
}
