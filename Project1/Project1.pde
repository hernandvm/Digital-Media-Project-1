/**************************************************
* Project 1
* Name: Victor Hernandez
* E-mail: hernandv@lafayette.edu
* Course: CS 105 - Section 01
* Submitted: 02/17/2022
* 
* Description: Album cover of The Sun's Tirade 
* by Isaiah Rashad.
*
* Inspiration: I hold The Sun's Tirade album very
* close to my heart as it introduced to one of 
* my favorite artists, Isaiah Rashad. I thought of
* ways to make this project more of a personal
* piece rather than "just another school
* assignment," and this album cover was the first
* thing that came to mind.
*
* Acknowledgement of References: 
* Google Images, "The Sun's Tirade."
*
*************************************************/

//Initialize global variables x, y, and s
int x = width / 2; // 300
int y = height / 2; // 300
int s = int (width / 1.5);

// Set canvas size and background color
size(600, 600);
background(0);

// Display "THE SUN'S TIRADE" using text() and textSize()
textSize(35);
stroke(255);
text("THE SUN'S TIRADE", x - 0.3375*s, y - 0.6*s);

// Draw main canvas rectangle with center (x, y) and s height & s width
rectMode(CENTER);
noStroke(); // Set no outline for main canvas
fill(180, 105, 200, 240); // Set rect color of lower sky
rect(x, y, s, s);

// Draw rectangles for mid & upper sky
// Draw upper sky
fill(100, 105, 215, 255); // Set rect color of upper sky
rect(x, y - 0.3125*s, s, 0.375*s);

// Draw middle sky
fill(110, 105, 240, 140); // Set rect color of middle sky with transparency
rect(x, y - 0.15*s, s, 0.15*s);

// Draw foggy cloud stretching through the width of main canvas
fill(255, 130);
beginShape();
curveVertex(x - 0.5*s, y - 0.275*s);  // top cp1
curveVertex(x - 0.5*s, y - 0.275*s);  // top p1
curveVertex(x - 0.425*s, y - 0.25*s);  // top p2
curveVertex(x - 0.35*s, y - 0.275*s);  // top p3
curveVertex(x - 0.275*s, y - 0.295*s); // top p4
curveVertex(x - 0.2*s, y - 0.275*s);   // top p5
curveVertex(x - 0.125*s, y - 0.25*s);   // top p6
curveVertex(x - 0.025*s, y - 0.28*s);   // top p7
curveVertex(x + 0.025*s, y - 0.28*s);   // top p8
curveVertex(x + 0.125*s, y - 0.255*s);   // top p9
curveVertex(x + 0.2*s, y - 0.295*s);   // top p10
curveVertex(x + 0.275*s, y - 0.31*s);  // top p11
curveVertex(x + 0.35*s, y - 0.295*s);  // top p12
curveVertex(x + 0.425*s, y - 0.255*s);  // top p13
curveVertex(x + 0.5*s, y - 0.275*s);  // top p14
vertex(x + 0.5*s, y - 0.275*s); // Use vertices to make straight edge
vertex(x + 0.5*s, y - 0.025*s); 
curveVertex(x + 0.5*s, y - 0.025*s); // bottom p1
curveVertex(x + 0.425*s, y - 0.05*s); // bottom p2
curveVertex(x + 0.35*s, y - 0.025*s); // bottom p3
curveVertex(x + 0.275*s, y);          // bottom p4
curveVertex(x + 0.2*s, y - 0.025*s);  // bottom p5
curveVertex(x + 0.125*s, y - 0.05*s);  // bottom p6
curveVertex(x + 0.05*s, y - 0.025*s);  // bottom p7
curveVertex(x - 0.05*s, y - 0.025*s);  // bottom p8
curveVertex(x - 0.125*s, y - 0.05*s);  // bottom p9
curveVertex(x - 0.2*s, y - 0.015*s);  // bottom p10
curveVertex(x - 0.275*s, y); // bottom p11
curveVertex(x - 0.35*s, y - 0.015*s); // bottom p12
curveVertex(x - 0.425*s, y - 0.05*s); // bottom p13
curveVertex(x - 0.5*s, y - 0.025*s); // bottom p14
curveVertex(x - 0.5*s, y - 0.025*s); // bottom cp2
endShape(CLOSE);

