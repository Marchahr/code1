int bgColor = 100;
int treePosition;
int treeSize;


void setup() {
  //first parameter is width, second is height
  size(700, 700);
  background(bgColor);
  
  treePosition = int(width*random(0,1));
  treeSize = int(width*.35);
  
  println (treePosition);
  
}

void draw() {
  //ellopse(x position, y position, width, height)

  //fill(0, 100, 100);
  //ellipse(100, 100, 50, 50);

  //fill(100, 0, 0);
  //rect(100, 100, 100, 50);
  //this draws shape from center
 
  rectMode(CENTER);
  fill(150,100,50);
  rect(treePosition,treePosition + 50,treeSize*.25,treeSize*1.24);
  
  fill(0,155,00);
  ellipse(treePosition,treePosition,treeSize,treeSize);
  
 
  
  
}
