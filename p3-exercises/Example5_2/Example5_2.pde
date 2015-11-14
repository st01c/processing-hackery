float r = 150;
float g;
float b;

void setup() {
  size(300,300);
  smooth();
  frameRate(30);
}

void draw() {
  background (r,g,b);
  stroke(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  if (mouseX > width/2) {
    r = r + 5;
  } else {
    r = r -5;
  }
  
  if (mouseY > height/2) {
    b = b + 5;
  } else {
    b = b - 5;
  }
  
  if (mousePressed) {
    g = g + 5;
  } else {
    g = g - 5;
  }
  
  r = constrain(r,0,255); 
  b = constrain(b,0,255);
  g = constrain(g,0,255);
  
  println("r: " + r);
  println("b: " + b);
  println("g: " + g);
}