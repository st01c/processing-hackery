/********************************
 fully random truchet tile creator;
 lays tiles line-by-line;
 
 alternating line direction!
 (can also change size…)
 
 play with probability!
 play with replacing triangles (using same in
 more conditions)
 ********************************/

int x = 0;
int y = 0;
int trisize = 20;
int index = trisize;
float prob;

void setup() {
  size(400, 400);
  background(255);
  frameRate(15);
  smooth();
}

void draw() {
  prob = random(1);
  println(prob);
  noStroke();
  fill(0);
  if (prob <= 0.25) {
    triangle(x, y, x, y+trisize, x+trisize, y+trisize); // tri 1
    x = x + index;
    if ((x >= width) || (x <= 0)) {
      y = y + trisize;
      index *= -1;
    }
  } else if ((prob > 0.25) && (prob <= 0.5)) {
    triangle(x, y, x+trisize, y, x, y+trisize); // tri 2
    x = x + index;
    if ((x >= width) || (x <= 0)) {
      y = y + trisize;
      index *= -1;
    }
  } else if ((prob > 0.5) && (prob <= 0.75)) {
    triangle(x, y+trisize, x+trisize, y, x+trisize, y+trisize); // tri 3
    x = x + index;
    if ((x >= width) || (x <= 0)) {
      y = y + trisize;
      index *= -1;
    }
  } else if (prob > 0.75) {
    triangle(x, y, x+trisize, y, x+trisize, y+trisize); // tri 4
    x = x + index;
    if ((x >= width) || (x <= 0)) {
      y = y + trisize;
      index *= -1;
    }
  }
  if (y >= height) {
    background(255);
    x = 0;
    y = 0;
    index = trisize;
  }
}

void keyPressed() {
  background(255);
  x = 0;
  y = 0;
  index = trisize;
}