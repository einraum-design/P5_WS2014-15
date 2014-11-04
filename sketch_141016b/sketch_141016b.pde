// defines the size of the canvas
size(800, 600);

// set the background color (r, g, b)
background(30, 45, 85);

// set fill color
fill(0, 100, 0);

// set stroke color
stroke(255, 255, 255);

// set no stroke
noStroke();

// set anker point of rectangles
rectMode(CENTER);

// draw rect (x-position, y-position, width, height) 
rect(100, 300, 120, 80);

fill(255, 255, 0, 50);
ellipseMode(CORNER);
ellipse(100, 300, 120, 80);


ellipseMode(CENTER);
stroke(0);
fill(255, 255, 0);

// draw arc(x-position, y-position, width, height, start angle in radians, end angle in radians, drawMode)
arc(400, 300, 120, 120, radians(45), radians(315), PIE);

fill(0);
ellipse(400, 270, 15, 15);

stroke(255, 0, 0);
//line(400, 300, 450, 300);




noFill();
bezier(400, 300, // startpoint
400, 270, //tangent for startpoint
450, 330, // tangent for endpoint
450, 300); //endpoint


// this is a one line comment

/* this is a block comment
sdlkfjölasdjfölksdjflökjs
alsödkfjaösldfjlökasdjsdf
öldskfjö
*/
