int sise = 10;

void setup() {
  size(200, 200);
  noStroke();
}


void draw() {
  int x = 0;
  while (x < width) {
    int y = 0;
    while (y < height) { 
      rect(x, y, sise, sise);
      fill(random(255), random(255), random(255));
      y += 10;
    }
    x += 10;
  }
}