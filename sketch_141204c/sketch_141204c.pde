import processing.pdf.*;

void setup() {
  size(800, 600, PDF, "dots.pdf");
}


void draw() {
  background(255);

  // FOR LOOPS
  /*
  int i = 0;
   while(i<10){
   i = i + 1;
   } */

  for (int i = 0; i < 10; i = i+ 1) { // counterVariable; condition; incrementor
    stroke(255, 0, 0);
    line(mouseX, mouseY, i*30, 30);
  }

  noStroke();

  for (int x = 0; x < width; x = x + 30) {

    for (int y = 0; y < height; y += 30) {
      float redValue = map(x, 0, width, 0, 255);
      float blueValue = map(y, 0, height, 0, 255);
      
      fill(redValue, random(200,255), blueValue);
      ellipse(x, y, 15, 15);
    }
  }
    
 // save("background.jpg");
 // saveFrame("frame_###.png");
  
  exit();
}