// Draw overlapping buildings for the background

// Draw back middle building
stroke(0);
fill(105, 105, 185); // Set color of building
rect(x, y + 0.025*s, s*0.275, s*0.95);


// Draw windows for first building in rows of three
fill(200, 200, 10, 200);
// Draw top row of windows
rect(x - 0.08*s, y - 0.35*s, s*0.06, s*0.06);
rect(x, y - 0.35*s, s*0.06, s*0.06);
rect(x + 0.08*s, y - 0.35*s, s*0.06, s*0.06);
// Draw first middle row of windows
rect(x - 0.08*s, y - 0.275*s, s*0.06, s*0.06);
rect(x, y - 0.275*s, s*0.06, s*0.06);
rect(x + 0.08*s, y - 0.275*s, s*0.06, s*0.06);
// Draw second middle row of windows
rect(x - 0.08*s, y - 0.2*s, s*0.06, s*0.06);
rect(x, y - 0.2*s, s*0.06, s*0.06);
rect(x + 0.08*s, y - 0.2*s, s*0.06, s*0.06);
// Draw lower row of windows
rect(x - 0.08*s, y - 0.125*s, s*0.06, s*0.06);
rect(x, y - 0.125*s, s*0.06, s*0.06);
rect(x + 0.08*s, y - 0.125*s, s*0.06, s*0.06);

// Draw back left and right buildings overlapping middle building
fill(105, 105, 185);
rect(x + 0.2*s, y + 0.0875*s, s*0.28, s*0.825); // Draw right building
rect(x - 0.2*s, y + 0.125*s, s*0.275, s*0.75); // Draw left building


// Draw windows for back left building
fill(200, 200, 10); // Set color of building
// Draw top row of windows
rect(x - 0.28*s, y - 0.18*s, s*0.06, s*0.06);
rect(x - 0.2*s, y - 0.18*s, s*0.06, s*0.06);
rect(x - 0.12*s, y - 0.18*s, s*0.06, s*0.06);
// Draw top middle row of windows
rect(x - 0.28*s, y - 0.1*s, s*0.06, s*0.06);
rect(x - 0.2*s, y - 0.1*s, s*0.06, s*0.06);
rect(x - 0.12*s, y - 0.1*s, s*0.06, s*0.06);
// Draw bottom middle row of windows
rect(x - 0.28*s, y - 0.02*s, s*0.06, s*0.06);
rect(x - 0.2*s, y - 0.02*s, s*0.06, s*0.06);
rect(x - 0.12*s, y - 0.02*s, s*0.06, s*0.06);
// Draw bottom row of windows
rect(x - 0.28*s, y + 0.06*s, s*0.06, s*0.06);
rect(x - 0.2*s, y + 0.06*s, s*0.06, s*0.06);
rect(x - 0.12*s, y + 0.06*s, s*0.06, s*0.06);

// Draw windows for back right building
// Draw top windows
rect(x + 0.12*s, y - 0.25*s, s*0.065, s*0.0625);
rect(x + 0.2*s, y - 0.25*s, s*0.065, s*0.0625);
rect(x + 0.28*s, y - 0.25*s, s*0.065, s*0.0625);
// Draw top middle windows
rect(x + 0.12*s, y - 0.17*s, s*0.0625, s*0.0625);
rect(x + 0.2*s, y - 0.17*s, s*0.0625, s*0.0625);
rect(x + 0.28*s, y - 0.17*s, s*0.0625, s*0.0625);
// Draw bottom middle windows
rect(x + 0.12*s, y - 0.09*s, s*0.0625, s*0.0625);
rect(x + 0.2*s, y - 0.09*s, s*0.0625, s*0.0625);
rect(x + 0.28*s, y - 0.09*s, s*0.0625, s*0.0625);
// Draw bottom windows
rect(x + 0.12*s, y + 0.01*s, s*0.0625, s*0.0625);
rect(x + 0.2*s, y + 0.01*s, s*0.0625, s*0.0625);
rect(x + 0.28*s, y + 0.01*s, s*0.0625, s*0.0625);

