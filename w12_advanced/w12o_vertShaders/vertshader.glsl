uniform mat4 transform;

attribute vec4 position;
attribute vec4 color;
attribute vec3 normal;

varying vec4 vertColor;
varying vec4 pos;

uniform vec2 mouse;
uniform vec2 resolution;
uniform float time;

void main() {
  pos = transform * position;
  pos.y += sin((time + pos.x * 10.0) * 0.001) * 120;
  gl_Position = pos;

  vertColor = vec4(1.0, pos.y/100.0, 0.5, 1.0);
}