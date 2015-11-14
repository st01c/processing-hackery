
// larger screen, and the quadrangles fade to black
// when mouse leaves…
// it works but is very inefficient, compared to
// Shifmann's…
// i had all color-changing conditions spelled out
// for each rect… BUT: you can just ALWAYS set all
// the color-changes to be permanently set to fade,
// and just override the fade in the actual specific
// rectangle if scenario (like now done below).
// ALSO: not necessary to constrain (thanks to override)
// but I left it in anyway for elegance' sake.

float c0 = 0;
float c1 = 0;
float c2 = 0;
float c3 = 0;

void setup() {
  size(300,300);
  rectMode(CORNER);
}

void draw() {
  background(0);
  noStroke();  // makes sure there isn't ugly border
  
  // always draw 4 rectangles, then just change
  // color
  
  fill(c0);
  rect(0,0,width/2,height/2);
  fill(c1);
  rect(width/2,0,width/2,height/2);
  fill(c2);
  rect(0,height/2,width/2,height/2);
  fill(c3);
  rect (width/2,height/2,width/2,height/2);
  
  if (mouseX < width/2 && mouseY < height/2) {
    c0 = c0 + 5;
  } else if (mouseX > width/2 && mouseY < height/2) {
    c1 = c1 + 5;
  } else if (mouseX < width/2 && mouseY > height/2) {
    c2 = c2 + 5;
  } else {
    c3 = c3 + 5;
  }
  
  c0 = c0 - 1;
  c1 = c1 - 1;
  c2 = c2 - 1;
  c3 = c3 - 1;
  
  stroke(255);
  fill(0);
  strokeWeight(1);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  c0 = constrain(c0,0,255);
  c1 = constrain(c1,0,255);
  c2 = constrain(c2,0,255);
  c3 = constrain(c3,0,255);
  
  println("c0: " + c0);
  println("c1: " + c1);
  println("c2: " + c2);
  println("c3: " + c3);
}