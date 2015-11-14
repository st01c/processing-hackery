float posX;
float posY;
float colR;
float colG;
float colB;

void setup() {
  size(400,400);
  smooth();
  frameRate(10);
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(posX,posY,50);
  //stroke(30,50,100);
  //strokeWeight(4);
  //line(mouseX,mouseY,pmouseX,pmouseY);
  noStroke();
  //noFill();
  ellipse(posX,posY,posX-100+(random(30)),posY-100+(random(10)));
  fill(posX-150);
  triangle(posX,posY,posX+(random(10)),posY+(random(20)),posX+20+(random(10)),posY+20);
  triangle(posY,posX,posX-(random(25)),posY+(random(30)),posX+20,posY+20);
  triangle(posY,posX,posY+(random(20)),posX+(random(10)),posX+(random(10))+20,posX+(random(10))+20);
  triangle(posY,posX,posX+(random(10)),posY+(random(20)),posX+(random(10))-20,posX+(random(10))-20);
  println(posX,posY);
  
  posX = random(200);
  posY = random(200);
}

void keyPressed() {
  background(255);
}