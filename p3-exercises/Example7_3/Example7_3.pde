// Declare global variables
int x = 0;
int speed = 1;

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  background(255);
  move(2);
  bounce();
  display(25);
}

void display(int diameter) {
  stroke(0);
  fill(175);
  ellipse(x,100,diameter,diameter);
}

void move(int speedFactor) {
  x = x + (speed * speedFactor);
}

void bounce() {
  if ((x > width) || (x < 0)) {
    speed *= -1;
  }
}