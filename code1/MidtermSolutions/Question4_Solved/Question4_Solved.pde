boolean isShapePressed;


void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  
   float d = dist(mouseX,mouseY,width/2,height/2);
  if (mousePressed && d < width/2) {
    isShapePressed = !isShapePressed;
    fill(255);
   } else {
    fill(150);
  }

  ellipse(width/2, height/2, 200, 200);
  
  
  
}
