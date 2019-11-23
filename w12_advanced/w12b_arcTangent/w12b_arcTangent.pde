void setup() {
  size(800, 800);
  background(250);
  textSize(32);
  textAlign(RIGHT);
  fill(0);
}

void draw() {
  background(250);
  float angle = atan2(mouseY - height/2, mouseX - width/2);

  text(angle + " radians", width-100, 100);
  text(degrees(angle) + " degrees", width-100, 150);
  stroke(0, 50);
  line(width/2, height/2, mouseX, mouseY);
  line(width/2, height/2, width, height/2);
  
  
  translate(width/2, height/2);
  rotate(angle);
  stroke(0);
  triangle(0, 10, 0, -10, 40, 0);
  
}