// Draw second layer of buildings with windows
fill(105, 105, 185); // Set color of building
rect(x + 0.275*s, y + 0.2125*s, s*0.32, s*0.575); // Middle right building

// Increase window's transparancy by level (top to bottom)
fill(200, 200, 10, 255); 
// Top windows
rect(x + 0.18*s, y + 0.0125*s, s*0.065, s*0.065);
rect(x + 0.275*s, y + 0.0125*s, s*0.065, s*0.065);
rect(x + 0.37*s, y + 0.0125*s, s*0.065, s*0.065);
// Top middle windows
fill(200, 200, 10, 205);
rect(x + 0.18*s, y + 0.1075*s, s*0.065, s*0.065);
rect(x + 0.275*s, y + 0.1075*s, s*0.065, s*0.065);
rect(x + 0.37*s, y + 0.1075*s, s*0.065, s*0.065);
// Middle windows
fill(200, 200, 10, 155);
rect(x + 0.18*s, y + 0.2025*s, s*0.065, s*0.065);
rect(x + 0.275*s, y + 0.2025*s, s*0.065, s*0.065);
rect(x + 0.37*s, y + 0.2025*s, s*0.065, s*0.065);
// Bottom middle windows
fill(200, 200, 10, 105);
rect(x + 0.18*s, y + 0.2975*s, s*0.065, s*0.065);
rect(x + 0.275*s, y + 0.2975*s, s*0.065, s*0.065);
rect(x + 0.37*s, y + 0.2975*s, s*0.065, s*0.065);
// Bottom windows
fill(200, 200, 10, 55);
rect(x + 0.18*s, y + 0.3925*s, s*0.065, s*0.065);
rect(x + 0.275*s, y + 0.3925*s, s*0.065, s*0.065);
rect(x + 0.37*s, y + 0.3925*s, s*0.065, s*0.065);

// Set color of building
fill(105, 105, 185);
rect(x - 0.25*s, y + 0.2*s, s*0.325, s*0.6); // Middle left building
// Increase window color transparency by level
fill(200, 200, 10, 255);
rect(x - 0.34*s, y, s*0.0725, s*0.0725);
rect(x - 0.25*s, y, s*0.0725, s*0.0725);
rect(x - 0.16*s, y, s*0.0725, s*0.0725);
// Top windows
fill(200, 200, 10, 205);
rect(x - 0.34*s, y + 0.095*s, s*0.07, s*0.07);
rect(x - 0.25*s, y + 0.095*s, s*0.07, s*0.07);
rect(x - 0.16*s, y + 0.095*s, s*0.07, s*0.07);
// Top middle windows
fill(200, 200, 10, 155);
rect(x - 0.34*s, y + 0.19*s, s*0.07, s*0.07);
rect(x - 0.25*s, y + 0.19*s, s*0.07, s*0.07);
rect(x - 0.16*s, y + 0.19*s, s*0.07, s*0.07);
// Bottom midddle windows
fill(200, 200, 10, 105);
rect(x - 0.34*s, y + 0.285*s, s*0.07, s*0.07);
rect(x - 0.25*s, y + 0.285*s, s*0.07, s*0.07);
rect(x - 0.16*s, y + 0.285*s, s*0.07, s*0.07);
// Bottom windows
fill(200, 200, 10, 55);
rect(x - 0.34*s, y + 0.38*s, s*0.07, s*0.07);
rect(x - 0.25*s, y + 0.38*s, s*0.07, s*0.07);
rect(x - 0.16*s, y + 0.38*s, s*0.07, s*0.07);

