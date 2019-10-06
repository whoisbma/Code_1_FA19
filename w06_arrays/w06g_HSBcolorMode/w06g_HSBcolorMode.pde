// code 1 fall 2019
// bryan ma

// HSB color mode is useful if you want to map
// a range of colors with a single value instead
// of with red green and blue channels.

// this sketch uses a loop to draw a gradient mapping
// hues to the width of the screen, also changing 
// saturation and brightness based on the mouse.

void setup() {
  size(800, 300);
  colorMode(HSB);
}

void draw() {
  for (int i = 0; i < width; i++) {
    float hue = map(i, 0, width, 0, 255);
    float saturation = map(mouseX, 0, width, 0, 255);
    float brightness = map(mouseY, 0, height, 0, 255);
    stroke(hue, saturation, brightness);
    line(i, 0, i, height);
  }
}
