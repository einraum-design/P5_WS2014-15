// every function call inside the void setup()
// is executed once at the beginning of the application
void setup() {
  size(1200, 600);
  background(0, 0, 100);

  fill(255, 0, 0);
  ellipse(300, 300, 50, 50);
}

// every function call inside the void loop()
// is executed many times per second
// the loop time is defined by frameRate([number of frames per second]);
void draw() {
  // clears the canvas at every draw() 
  background(0, 0, 100);

  noStroke();
  strokeWeight(1);

  // draw every frame one random ellipse
  fill(random(255), random(255), random(255), 50);
  ellipse(random(0, width), random(height), 50, 50);

  // the random function:
  // random(max);  0 - max
  // random (min, max); min - max


  // positioning with help of width and heigt variables
  fill(255);
  rect(width - 200, 0, 200, height);
  ellipse(width/2, height/2, 100, 100);


  // if - else statements
  // pacman
  
  // set fill color red
  if (mousePressed == true) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 0);
  }

  stroke(0);
  arc(mouseX, mouseY, 120, 120, radians(45), radians(315), PIE);

  fill(0);
  ellipse(mouseX, mouseY - 30, 15, 15);

  strokeWeight(4);
  stroke(255, 0, 0);
  line(mouseX, mouseY, mouseX + 50, mouseY);
}
