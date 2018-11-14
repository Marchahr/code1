float x, y; 
float size = 50; 
float xSpeed, ySpeed; 

void setup(){
  size(600, 600); 
  
  x = width/2; 
  y = height/2; 
  
  xSpeed = random(1, 4); 
  ySpeed = random(1, 6); 
}

void draw(){
  background(0); 
  
  x = x + xSpeed; 
  y = y + ySpeed; 
  
  fill(255); 
  ellipse(x, y, size, size); 
  
  ////top left
  //ellipse(0, 0, size, size);
  ////bottom left
  //ellipse(0, 600, size, size); 
  ////top right
  //ellipse(600,0,size,size);
  ////bottom right
  //ellipse(600, 600, size, size); 

  if(frameCount % 120 == 0){
    xSpeed = random(-5, 5); 
    ySpeed = random(-5, 5); 
  }
  
      if(x <= 0 && y <= 300){
  x = 600;
  y = 300;
  }else if(x<=0 && y>=300){
    x = 300;
    y = 0;
  }else if(x>=300 && y<=0){
    x = 0;
   y = 300;
  }else if (x >=300 && y>=300){
    x = 0;
    y = 0;
  }
    
  //  if(x < 0 && y < 0){
  //x = 600;
  //y = 600;
  //}else if(x<0 && y>600){
  //  x = 600;
  //  y = 0;
  //}else if(x>600 && y<0){
  //  x = 0;
  // y = 600;
  //}else if (x >600 && y>600){
  //  x = 0;
  //  y = 0;
  //}
    
}
