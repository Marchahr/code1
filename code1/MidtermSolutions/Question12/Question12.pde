int x = 15;

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
 background(150);
  
   //x += 60;
  
  for (int i = 0; i <= 600; i+=60) {
    rect(i+x, 150, 30, 300);
  
  }
}
