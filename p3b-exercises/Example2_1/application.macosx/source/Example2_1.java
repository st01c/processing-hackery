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

public class Example2_1 extends PApplet {

public void setup() {
  
  
  frameRate(30);
}

public void draw() {
  background(255);
  
  // ZOOG
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //BODY
  
  stroke(0);
  fill(150);
  rect(100,100,20,100);
  
  //HEAD
  fill(255);
  ellipse(100,70,60,60);
  
  //EYES
  fill(0);
  ellipse(81,70,16,32);
  ellipse(119,70,16,32);
  
  //LEGS
  stroke(0);
  line(90,150,80,160);
  line(110,150,120,160);
  }
  public void settings() {  size(200, 200);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Example2_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
