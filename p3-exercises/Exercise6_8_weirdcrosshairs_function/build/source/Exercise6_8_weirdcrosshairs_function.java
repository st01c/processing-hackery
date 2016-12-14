import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Exercise6_8_weirdcrosshairs_function extends PApplet {

int endY;

public void setup() {
  
  //frameRate(5);
  endY = 0;
}

public void draw() {
  background(0);
  line1();
  line2();
}


public void line1() {
  strokeWeight(4);
  stroke(255);
  line(0, mouseY, width, pmouseY);
}

public void line2() {
  line(mouseX, 0, pmouseX, height);
}
  public void settings() {  size(200, 200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exercise6_8_weirdcrosshairs_function" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
