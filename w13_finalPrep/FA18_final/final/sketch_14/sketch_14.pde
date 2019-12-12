/*
this sketch uses 4 booleans to change the color of 4 
corresponding ellipses when the mouse is pressed over them.
currently the color never returns to the original color once
it's been pressed. 

change this to make the ellipses return to their original 
color in two conditions: first, if the mouse button is released, 
and second also only as long as the mouse is still positioned 
over the ellipse. see the gif for an example.

(this should be handled in two separate areas of the code.)
*/


boolean on1 = false;
boolean on2 = false;
boolean on3 = false;
boolean on4 = false;

void setup() {
   size(600, 600);
}

void draw() {
  background(250);
  if (on1) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(width/4, height/4, 100, 100);
  if (on2) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(width/4, 3 * height/4, 100, 100);
  if (on3) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(3 * width/4, height/4, 100, 100);
  if (on4) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(3 * width/4, 3 * height/4, 100, 100);
}

void mousePressed() {
  if (dist(mouseX, mouseY, width/4, height/4) < 50) {
    on1 = true;
  }
  if (dist(mouseX, mouseY, width/4, 3 * height/4) < 50) {
    on2 = true;
  }
  if (dist(mouseX, mouseY, 3 * width/4, height/4) < 50) {
    on3 = true;
  }
  if (dist(mouseX, mouseY, 3 * width/4, 3 * height/4) < 50) {
    on4 = true;
  }
}
