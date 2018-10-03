//1. Draw circle
//2. Claculate distance between mouse and circle
//2.b if dist. < radius --> change fill color
//3. boolean for if elipse is clicked
//3.b true=mousePressed && dist.<radious of circle
//4. Print value to our screen
// Need variables for: circle color, circle X and Y position, circle size, bg color, boolean for if elipse is pressed

int circleSize;
int xPos, yPos;
color circleColor, bgColor;

boolean isCircleOn;

int distance;


void setup() {
size(500,500);
bgColor = color(30, 200, 200);
background(bgColor);

xPos = width/2;
yPos = height/2;

circleSize = 100;


}

void draw() {

  distance = int(dist(xPos, yPos, mouseX, mouseY));

  background(bgColor);

  if(distance<circleSize/2) {
   circleColor = color(255,0, 150); 
  }else{
    circleColor = color(255,255,255);
  }
  if(isCircleOn == true){
    bgColor = 255;
  }else{
    bgColor = 150;
  }
  
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);

}

void mousePressed(){
    if(distance<circleSize/2){
     isCircleOn = ! isCircleOn;
     println(isCircleOn);
    }
  //  if(distance<circleSize/2) {
  //  bgColor= 255;
  //}else{
  //  bgColor=150;
  //}
  
  
}
