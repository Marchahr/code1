PVector position;
float theta = 0;

int orbitSize = 100;

void setup(){
 background(0);
 size(600,600);
 
 //nul pointer exeception - no value assigned in class and no default so no work
 position = new PVector(width/2, height/2);
}

void draw(){
  background(0);
  
  theta +=.1;
  //or theta = frameCount;
  
  //orbit movement
  //instead of translate add width/2 + .... 
  //position.x=width/2 + cos(theta)*orbitSize;
  //position.y=height/2 + sin(theta)*orbitSize;
   
   //wave 1
  //position.y=height/2 + sin(theta)*orbitSize;
  //position.x ++;
  
 // wave 2
  position.x=width/2 + cos(theta)*orbitSize;
  position.y ++;

  
  //wave movement
 // position.y ++;
  
  if(position.y == height){
    position.y = 0;
}
  
 ellipse(position.x, position.y, 50, 50);
  
  
}
