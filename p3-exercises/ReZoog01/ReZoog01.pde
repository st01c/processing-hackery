// Re-Zoog first sketch

size(200,200);
background(255);
smooth();

rectMode(CENTER);
ellipseMode(CENTER);

// body
fill(150);
stroke(0);
rect(100,100,20,100);

// head
fill(255);
ellipse(100,70,60,60);

// eyes
fill(0);
ellipse(81,70,16,32);
ellipse(119,70,16,32);

// legs
stroke(0);
strokeWeight(3);
line(90,150,80,160);
line(110,150,120,160);