// code 1 fall 2019
// bryan ma

// the reason we might use an array is the same reason
// we use variables - we need to remember data so that
// we can modify and access it later. the difference is
// that we can use large amounts of data in arrays 
// programmatically, rather than needing to create 
// individual variables for every value needed.

// in this case the array is being used to store 60 values,
// which is many more variables than we would want to type 
// out manually. 

int numTotal = 60;
float[] racersXPos = new float[numTotal];

boolean finished = false;
int winningRacer = -1;

void setup() {
  size(600, 600);
  textSize(64);
  for (int i = 0; i < numTotal; i++) {
    racersXPos[i] = 20;
  }
}

void draw() {
  background(255);
  stroke(255, 0, 0);
  line(580, 0, 580, height);
  
  for (int i = 0; i < numTotal; i++) {
    drawRacer(racersXPos[i], i * 10);

    if (!finished) {
      racersXPos[i] += random(-1, 5);
      if (racersXPos[i] > 580) {
        finished = true;
        winningRacer = i;
      }
    }
  }

  if (finished) {
    fill(0);
    text("racer " + winningRacer + " won!\n", 30, 100);
    noFill();
    stroke(255, 0, 0);
    ellipse(racersXPos[winningRacer], winningRacer * 10, 25, 25); 
  }
}

void drawRacer(float x, float y) {
  stroke(0);
  line(x, y, x-10, y-5);
  line(x, y, x-10, y+5);
  line(x-10, y-5, x-7, y);
  line(x-10, y+5, x-7, y);
}
