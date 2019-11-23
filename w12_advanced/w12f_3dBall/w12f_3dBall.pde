// 3d bouncing ball
// bryan ma for code 2 sp 19

PVector pos = new PVector(0, 0, 0);
PVector vel = new PVector(random(-5, 5), random(-5, 5), random(-5, 5));

void setup() {
  size(600, 600, P3D);
  sphereDetail(6);
  noStroke();
  fill(200);
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, mouseY);
  rotateY(radians(mouseX));

  stroke(255);
  strokeWeight(3);
  noFill();
  box(200);
  lights();
  
  translate(pos.x, pos.y, pos.z);
  noStroke();
  fill(200, 0, 100);
  sphere(20);

  if (pos.x > 90 || pos.x < -90) {
    vel.x *= -1;
  }
  if (pos.y > 90 || pos.y < -90) {
    vel.y *= -1;
  }
  if (pos.z > 90 || pos.z < -90) {
    vel.z *= -1;
  }

  pos.add(vel);

  popMatrix();

}
