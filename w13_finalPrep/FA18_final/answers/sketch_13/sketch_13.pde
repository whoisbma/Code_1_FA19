PVector v1, v2, v3, v4;

void setup() {
  rectMode(CENTER);
  size(600,600);
  v1 = new PVector(50, 50);
  v2 = new PVector(width-50,50);
  v3 = new PVector(1, 1);
  v4 = new PVector(-1, 1);
}

void draw() {
  rect(v1.x, v1.y, 100, 100);
  rect(v2.x, v2.y, 100, 100);
  v1.add(v3);
  v2.add(v4);
}
