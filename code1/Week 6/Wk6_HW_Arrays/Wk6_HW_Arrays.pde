
String seasonsArray [] = {"Spring", "Summer", "Fall", "Winter"};

int numShapes = 50;

int numSeasons = 4;

int [] xSpeed = new int [numShapes];
int [] ySpeed = new int [numShapes];

int [] opacity = new int [numShapes];

int [] shapeXPositions = new int [numShapes];
int [] shapeYPositions = new int [numShapes];

color seasonColors [] = {color(0), color(112, 112, 112), color(0), color(54, 54, 54)};
color seasonColors2 [] = {color(137, 137, 137),color(0) , color(85, 85, 85), color(0)};

//color seasonColors [] = {color(198, 156, 110), color(112, 112, 112), color(140, 98, 57), color(54, 54, 54)};
//color seasonColors2 [] = {color(137, 137, 137),color(166, 124, 82) , color(85, 85, 85), color(96, 57, 19)};

int [] shapeSizes = new int [numShapes];

float x1 = random(50, width);
float y1 = random(50, height);

int [] textshapeYPositions = new int [numSeasons];

int currentColorIndex = 0;
int currentColorIndex2 = 0;


void setup() {
  size(500, 500);

  for (int i = 0; i<numSeasons; i++) {
    textshapeYPositions [i] = int(random(height*i/numSeasons+25, height*i/numSeasons+100));
  }

  for (int i = 0; i<numShapes; i++) {
    shapeSizes[i] = int(random(10, 50));
    shapeXPositions [i] = int(random(shapeSizes[i]/2, width-shapeSizes[i]/2-50)); //<>//
    shapeYPositions [i] = int(random(shapeSizes[i]/2, height-shapeSizes[i]/2-50));
    xSpeed [i] = int(random(1,5));
    ySpeed [i] = int(random(1,5));
 
}
   
}

void draw() { //<>//
  background(0);


  for (int i = 0; i<numShapes; i++) {
   shapeXPositions[i]= shapeXPositions[i] + xSpeed[i];
   shapeYPositions[i]= shapeYPositions[i] + ySpeed[i];
    
    fill(seasonColors[currentColorIndex]);
    rect (shapeXPositions[i], shapeYPositions[i], shapeSizes[i], shapeSizes[i]);
    fill(seasonColors2[currentColorIndex2]);
    ellipse (shapeXPositions[i], shapeYPositions[i], shapeSizes[i], shapeSizes[i]);

  if(shapeXPositions[i] <= shapeSizes[i]/2 || shapeXPositions[i] >= width-shapeSizes[i]/2){
    xSpeed[i] = xSpeed[i] *-1;
 
   }
   if(shapeYPositions[i] <= shapeSizes[i]/2 || shapeYPositions[i] >= height-shapeSizes[i]/2){
    ySpeed[i] = ySpeed[i] *-1;
 
   }
     //if(dist(mouseX, mouseY, shapeXPositions[i], shapeYPositions[i])<shapeSizes[i]/2){
     //opacity[i] = 0;
     //}  
   }


  for(int i = 0; i < numSeasons; i ++) {
    fill(255);
    text(seasonsArray[i], 10, textshapeYPositions[i]);
  }
  
}

void mousePressed() {

  if (dist(mouseX, mouseY, 10, textshapeYPositions[0])<= textWidth(seasonsArray[0])) {
    currentColorIndex = 0;
  } else if (dist(mouseX, mouseY, 10, textshapeYPositions[1])<= textWidth(seasonsArray[1])) {
    currentColorIndex = 1;
  } else if (dist(mouseX, mouseY, 10, textshapeYPositions[2])<= textWidth(seasonsArray[2])) {
    currentColorIndex = 2;
  } else if (dist(mouseX, mouseY, 10, textshapeYPositions[3])<= textWidth(seasonsArray[3])) {
    currentColorIndex = 3;
  }
  
  if (dist(mouseX, mouseY, 10, textshapeYPositions[0])<= textWidth(seasonsArray[0])) {
    currentColorIndex2 = 0;
  } else if (dist(mouseX, mouseY, 10, textshapeYPositions[1])<= textWidth(seasonsArray[1])) {
    currentColorIndex2 = 1;
  } else if (dist(mouseX, mouseY, 10, textshapeYPositions[2])<= textWidth(seasonsArray[2])) { //<>//
    currentColorIndex2 = 2;
  } else if (dist(mouseX, mouseY, 10, textshapeYPositions[3])<= textWidth(seasonsArray[3])) {
    currentColorIndex2 = 3;
  }

}
