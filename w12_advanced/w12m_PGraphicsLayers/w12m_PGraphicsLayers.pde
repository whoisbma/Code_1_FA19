// this sketch is from the example found here: 
// https://funprogramming.org/143-Using-PGraphics-as-layers-in-Processing.html
// the author uses two PGraphics objects to maintain different layers -
// the letters will never appear above the squares.

PGraphics letters;
PGraphics squares;

void setup() {
  size(500, 500);
  
  letters = createGraphics(width, height);
  squares = createGraphics(width, height);
}
void draw() {
  background(0);
    
  letters.beginDraw();
  letters.text(int(random(10)), random(width), random(height));
  letters.endDraw();
  
  squares.beginDraw();
  squares.fill(#000044);
  squares.rect(random(width), random(height), 40, 40);
  squares.endDraw();
  
  image(letters, 0, 0);
  image(squares, 0, 0);
}
