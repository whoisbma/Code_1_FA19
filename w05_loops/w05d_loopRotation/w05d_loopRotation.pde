// code 1 fall 2019
// bryan ma

// a demonstration of how to use a loop to create 
// interesting effects

float angle = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  angle++;
  
  for (int i = 0; i <= 200; i++) {
    pushMatrix();
    stroke(map(i,0,200,0,255), 255);
    float x = map(i, 0, 200, 0, 600);
    translate(x, 300);
    rotate(radians(angle + i * 1.5));
    line(0, - i, 0, i * 3);
    popMatrix();
  }
}
