void setup() {
  size(200, 200);
  smooth();
  frameRate(30);
}

void draw() {
  background(0);
  noStroke();
  
  rectMode(CORNER);
  fill(55);
  rect(0,0,width/2,height);
  
  fill(255,0,0,255);
  rect(0,0,200,40);
  
  fill(255,0,0,191);
  rect(0,50,200,40);
  
  fill(255,0,0,255/2);
  rect(0,100,200,40);
  
  fill(255,0,0,255/4);
  rect(0,150,200,40);
  
  
  rectMode(CENTER);
  fill(100);
  stroke(0);
  rect(width/2,125,25,100);
  
  ellipseMode(CENTER);
  fill(255);
  ellipse(100,75,75,75);
  
  fill(0);
  ellipse((width/2)-25,75,20,40);
  ellipse((width/2)+25,75,20,40);
  
  stroke(255);
  line((width/2)-12.5,175,75,185);
  line((width/2)+12.5,175,125,185);
  
  }