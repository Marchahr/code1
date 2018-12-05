int xPos[] = new int[3]; 

int size = 50;

PVector velocity;
PVector position;

int radius;

void setup() {

  size(600, 600);
 smooth(); 

  for (int i = 0; i<3; i++) {
    xPos[i] = size/2 + i*(width/3);
  
  }
  
   position = new PVector(width/2, height/2);
  
   velocity= new PVector(5,6);
    radius = 100;
}


void draw() {
  background(255);
  for (int i = 0; i<3; i++) {
    noStroke();
    fill(0);
    ellipse(xPos[i]+75, height/2, size, size); 
    //velocity[i] = new PVector(random(-5, 1), random(1, 1));
  //velocity.x = -velocity.x;

   // ellipse(width/2, yPos[i]+75, size, size); 


}
  
    if( position.x>= (width- radius/2) || position.x<= radius/2){
    velocity.x = velocity.x *-1; //reverses xDirection
  }
  if( position.y >= (height-radius/2) || position.y <= radius/2){
    velocity.y = velocity.y * -1; 
  }
 // xPos.add(velocity);

    //if (xPos == width) {
    //  xPos = 0;
    //}
    
  }
  
