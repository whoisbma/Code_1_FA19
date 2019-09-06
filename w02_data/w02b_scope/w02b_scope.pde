int numerator = 3;
int denominator = 4;

void setup() {
  color bg = color(255, 255, 0);
  background(bg);

  size(300, 300);
}

void draw() {
  //background(bg); // we can't access variable bg because it is out of scope
  fill(10*(numerator*denominator)); // we can still access these bc they're at file scope
  rectMode(CENTER);
  rect(width/2, height/2, 20, 20);
}
