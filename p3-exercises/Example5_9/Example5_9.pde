float x = width/2;
float y = 0;

float speed = 0;
float gravity = 0.1;

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  
  fill(0);
  noStroke();
  ellipseMode(CENTER);
  ellipse(x, y, 10, 10);
  
  y = y + speed;
  speed = speed + gravity;
  
  if (y > height-10) {
    speed *= -0.9;
  }
    
  println("y: " + y);
  println("speed: " + speed);
}