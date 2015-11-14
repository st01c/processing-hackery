int horSpeed = 1;
int vertSpeed = 2;
int circleX = 0;
int circleY = 100;
float ellSize = 25;

void setup() {
  size(200,200);
}

void draw() {
  background(100);
  stroke(255);
  fill(0);
  ellipse(circleX,circleY,ellSize,ellSize);
  circleX = circleX + horSpeed;
  circleY = circleY + vertSpeed;
  
  // DIRECTION
  if (circleY > height || circleY < 0) {
    vertSpeed = vertSpeed * -1;
  }
  
  if (circleX > width || circleX < 0) {
    horSpeed = horSpeed * -1;
  }
  
  // SIZE
  if (horSpeed > 0) {
    ellSize = ellSize + 0.5;
  } else {
    ellSize = ellSize -0.5;
  }
  
  // SPEED
  
  // CONSTRAIN
  circleX = constrain(circleX,0,width);
  
  // DEBUG
  println("horSpeed: " + horSpeed);
  println("vertSpeed: " + vertSpeed);
  println("circleX: " + circleX);
  println("circleY: " + circleY);
  
  
  
}




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