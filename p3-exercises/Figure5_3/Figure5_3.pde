void setup() {
  size(300,300);
  smooth();
  rectMode(CORNER);
  frameRate(20);
}

void draw() {
  if (mouseX <= width/3) {
    background(0);
  } else if (mouseX < 2*width/3) {
    background(127);
  } else {
    background(255);
  }
  println(mouseX);
}