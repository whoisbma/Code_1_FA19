#define PROCESSING_COLOR_SHADER

varying vec4 vertColor;
varying vec4 pos;

uniform vec2 resolution;

void main() {
  gl_FragColor = vertColor;
  //gl_FragColor = vec4(pos.y, 1.0, 0.0, 1.0);
}