int num = 100;

int [] yPos = new int [num];

void setup() {
  size(600, 600);
  
   for (int i = 0; i<num; i++){
   yPos[i]= int(random(0,height));
   //yPos[i]= map(yPos, 0, 0, height, width);
   }
}

void draw() {
  background(240);
  for (int i = 0; i < num; i++) {
//      float yPos = map(yPos, 0, 0, height, width);
    ellipse(width/2, yPos[i], 50, 50);
    
  }
}
