int center = 100;
float balldiam = 50;
float colorChange;
void setup() {
  size(200,200);
  smooth();
  background(255);
}

void draw() {

  // center ball
  rectMode(CENTER);
  fill(100+colorChange);
  rect(center,center,180,180);
  ellipseMode(CENTER);
  fill(255);
  ellipse(center,center,75,75);
  
  
  // corner
  
  line(100,0,100,100);
  line(center,center,0,200);
  line(center,center,200,200);
  
  
  // circles
  fill(170 + colorChange);
  stroke(0 - colorChange);
  strokeWeight(1);
  ellipseMode(CENTER);
  ellipse(50,50,balldiam,balldiam);
  ellipse(150,50,balldiam,balldiam);
  ellipse(50,150,balldiam,balldiam);
  ellipse(150,150,balldiam,balldiam);
  
  balldiam = balldiam + 0.5;
  colorChange = colorChange - 0.75;
}