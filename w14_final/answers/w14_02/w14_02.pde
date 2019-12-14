// fix the code so that the drawn ellipse oscillates as 
// in the example gif. it should reset its position to 
// the left side of the screen after reaching the right.
// the wave's amplitude should grow larger as the xPos 
// increases (use map() or other means).

int size = 50; 
float xPos = 0;
float yPos = 0;
float theta; 
float ampl; 

void setup() {
  size(600, 600);
}
void draw() {
  background(0); 

  theta += .05; 

  //create boundaries for your xPos 
  if (xPos > width) {
    xPos = 0;
  } else {
    xPos += 1;
  }

  //use the map function for ampl 
  ampl = map(xPos, 0, width, 0, height/2);

  //fix yPos 
  yPos = height/2 + sin(theta) * ampl; 

  fill(255); 
  ellipse(xPos, yPos, size, size);
}
