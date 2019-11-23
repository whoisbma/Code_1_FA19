#define PROCESSING_COLOR_SHADER

varying vec4 vertColor;

uniform vec2 mouse;
uniform vec2 resolution;

void main() {
  vec2 st = vec2(gl_FragCoord.x / resolution.x, gl_FragCoord.y / resolution.y);
  gl_FragColor = vec4(st.x, st.y, mouse.x, 1.0);
  //gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);

  // not using the default approach:
  // gl_FragColor = vertColor;
}