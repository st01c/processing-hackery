int y = 10;
int x = 10;
int spacing = 5;
int len = 10;
int r;
int g;
int b;
int endLegs = 190;

void setup() {
  size(200,200);
  background(255);
  
}

void draw() {
  //background(255);
  strokeWeight(3);
  while (y < endLegs) {  // FOR SOME REASON, REPLACING THE WHILE WITH IF MAKES IT 
    line(x,y,x,y+len);    // DRAW SEQUENTIALLY, AS OPPOSED TO ALL AT ONCE!
    stroke(0+2*y,50+y,0+2*y);
    x = x + spacing;
    if (x > width-10) {
      x = 10;
      y = y +len+10;
    }
  }
}