// This program is a slightly more complicated bouncing ball. 
// Turn the "beam" into a class and use an ArrayList to store
// instances of them. Create new beams every frame based on
// a input method of your choice (key press, mouse click, etc). 

ArrayList<Beam> beams = new ArrayList<Beam>();

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (Beam b : beams) {
    b.update();
    b.display();
  }
}

void mousePressed() {
  beams.add(new Beam(mouseX, mouseY));
  
}

class Beam {
  PVector[] pos = new PVector[15];
  PVector vel;
  color col;

  Beam(float x, float y) {
    col = color(random(255), random(255), random(255));
    for (int i = 0; i < pos.length; i++) {
      pos[i] = new PVector(x, y);
    }

    float speed = random(1, 10);
    float angle = random(TWO_PI);
    vel = new PVector(cos(angle) * speed, sin(angle) * speed);

    pos[0].add(vel);
  }

  void update() {
    for (int i = pos.length - 1; i > 0; i--) {
      pos[i] = pos[i - 1].copy();
    }

    if (pos[0].x > width || pos[0].x < 0) {
      vel.x *= -1;
    }

    if (pos[0].y > height || pos[0].y < 0) {
      vel.y *= -1;
    }

    pos[0].add(vel);
  }

  void display() {

    noFill();
    stroke(col);
    strokeWeight(5);
    beginShape();
    for (PVector p : pos) {
      vertex(p.x, p.y);
    }
    endShape();
  }
}
