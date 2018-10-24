int xPos[] = new int[10]; 
int size = 10;
void setup() {
  size(600, 600);
  noStroke();
  
  for(int i = 0; i<10; i++){
    xPos[i] = size/2 + i*size/2; 
  }
}

void draw() {
  background(150);
  for (int i = 0; i < 10; i++) {
    int x = 15;
    rect(xPos[i], 150, 30, 300);
    x += 60;
  }
}
