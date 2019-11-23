// bryan ma for code 2 sp 19

// this is a very very simple custom fragment shader.
// notice there is no vertex shader included, this means 
// that processing will use the default pipeline for a 
// vertex shader.

// the basic idea here is that we are overriding the normal
// render pipeline for the fragment shader, and instead of 
// drawing a white quad as indicated in the draw loop,
// i'm using the fragment shader to tell the quad what color
// pixels it's composed of. every pixel value is calculated 
// simultaneously, compared to doing it one at a time with the
// pixels[] array in the processing API.

// i'm passing a group of arbitrary values to the shader as 
// 'uniform' variables - the resolution of the graphics context,
// and the mouseX and Y positions. these values, as well as the 
// 'gl_FragCoord' vector that we get by default, are used to 
// create the colors stretching across the quad. we're ignoring 
// the use of the vec4 'vertColor', which we would otherwise use
// in the normal pipeline.

PShader shader;

void setup() {
  size(600, 600, P2D);
  shader = loadShader("fragshader.glsl");
  noStroke();
  shader.set("resolution", width, height);
}

void draw() {
  shader.set("mouse", (float)mouseX/width, (float)mouseY/height);
  shader(shader);
  beginShape(QUAD);
  vertex(100, 100);
  vertex(500, 100);
  vertex(500, 500);
  vertex(100, 500);
  endShape();
}
