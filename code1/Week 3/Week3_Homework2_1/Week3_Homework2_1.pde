//1. Draw shape
//2. Calculate distance between mouse and shape 
//2.b Print calue to console
//2.c if dist.<radius --> change fill color
//3. Boolean for if the mouse is inside shape
//4. Constrict movent of shape to one area of canvas
//5. Set mouse clicked to move shape to random part of screen

int rectWidth;
int rectHeight;
float rectXCenter, rectYCenter;

color rectColor, bgColor, buttonColor;

boolean isRectPressed;

int boundaryWidth;
int boundaryHeight;
int boundaryBG;

int randomButtonWidth;
int randomButtonHeight;
int randomButtonXCenter;
int randomButtonYCenter;

int bounceToggleRadius;
int bounceToggleXCenter;
int bounceToggleYCenter;
int bounceToggleColor;

boolean isBounceToggleOn;

float rectWidthM, rectHeightM;
float xSpeed, ySpeed;

int rectDistance;
int randomButtonDistance;
int bounceToggleDistance;


void setup() {
  size(500, 500);
  bgColor = color(20, 30, 0);
  buttonColor = color(37, 37, 37);
  boundaryBG = color(0);
  bounceToggleColor = color (125, 125, 125);
  //background(bgcolor);


  randomButtonWidth = 50;
  randomButtonHeight = 25;
  randomButtonXCenter = int(width*.75);
  randomButtonYCenter = int(height*.75);

  rectWidth = 20;
  rectHeight = rectWidth;

  boundaryWidth = int(width/2);
  boundaryHeight= int(height/2);

  bounceToggleXCenter = int(width*.65);
  bounceToggleYCenter = int(height*.75);
  bounceToggleRadius = 25;

  //Sets x and y of shape 
  rectXCenter = int(boundaryWidth/2);
  rectYCenter = int(boundaryHeight/2);

  rectMode(CENTER);

  xSpeed = int(random(1, 4));
  ySpeed = int(random(1, 4));
  rectXCenter = boundaryWidth/2;
  rectYCenter = boundaryHeight/2;
}

void draw() {
  //Makes the rect change color based on location on X and Y axis
  float r = map(rectXCenter, 0, width, 0, 255);
  float g = map(rectYCenter, 0, height, 0, 37);

  // Sets distance between shape and mouse for rect so it can chance color when mouse hovers
  rectDistance = int(dist(rectXCenter, rectYCenter, mouseX, mouseY));

  //Sets distance for toggle circle button which makes the shape bounce
  bounceToggleDistance = int(dist(bounceToggleXCenter, bounceToggleYCenter, mouseX, mouseY));

  //Button to set the shape to a random point in the boundary box  
  randomButtonDistance = int(dist(randomButtonXCenter, randomButtonYCenter, mouseX, mouseY));

  background(bgColor);

  //Background of the boundry for the box
  fill(boundaryBG);
  rect(int(boundaryWidth/2), int(boundaryHeight/2), boundaryWidth, boundaryHeight);

  //// Makes the shape change color with mouse movement
  //if (rectDistance<rectWidth/2) {
  //  rectColor = color(137, 137, 137);
  //} else {
  //  rectColor = color(37, 37, 37);
  //}

  //Prints the distance between mouse and shape
  println(rectDistance);

  //Boolean that makes the BG chanage color when mouse clicked inside shape
  if (isRectPressed == true) {
    bgColor = 250;
  } else {
    bgColor = 150;
  }

  // Draws and fills rectangle
  fill(r, g, 120);
  rect(rectXCenter, rectYCenter, rectWidth, rectHeight);

  //drawing square button
  fill(buttonColor);
  rect(randomButtonXCenter, randomButtonYCenter, randomButtonWidth, randomButtonHeight);

  //draw toggle circle button
  fill(bounceToggleColor);
  ellipse (bounceToggleXCenter, bounceToggleYCenter, bounceToggleRadius, bounceToggleRadius);

  //If statement for circle toggle to make shape bounce
  if (isBounceToggleOn == true) {

    // for rect bounce speed
    if (xSpeed == ySpeed) { 
      xSpeed = random(1, 4);
      ySpeed = random(1, 4);
    }

    if (rectXCenter >= (boundaryWidth - rectWidth/2) || rectXCenter <= rectWidth/2) {
      xSpeed = xSpeed *-1;
    }

    if (rectYCenter >= (boundaryHeight - rectHeight/2) || rectYCenter <= rectHeight/2) {
      ySpeed = ySpeed *-1;
    }
  } else {
    xSpeed = 0;
    ySpeed = 0;
  }
  rectXCenter = rectXCenter + xSpeed;
  rectYCenter = rectYCenter + ySpeed;
}

void mousePressed() {

  // 2nd part needed to make bg change when mouse pressed
  //isRectPressed = !isRectPressed; saying if true set to false or if false set to true (set to opposite)
  if (rectDistance < int(rectWidth / 2)) {
    isRectPressed = !isRectPressed;
  }

  //Button to move the square 
  if (randomButtonDistance < int(randomButtonWidth /2)) {
    rectXCenter = int(random(int(rectWidth/2), boundaryWidth - int(rectWidth/2)));
    rectYCenter = int(random(int(rectHeight/2), boundaryHeight - int(rectHeight/2)));
  }
  //Toggle Button
  if (bounceToggleDistance < bounceToggleRadius) {
    isBounceToggleOn = !isBounceToggleOn;
  }
}
