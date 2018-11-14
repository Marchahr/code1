int num = 10;

float pos [] = new float [num];
int size = 60; 

void setup() {
  size(600, 600);
  
  for (int i = 1; i<pos.length; i++){
   pos[i]= i*(width/pos.length);
  }
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    ellipse(pos[i]+30, pos[i]+30, size, size);
  }
}
