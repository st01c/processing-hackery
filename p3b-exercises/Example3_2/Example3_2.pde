void setup() {
  size(200, 200);
  smooth();
  frameRate(30);
}

void draw() {
  background(255);
  
  // ZOOG
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //BODY
  
  stroke(0);
  fill(150);
  rect(100,100,20,100);
  
  //HEAD
  fill(255);
  ellipse(100,70,60,60);
  
  //EYES
  fill(0);
  ellipse(81,70,16,32);
  ellipse(119,70,16,32);
  
  //LEGS
  stroke(0);
  line(90,150,80,160);
  line(110,150,120,160);
  }