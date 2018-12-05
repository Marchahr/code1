float r = 150;
float a = PI/4;
float aVel = 0.0;
float aAcc = 0.001;

float theta = 0; 
int orbitSize = 50; 



void setup(){
 size (640, 360);

}

void draw (){
 background(0); 
  
 pushMatrix();
 translate(width/2, height/2);

 float x = r * cos(a);
 float y = r * sin(a);
 fill(255);
 ellipse(x,y,50,50);
 
 a += aVel;
 aVel += aAcc;
 aVel = constrain(aVel,0,.01);
 
 popMatrix();
 
 ellipse(width/2,height/2,50,50);
}
