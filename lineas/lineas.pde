float x;

void setup() {
  size(400, 330);
  background(255);

  smooth();
}

void draw() {
  background(255);

  for (int i = 0; i < 30;i++) {
    noStroke();
    fill(0);
    rect(i * 20, 0, 10, height);
  }

  if (mousePressed == true) {
    background(150);
  }

  for (int q = 0; q < 4; q++) {
    if (q % 2 == 0) {
      fill(0);
    }
    else {
      fill(255);
    }
    rect(x, q * 90 + 5, 20, 50);
  }

  if (keyPressed == true) {
    stroke(255, 0, 0);
    strokeWeight(3);
    noFill();
    rect(x, 5, 21, 320);
  }
  
  x += 0.5;
 
  if (x > width + 10) {
    x = 0;
  }
}
