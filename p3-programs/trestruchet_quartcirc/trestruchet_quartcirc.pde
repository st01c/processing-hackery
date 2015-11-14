/********************************
 SLIGHTLY LEFT-LEANING, SLOWLY SELF-EFFACING TRUCHET TILE GENERATOR VARIATION WITH QUARTER CIRCLES!
 fully random truchet tile creator;
 lays tiles line-by-line; 
 alternating line direction!
 (can also change size…)
 
 this version only needs two variations (two quarter circles are always
 drawn at the same time)
 
 slowly self-effacing!
 
 runs vertically instead of horizontally!
 
 replaced triangles with quarter circles
 (this requires rewriting the function and changing some global variables)
 
 
 ********************************/

int x = 0;
int y = 0;
int trisize = 30; // change size here
int index = trisize;
float prob;

void setup() {
  size(400, 400);
  frameRate(50);
  smooth();
  background(0);
}

void draw() {
  prob = random(1.5); // slightly left-leaning!
  stroke(255);
  strokeWeight(3);
  noFill();
  if (prob <= 0.5) {
    quartcirc(x, y, 0, HALF_PI);
    quartcirc(x+trisize, y+trisize, PI, PI+HALF_PI);
  } else if (prob > 0.5) {
    quartcirc(x+trisize, y, HALF_PI, PI);
    quartcirc(x, y+trisize, PI+HALF_PI, TWO_PI);
  }
  y = y + index;
  if ((y >= height) || (y <= -trisize)) {
    x = x + trisize;
    index *= -1;
  }
  if (x >= width*1.5) { // made re-set value higher so that you have a bit to look at it!
    //background(0); // blocked out background reset == self-effacing!
    x = 0;
    y = 0;
    index = trisize;
  }
  // saveFrame("frames/####.tif"); // un-comment to record frames for video.
}

void quartcirc(int x, int y, float quartx, float quarty) {
  arc(x, y, trisize, trisize, quartx, quarty);
}

void keyPressed() {
  background(0);
  x = 0;
  y = 0;
  index = trisize;
}