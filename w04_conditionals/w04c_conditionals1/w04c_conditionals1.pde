// code 1 fall 2019
// bryan ma

// change the background color based on if the 
// mouse is on the left or right side of the screen.
// also this sketch uses the text() function.

int count = 0;
boolean onRightSide;

void setup() {
  size(500, 500);
}

void draw() {
  if (mouseX > width/2) {
    onRightSide = true;
  } else {
    onRightSide = false;
  }
  
  fill(0);
  if (onRightSide == true) {
    background(150, 153, 148);
    text("if mouse is on this side, \ngrey background", width/2 + 20, 200);
  } else {
    background(230, 232, 20);
    text("if mouse is on this side, \nyellow background", 20, 200);
  }
  
  line(width/2, 0, width/2, height);

  
}
