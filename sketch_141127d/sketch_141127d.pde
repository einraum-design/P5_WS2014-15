void setup() {
  size(800, 600);
  smooth();
}

void draw() {
  background(255);

  fill(100, 100, 255);
  noStroke();

  int counter = 30;

  // while ("condition"){ everything between loops, till condition gets false }
  while (counter < width) {
    ellipse(counter, 30, 30, 30);
    
    // increase counter to prevent infinity loop!
    counter = counter + 30;
  }

  counter = 0;
  while (counter < width) {
    fill(counter, 255, 255 - counter);
    rect(counter, counter, 40, counter + 10);
    counter = counter + 30;
  }

  println("endDraw");


  int diameter = 500;

  while (diameter > 0) {

    float colorValue = map(diameter, 500, 0, 0, 255);

    fill(colorValue, colorValue, colorValue);
    ellipse(width/2, height/2, diameter, diameter);
    diameter = diameter - 10;
  }

  counter = 30;
  stroke(0);
  while (counter < height) {
    line(30, counter, mouseX, mouseY);
    counter = counter + 30;
  }  
}
