PVector pos;
PVector vel;
PVector target;
float speed = 10;
float angle;
float easeRate = 0.05;

void setup() {
  size(1000,600);
  background(250);
  pos = new PVector(width/2, height/2);
  vel = new PVector(0, 0);
  target = new PVector(0, 0);
  
}

void draw() {
  fill(250, 20);
  noStroke();
  rectMode(CORNER);
  rect(0, 0, width, height);
  target.set(mouseX, mouseY);
  float angle = atan2(target.y - pos.y, target.x - pos.x);
  
  speed = pos.dist(target) * easeRate;
  
  vel.x = cos(angle) * speed;
  vel.y = sin(angle) * speed;
  
  pos.add(vel);
  translate(pos.x, pos.y);
  rotate(angle);
  fill(220);
  stroke(0);
  rectMode(CENTER);
  rect(0, 0, 50, 50-speed);
}