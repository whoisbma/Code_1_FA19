// code 1 fall 2019
// bryan ma

// using an arraylist to hold objects

ArrayList<Particle> b = new ArrayList<Particle>();

void setup() {
  size(1000, 600);
}

void draw() {
  background(255);
  b.add(new Particle(mouseX, mouseY));
  
  for (int i = b.size() - 1; i >= 0; i--) {
      Particle temp = b.get(i);
      temp.update();
      temp.display();
      if (temp.life < 0) {
        b.remove(i);
      }
    }
}

class Particle {
  float x;
  float y;
  float dx;
  float dy;
  float life;
  float r;

  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-5, 5);
    dy = random(-5, 5);
    life = 150 ;
    r = 40;
  }

  void update() {
    life-=2;

    x += dx;
    y += dy;
  }

  void display() {
    float r = map(life, 100, 0, 40, 0);
    ellipse(x, y, r * 2, r * 2);
  }
}
