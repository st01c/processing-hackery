int col = 150;

int posX = 200;
int posY = 200;
int speed = 5;

void setup() {
  size(400, 400);
  smooth();
  frameRate(30);
}

void draw() {
  background(150);
  ellipseMode(CENTER);
  rectMode(CENTER);
  ellipse(posX, posY, 50, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      posY -=speed;
    }
    if (keyCode == DOWN) {
      posY +=speed;
    }
    if (keyCode == LEFT) {
      posX -=speed;
    }
    if (keyCode == RIGHT) {
      posX +=speed;
    }
    if (keyCode == RIGHT && keyCode == UP) {
      posX +=speed;
      posY -=speed;
    }
  }
}