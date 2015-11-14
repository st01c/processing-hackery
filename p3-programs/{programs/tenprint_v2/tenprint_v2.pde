int x = 0;
int y = 0;
int line = 0;

void setup() {
  size(400, 600);
  smooth();
  background(255);
  //frameRate(5);
  strokeWeight(2);
  fill(50);
  textSize(14);
  textAlign(CENTER);
  text("< Press any key to reset >", width/2, height-10);
}

void draw() {
  float i = random(1);  // random no. for deciding which line to draw
  if (i < 0.5) {  // option 1…
    if (x < width) {
      line(x, y, x+10, y+20);
      x += 20;
    } else if (x >= width) { // if line is full
      line += 1;  // advance line index by one
      if ((line % 2) == 0) {  // if it checks out to be even… (how??) http://processing.org/reference/modulo.html >> divides by 2 and see if there is a rest…
        x = 0;  // x starting value '0'
      } else {
        x = 10;  // else… 
      }
      y += 20;  // also begin drawing at previous y value + 20
    }
  }
  if (i > 0.5) {  // option 2…
    if (x < width) {
      line(x, y, x-10, y+20);
      x += 20;
    } else if (x >= width) {
      line += 1;
      if ((line % 2) == 0) {  
        x = 0;
      } else {
        x = 10;
      }
      y += 20;
    }
  }

  y = constrain(y, 0, height);
  //  saveFrame("frames/####.tif");

  println("x: " + x);
  println("y: " + y);
  println("line: " + line);
}

void keyPressed() {    // reset everything
  background(255);
  x = 0;
  y = 0;
  line = 0;
  fill(50);
  textSize(14);
  textAlign(CENTER);
  text("< Press any key to reset >", width/2, height-10);
}