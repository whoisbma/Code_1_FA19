// code 1 fall 2019
// bryan ma

// if you want a class to own an instance of SoundFile,
// you'll need to pass "this" to the class somehow. 
// Here, the constructor for Ball accepts a PApplet object, which
// is the type of object represented by "this" in the main Processing scope.

import processing.sound.*;

int NUM_BALLS = 5;
float MIN_RADIUS = 10;
float MAX_RADIUS = 70;

ArrayList<Ball> b = new ArrayList<Ball>();

void setup() {
  size(600, 600);

  for (int i = 0; i < NUM_BALLS; i++) {
    b.add(new Ball(random(MAX_RADIUS, width-MAX_RADIUS), random(MAX_RADIUS, height-MAX_RADIUS), this));
  }
}

void draw() {
  background(30);

  for (int i = 0; i < NUM_BALLS; i++) {
    Ball ball = b.get(i);
    ball.update();
    ball.display();
  }
}
