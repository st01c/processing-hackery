int sise = 10;

void setup() {
  size(200, 200);
  noStroke();
}

void draw() {
  for (int x = 0; x < width; x += sise) {
    for (int y = 0; y < height; y += sise) {
      rect(x, y, sise, sise);
      fill(random(255),random(255),random(255));
    }
  }
}