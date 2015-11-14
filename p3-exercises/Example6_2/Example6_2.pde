int y = 10;
int x = 10;
int spacing = 10;
int len = 20;
int r;
int g;
int b;

void setup() {
  size(200,200);
  background(255);
}

void draw() {
  strokeWeight(3);
  line(x,y,x,y+len);
  stroke(0+2*y,0+y,0+2*y);
  
  x = x + spacing;
  if (x > width-10) {
    x = 10;
    y = y +len+10;
  }
}