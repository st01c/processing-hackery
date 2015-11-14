int x = 0;
int y = 0;
int speed = 2;
int state = 0;

// state 0 = t>
// state 1 = rv
// state 2 = b<
// state 3 = lA
// state 4 = t<
// state 5 = lv
// state 6 = b>
// state 7 = rA

void setup() {
  size(200,200);
}

void draw() {
  background(255);  
  noStroke();
  fill(0);
  rect(x,y,10,10);
  
  if ((state == 0 || state == 4) && speed > 0) {            // TOP RIGHT
    y = 1;
    x = x + speed;
    if (speed > 0 && x > width - 10)  {     // WHEN HITS TOP RIGHT CORNER
      x = width - 11;
      state = 1;
    }
  } else if ((state == 1 || state == 7) && speed > 0) {        // RIGHT DOWN
    y = y + speed;
    if (speed > 0 && y > height - 10) {
      y = height - 11;
      state = 2;
    }
  } else if ((state == 2 || state == 6) && speed > 0) {
    x = x - speed;
    if (speed > 0 && x < 0) {
      x = 1;
      state = 3;
    }
  } else if ((state == 3 || state == 5) && speed > 0) {
    y = y - speed; 
    if (speed > 0 && y < 0) {
      y = 1;
      state = 0;
    }
  } else if (state == 0 && speed < 0) {      
    state = 4;                        // TOP LEFT STATE 4
  } else if (state == 1 && speed < 0) {
    state = 7;                        // RIGHT UP STATE 7
  } else if (state == 2 && speed < 0) {
    state = 6;                        // BOTTOM RIGHT STATE 6
  } else if (state == 3 && speed < 0) {
    state = 5;                        // LEFT DOWN STATE 5
  } else if (state == 4) {
    y = 1;
    x = x + speed;
    if (speed < 0 && x < 0)  {     // 
      x = 1;
      state = 5;
    }
  } else if (state == 5) {
    x = 1;
    y = y - speed;
    if (speed < 0 && y > height - 10) {
      y = height - 11;
      state = 6;
    }
  } else if (state == 6) {
    y = height - 11;
    x = x - speed;
    if (speed < 0 && x > width - 10) {
      x = width - 11;
      state = 7;
    }
  } else if (state == 7) {
    x = width - 11;
    y = y + speed;
    if (speed < 0 && y < 0) {
      y = 1;
      state = 4;
    }
  }
 
  println("x: " + x);
  println("y: " + y);
  println("speed: "  + speed);
  println("state: " + state);
  println("frameCount:" + frameCount);
}
  
void keyPressed() {
  speed *= -1;
}