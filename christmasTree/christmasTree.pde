void setup() {
  size(800, 600);
}

void draw() {
  background(0);

  /*
  fill(255, 255, 0, 100);
   rect(300, 200, 300, 20);
   
   rotate(radians(mouseX));
   rect(300, 200, 300, 20);
   rotate(-radians(mouseX));
   
   translate(width/2, height/2);
   rotate(radians(mouseY));
   fill(255, 100, 0, 100);
   rect(0, 0, 20, 200);
   */

  noFill();
  stroke(255, 255, 0);
  translate(width/2, height/2);

  int degr = 0;
  while (degr < 360) {
    pushMatrix();
    rotate(radians(degr));
    triangle(-5, 0, 5, 0, 0, 60); 
    degr = degr + 10;
    popMatrix();
  }

  translate(300, -200);

  fill(255, 150, 0);
  noStroke();
  for (int i = 0; i<12; i = i + 1) {
    pushMatrix();
    translate(0, 20);
    triangle(-5, 0, 5, 0, 0, 100); 
    popMatrix();    
    rotate(radians(30));
  }

  fill(0, 100, 0);
  noStroke();

  translate(-50, 200);

  beginShape();
  vertex(0, 0);
  vertex(50, 50);
  vertex(10, 55);
  vertex(70, 110);
  vertex(20, 120);
  vertex(100, 180);
  vertex(0, 190);
  endShape();
  
  scale(-1, 1);
  beginShape();
  vertex(0, 0);
  vertex(50, 50);
  vertex(10, 55);
  vertex(70, 110);
  vertex(20, 120);
  vertex(100, 180);
  vertex(0, 190);
  endShape();
}
