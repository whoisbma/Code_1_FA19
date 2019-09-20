// code 1 fall 2019
// bryan ma

// a simple "game", using most of the tools we learned this week.
// conditionals form the backbone of the game system. you should
// be able to understand everything going on here if you read carefully.
// the code also makes use of functions to have a relatively clean
// setup() and draw() loop functions.

float x;
float y;
float xSpeed;
float ySpeed;
float radiusStart;
float radius;

float targetTime;
float timeToReset = 3000;

float endGameTime;
float timeToEndGame = 10000;

int score = 0;

void setup() {
  size(800, 800);
  resetTarget();
  resetGameTimer();
}

void draw() {
  background(255);
  if (millis() > targetTime) {
    resetTarget();
  }
  updateTarget();
  drawTarget();
  drawUI();
}

void mousePressed() {
  // if target is clicked, increment the score and reset the target
  if (dist(mouseX, mouseY, x, y) < radius) {
    score++;
    background(0);
    resetTarget();
  }

  // if game is over, click to restart
  if (millis() > endGameTime) {
    resetGameTimer();
    resetTarget();
    score = 0;
  }
}

// draw UI elements, including end game screen
void drawUI() {
  textSize(32);
  fill(0);

  text("click on the target to score a point!", 50, 50);
  text("score 10 points in 10 seconds!", 50, 100);
  text("score: " + score, 50, 150); 
  text("time: " + ((endGameTime - millis())/1000), 300, 150);

  if (millis() > endGameTime) {
    background(255);
    if (score > 10) {
      text("you won! click to play again", 150, 200);
    } else {
      text("you lost! click to play again", 150, 200);
    }
  }
}

// start the 10 second game timer
void resetGameTimer() {
  endGameTime = millis() + timeToEndGame;
}

// reset the target timer, speed, position, and radius
void resetTarget() {
  radiusStart = random(50, 100);
  x = random(radiusStart, width - radiusStart);
  y = random(radiusStart, height - radiusStart);
  xSpeed = random(-10, 10);
  ySpeed = random(-10, 10);
  targetTime = millis() + timeToReset;
}

// move the target around the screen like a bouncing ball
void updateTarget() {
  // change the radius over time based on the timer
  radius = map(targetTime - millis(), timeToReset, 0, radiusStart, 0);

  if (x > width - radius|| x < radius) {
    xSpeed *= -1;
  }
  if (y > height - radius || y < radius) {
    ySpeed *= -1;
  }

  x += xSpeed;
  y += ySpeed;
}

// draw a target at the x and y position
void drawTarget() {
  fill(255, 0, 0);
  ellipse(x, y, radius * 2, radius * 2);
  fill(255);
  ellipse(x, y, (radius*2) * 0.8, (radius*2) * 0.8);
  fill(255, 0, 0);
  ellipse(x, y, (radius*2) * 0.6, (radius*2) * 0.6);
  fill(255);
  ellipse(x, y, (radius*2) * 0.4, (radius*2) * 0.4);
  fill(255, 0, 0);
  ellipse(x, y, (radius*2) * 0.2, (radius*2) * 0.2);
}
