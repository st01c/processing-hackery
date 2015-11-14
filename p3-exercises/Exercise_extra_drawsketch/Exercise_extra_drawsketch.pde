float x = 100;
float y = 100;
float dirx = 1;
float diry = 1;
float colorG = 100;
float colorB = 100;
float colorR = 100;
float backC1 = random(255);
float backC2 = random(255);
float backC3 = random(255);

void setup() {
  background(backC1, backC2, backC3);
  size(800, 400);
  //frameRate(200);
  
}

void draw() {
  float speed = random(1, 3);
  strokeWeight(random(10));
  point(x, y);

  stroke(colorG, colorB, colorR);

  if ((x >= width) || (x <= 0) || (y >= height) || (y <= 0)) {
    colorG = random(255);
    colorB = random(255);
    colorR = random(255);
  }

  x = x + dirx*random(1, 10) +speed;
  y = y - diry*random(1, 10) +speed;

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

void keyPressed() {
  background(backC1, backC2, backC3);
  backC1 = random(255);
  backC2 = random(255);
  backC3 = random(255);
}