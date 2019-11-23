// bryan ma for code 2 sp 19
// in this sketch i'm drawing an additional graphics context with its own background
// and rotating shape. notice that between the beginDraw() and endDraw() calls the
// pg object has all its own drawing API functions - translate, rotate, rect, etc.

PGraphics pg;

void setup() {
  size(600, 600);
  pg = createGraphics(300, 300);
}

void draw() {
  background(255, 100, 50);
  pg.beginDraw();
  pg.background(0, 200, 150);
  pg.rectMode(CENTER);
  pg.translate(pg.width/2, pg.height/2);
  pg.rotate(radians(frameCount));
  pg.rect(0, 0, 100, 100);
  pg.endDraw();

  // the main graphics context is able to draw any PGraphics
  // offscreen buffers with the image() function,
  // just like a PImage.
  image(pg, mouseX - 150, mouseY - 150);
  
  translate(width/2, height/2);
  rotate(radians(frameCount * 0.5));
  rectMode(CENTER);
  rect(0, 0, 200, 200);
}
