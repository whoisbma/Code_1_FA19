class Attractor {
  PVector pos;
  float mass;
  float size;
  
  Attractor(float x, float y) {
    pos = new PVector(x, y);
    mass = random(1, 5);
    size = 20 * mass;
  }
  
  void display() {
    fill(0);
    ellipse(pos.x, pos.y, size, size);
  }
}
