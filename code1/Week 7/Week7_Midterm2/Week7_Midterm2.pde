//your rectangle should rotate and move across the screen from left to right
//currently it only rotates in place 
//change the sketch so that it draws from left to right, then down; change either the translate function or the conditional to do this.


float x = -25; 
float y = 100;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  x = x+5;
  rotate(radians(frameCount + y));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
 
  if(x > width){
  x = 0;
  y = y+100;
  
     //reset your x & y coordinates
  }
}