// Draw front middle building with windows
fill(105, 105, 185); // Set color of building
rect(x, y + 0.175*s, s*0.3, s*0.65); // Middle building
// Increase transparency of windows each level
fill(200, 200, 10, 400);
// Top windows
rect(x - 0.085*s, y - 0.07*s, s*0.07, s*0.07);
rect(x, y - 0.07*s, s*0.07, s*0.07);
rect(x + 0.085*s, y - 0.07*s, s*0.07, s*0.07);
// Top middle windows
fill(200, 200, 10, 350);
rect(x - 0.085*s, y + 0.02*s, s*0.07, s*0.07);
rect(x, y + 0.02*s, s*0.07, s*0.07);
rect(x + 0.085*s, y + 0.02*s, s*0.07, s*0.07);
// Third windows
fill(200, 200, 10, 300);
rect(x - 0.085*s, y + 0.11*s, s*0.07, s*0.07);
rect(x, y + 0.11*s, s*0.07, s*0.07);
rect(x + 0.085*s, y + 0.11*s, s*0.07, s*0.07);
// Fourth windows
fill(200, 200, 10, 250);
rect(x - 0.085*s, y + 0.2*s, s*0.07, s*0.07);
rect(x, y + 0.2*s, s*0.07, s*0.07);
rect(x + 0.085*s, y + 0.2*s, s*0.07, s*0.07);
// Fifth windows
fill(200, 200, 10, 200);
rect(x - 0.085*s, y + 0.29*s, s*0.07, s*0.07);
rect(x, y + 0.29*s, s*0.07, s*0.07);
rect(x + 0.085*s, y + 0.29*s, s*0.07, s*0.07);
// Bottom windows
fill(200, 200, 10, 150);
rect(x - 0.085*s, y + 0.38*s, s*0.07, s*0.07);
rect(x, y + 0.38*s, s*0.07, s*0.07);
rect(x + 0.085*s, y + 0.38*s, s*0.07, s*0.07);

// Draw far right bulding with windows
fill(105, 105, 185); // Set building color
rect(x + 0.325*s, y + 0.275*s, s*0.3, s*0.45); // Far right building
// Top windows
fill(200, 200, 10, 150); 
rect(x + 0.225*s, y + 0.14*s, s*0.07, s*0.07);
rect(x + 0.325*s, y + 0.14*s, s*0.07, s*0.07);
rect(x + 0.425*s, y + 0.14*s, s*0.07, s*0.07);
// Middle windows
rect(x + 0.225*s, y + 0.2275*s, s*0.07, s*0.07);
rect(x + 0.325*s, y + 0.2275*s, s*0.07, s*0.07);
rect(x + 0.425*s, y + 0.2275*s, s*0.07, s*0.07);
// Bottom windows
rect(x + 0.225*s, y + 0.315*s, s*0.07, s*0.07);
rect(x + 0.325*s, y + 0.315*s, s*0.07, s*0.07);
rect(x + 0.425*s, y + 0.315*s, s*0.07, s*0.07);

// Draw far left building with building color
fill(105, 105, 185);
rect(x - 0.3*s, y + 0.3*s, s*0.275, s*0.4); // Far left building
// Increase transparency of windows each level
fill(200, 200, 10, 200);
// Top windows
rect(x - 0.38*s, y + 0.175*s, s*0.06, s*0.06);
rect(x - 0.3*s, y + 0.175*s, s*0.06, s*0.06);
rect(x - 0.22*s, y + 0.175*s, s*0.06, s*0.06);
// Bottom windows
fill(200, 200, 10, 150);
rect(x - 0.38*s, y + 0.255*s, s*0.06, s*0.06);
rect(x - 0.3*s, y + 0.255*s, s*0.06, s*0.06);
rect(x - 0.22*s, y + 0.255*s, s*0.06, s*0.06);

// Draw orange car with details
fill(240, 130, 25); // Set car color
noStroke();
rect(x, y + 0.385*s, s, s*0.225); // Set car base

// Draw left wheel
fill(0);
stroke(0);
arc(x - 0.5*s, y + 0.5*s, s*0.3, s*0.25, 3*PI/2, 2*PI);
// Draw tire
noStroke();
fill(35);
arc(x - 0.5*s, y + 0.5*s, s*0.2625, s*0.2625, 3*PI/2, 2*PI);
// Draw outer rim
stroke(0);
fill(200);
arc(x - 0.5*s, y + 0.5*s, s*0.1875, s*0.1875, 3*PI/2, 2*PI);
// Draw center of rim
fill(100);
arc(x - 0.5*s, y + 0.5*s, s*0.1125, s*0.1125, 3*PI/2, 2*PI);

