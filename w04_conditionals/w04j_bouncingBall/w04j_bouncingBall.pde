// code 1 fall 2019
// bryan ma

// a "bouncing ball" program - it uses slightly more
// complex logic than the pattern conditionals, to 
// invert a speed value that is added to the x and y
// values any time the ellipse touches the walls.

float x;
float y;
float xSpeed;
float ySpeed;
float radius = 75;

void setup() {
  size(800, 800);

  x = width/2;
  y = height/2;
  xSpeed = random(-5, 5);
  ySpeed = random(-5, 5);
}

void draw() {
  background(255);

  if (x > width - radius|| x < radius) {
    xSpeed *= -1;
  }
  if (y > height - radius || y < radius) {
    ySpeed *= -1;
  }

  x += xSpeed;
  y += ySpeed;
  
  fill(230);
  ellipse(x, y, radius * 2, radius * 2); 
}
