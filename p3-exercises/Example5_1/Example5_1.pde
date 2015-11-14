float r = 150;
float g;
float b;

void setup() {
  size(300,300);
  smooth();
  frameRate(30);
}

void draw() {
  background (r,g,b);
  
  if (mouseX > width/2) {
    r = r + 5;
  } else {
    r = r -5;
  }
  
  if (r > 255) {
    r = 255;
  } else if (r < 0) {
    r = 0;
  }
  
  println(r);
}