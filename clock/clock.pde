void setup() { //<>//
  size(800, 600);
}

void draw() {
  background(255);

  translate(width/2, height/2);

  // SECONDS
  pushMatrix();

  float angle = map(second(), 0, 60, 0, 360); // 0 - 59
  rotate(radians(angle));

  stroke(255, 0, 0);
  strokeWeight(2);
  line(0, 0, 0, -250);

  translate(0, -200);
  fill(255, 0, 0);
  ellipse(0, 0, 25, 25);

  //translate(-mouseX, -mouseY);
  popMatrix();

  // MINUTES
  pushMatrix();

  angle = map(minute() + second()/60.0, 0, 60, 0, 360); // 0 - 59
  rotate(radians(angle));

  stroke(0, 0, 0);
  strokeWeight(4);
  line(0, 0, 0, -220);

  popMatrix();

  // HOURES
  pushMatrix();

  angle = map(hour() + minute()/60.0, 0, 24, 0, 720); // 0 - 59
  rotate(radians(angle));

  stroke(0, 0, 0);
  strokeWeight(6);
  line(0, 0, 0, -140);

  popMatrix();





  for (int i = 1; i<= 12; i++) {
    pushMatrix();

    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);

    rotate(radians(i * 30));
    translate(0, -220);
    ellipse(0, 0, 5, 5);
    translate(0, -30);
    rotate(-radians(i * 30));
    text(i, 0, 0);

    popMatrix();
  }
}
