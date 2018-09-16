
// Constants
int XNEG_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1;
boolean value = false;

void setup() {
  size(640, 360);
  // Define colors
  b1 = color(255);
  b2 = color(0);
  c1 = color(129);
}

void draw() {
  setGradient(0, 0, width, height, b1, b2, X_AXIS);
  setGradient(0, 0, width, height, b1, b2, XNEG_AXIS);
}

void mousePressed(){
  value = true;
}

void mouseReleased() {
  value = false;
}

void setGradient(int x, int y, int w, int h, color c1, color c2, int axis ) {

  if (axis == XNEG_AXIS) {  // Right to left gradient
    for (int i = x+w; i > x; i--) {
      float inter = map(i, x+w, x, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  } 
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
