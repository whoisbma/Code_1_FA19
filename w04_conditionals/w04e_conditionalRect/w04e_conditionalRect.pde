// code 1 fall 2019
// bryan ma

// use conditionals to see if the mouse is inside a rectangle

int rectX, rectY;
int rectW, rectH;

void setup() {
  size(600, 600);

  rectX = 225;
  rectY = 250;
  rectW = 150;
  rectH = 100;
}

void draw() {
  background(230);
  
  fill(0);
  text("mouseX value is: " + mouseX, 20, 20);
  text("mouseY value is: " + mouseY, 20, 35);
  
  text("rectX: " + rectX, 200, 20);
  text("rectY: " + rectY, 200, 35);
  text("rectX + rectW: " + (rectX + rectW), 200, 50);
  text("rectY + rectH: " + (rectY + rectH), 200, 65);

  if (mouseX > rectX && mouseX < rectX + rectW &&
    mouseY > rectY && mouseY < rectY + rectH) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  rect(rectX, rectY, rectW, rectH);
  
  fill(0);
  text("rectX,\nrectY", rectX-35, rectY-5);
  text("rectX,\nrectY+rectH", rectX-35, rectY+rectH);
  text("rectX+rectW,\nrectY", rectX+rectW+5, rectY-5);
  text("rectX+rectW,\nrectY+rectH", rectX+rectW+5, rectY+rectH);
}