// Draw right wheel
// Draw tire
fill(35);
arc(x + 0.5*s, y + 0.5*s, s*0.25, s*0.25, PI, 3*PI/2);
// Draw outer rim
fill(200);
arc(x + 0.5*s, y + 0.5*s, s*0.2, s*0.2, PI, 3*PI/2);
// Draw center of rim
fill(100);
arc(x + 0.5*s, y + 0.5*s, s*0.125, s*0.125, PI, 3*PI/2);

// Overlap left wheel with car base color
fill(240, 130, 25);
noStroke();
rect(x - 0.4375*s, y + 0.35*s, s*0.125, s*0.1);

// Draw lower detail on car body
fill(205, 100, 30);
beginShape();
vertex(x - 0.325*s, y + 0.5*s);
vertex(x - 0.35*s, y + 0.425*s); 
vertex(x - 0.3875*s, y + 0.3875*s);
vertex(x - 0.4*s, y + 0.375*s);
vertex(x - 0.45*s, y + 0.35*s);
vertex(x + 0.5*s, y + 0.35*s);
vertex(x + 0.5*s, y + 0.425*s);
vertex(x + 0.4125*s, y + 0.425*s);
vertex(x + 0.375*s, y + 0.5*s);
vertex(x - 0.275*s, y + 0.5*s);
endShape(CLOSE);

stroke(205, 185, 80);
strokeWeight(5);
line(x - 0.375*s, y + 0.425*s, x + 0.4925*s, y + 0.425*s);

// Draw lines for car door
stroke(0);
strokeWeight(1);
line(x - 0.225*s, y + 0.2725*s, x - 0.225*s, y + 0.5*s);
line(x + 0.225*s, y + 0.2725*s, x + 0.225*s, y + 0.5*s);

// Draw door handle
noStroke();
fill(100);
ellipse(x + 0.15*s, y + 0.3*s, s*0.06, s*0.0125);

// Draw windshield
noStroke();
fill(0, 0, 0, 210);
beginShape();
vertex(x - 0.225*s, y + 0.2725*s);  // 1
vertex(x - 0.125*s, y + 0.2725*s);  // 2
vertex(x - 0.1025*s, y + 0.1275*s);   // 3
vertex(x - 0.125*s, y + 0.09*s);   // 4
vertex(x - 0.3*s, y + 0.26*s); // 5
endShape(CLOSE);

// Draw windshild outline
stroke(200);
strokeWeight(3);
line(x - 0.12*s, y + 0.2725*s, x - 0.1025*s, y + 0.1275*s);
line(x - 0.1025*s, y + 0.1275*s, x - 0.125*s, y + 0.09*s);
curve(x - 0.2625*s, y + 0.4375*s, x - 0.225*s, y + 0.2725*s,
x - 0.1075*s, y + 0.1275*s, x, y + 0.19*s);

// Draw car hood
fill(240, 140, 120); // set car color
noStroke();
triangle(x - 0.225*s, y + 0.2725*s, x - 0.3*s, y + 0.26*s, x - 0.5*s, y + 0.2725*s);

// Draw clouds overlapping buildings
fill(160, 245);
ellipse(x - 0.225*s, y, s*0.065, s*0.0575);
ellipse(x - 0.1875*s, y, s*0.065, s*0.0575);
fill(110, 245);
ellipse(x - 0.25*s, y + 0.025*s, s*0.065, s*0.0575);
ellipse(x - 0.1625*s, y + 0.025*s, s*0.065, s*0.0575);
ellipse(x - 0.225*s, y + 0.0375*s, s*0.065, s*0.0575);
ellipse(x - 0.2*s, y + 0.0375*s, s*0.065, s*0.0575);

fill(180, 245);
ellipse(x - 0.325*s, y - 0.125*s, s*0.075, s*0.075);
ellipse(x - 0.275*s, y - 0.125*s, s*0.075, s*0.075);
fill(130, 245);
ellipse(x - 0.3625*s, y - 0.1125*s, s*0.075, s*0.0625);
ellipse(x - 0.2375*s, y - 0.1125*s, s*0.075, s*0.0625);
ellipse(x - 0.325*s, y - 0.0875*s, s*0.075, s*0.0625);
ellipse(x - 0.275*s, y - 0.0875*s, s*0.075, s*0.0625);

