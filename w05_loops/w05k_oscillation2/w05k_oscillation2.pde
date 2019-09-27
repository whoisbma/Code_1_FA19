// code 1 fall 2019
// bryan ma

// a more in-depth illustration, 
// this time combining oscillations
// to create circular motion

float x;
float y;
float xAngle;
float yAngle;
float xAmplitude;
float yAmplitude;
float xRate;
float yRate;

void setup() {
  size(700, 700);
  noStroke();
  textAlign(CENTER, CENTER);

  xAngle = 0;
  yAngle = 0;
  xAmplitude = 100;
  yAmplitude = 100;
  xRate = 0.02;
  yRate = 0.02;
}

void draw() {
  background(255);
  fill(200);
  stroke(200);
  ellipse(width/2, height/2, 10, 10);  
  line(width/2, height/2, x, y);

  noStroke();

  xAngle += xRate;
  yAngle += yRate;
  x = width/2 + sin(xAngle) * xAmplitude;
  y = height/2 + cos(yAngle) * yAmplitude;
  fill(80);
  ellipse(x, y, 50, 50);
  
  displayNotes();
}

void displayNotes() {
  fill(100, 50, 200);
  ellipse(width/2 + xAmplitude + 50, y, 20, 20);
  fill(200, 100, 50);
  ellipse(x, height/2 + yAmplitude + 50, 20, 20);

  stroke(100, 50, 200);
  line(x, y, width/2 + xAmplitude + 50, y);
  stroke(200, 100, 50);
  line(x, y, x, height/2 + yAmplitude + 50);

  fill(0);
  textSize(12);
  text(sin(xAngle), x, height/2 + yAmplitude + 70);
  text("-1", width/2 - xAmplitude, height/2 + yAmplitude + 90);
  text("0", width/2, height/2 + yAmplitude + 90);
  text("1", width/2 + xAmplitude, height/2 + yAmplitude + 90);

  text(cos(yAngle), width/2 + xAmplitude + 50, y + 20);
  text("-1", width/2 + xAmplitude + 90, height/2 - yAmplitude);
  text("0", width/2 + xAmplitude + 90, height/2);
  text("1", width/2 + xAmplitude + 90, height/2 + yAmplitude);

  textSize(24);
  text("create circular motion by coordinating\nsin and cos in x and y dimensions", width/2, 40);
  text("try changing the angle,\nrate, and amplitude variables", width/2, height - 40);
}
