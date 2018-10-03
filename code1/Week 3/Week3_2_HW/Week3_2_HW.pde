// 1. Draw shape
// 2. Calulate distance between the shape and the mouse
// 2.b Print distance to counsole
// 2.c if dist.<radius --> change fill color
// 3. Boolean to keep the shape within one area of the canvas
// 4. Make that area a different bg color
// 5. Make button to make shape move to a random part of the screen

int triSize;
int x1Pos, y1Pos, x2Pos, y2Pos, x3Pos, y3Pos;
int distance;

color triColor, bgColor;

boolean isTriOn;

void setup() {
  
  size (600,600);
  bgColor = color(37, 37, 37);
  
  x1Pos = int(width*-.1);
  y1Pos = 0;
  x2Pos = 0;
  y2Pos = int(height*-.1);
  x3Pos = int(width*.1);
  y3Pos = int(height*.1);
  
  triSize = 100;
  
  
}

void draw(){
  distance = int(dist(x1Pos, y1Pos, mouseX, mouseY));
  
  background(bgColor);
  
  if(distance<triSize/2){
    triColor = color(137,137,137);
  }else{
    triColor = color(237,237, 237);
  }
  
  
  // why isnt it  println = distance;
  println (distance);
  
  if(isTriOn == true){
    bgColor = 0;
  }else{
    bgColor = 250;
  }
  
  fill(triColor);
  translate(width*.85, height*.85);
  triangle(x1Pos, y1Pos, x2Pos, y2Pos, x3Pos, y3Pos);
  
  
}

void mousePressed(){
  
  //if(distance < int(x1Pos/2 && distance < y1Pos/2 && distance < x2Pos/2 && distance < y2Pos/2 && distance < x3Pos/2  && distance < y3Pos/2)){
  if(distance < int(x1Pos / 2)){
    isTriOn = !isTriOn;
  }


}
