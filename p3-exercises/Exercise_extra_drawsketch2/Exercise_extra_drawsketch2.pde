// why does it break at some point?

float x = 110;
float y = 101;
float dirx = 1;
float diry = 1;


void setup() {
  background(255);
  size(400, 300);
  frameRate(200);
}

void draw() {
float speed = random(1, 3);
  //background(255);
  strokeWeight(2);
  point(x, y);
  

  x = x + dirx;
  y = y + diry;

  if ((x >= width) || (x <= 0)) {
    dirx *= -1;
  } 
  if ((y >= height) || (y <= 0)) {
    diry *= -1;
  }
  
  x = constrain(x, -1, width+1);
  y = constrain(y, -1, height+1);
  println("x: " + x);
  println("y: " + y);
}