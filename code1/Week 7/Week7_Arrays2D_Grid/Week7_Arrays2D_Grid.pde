
int num = 10;

int size;

color gridColor [] [] = new color[num] [num];


boolean clicked[][] = new boolean [num][num];

//only need one bc just moving along y axis
int shapeSpeed [] [] = new int [num] [num];



void setup(){
  size(500, 500);
  
  //num not 50 so its easier to change
  size = width/num;
  
  for(int i = 0; i<num; i++){
   for(int j = 0; j<num; j++){
       gridColor[i][j] = color(random(0,255));
       //bc don't want them moving until clicked
       shapeSpeed [i][j] = 0;
   
   }
  }
  
  
}

void draw(){
  background(255);
  //for(int i = num-1; i>=0; i--){
  //for(int j = 0; j<num; j++){
  //^to make it draw above/reverse order of loop
    //*size makes it draw grid
  for(int i = num-1; i>=0; i--){
   for(int j = num-1; j>=0; j--){
     fill(gridColor[i][j]);
     
     if(clicked[i][j]){
      shapeSpeed[i][j] += 5; 
     }
     
     //MOVED to mouse
     //if(mouseX>i*size && mouseX<=(i+1)*size && mouseY>j*size && mouseY<=(j+1)*size && mousePressed){
     // gridColor[i][j] = color(random(0,255));
     //  println("i is: " + i + "j is:  " + j); 
     //}
     
      rect(i*size, j*size+shapeSpeed[i][j], size, size);
     
   }
  }
  
}

void mousePressed(){
  for(int i = 0; i<num; i++){
   for(int j = 0; j<num; j++){
     fill(gridColor[i][j]);
     if(mouseX>i*size && mouseX<=(i+1)*size && mouseY>j*size+shapeSpeed[i][j] && mouseY<=(j+1)*size+shapeSpeed[i][j] && mousePressed){
      gridColor[i][j] = color(random(0,255));
       println("i is: " + i + "j is:  " + j); 
       clicked[i][j] = true; 
     }
      rect(i*size, j*size, size, size);
     
   }
  }
}
