void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  loadPixels();
  
  for (int i = 0; i < pixels.length; i++) {
    pixels[i] = color(random(255));
  }
  
  updatePixels();
}
