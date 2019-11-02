class Ball {
  float x;
  float y;
  float dx; 
  float dy;
  float r;
  float c;
  SoundFile sfx;

  Ball(float _x, float _y, PApplet appletInstance) {
    x = _x;
    y = _y;
    dx = random(-5, 5);
    dy = random(-5, 5);
    r = random(MIN_RADIUS, MAX_RADIUS);
    c = random(100, 250);
    // notice that i pass the applet instance this to the class in the main sketch
    int whichFile = int(random(1, 6));
    sfx = new SoundFile(appletInstance, whichFile + ".aif");
  }

  void update() {
    boolean collision = false;

    if (x < r || x > width - r) {
      dx *= -1;
      collision = true;
    }
    if (y < r || y > height - r) {
      dy *= -1;
      collision = true;
    }

    x += dx;
    y += dy;

    if (collision) {
      float soundFreq = map(r, MIN_RADIUS, MAX_RADIUS, 2.0, 0.2);
      float soundAmp = map(r, MIN_RADIUS, MAX_RADIUS, 0.3, 0.6);
      playSound(soundFreq, soundAmp);
    }
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, r*2, r*2);
  }

  void playSound(float freq, float amp) {
    sfx.stop();
    sfx.jump(0);
    sfx.play(random(freq - 0.1, freq + 0.1), random(amp - 0.1, amp + 0.1));
  }
}
