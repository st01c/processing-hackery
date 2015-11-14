void setup() {
  size(200,200);
  rectMode(CORNER);
}

void draw() {
  background(255);
  stroke(0);
  fill(0);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  if (mouseX < 100 && mouseY < 100) {
    rect(0,0,100,100);
  } else if (mouseX > 100 && mouseY < 100) {
    rect(100,0,100,100);
  } else if (mouseX < 100 && mouseY > 100) {
    rect(0,100,100,100);
  } else {
    rect (100,100,100,100);
  }
}