fill(180, 245);
ellipse(x, y - 0.075*s, s*0.0625, s*0.05);
ellipse(x + 0.0375*s, y - 0.075*s, s*0.0625, s*0.05);
fill(130, 245);
ellipse(x - 0.0375*s, y - 0.05*s, s*0.0625, s*0.05);
ellipse(x + 0.075*s, y - 0.05*s, s*0.0625, s*0.05);
ellipse(x, y - 0.0375*s, s*0.0625, s*0.05);
ellipse(x + 0.0375*s, y - 0.0375*s, s*0.0625, s*0.05);

fill(160, 245);
ellipse(x - 0.075*s, y - 0.2375*s, s*0.075, s*0.05);
ellipse(x - 0.0375*s, y - 0.2375*s, s*0.075, s*0.05);
fill(110, 245);
ellipse(x - 0.1125*s, y - 0.2125*s, s*0.075, s*0.05);
ellipse(x, y - 0.2125*s, s*0.075, s*0.05);
ellipse(x - 0.075*s, y - 0.2*s, s*0.075, s*0.05);
ellipse(x - 0.0375*s, y - 0.2*s, s*0.075, s*0.05);

fill(180, 245);
ellipse(x + 0.175*s, y - 0.2*s, s*0.075, s*0.0625);
ellipse(x + 0.225*s, y - 0.2*s, s*0.075, s*0.0625);
fill(130, 245);
ellipse(x + 0.1375*s, y - 0.175*s, s*0.075, s*0.0625);
ellipse(x + 0.2625*s, y - 0.175*s, s*0.075, s*0.0625);
ellipse(x + 0.175*s, y - 0.1625*s, s*0.075, s*0.0625);
ellipse(x + 0.225*s, y - 0.1625*s, s*0.075, s*0.0625);

fill(180, 245);
ellipse(x + 0.275*s, y - 0.375*s, s*0.05, s*0.0375);
ellipse(x + 0.3*s, y - 0.375*s, s*0.05, s*0.0375);
fill(130, 245);
ellipse(x + 0.25*s, y - 0.3625*s, s*0.05, s*0.0375);
ellipse(x + 0.325*s, y - 0.3625*s, s*0.05, s*0.0375);
ellipse(x + 0.275*s, y - 0.35*s, s*0.05, s*0.0375);
ellipse(x + 0.3*s, y - 0.35*s, s*0.05, s*0.0375);

fill(180, 245);
ellipse(x + 0.275*s, y + 0.05*s, s*0.05, s*0.0375);
ellipse(x + 0.3*s, y + 0.05*s, s*0.05, s*0.0375);
fill(130, 245);
ellipse(x + 0.25*s, y + 0.0625*s, s*0.05, s*0.0375);
ellipse(x + 0.325*s, y + 0.0625*s, s*0.05, s*0.0375);
ellipse(x + 0.275*s, y + 0.075*s, s*0.05, s*0.0375);
ellipse(x + 0.3*s, y + 0.075*s, s*0.05, s*0.0375);

fill(160, 245);
ellipse(x + 0.3125*s, y - 0.0625*s, s*0.0625, s*0.0625);
ellipse(x + 0.3625*s, y - 0.0625*s, s*0.0625, s*0.0625);
fill(120, 245);
ellipse(x + 0.275*s, y - 0.045*s, s*0.0625, s*0.05);
ellipse(x + 0.4*s, y - 0.045*s, s*0.0625, s*0.05);
ellipse(x + 0.3125*s, y - 0.025*s, s*0.0625, s*0.05);
ellipse(x + 0.3625*s, y - 0.025*s, s*0.0625, s*0.05);

// Draw moon
fill(180);
ellipse(x - 0.25*s, y - 0.35*s, s*0.07, s*0.07);
stroke(0, 100);
strokeWeight(1);
fill(0, 100);
arc(x - 0.25*s, y - 0.35*s, s*0.07, s*0.07, 7*PI/4, 11*PI/4);

