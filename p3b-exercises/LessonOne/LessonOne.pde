int col = 130;

void setup() {
  size(400,400);
  frameRate(30);
  smooth();
  background(130);
}

void draw() {
  float randell = random(30,50);
  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();
  fill(random(255),150,200);
  ellipse(mouseX,mouseY,randell,randell);
  triangle();
  
}

void keyPressed() {
  background(col);
}

void triangle() {
  stroke(mouseX,mouseY);
  fill(random(255),150,150,random(255));
  triangle(200,50,50,300,350,300);
}