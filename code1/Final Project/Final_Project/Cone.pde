class Cone{
 PVector position;
 //float triSize;
  
  int x = 0;
  int y = 0;
  
  //contstructor
  Cone(PVector _position){
   position = _position;
   
   //triSize = 100;
   
  }
  
   void update(){
  //position.x = mouseX;
  //position.y = mouseY;
 }
  
  void display(PVector mouse){
    noStroke();
   fill(166,124,82);
   //ellipse(mouse.x,mouse.y,20,20);
   
   pushMatrix();
   translate(mouse.x, height-10);
   
   rotate(degrees(150));
   println(mouseX);
   triangle(x, y, x+38, y-45, x+66, y);
   
   popMatrix();
   //triangle(mouse.x, mouse.y, mouse.x+100,mouse.y+100, mouse.x+200, 
   //mouse.y+200);
  }
}
