float x = 0; 
float y = -100;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
   x= x+5;
  rotate(radians(frameCount + y));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
 //y+=5;
  
  if (x > width) {
    x =0;
    y = y+80;
    
    
    //x = -100;
    //y += 70;
  }
}
