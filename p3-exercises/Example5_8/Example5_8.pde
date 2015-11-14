int x = 0;
int y = 0;

int speed = 2;

int state = 0;

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  
  noStroke();
  fill(0);
  rect(x,y,10,10);
  
  if (state == 0 && speed == 2) {
    y = 1;
    x = x + speed;
    if (x > width - 10) {
      x = width - 11;
      state = 1;
    }
  } else if (state == 1 && speed == 2) {
    y = y + speed;
    if (y > height - 10) {
      y = height - 11;
      state = 2;
    }
  } else if (state == 2 && speed == 2) {
    x = x - speed;
    if (x < 0) {
      x = 1;
      state = 3;
    }
  } else if (state == 3 && speed == 2) {
    y = y - speed; 
    if (y < 0) {
      y = 1;
      state = 0;
    }
  }
  
  
  if (state == 0 && speed == -2) {
    y = 1;
    x = x + speed;
    if (x < 0) {
      x = 1;
      state = 1;
    }
  } else if (state == 1 && speed == -2) {
    y = y - speed;
    if (y > height - 10) {
      y = height - 11;
      state = 2;
    }
  } else if (state == 2 && speed == -2) {
    x = x + speed;
    if (x > width) {
      x = width-10;
      state = 3;
    }
  } else if (state == 3 && speed == -2) {
    y = y - speed; 
    if (y < 0) {
      y = 1;
      state = 0;
    }
  }
  
  println("x: " + x);
  println("y: " + y);
  println("speed: "  + speed);
  println("state: " + state);
}
  
void keyPressed() {
  speed *= -1;
}
  
  /*
  rect(x,y,10,10);
  if (state == 0) {
    x = x + speed;
  }
  
  if (x == 190 && y == 0) {
    state = 1;
  }
  
  if (state == 1) {
    y = y + speed;
  }
  
  if (x == 190 && y == 190) {
    state = 2;
  }
  
  if (state == 2) {
    x = x - speed;
  }
  
  if (x == 0 && y == 190) {
    state = 3;
  }
  
  if (state == 3) {
    y = y - speed;
  }
  
  if (x == 0 && y == 0) {
    state = 0;
  }
}
*/