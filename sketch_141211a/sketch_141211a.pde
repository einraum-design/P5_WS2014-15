PImage img;

PFont font;
PFont systemFont;

boolean drawImage = false;

void setup() {
  size(800, 600);
  
  // load Image
  img = loadImage("apple.jpg");
  
  // load a Font (created with Menu/Tools/createFont)
  font = loadFont("Avenir-Book-48.vlw");
  
  // load a Font in runntime
  systemFont = createFont("Arial", 48);
  
}

void draw() {
  background(255);

  if (drawImage == true) {
    image(img, 0, 0, mouseX, mouseX * img.height/img.width);
  }
  
  fill(0);
  
  // use font
  textFont(font, 48);
  text("Hello World", 30, 60);
  
  float tWidth = textWidth("Hello World ");
  
  
  // use systemFont
  textFont(systemFont, 48);
  text("Hello fresh created font", 30 + tWidth, 60);
  
  

  if(mousePressed == true){
    //println("in draw mousePressed");
  }
  
}


void mousePressed(){
  println("mousePressed");
  
  println("currentState : " + drawImage);
  
  if(drawImage == false){
    drawImage = true;
    println("change to true");
  } else {
    drawImage = false;
    println("change to false");
  }
  
  
  
  
}
