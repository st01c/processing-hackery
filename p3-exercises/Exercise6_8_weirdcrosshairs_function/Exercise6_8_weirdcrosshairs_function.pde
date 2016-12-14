int endY;

void setup() {
  size(200, 200);
  //frameRate(5);
  endY = 0;
}

void draw() {
  background(0);
  line1();
  line2();
}


void line1() {
  strokeWeight(4);
  stroke(255);
  line(0, mouseY, width, pmouseY);
}

void line2() {
  line(mouseX, 0, pmouseX, height);
}
