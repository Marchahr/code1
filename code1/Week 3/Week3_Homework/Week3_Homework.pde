//1. Draw shape
//2. Calculate distance between mouse and shape 
//2.b Print calue to console
//2.c if dist.<radius --> change fill color
//3. Boolean for if the shape is inside shape
//4. Constrict movent of shape to within one area of canvas
//5. Set mouse clicked to move shape to random part of screen

int rectSize;
int xPos, yPos;
int distance;

color rectColor, bgColor;

boolean isRectOn;

void setup() {
 size(500,500);
 bgColor = color(20,30,0);
 //background(bgcolor);
 
 xPos = width/2;
 yPos = height/2;
 
 rectSize = 100;
 
 rectMode(CENTER);
}

void draw() {
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  
  background(bgColor);

  if(distance<rectSize/2){
    rectColor = color(100,0,120);
  }else{
    rectColor = color(0,50,100);
  }
  
  println(distance);
  
  if(isRectOn == true){
    bgColor = 150;
  }else{
    bgColor = 150;
  }
  
  fill(rectColor);
  rect(xPos, yPos, rectSize, rectSize);
  
  
}
