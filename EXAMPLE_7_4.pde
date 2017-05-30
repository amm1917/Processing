// ASTON MCDONALD   11 MAY 2017
int radius = 40;
float x = -radius;
float speed = 8;
void setup() {
  size(240, 120);
  smooth();
  ellipseMode(RADIUS);
}
void draw() {
  background(0);
  x += speed;
  if (x > width+radius) {
x = -radius;
}
  arc(x, 60, radius, radius, 0.52, 5.76);
}
// Increase the value of x
// If the shape is off screen,
// move to the left edge