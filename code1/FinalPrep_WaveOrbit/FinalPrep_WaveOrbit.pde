float r = 150;
float a = PI/4;
float aVel = 0.0;
float aAcc = 0.001;



PVector position;
float theta = 0;

int orbitSize = 150;


void setup(){
 size (800, 800);
 
 position = new PVector(width/2, height/2);

}

void draw (){
 background(0); 
  
  
  
 pushMatrix();
   translate(width*.15, height*.15);
  rotate(radians(25));

 
  theta +=.1;
  position.x=width*.25 + cos(theta)*orbitSize;
  position.y ++;
  //position.y = height/75 - sin(theta)*orbitSize;
  //^just makes it go back to a circle
  
  println("x" + position.x);

  println("y" + position.y);

 //float x = r * cos(a);
 //float y = r * sin(a);
 fill(255);
 ellipse(0+position.x,0+position.y,50,50);
 
 //a += aVel;
 //aVel += aAcc;
 //aVel = constrain(aVel,0,.01);
 
  //if(position.y == height){
  //  position.y = 0;
  //}
    
 popMatrix();
 
 ellipse(width/2,height/2,150,150);
}
