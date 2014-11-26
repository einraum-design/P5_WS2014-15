// Variable types

// int -> numbers -32343 ... 0  ... 32213
// float -> floating point numer 0.5, -34.224543 ...

// bool -> true or false (mousePressed)

// char -> character 'a', 'b', 'c' ... '§', ...
// String -> "Anna", sentences ...

float xPos = 25;
float yPos = 40;

float xSpeed = 3.0;
float ySpeed = 5.0;

String name = "Anna";

void setup() {
  size(800, 600);
  println(name);

  // just availabel in setup{}
  String greeting = "Hello " + name;
  println(greeting);
}

void draw() {
  //background(255);
  xPos = (xPos + xSpeed);
  yPos = (yPos + ySpeed);

  // println(xPos);

  // startposition xPos reset, new xSpeed
  if (xPos > width) {
    // just availabe inside of the if{}
    String stupidVariable = "nonsense";
    xPos = 0;
    xSpeed = random(1, 20);
  }

  // startposition yPos reset, new ySpeed
  if (yPos > height) {
    yPos = 0;
    ySpeed = random(1, 20);
  }
  noStroke();
  fill(xPos, yPos, random(255));
  ellipse(xPos, yPos, xPos, 50);


  fill(0);
  text(name, width/2, height/2);
}
