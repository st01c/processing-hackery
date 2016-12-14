void setup() {
  background(255);
  size(500, 500); // Set the size of the window
  smooth();
  frameRate(30);
}
void draw() {
  
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(pmouseX, mouseY, 20, 100);
  // Draw Zoog's head
  stroke(0);
  fill(mouseX+25,mouseY+25,mouseY-150);
  ellipse(pmouseX, mouseY-30, 60, 60);
  // Draw Zoog's eyes
  fill(0);
  ellipse(pmouseX-18, pmouseY-30, 16, 32);
  ellipse(pmouseX+19, pmouseY-30, 16, 32);
  // Draw Zoog's legs
  stroke(0);
  line(pmouseX-10, mouseY+50, pmouseX-20, mouseY+70);
  line(pmouseX+10, mouseY+50, pmouseX+20, mouseY+70);
}