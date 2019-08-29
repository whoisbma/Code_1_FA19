// code 1 week 1
// bryan ma

// mapping values

void setup() {
  size(600, 600);
}

void draw() {
  // map the background color to mouseX, going from 0 to 255.
  background(map(mouseX, 0, width, 0, 255));

  // map the fill color of a rect to mouseX, from 255 to 0.
  noStroke();
  fill(map(mouseX, 0, width, 255, 0));
  rectMode(CENTER);
  rect(width/2, height/2, 400, 400);
  
  // map the fill color's red channel to mouse Y, from 0 to 255.
  fill(map(mouseY, 0, height, 0, 255), 150, 150);
  // map the y position of an ellipse to mouse X, from 125 to 475.
  ellipse(width/2, map(mouseX, 0, width, 125, 475), 50, 50);
}
