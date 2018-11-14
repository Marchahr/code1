    int size = 10; 

void setup(){
  size(600, 600); 
      size +=50; 

}

void draw(){
  background(0); 
  
  for(int i = 0; i< width; i+=50){
    ellipse(10+i, height/2, size, size); 
  }
}
