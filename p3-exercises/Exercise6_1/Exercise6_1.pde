// tricky… the circle example has to be drawn
// from outside in!

size(200,200);
background(255);

float w = 200;
while (w > 0) {
  stroke(0+w);
  fill(w);
  ellipse(100,100,w,w);
  w = w - 20;
}