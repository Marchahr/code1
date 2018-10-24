//ran out of time

int gridW = 10;
int gridH = 10;
float[][] greyColors = new float[gridW][gridH];
int size;


void setup() {
  size(600, 600);
  
  size=width/10;
  
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
       
         if(greyColors[i][j]<=255){
        greyColors[i][j]=greyColors[i][j];
      }
      
      fill(greyColors[i][j]);
      println(greyColors[i][j]);
      rect(i*size, j*size, width/gridW, height/gridH);
    }
  }
}
