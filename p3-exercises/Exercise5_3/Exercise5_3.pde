float x = 0;

void setup() {
  size(200,200);
  rectMode(CENTER);
}

void draw() {
  background(255);
  fill(0);
  rect(x,height/2,20,20);
  
  x = x + 2;
  
  x = constrain(x,0,100);
  println(x);
}