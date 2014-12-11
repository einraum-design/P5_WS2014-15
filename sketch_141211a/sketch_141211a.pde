PImage img;

PFont font;


void setup() {
  size(800, 600);
  
  // load Image
  img = loadImage("apple.jpg");
  
  // load a Font (created with Menu/Tools/createFont)
  font = loadFont("Avenir-Book-48.vlw");
  textFont(font, 48);
}

void draw() {
  background(255);

  if (mouseX != 0) {
    image(img, 0, 0, mouseX, mouseX * img.height/img.width);
  }
  
  fill(0);
  text("Hello World", 30, 60);
  
}
