/* my version of simple rollover (fade to white)

float r;
float b;
float g;

void setup() {
  size(200,200);
  smooth();
  frameRate(30);
  rectMode(CENTER);
}

void draw() {
  background(0);
  stroke(255);
  fill(r,g,b);
  rect(width/2,height/2,50,50);
  
  if (mouseX > (width/2-25) && mouseX < (width/2+25) && mouseY > height/2-25 && mouseY < height/2+25) {
    r = r + 5;
    b = b + 5;
    g = g + 5;
  } else {
    r = r - 5;
    b = b - 5;
    g = g - 5;
  }
  
  r = constrain(r,0,255);
  b = constrain(b,0,255);
  g = constrain(g,0,255);
}

*/

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200,200);
  rectMode(CORNER);
}

void draw() {
  background(0);
  stroke(255);
  if (mouseX > x && mouseX < 150 && mouseY > 50 && mouseY < 125) {
    fill(255);
  } else {
    fill(0);
  }
  rect(x,y,w,h);
}