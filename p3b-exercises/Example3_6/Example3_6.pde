void setup() {
  
  size(500, 500); // Set the size of the window
  smooth();
  frameRate(30);
}
void draw() {
  background(50);
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(mouseX, mouseY, 20, 100);
  
  // Draw Zoog's head
  stroke(0);
  ellipse(mouseX, mouseY-30, 60, 60);
  
  // Draw Zoog's eyes
  fill(mouseX,mouseY,mouseX+mouseY/2);
  ellipse(pmouseX-19, pmouseY-30, 16, 32);
  ellipse(pmouseX+19, pmouseY-30, 16, 32);
  // Draw Zoog's legs
  stroke(255);
  line(mouseX-10, mouseY+50, pmouseX-20, pmouseY+70);
  line(mouseX+10, mouseY+50, pmouseX+20, pmouseY+70);
}

void mousePressed() {
  println("Go to bed!");
}