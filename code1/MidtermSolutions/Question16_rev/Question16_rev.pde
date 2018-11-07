int num = 100;

float pos [] = new float [num];

void setup() {
  size(600, 600);
  
   for (int i = 0; i<pos.length; i++){
   pos[i]= i*(height/pos.length);
    //yPos = map(i, 0, 0, height, width);
   //yPos[i]= map(yPos, 0, 0, height, width);
   }
}

void draw() {
  background(240);
  for (int i = 0; i < num; i++) {
    ellipse(width/2, pos[i], 50, 50);
    
  }
}
