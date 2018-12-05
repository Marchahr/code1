class Ball{

  float x, y;
  float xSpeed, ySpeed;
  
  int size;
 
  
  //constructor
  Ball(float _x, float _y){
    x = _x;
    y = _y;
    
    size = 50;
    
    xSpeed = random(1,5);
    ySpeed = random(1,5);
    
  }
  
  //bounce paddle 
  void bounceP(){
   xSpeed *=-1.1;
   ySpeed *= 1.1;
  }
  
  
  //bounce top and bottom
  void bounceY(){
   ySpeed = -ySpeed;
    
  }
  
  //bounce on other side/player 2 side
  void bounceX(){
   xSpeed = -xSpeed; 
  }
  
  //display
  void display(){
    fill(255);
   ellipse(x, y, size, size); 
  }
  
  //move
  void move(){
   x += xSpeed;
   y += ySpeed;
   
  }
  
  //restart
    //restart the ball
    
    void reset(){
     x = width/2;
     y = height/2;
    xSpeed = random(1,5);
    ySpeed = random(1,5);
     
    }
  
    //subtract  score

  

}
