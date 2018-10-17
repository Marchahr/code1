
//change the color of an ellipse from black to white if the mouse is hovering over it 
  int x = width/35;
  int y = height/35;
  

void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(255);

  //loop 36 times in x and y
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
       //fill(0); 
      ellipse(i, j, 20, 20);
    float d = dist(mouseX, mouseY, i, j); 

  if (d <= 10){
    fill(255);
  }else{
    fill(0);

    }
  }
 //<>//
  }
}
