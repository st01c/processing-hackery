/* version with buttons and boolean

boolean move = false;

int circleX = 0;
int circleY = 100;

void setup() {
  size(200,200);
}

void draw() {
  background(100);
  stroke(255);
  fill(0);
  ellipse(circleX,circleY,50,50);
  if (move) {
    circleX = circleX +1;
  } else {
    circleX = circleX - 1;
  }
  println("move: " + move);
  println(circleX);
  
  circleX = constrain(circleX,0,200);
}

void keyPressed() {
  move = !move;
}

*/