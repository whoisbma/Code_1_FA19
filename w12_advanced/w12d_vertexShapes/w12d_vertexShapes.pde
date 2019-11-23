// vertex shapes vs. 2d drawing functions in 3d
// bryan ma for code 2 sp 19

// different ways to draw the same form - 
// notice the color interpolation on the surface of
// the custom shapes. 

void setup() {
  size(900, 600, P3D);
  //noStroke();
}

void draw() {
  background(255);

  drawUnfilledRect();
  drawFilledRect();

  drawQuad();
  drawVertexColorQuad();

  drawTris();
  drawVertexColorTris();
}

void drawUnfilledRect() {
  pushMatrix();
  translate(width/4, 200, 0);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  noFill();
  rect(-50, -50, 100, 100);
  popMatrix();
}

void drawFilledRect() {
  pushMatrix();
  translate(width/4, 400, 0);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  fill(230, 90, 90);
  rect(-50, -50, 100, 100);
  popMatrix();
}

void drawQuad() {
  pushMatrix();
  translate(width/2, 200, 0);
  rotateX(100 + frameCount * 0.01);
  rotateY(100 + frameCount * 0.01);
  rotateZ(100 + frameCount * 0.01);
  noFill();
  beginShape(QUADS);
  vertex(-50, -50, 0);
  vertex(-50, 50, 0);
  vertex(50, 50, 0);
  vertex(50, -50, 0);
  endShape();
  popMatrix();
}

void drawVertexColorQuad() {
  pushMatrix();
  translate(width/2, 400, 0);
  rotateX(100 + frameCount * 0.01);
  rotateY(100 + frameCount * 0.01);
  rotateZ(100 + frameCount * 0.01);
  beginShape(QUADS);
  fill(255, 0, 0);
  vertex(-50, -50, 0);
  fill(0, 255, 0);
  vertex(-50, 50, 0);
  fill(0, 0, 255);
  vertex(50, 50, 0);
  fill(255, 255, 255);
  vertex(50, -50, 0);
  endShape();
  popMatrix();
}

void drawTris() {
  pushMatrix();
  translate(3 * width/4, 200, 0);
  rotateX(200 + frameCount * 0.01);
  rotateY(200 + frameCount * 0.01);
  rotateZ(200 + frameCount * 0.01);
  beginShape(TRIANGLES);
  noFill();
  vertex(-50, -50, 0);
  vertex(-50, 50, 0);
  vertex(50, 50, 0);
  vertex(-50, -50, 0);
  vertex(50, 50, 0);
  vertex(50, -50, 0);
  endShape();
  popMatrix();
}

void drawVertexColorTris() {
  pushMatrix();
  translate(3 * width/4, 400, 0);
  rotateX(200 + frameCount * 0.01);
  rotateY(200 + frameCount * 0.01);
  rotateZ(200 + frameCount * 0.01);
  beginShape(TRIANGLES);
  fill(255, 255, 0);
  vertex(-50, -50, 0);
  fill(255, 0, 255);
  vertex(-50, 50, 0);
  fill(0, 255, 255);
  vertex(50, 50, 0);
  fill(255);
  vertex(-50, -50, 0);
  fill(120);
  vertex(50, 50, 0);
  fill(10);
  vertex(50, -50, 0);
  endShape();
  popMatrix();
}
