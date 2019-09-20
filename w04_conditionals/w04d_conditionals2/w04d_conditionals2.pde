// code 1 fall 2019
// bryan ma

// this has some slightly more complex conditionals.
// it uses the || && < and > logical operators to resolve 
// conditional statements.
// it also uses the frameCount system variable as 
// a crude timer.

void setup() {
  size(600, 600);
}

void draw() {
  
  // the background will be blue if:
  // the mouse is on the right half of the window OR (||)
  // the mouse is on the bottom half of the window.
  if (mouseX > width/2 || mouseY > height/2) { 
    background(150, 200, 255);
  } else {
    background(255);
  }
  
  // if the frameCount number is over 300, 
  // then if the mouseX value is between 200 and 400,
  // then if the mouseY value is between 200 and 400,
  // draw rectangle.
  if (frameCount > 300) {
    if (mouseX > 200 && mouseX < 400) {
      if (mouseY > 200 && mouseY < 400) {
        fill(255);
        rect(200, 200, 200, 200);
      }
    }
  }

  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
