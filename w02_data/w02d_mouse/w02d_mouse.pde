// code 1 week 2
// mouse & interactivity

// mousePressed bool vs mousePressed() event

// why use one vs the other?

int mouseEventCounter = 0;
int mousePressedBooleanCounter = 0;

void setup() {
  size(300, 300);
}

void draw() {
  if(mousePressed) {
    mousePressedBooleanCounter++;
    println("mousePressedBooleanCounter: " + mousePressedBooleanCounter);
  }
  
  //println("mousePressed: " + mousePressed);
}

void mousePressed() {
  mouseEventCounter++; // mouseEventCounter = mouseEventCounter + 1
                       // mouseEventCounter += 1;
  println("mousePressed() event " + mouseEventCounter);
}
