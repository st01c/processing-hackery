int endY;

void setup() {
  size(200,200);
  frameRate(10);
  endY = 0;
  
}

// using the endY variable allows to restrict HOW MUCH of
// the draw function is actually carried out… it gets in-
// crementally more, thus MAKING IT SEEM like the lines are
// added one by one

void draw() {
  background(0);
  for (int y = 0; y < endY; y += 10) {
    stroke(255);
    line(0,y,width,y);
  }
  endY += 10;
  
  if (endY > height) {
    endY = 10;
  }
}