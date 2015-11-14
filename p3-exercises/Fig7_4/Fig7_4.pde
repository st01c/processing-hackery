int x = 0;
int speed = 1;

void setup() {
  size(400, 200);
  background(200);
}

void draw() {
  background(50);
  drawCar(x+50, mouseY-10, 50, color(200, 200, 0));
  drawCar(x+25, mouseY+20, 24, color(0, 200, 100));
  drawCar(x+80, mouseY+50, 40, color(200, 0, 0));
  move(3);
  bounce();
}

void drawCar(int x, int y, int thesize, color c) {
  int offset = thesize/4;
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(x, y, thesize, thesize/2);
  fill(5);
  rect(x-offset, y-offset, offset, offset/2);
  rect(x+offset, y-offset, offset, offset/2);
  rect(x-offset, y+offset, offset, offset/2);
  rect(x+offset, y+offset, offset, offset/2);
}

void move(int speedFactor) {
  x = x + (speed * speedFactor);
}

void bounce() {
  if ((x > width) || (x < 0)) {
    speed *= -1;
  }
}