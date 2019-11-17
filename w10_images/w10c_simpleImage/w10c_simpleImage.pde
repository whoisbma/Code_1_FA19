// code 1 FA 17
// week 3 - example 7
// bryan ma
// using PImage objects

PImage doge;

void setup() {
  size(800, 800);
  doge = loadImage("Doge.png");
  imageMode(CENTER);
}

void draw() {
  background(240);
  translate(width/2, height/2);
  rotate(radians(mouseX * 0.5));
  // draw doge at the origin of the coordinate system,
  // with a width and height dependent both on the native width and height of the image
  // combined with the mouse position.
  image(doge, 0, 0, doge.width + mouseX, doge.height + mouseY);  
} 