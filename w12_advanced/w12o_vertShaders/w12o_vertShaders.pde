// bryan ma for code 2 sp 19

// this program uses a combination of a vertex shader and a fragment 
// shader not only to set the colors of the pixels in the elements being 
// drawn, but also to displace the vertices of those elements.

// in the sketch, you can see where the quads would be drawn if
// the vertex shader wasn't altering their positions by the outlines.

// i'm also passing a time uniform variable to the shader program,
// which is letting me use sin to create some dynamic motion based
// on vertex position, which i then use to affect the color.

PShader vertShader;

void setup() {
  size(600, 600, P3D);
  vertShader = loadShader("fragshader.glsl", "vertshader.glsl");
  vertShader.set("resolution", width, height);
}

void draw() {
  background(150);
  vertShader.set("time", (float)millis());
  shader(vertShader);
  translate(width/2, height/2);
  for (int i = 0; i < 10; i++) {
    beginShape(QUAD);
    vertex(-20 * i, -20, i * 20);
    vertex(20 * i, -20, i * 20);
    vertex(20 * i, 20, i * 20);
    vertex(-20 * i, 20, i * 20);
    endShape();
  }
}
