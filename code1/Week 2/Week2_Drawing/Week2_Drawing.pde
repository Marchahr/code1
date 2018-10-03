//boolean to detect if my mouse is pressed 
//if boolean true, want to draw ellipse mouseX + mouseY
//change the size of my drawing ellipse when arrow is clicked 

int size;
int x, y;
color circleColor;



void setup(){
size (500,500);
// don't but x,y bc constanly changing
//initial size for ellipse
size = 10;
noStroke();
circleColor = color(random(0,255),random(0,255),random(0,255));

}
void draw() {
  //2nd # is opacity 
  fill(0,2);
  fill(100, 0, 255,5);
  rect(0, 0, width, height);
  x = mouseX;
  y = mouseY;

  if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){ 
  if(mousePressed){
  fill(circleColor);
  ellipse(x,y,size,size);
  }
  }
}

//void mousePressed(){
//ellipse(x,y,size,size);
//}

void keyPressed (){
  if(key == CODED){
    if(keyCode == UP){
      size ++;
      //size += 5; to make it get bigger faster
       //everytime we press up it will get bigger
    }
       if(keyCode == DOWN) {
        size --;
    }
  }
  
}
