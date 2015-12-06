// variables
float x = 100;
float y = 100;
float dirx = 1;
float diry = 1;
float colorR = 0;
float colorB = 50;
float colorG = 100;
float colorRc = 1;
float colorBc = 1;
float colorGc = 1;

void setup() {
  size (400, 200);
  frameRate(30);
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  background(colorR, colorB, colorG);
  jiggleZoog(1);

  // hover color change; has to come before main body-drawing function!
  if (mouseX >= x - 10 && mouseX <= x + 10 && mouseY >= y - 50 && mouseY <= y +50) {
    background(255);
  }
  drawZoog();

  // color changes definitions
  colorR = colorR + colorRc*random(0, 5);
  colorB = colorB + colorBc*random(0, 5);
  colorG = colorG - colorGc*random(0, 5);

  if (colorR >= 255 || colorR <= 0) {
    colorRc *= -1;
  } else if (colorB >= 255 || colorB <= 0) {
    colorBc *= -1;
  } else if (colorG >= 255 || colorG <= 0) {
    colorGc *= -1;
  }
}


// movement

void jiggleZoog(float speed) {
  x = x + dirx*random(0, 5)*speed;
  y = y + diry*random(0, 5)*speed;
  if (x >= width || x <= 0) {
    dirx *= -1;
  } else if (y >= height || y <= 0) {
    diry *= -1;
  }

  // movement + color constraints
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
  colorR = constrain(colorR, 0, 255);
  colorB = constrain(colorB, 0, 255);
  colorG = constrain(colorG, 0, 255);
}


void drawZoog() {
  zoogArms();
  zoogBody();
  zoogHead();
  zoogEyes();
  zoogLegs();
}


void zoogHead() {
  stroke(0);
  fill(255);
  ellipse(x, y-30, 60, 60);

  // moustache
  for (int hair = int(x-40); hair < x+40; hair += 5) {
    strokeWeight(2);
    noFill();
    line(x, y-15, hair, y-5);
  }
}

void zoogBody() {
  stroke(0);
  fill(x*255/200); // maps body fill color to the 255 spectrum!
  rect(x, y, 20, 100);
}

void zoogLegs() {
  stroke(0);
  line(x-10, y+50, x-20, y+60);
  line(x+10, y+50, x+20, y+60);
}

void zoogEyes() {
  fill((x*255/200), dist(x, y, mouseX, mouseY), (y*255/200)); // color spectrum also mapped to 255
  ellipse(x-19, y-30, 16, 32);
  ellipse(x+19, y-30, 16, 32);
}

void zoogArms() {
  for (float i = y; i < y + 30; i +=10) {
    line(x-30, i+random(5, 15), x+30, i+random(5, 15));
  }
}