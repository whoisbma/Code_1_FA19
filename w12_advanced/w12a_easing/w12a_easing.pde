float posX;
float posY;
float targetX;
float targetY;
float easeRate;

void setup() {
  size(800, 600);
  easeRate = 0.1;
}

void draw() {
  background(250);
  
  targetX = mouseX;
  targetY = mouseY;
   
  posX += (targetX - posX) * easeRate;
  posY += (targetY - posY) * easeRate;
  
  ellipse(posX, posY, 80, 80);
}