/********************************
 fully random truchet tile creator;
 lays tiles line-by-line;
 
 alternating line direction!
 (can also change size…)
 
 ---now with efficient functions!---
 
 now with greyscale color random!
 
 (play with probability!)
 
 ********************************/

int x = 0;
int y = 0;
int trisize = 20;
int index = trisize;
float prob;

void setup() {
  size(500, 300);
  background(255);
  frameRate(24);
  smooth();
}

void draw() {
  prob = random(1);
  fill(random(255));
  if (prob <= 0.25) {
    triangles(x, y, x, y+trisize, x+trisize, y+trisize); // tri 1
  } else if (prob <= 0.5) {
    triangles(x, y, x+trisize, y, x, y+trisize); // tri 2
  } else if (prob <= 0.75) {
    triangles(x, y+trisize, x+trisize, y, x+trisize, y+trisize); // tri 3
  } else if (prob > 0.75) {
    triangles(x, y, x+trisize, y, x+trisize, y+trisize); // tri 4
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
  //saveFrame("frames/####.tga");
}

void triangles(int x1, int y1, int x2, int y2, int x3, int y3) {
  noStroke();
  triangle(x1,y1,x2,y2,x3,y3);
}

void keyPressed() {
  background(255);
  x = 0;
  y = 0;
  index = trisize;
}