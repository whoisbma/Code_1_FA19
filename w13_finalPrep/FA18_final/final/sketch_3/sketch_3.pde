/* 
the program below draws three circles whose oscillation 
is slightly off from one another. 

instead of drawing the circles one by one, create a loop 
that will draw 30 circles to the canvas to create the 
wave pattern as shown in the example gif. use the iteration
variable (e.g. 'i') from your loop to adjust the beginning 
angle of each circle and space them out over the x-axis. 
finally, adjust the amplitude so that the wave goes from 
the top of the canvas to the bottom.
*/

float angle = 0.0;
float offset;
float amplitude = 40;
float speed = 0.05;

void setup() {
 size(600, 600);
 offset = height/2;
}

void draw() {
 background(0);

 float y1 = offset + sin(angle) * amplitude;
 float y2 = offset + sin(angle + 0.4) * amplitude;
 float y3 = offset + sin(angle + 0.8) * amplitude;

 ellipse(10, y1, 20, 20);
 ellipse(30, y2, 20, 20);
 ellipse(50, y3, 20, 20);

 angle += speed;
}