// Draw top left corner cloud
noStroke();
fill(80, 150);
triangle(x - 0.5*s, y - 0.5*s, x - 0.3125*s, y - 0.5*s, x - 0.5*s, y - 0.3625*s);
fill(120, 180);
triangle(x - 0.5*s, y - 0.5*s, x - 0.35*s, y - 0.5*s, x - 0.5*s, y - 0.4*s);

// Draw Isaiah Rashad

// Draw top of pants
fill(60, 140, 60);
beginShape();
vertex(x, y - 0.025*s);
vertex(x, y + 0.025*s);
vertex(x + 0.065*s, y + 0.025*s);
vertex(x + 0.065*s, y - 0.025*s);
endShape(CLOSE);

// Draw legs using quad
// Draw right thigh and shin
fill(60, 140, 60);
quad(x, y + 0.025*s, x - 0.05*s, y + 0.075*s, x - 0.0375*s, y + 0.1*s, x + 0.05*s, y + 0.025*s);
fill(60, 120, 60);
quad(x - 0.0375*s, y + 0.1*s, x - 0.05*s, y + 0.075*s, x + 0.075*s, y + 0.0625*s, x + 0.075*s, y + 0.0875*s);
// Outline leg with lines
stroke(0);
line(x, y - 0.025*s, x, y + 0.025*s);
line(x, y + 0.025*s, x - 0.05*s, y + 0.075*s);
line(x - 0.05*s, y + 0.075*s, x - 0.0375*s, y + 0.1*s);
line(x - 0.0375*s, y + 0.1*s, x + 0.075*s, y + 0.0875*s);
line(x - 0.01*s, y + 0.07*s, x + 0.0625*s, y + 0.0625*s);
line(x - 0.01*s, y + 0.07*s, x + 0.0125*s, y + 0.0525*s);
// Draw right foot
fill(225);
quad(x + 0.0625*s, y + 0.0625*s, x + 0.0875*s, y + 0.06*s, x + 0.0875*s, y + 0.125*s, x + 0.075*s, y + 0.125*s);

// Draw left thigh and shin
noStroke();
fill(60, 140, 60);
quad(x + 0.065*s, y + 0.025*s, x + 0.03*s, y + 0.1*s, x - 0.005*s, y + 0.1*s, x + 0.05*s, y - 0.025*s);
fill(60, 120, 60);
quad(x - 0.005*s, y + 0.1*s, x + 0.0125*s, y + 0.125*s, x + 0.1*s, y + 0.1125*s, x + 0.1*s, y + 0.0875*s);
// Outline legs with lines
stroke(0);
line(x + 0.0125*s, y + 0.0525*s, x - 0.005*s, y + 0.1*s);
line(x - 0.005*s, y + 0.1*s, x + 0.0125*s, y + 0.125*s);
line(x + 0.0125*s, y + 0.125*s, x + 0.1*s, y + 0.1125*s);
line(x + 0.0875*s, y + 0.0875*s, x + 0.03*s, y + 0.095*s);
line(x + 0.03*s, y + 0.095*s, x + 0.065*s, y + 0.025*s);
line(x + 0.065*s, y + 0.025*s, x + 0.065*s, y - 0.0125*s);
// Draw right foot
fill(225);
quad(x + 0.0875*s, y + 0.0875*s, x + 0.1125*s, y + 0.085*s, x + 0.1125*s, y + 0.15*s, x + 0.1*s, y + 0.15*s);
noStroke();

// Draw torse using beginShape()
fill(160, 160, 200);
stroke(0);
beginShape();
vertex(x, y - 0.1375*s);
vertex(x - 0.0125*s, y - 0.125*s);
vertex(x - 0.025*s, y - 0.1*s);
vertex(x - 0.025*s, y - 0.075*s);
vertex(x - 0.0075*s, y - 0.025*s);
vertex(x - 0.0125*s, y - 0.0125*s);
vertex(x - 0.0075*s, y + 0.0125*s); // lowest point
vertex(x + 0.075*s, y - 0.0125*s);
vertex(x + 0.0775*s, y - 0.03*s);
vertex(x + 0.0575*s, y - 0.0375*s);
vertex(x + 0.0625*s, y - 0.0375*s);
vertex(x + 0.05*s, y - 0.1375*s);
vertex(x + 0.0375*s, y - 0.15*s);
endShape(CLOSE);

