float zoogX;
float zoogY;
float eyeR;
float eyeG;
float eyeB;

void setup() {
  size(400,400); 
  zoogY = height;
  frameRate(30);
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //body
  stroke(0);
  fill(mouseX*255/width); // maps body fill color to the 255 spectrum!
  rect(zoogX,zoogY,20,100);
  
  // head
  stroke(0);
  fill(255);
  ellipse(zoogX,zoogY-30,60,60);
  
  // eyes
  fill(eyeR,eyeG,eyeB);
  ellipse(zoogX-19,zoogY-30,16,32);
  ellipse(zoogX+19,zoogY-30,16,32);
  
  // legs
  stroke(0);
  line(zoogX-10,zoogY+50,zoogX-20,zoogY+60);
  line(zoogX+10,zoogY+50,zoogX+20,zoogY+60);
  
  zoogX = width/2+(random(20));
  zoogY = zoogY - 4;
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);

}

void mousePressed() {
  println("Take me to your leader!");
}