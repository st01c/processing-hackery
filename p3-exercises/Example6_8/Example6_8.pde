int y = 0;
int stroke = 1;
boolean onoff = true;


void setup() {
  stroke(255);
  size(200, 200);

  frameRate(5);
}

// I added function were the whole thing resets itself line
// by line

void draw() {
  background(0);  // if this moved to DRAW, single line
  if (onoff) {
    stroke(255);
  } else {
    stroke(0);
  }
  strokeWeight(0+ stroke);
  line(0, y, width, y);
  y += 10;

  if (y > height) {
    y = 0;
    onoff = !onoff;
  }

  // code below makes lines stronger with every runthrough

  if (y == 10) {
    stroke += 1;
  }
}