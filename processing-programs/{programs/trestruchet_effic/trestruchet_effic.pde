/********************************
 fully random truchet tile creator;
 lays tiles line-by-line;
 
 alternating line direction!
 (can also change size…)
 
 ---now with functions!---
 NO: the function is really not necessary…
 can be very efficiently done without
 
 (play with probability!)
 
 ********************************/

int x = 0;
int y = 0;
int trisize = 40;
int index = trisize;
float prob;

void setup() {
  size(400, 400);
  background(255);
  frameRate(24);
  smooth();
}

void draw() {
  prob = random(1);
  noStroke();
  fill(0);
  if (prob <= 0.25) {
    triangle1();
  } else if (prob <= 0.5) {
    triangle2();
  } else if (prob <= 0.75) {
    triangle3();
  } else if (prob > 0.75) {
    triangle4();
  }
  x = x + index;
  if ((x >= width) || (x <= 0)) {
    y = y + trisize;
    index *= -1;
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


void triangle1() {
  triangle(x, y, x, y+trisize, x+trisize, y+trisize); // tri 1
}

void triangle2() {
  triangle(x, y, x+trisize, y, x, y+trisize); // tri 2
}

void triangle3() {
  triangle(x, y+trisize, x+trisize, y, x+trisize, y+trisize); // tri 3
}

void triangle4() {
  triangle(x, y, x+trisize, y, x+trisize, y+trisize); // tri 4
}