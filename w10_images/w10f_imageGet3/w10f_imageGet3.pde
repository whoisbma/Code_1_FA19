PImage img;


void setup() {
  size(600, 600);
  img = loadImage("doge.png");
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);
  float cellSize = 6;
  
  for (int i = 0; i < img.height; i+=cellSize) {
    for (int j = 0; j < img.width; j+=cellSize) {
      color c = img.get(j, i);
      float b = brightness(c);
      float a = alpha(c);
      float x = j * width/img.width;
      float y = i * height/img.height;
      fill(c);
      pushMatrix();
      translate(x, y);
      rotate(radians(frameCount + j));
      float rectSize = map(b, 0, 255, cellSize - 4, cellSize + 4);
      float w = 25 + sin(radians(frameCount + j)) * 25 + rectSize;
      float h = 10 + sin(radians(frameCount + i)) * 10 + rectSize;
      rect(0, 0, w, h);
      popMatrix();
    }
  }
}
