/************************************************
 *************************************************
 **               LESSON TWO PROJECT            **
 *************************************************
 ************************************************/


int sizeElla = 25;    // background variable
int sizeEllb = 25;    // background variable
int back = 100;        // background variable
int backplus = 5;    // background variable
int ellbgrow = 1;
int ellagrow = 1;


void setup() {
  size(600, 400);
  smooth();
  frameRate(10);
  noStroke();
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {

  // background grey-white pulse
  background(back);  // background b/w pulse
  back = back + backplus;
  if ((back >= 255) || (back <= 100)) {
    backplus *= -1;
  }
  
  // background moving ellipses
  for (int ellx = 0; ellx < width+sizeElla; ellx += sizeElla) {
    for (int elly = 0; elly < height+sizeElla; elly += sizeElla) {
      ellipse(ellx, elly, sizeElla, sizeEllb);
      fill(random(255), random(100), random(100), 175);
      sizeEllb = sizeEllb + ellbgrow;
      //sizeElla = sizeElla + ellagrow;
      if ((sizeEllb >= 3*25) || (sizeEllb <= 5)) {
        ellbgrow *= -1;
      }
      if ((sizeElla <= 25) || (sizeElla >= 3*25)) {
        ellagrow *= -1;
      }
    }
  }


  //stroke(30,50,100);
  //strokeWeight(4);
  //line(mouseX,mouseY,pmouseX,pmouseY);
  noStroke();
  //noFill();
  ellipse(mouseX, mouseY, pmouseX-100, pmouseY-100);
  fill(mouseX-150);
  triangle(mouseX, mouseY, pmouseX, pmouseY, pmouseX+20, pmouseY+20);
  triangle(mouseY, mouseX, pmouseX, pmouseY, pmouseX+20, pmouseY+20);
  triangle(mouseY, mouseX, pmouseY, pmouseX, pmouseX+20, pmouseX+20);
  triangle(mouseY, mouseX, pmouseX, pmouseY, pmouseX-20, pmouseX-20);
  println(sizeEllb);
}