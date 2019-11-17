// code 1 FA 18
// bryan ma

// generative portrait 2

// see description in w10_04_portrait1

PImage img;


void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
}

void draw() {
  background(255);
  for (int i = 0; i < img.width; i+=20) {
    for (int j = 0; j < img.height; j+=20) {
      color c = img.get(i,j);
      fill(c);
      ellipse(i, j, 20, 20);
    }
  }
}
