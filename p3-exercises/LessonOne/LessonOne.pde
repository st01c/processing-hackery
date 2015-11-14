void setup() {
  size(400,400);
  smooth();
  frameRate(30);
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(mouseX,mouseY,50);
  //stroke(30,50,100);
  //strokeWeight(4);
  //line(mouseX,mouseY,pmouseX,pmouseY);
  noStroke();
  //noFill();
  ellipse(mouseX,mouseY,pmouseX-100,pmouseY-100);
  fill(mouseX-150);
  triangle(mouseX,mouseY,pmouseX,pmouseY,pmouseX+20,pmouseY+20);
  triangle(mouseY,mouseX,pmouseX,pmouseY,pmouseX+20,pmouseY+20);
  triangle(mouseY,mouseX,pmouseY,pmouseX,pmouseX+20,pmouseX+20);
  triangle(mouseY,mouseX,pmouseX,pmouseY,pmouseX-20,pmouseX-20);
  println(mouseX,mouseY);
}

void keyPressed() {
  background(255);
}