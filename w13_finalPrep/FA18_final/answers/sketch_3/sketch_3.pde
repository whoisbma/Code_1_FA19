float angle = 0.0;
float offset;
float amplitude = 300;
float speed = 0.05;

void setup() {
 size(600, 600);
 offset = height/2;
}

void draw() {
 background(0);

 for (int i = 0; i < width; i+=20) {
   float y = offset + sin(angle + i * 0.01) * amplitude;
   ellipse(10 + i, y, 20, 20); 
 }

 angle += speed;
}
