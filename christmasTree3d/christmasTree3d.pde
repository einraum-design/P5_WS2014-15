void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);
  lights();

  translate(width/2, height/2);


  translate(0, -100, 0);

  fill(0, 150, 0);
  noStroke();

  rotateX(radians(mouseY));
  rotateY(radians(mouseX));

  for (int i = 0; i<18; i++) {

    rotateY(radians(20));
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
}
