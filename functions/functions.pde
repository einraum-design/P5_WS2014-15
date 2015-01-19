void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  
  pacman(500, 400);
  pacman(100, 200, 100);
  
  pacman(500, 100, 50, 30);
  
  println(multiply(3, 9));
  
  int result = multiply(5, 14);
  fill(255);
  text(result, 40, 60);
  
  String txt = multiplyToText(5, 20);
   text(txt, 40, 100);
}

int multiply(int number1, int number2){
  int result = number1 * number2;
  return result;
}

String multiplyToText(int number1, int number2){
  int result = number1 * number2;
  String txt = number1 + " * " + number2 + " = " + result;
  return txt;
}

void pacman(int xPos, int yPos) {

  int diameter = 200;
  pushMatrix();
  translate(xPos, yPos);
  fill(255, 255, 0);
  arc(0, 0, diameter, diameter, radians(45), radians(315), PIE);

  stroke(255, 0, 0);
  strokeWeight(2);
  line(0, 0, diameter/3, 0);

  noStroke();
  fill(0);
  translate(0, -diameter/4.0);
  ellipse(0, 0, diameter/10, diameter/10);
  popMatrix();
}

void pacman(int xPos, int yPos, int diameter) {
  pushMatrix();
  translate(xPos, yPos);
  fill(255, 255, 0);
  arc(0, 0, diameter, diameter, radians(45), radians(315), PIE);

  stroke(255, 0, 0);
  strokeWeight(2);
  line(0, 0, diameter/3, 0);

  noStroke();
  fill(0);
  translate(0, -diameter/4.0);
  ellipse(0, 0, diameter/10, diameter/10);
  popMatrix();
}

void pacman(int xPos, int yPos, int diameter, int angle) {
  pushMatrix();
  translate(xPos, yPos);
  
  rotate(radians(angle));
  
  fill(255, 255, 0);
  arc(0, 0, diameter, diameter, radians(45), radians(315), PIE);

  stroke(255, 0, 0);
  strokeWeight(2);
  line(0, 0, diameter/3, 0);

  noStroke();
  fill(0);
  translate(0, -diameter/4.0);
  ellipse(0, 0, diameter/10, diameter/10);
  popMatrix();
}
