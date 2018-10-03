
void setup() {
  size (500, 500);
  rectMode(CENTER);
}


void draw() {
  background(150);
  pushMatrix();

  println(mouseX);
  println(mouseY);
  
  fill(255);
  translate(width*.75, height*.75);
  rotate(radians(mouseY));
  rect(0,0, 100, 100);
  
  popMatrix();
  
  pushMatrix();
  println(mouseX);
  println(mouseY);
  //scale(2.0);
  
  fill(250,0,0);
  
  translate(width*.25, height*.25);
  rotate(radians(mouseX));
  rect(0, 0, 100, 100); 
  
  fill(0);
  ellipse(0,0,50,50);

  popMatrix();
}
