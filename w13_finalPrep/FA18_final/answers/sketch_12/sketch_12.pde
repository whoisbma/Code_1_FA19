int planetX;
int planetY;

void setup() {
  size(600, 600);

  planetX = width/2;
  planetY = height*2;
}

void draw() {
  background(0);
  fill(255);
  ellipse(planetX, planetY, 1500, 1500);
  
  float mx = map(mouseX, 0, width, 250, 295);

  float moonX = planetX + cos(radians(mx)) * 1000;
  float moonY = planetY + sin(radians(mx)) * 1000;

  ellipse(moonX, moonY, 100, 100);
  fill(0);
  ellipse(moonX+20, moonY, 80, 80);
}