// Draw right arm (left side)
fill(100, 100, 110);
beginShape();
vertex(x - 0.025*s, y - 0.0875*s);
vertex(x - 0.0625*s, y - 0.07*s);
vertex(x - 0.0625*s, y - 0.0575*s);
vertex(x - 0.02*s, y - 0.0625*s);
vertex(x - 0.025*s, y - 0.075*s);
endShape(CLOSE);

// Draw left arm (right side)
fill(140, 140, 170);
beginShape();
vertex(x + 0.0375*s, y - 0.15*s);
vertex(x + 0.1125*s, y - 0.1125*s);
vertex(x + 0.1125*s, y - 0.1*s);
vertex(x + 0.025*s, y - 0.025*s);
vertex(x + 0.025*s, y - 0.05*s);
endShape();
stroke(0);
line(x + 0.025*s, y - 0.05*s, x + 0.075*s, y - 0.105*s);

// Draw hands with ellipses
fill(185, 113, 43);
ellipse(x + 0.025*s, y - 0.0375*s, s*0.0375, s*0.0375); // Right side of canvas
ellipse(x - 0.0625*s, y - 0.0625*s, s*0.0375, s*0.0375); // Left side of canvas

// Draw back of hood of hoodie using beginShape()
fill(110, 110, 140);
beginShape();
vertex(x, y - 0.1375*s);
vertex(x + 0.075*s, y - 0.1625*s);
vertex(x + 0.095*s, y - 0.2125*s);
vertex(x + 0.0625*s, y - 0.225*s);
endShape(CLOSE); // Leave last edge with no stroke

// Draw head using beginShape()
fill(185, 113, 43);
beginShape();
vertex(x, y - 0.1375*s);
vertex(x, y - 0.1575*s);
vertex(x - 0.025*s, y - 0.15*s);
vertex(x - 0.0375*s, y - 0.1625*s);
vertex(x - 0.045*s, y - 0.175*s);
vertex(x - 0.0525*s, y - 0.175*s);
vertex(x - 0.045*s, y - 0.2*s);
vertex(x - 0.045*s, y - 0.225*s);
vertex(x - 0.025*s, y - 0.25*s);
vertex(x + 0.025*s, y - 0.25*s);
vertex(x + 0.0375*s, y - 0.225*s);
vertex(x + 0.0375*s, y - 0.15*s);
endShape(CLOSE);

// Draw front of hood of hoodie using beginShape()
fill(140, 140, 170);
beginShape();
vertex(x, y - 0.1375*s);
vertex(x + 0.075*s, y - 0.1625*s);
vertex(x + 0.095*s, y - 0.2125*s);
vertex(x + 0.08*s, y - 0.2175*s);
endShape(CLOSE);

// Draw hair using lines and strokeWeight()
stroke(0);
strokeWeight(5);
line(x - 0.0625*s, y - 0.25*s, x + 0.0375*s, y - 0.25*s);
line(x, y - 0.25*s, x, y - 0.2125*s);
line(x, y - 0.25*s, x + 0.02*s, y - 0.2125*s);
line(x + 0.01*s, y - 0.25*s, x + 0.03*s, y - 0.2125*s);
line(x + 0.02*s, y - 0.25*s, x + 0.04*s, y - 0.2125*s);
line(x + 0.03*s, y - 0.25*s, x + 0.05*s, y - 0.2125*s);
line(x + 0.04*s, y - 0.25*s, x + 0.06*s, y - 0.2125*s);
line(x - 0.01*s, y - 0.25*s, x - 0.03*s, y - 0.2125*s);
line(x - 0.035*s, y - 0.25*s, x - 0.055*s, y - 0.2125*s);
line(x - 0.035*s, y - 0.25*s, x - 0.07*s, y - 0.225*s);
line(x - 0.035*s, y - 0.245*s, x, y - 0.245*s);


// Sign name and course title
fill(255);
textSize(20);
fill(255);
text("Victor Hernandez", x - 0.6*s, y + 0.575*s);
text("CS105 Spring 2022", x + 0.2125*s, y + 0.575*s);

// Save image as .png
save("TheSunsTirade.png");
