// code 1 fall 2019
// bryan ma

// remember that you can map oscillation
// in different ways, not just to motion.

float startingSize;
float oscillateSize;
float oscillateBackground;
float angle;
float rate;
float amplitude;

void setup() {
  size(700,700);
  noStroke();
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);

  angle = 0;
  rate = 0.03;
  amplitude = 100;
  startingSize = 150;
}

void draw() {
  angle += rate;
  oscillateSize = startingSize + sin(angle) * amplitude;
  oscillateBackground = map(sin(angle), -1, 1, 10, 100);
  
  background(oscillateBackground);
  
  ellipse(width/2, height/2, oscillateSize, oscillateSize);
  
  text("try applying oscillation in ways other than directly\nmapping to motion, for example with size or color", width/2, height-100);
}
