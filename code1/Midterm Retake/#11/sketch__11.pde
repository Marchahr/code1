  int fillColor = 0; 

void setup(){
  size(600, 600); 
}

void draw(){
  background(255); 
  
  
  if(fillColor > 255){
    fillColor = 0; 
  }else{
    fillColor ++; 
  }
  
  fill(fillColor); 
  ellipse(width/2, height/ 2, 100, 100); 
}
