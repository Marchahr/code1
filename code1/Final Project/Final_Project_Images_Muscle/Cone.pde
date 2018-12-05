class Cone{
  
  PImage img = loadImage("coneB.png");

 PVector position;
 //float triSize;
  
  float x = 0;
  float y = 0;
  
  //contstructor
  Cone(PVector _position){
   position = _position;
   
   //triSize = 100;
   
  }
  
   void update(){
  //position.x = mouseX;
  //position.y = mouseY;
 }
    //void display(PVector mouseX){

  void display(){
    noStroke();
   fill(166,124,82);
   //ellipse(mouse.x,mouse.y,20,20);
   
   pushMatrix();
   translate(mValue, height-115);
   
   //rotate(degrees(150));
   println(mValue);
   //triangle(x, y, x+38, y-45, x+66, y);
   //img.resize(100, 100);
  //mValue = map(x, 0, width-40, 20, 600);

  x = map(x,0, 9600, 0, width);
  
        delay(50);

    
   image(img, x, y);
   
    if(x>0 && x <199){
   x = 100;
    }
if(x>100 && x <299){
   x = 200;
    }
    
 if(x>200 && x <399){
   x = 300;
    }
 if(x>200 && x <499){
   x = 400;
    }
    if(x>300 && x <599){
   x = 500;
    }
   
   popMatrix();
   //triangle(mouse.x, mouse.y, mouse.x+100,mouse.y+100, mouse.x+200, 
   //mouse.y+200);
  }
}
