// code 1 fall 2019
// bryan ma

// use a conditional check to repeat the left-right motion
// of a rotating shape with mapped colors and sizes, while 
// not refreshing the background, creating a pattern effect.
// this also uses the "saveFrame()" function in the 
// mousePressed event function body.

int x = -50;
int y = 0;
float angle = 0;

void setup() {
  size(600,600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  if (x > width + 50) {
    x = -50;
    y += 50;
  } else {
    x += 10;    
  }

  translate(x,y);
  
  angle += 2;
  rotate(radians(angle)); 
  
  float rColor = map(x, 0, width, 0, 255);
  float gColor = map(y, 0, height, 0, 255);
  float bColor = map(mouseX, 0, width, 10, 255);
  float rectW = map(mouseX, 0, width, 10, 150);
  float rectH = map(mouseY, 0, height, 10, 150);
  
  fill(rColor, gColor, bColor);
  rect(0, 0, rectW, rectH);

}

void mousePressed() {
  saveFrame("screenshot.png");
}
