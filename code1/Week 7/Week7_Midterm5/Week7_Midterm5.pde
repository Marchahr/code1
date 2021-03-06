//you should have a 2d grid of white squares that's opacity changes to black 
//when the mouse hovers over it 

//in this sketch, the grid isn't drawn correctly, and the mouse hovering isn't working
//fix the sketch so that only the square the mouse is over turns black, 
//and the squares are drawn evenly accross the screen

int num = 10; 
int opacity[][] = new int[10][10]; 
int size;

void setup(){
  size(600, 600); 
  
  size=width/num;
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      opacity[i][j] = 255; 
    }
  }
}

void draw(){
  background(0); 
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      if(mouseX > i*size && mouseX<= (i+1)*size && 
      mouseY > j*size && mouseY <=(j+1)*size){
     //   if(mouseX>i*size && mouseX<=(i+1)*size && mouseY>j*size[i][j] 
     //&& mouseY<=(j+1)*size[i][j]){
        opacity[i][j] = 0; 
      }
      
      if(opacity[i][j]<255){
        opacity[i][j] ++; 
      } //<>//
      fill(255, opacity[i][j]); 
      //added *size to make it draw grid across screen
      rect(i*size, j*size, width/num, height/num);
    }
  }
}
