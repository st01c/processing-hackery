int circleX = 100;
int circleY = 100;
int direction = 3;
int speed = 3;
float movement1;
float movement2;
float move1;
float move2;

void setup() {
  size(200,200);
  background(100);
}

void draw() {
  
  stroke(random(255));
  fill(0);
  ellipse(circleX, circleY, random(30,50),random(30,50));
  movement1 = speed + random(0,3);
  movement2 = speed + random(0,3);
  circleX += movement1;
  circleY += movement2;
  if ((circleX > 200) || (circleX < 0) || (circleY > 200) || (circleY < 0)) {
    movement1 = (movement1 * -1);
    movement2 = (movement2 * -1);
  }
  
}
  