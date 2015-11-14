int size = 10;

void setup() {
  size(400, 400);
  background(0);
  frameRate(30);
}

void draw() {
  int x = 0;
  while (x < width) {
    int y = 0;
    while (y < height) {
      noStroke();
      fill(random(255));
      rect(x,y,size,size);
      y += size;
    }
    x += size;
  }
}