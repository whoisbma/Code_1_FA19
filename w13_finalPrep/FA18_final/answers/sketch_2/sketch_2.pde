/*
These two objects rotate in their display methods. 
The second one currently rotates around the other one.

Change their display method so that each object rotates 
independently of the other. 
*/

Rotater p1;
Rotater p2;

void setup() {
  size(600, 600);
  p1 = new Rotater(width/2, height/2);
  p2 = new Rotater(150, 150);
}

void draw() {
  background(255);

  p1.update();
  p1.display();
  
  p2.update();
  p2.display();
}

class Rotater {
  float x;
  float y;
  float angle;

  Rotater(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    rectMode(CENTER);
    pushMatrix();
    translate(x, y);
    rotate(radians(angle));
    rect(0, 0, 100, 100);
    popMatrix();
  }

  void update() {
    angle++;
  }
}
