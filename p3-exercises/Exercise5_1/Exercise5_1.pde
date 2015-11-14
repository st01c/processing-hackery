float grade = random(0,100);

void setup() {
}

void draw() {
  if (grade > 85) {
    println("A");
  } else if (grade > 70) {
    println("B");
  } else if (grade > 60) {
      println("C");
    } else {
      println("FAILED");
  }
}