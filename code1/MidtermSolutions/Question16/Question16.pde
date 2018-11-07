int num = 100;

float [] yPos = new float [num];
float [] xPos = new float [num];

void setup() {
  size(600, 600);
  
   for (int i = 0; i<num; i++){
   //yPos[i]= i;
   yPos[i] = map(i, 0, 100, 0, height);
   xPos[i] = map(i,0,100,0,width);
   //yPos[i]= map(yPos, 0, 0, height, width);
   }
}

void draw() {
  background(240);
  for (int i = 0; i < num; i++) {
    ellipse(x, yPos[i], 50, 50);
    
  }
}
