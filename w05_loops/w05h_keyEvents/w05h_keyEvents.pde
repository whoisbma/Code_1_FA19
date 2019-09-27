// code 1 fall 2019
// bryan ma

// press on the keyboard to trigger the 
// keyPressed event and save the alphanumeric
// value to a char variable, which will be 
// printed on the canvas.

char lastKey = ' ';

void setup() {
  size(600, 600);
  
  textSize(200);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  fill(255);
  text(lastKey, width/2, height/2);
}

void keyPressed() {
  lastKey = key;
}

void keyReleased() {
  lastKey = ' ';
}
