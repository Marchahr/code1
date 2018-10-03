void setup(){
 size(600,600);


}

void draw(){
//  //random/move
//  background(255);
////better if need a set number of ints/loops
//  for(int i = 0; i<=60; i++){
//  fill(map(i,0,60,0,255));
//  int r = int(random(10,20));
//  ellipse(i*r, height/4, 10,10);
//  }
  
  //better if need a set number of ints/loops
  for(int i = 0; i<=60; i++){
  fill(map(i,0,60,0,255));
  ellipse(i*10, height/4, 10,10);
}

  
  //expands with size of screen (if size is variable)
  for(int i = 0; i<=width; i+=10){
    ellipse(i, height/2, 10, 10);
  }
  
  // to keep spacing but instead of changing 10's to 60 above  
  int size = 60;
  for (int i = 0; i<= width; i+=size){
  int c = int(map(i, 0, width, 0, 255));
  fill(0,c,c);
  ellipse(i, height/1.5, size, size);
  }
  
}
