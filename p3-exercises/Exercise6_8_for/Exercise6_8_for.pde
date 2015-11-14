// why is the top line color distorted?

int size = 10;
float ellx;
float elly = 200;
float elldirx = 0.5;
float elldiry = 0.5;
float colorG = random(255); // move to draw for constant random effect…
float colorB = random(255);
float colorR = random(255);

void setup() {
  size(400, 400);
  background(0);
  frameRate(20);
}

void draw() {

  // pixel background…
  for (int x = 0; x <= width; x += size) {
    for (int y = 0; y < height; y += size) {
      rect(x, y, size, size);
      noStroke();
      fill(random(255));
    }

// floating color ball
    ellipseMode(CENTER);
    fill(colorG, colorB, colorR);
    ellipse(ellx, elly, 150, 150);
    ellx += elldirx;
    elly += elldiry;
    if ((ellx > width) || (ellx < 0)) {
      elldirx *= -1;
      colorG = random(255);
      colorB = random(255);
      colorR = random(255);
    } else if ((elly > height) || (elly < 0)) {
      elldiry *= -1;
      colorG = random(255);
      colorB = random(255);
      colorR = random(255);
    }

    ellx = constrain(ellx, 0, width);
    elly = constrain(elly, 0, height);
    println(ellx);
  }
}