//1. Draw shape
//2. Calculate distance between mouse and shape 
//2.b Print calue to console
//2.c if dist.<radius --> change fill color
//3. Boolean for if the mouse is inside shape
//4. Constrict movent of shape to one area of canvas
//5. Set mouse clicked to move shape to random part of screen

int rectWidth;
int rectHeight;
int rectXCenter, rectYCenter;
int distance;

color rectColor, bgColor, buttonColor;

boolean isRectOn;

int boundaryWidth;
int boundaryHeight;
int boundaryBG;

int buttonWidth;
int buttonHeight;
int buttonXCenter;
int buttonYCenter;

boolean isButtonPressed;

int buttonDistance;

float rectWidthM, rectHeightM;
float xSpeed, ySpeed;
int size = 100;


void setup() {
 size(500,500);
 bgColor = color(20,30,0);
 buttonColor = color(37,37,37);
 boundaryBG = color(85);
 //background(bgcolor);
 
 
buttonWidth = 50;
buttonHeight = 25;
buttonXCenter = int(width*.75);
buttonYCenter = int(height*.75);

 
 rectWidth = 20;
 rectHeight = rectWidth;
 
 boundaryWidth = int(width/2);
 boundaryHeight= int(height/2);
 
 //Sets x and y of shape 
 rectXCenter = int(boundaryWidth/2);
 rectYCenter = int(boundaryHeight/2);
 
 rectMode(CENTER);
 
 xSpeed = int(random(1,4));
 ySpeed = int(random(1,4));
 rectXCenter = width/2;
 rectYCenter = height/2;
 
 
}

void draw() {
  
  // Sets or sets distance between shape and mouse? 
  distance = int(dist(rectXCenter, rectYCenter, mouseX, mouseY));
  
  buttonDistance = int(dist(buttonXCenter, buttonYCenter, mouseX, mouseY));
  
  background(bgColor);
  
  //Background of the boundry for the box
  fill(boundaryBG);
  rect(int(boundaryWidth/2),int(boundaryHeight/2), boundaryWidth, boundaryHeight);

  // Makes the shape change color with mouse movement
  if(distance<rectWidth/2){
    rectColor = color(137, 137, 137);
  }else{
    rectColor = color(37,37,37);
  }
  
  //Prints the distance between mouse and shape
  println(distance);
  
  //Boolean that makes the BG chanage color when mouse clicked inside shape
  if(isRectOn == true){
    bgColor = 250;
  }else{
    bgColor = 150;
  }
  
  // Draws and fills rectangle
  fill(rectColor);
  rect(rectXCenter, rectYCenter, rectWidth, rectHeight);

//drawing button
fill(buttonColor);
rect(buttonXCenter, buttonYCenter, buttonWidth, buttonHeight);
 
}

void mousePressed(){

  // 2nd part needed to make bg change when mouse pressed
  //isRectOn = !isRectOn; saying if true set to false or if false set to true (set to opposite)
 if (distance < int(rectWidth / 2)){
   isRectOn = !isRectOn;
 }
  
 //Button to move the square 
 if(buttonDistance < int(buttonWidth /2)){
   rectXCenter = int(random(int(rectWidth/2), boundaryWidth - int(rectWidth/2)));
   rectYCenter = int(random(int(rectHeight/2), boundaryHeight - int(rectHeight/2)));
 }
 
 
  
}
