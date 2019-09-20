// code 1 fall 2019
// bryan ma

// this code creates a very simple timer that 
// counts down 3 seconds, and uses an line to 
// visualize the time. once time is up, 
// the background is set to black. clicking 
// the mouse resets the timer.

int targetTime;
int timerLength = 3000;

void setup() {
  size(600, 600);
  strokeWeight(5);
  targetTime = millis() + timerLength;
}

void draw() {
  background(255);
  if (millis() < targetTime) {
    float diff = targetTime - millis();
    line(width/2, 0, width/2, map(diff, 0, timerLength, height, 0));
  } else {
    background(0);
  }
}

void mousePressed() {
  targetTime = millis() + timerLength;
}
