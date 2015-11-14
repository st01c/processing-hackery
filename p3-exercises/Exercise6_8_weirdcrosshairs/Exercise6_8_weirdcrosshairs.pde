int endY;

void setup() {
  size(200,200);
  //frameRate(5);
  endY = 0;
}

void draw() {
  background(0);
  for (int y = 0; y < mouseY; y += 10) {
    stroke(255);
    line(0,mouseY,width,pmouseY);
    line(mouseX,0,pmouseX,height);
  }
  endY += 10;
}