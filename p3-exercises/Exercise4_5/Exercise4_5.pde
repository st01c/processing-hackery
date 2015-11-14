void setup() {
  size(300,100);
  smooth();
  frameRate(30);
  background(255);
}

void draw() {
  line(0,0,width,height);
  line(0,height,width,0);
  
  fill(175);
  ellipseMode(CENTER);
  rectMode(CENTER);
  ellipse(width/2,height/2,width/2,height/2);
  rect(width*0.15,height/2,width/10,height/10);
  rect(width*0.85,height/2,width/10,height/10);
}