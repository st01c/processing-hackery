void setup() {
 size(200,200); 
 frameRate(30);
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //body
  stroke(0);
  fill(mouseX*255/200); // maps body fill color to the 255 spectrum!
  rect(mouseX,mouseY,20,100);
  
  // head
  stroke(0);
  fill(255);
  ellipse(mouseX,mouseY-30,60,60);
  
  // eyes
  fill((mouseX*255/200),mouseX+mouseY,(mouseY*255/200)); // color spectrum also mapped to 255
  ellipse(mouseX-19,mouseY-30,16,32);
  ellipse(mouseX+19,mouseY-30,16,32);
  
  // legs
  stroke(0);
  line(mouseX-10,mouseY+50,pmouseX-20,pmouseY+60);
  line(mouseX+10,mouseY+50,pmouseX+20,pmouseY+60);
}

void mousePressed() {
  println("Take me to your leader!");
}