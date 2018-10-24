int xPos;
int yPos;

int delta = 10;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  frameRate(10);
}

void draw() {
  background(50);
  ellipse(xPos, yPos, 30, 30);

  float r = random(0,1);
  
     switch (floor(random(0, 4))) {
      case 0:
        xPos += delta;
        break;
      case 1:
        xPos -= delta;
        break;
      case 2:
        yPos += delta;
        break;
      case 3:
        yPos -= delta;
        break;
    }
  
}
  
  

//  if (r < .25) {
//    xPos += 10;
//  } else if (r >= .25) {
//    xPos -= 10;
//  }

//  if (r <.25) {
//    yPos += 10;
//  } else if (r >= .25){
//    yPos -= 10;
//  }
//} 
