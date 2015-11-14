/********************************
 fully random truchet tile creator;
 lays tiles line-by-line;
 with the 'while' condition built in,
 it draws the whole screen at once…
 
 play with probability!
 play with replacing triangles (using same in
 more conditions)
 ********************************/

int x = 0;
int y = 0;
float prob;

void setup() {
  size(400, 400);
  background(255);
  frameRate(30);
  smooth();
}

void draw() {
  while (y <= height) {
    prob = random(1);
    println(prob);
    noStroke();
    fill(0);
    if (prob <= 0.25) {
      triangle(x, y, x, y+20, x+20, y+20); // tri 1
      x = x + 20;
      if (x >= width) {
        y = y + 20;
        x = 0;
      }
    } else if ((prob > 0.25) && (prob <= 0.5)) {
      triangle(x, y, x+20, y, x, y+20); // tri 2
      x = x + 20;
      if (x >= width) {
        y = y + 20;
        x = 0;
      }
    } else if ((prob > 0.5) && (prob <= 0.75)) {
      triangle(x, y+20, x+20, y, x+20, y+20); // tri 3
      x = x + 20;
      if (x >= width) {
        y = y + 20;
        x = 0;
      }
    } else if (prob > 0.75) {
      triangle(x, y, x+20, y, x+20, y+20); // tri 4
      x = x + 20;
      if (x >= width) {
        y = y + 20;
        x = 0;
      }
    }
  }
}

void keyPressed() {
  background(255);
  x = 0;
  y = 0;
}