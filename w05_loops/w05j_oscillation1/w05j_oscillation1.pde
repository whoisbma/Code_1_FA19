// code 1 fall 2019
// bryan ma

// oscillation

float x;
float angle;
float rate;
float amplitude;

void setup() {
  size(700,700);
  noStroke();
  textAlign(CENTER,CENTER);
  
  angle = 0;
  amplitude = 200;
  rate = 0.03;
}

void draw() {
  background(255);
  
  angle += rate;
  x = width/2 + sin(angle) * amplitude;
  
  fill(80);
  ellipse(x, height/2, 50, 50);
  
  displayNotes();
}

void displayNotes() {
  fill(245);
  rect(0,400,width,30);
  rect(0,270,width,30);
  fill(0);
  text(sin(angle),width/2, 285);
  text("-1", width/2 - amplitude, 415);
  text("0", width/2, 415);
  text("1", width/2 + amplitude, 415);
}
