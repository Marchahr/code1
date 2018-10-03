int bgColor = int(random(255.0)); //<>//
int linePosition;
int lineSize;

//  Quad 1
int quadX1;
int quadY1;
int quadX2;
int quadY2;
int quadX3;
int quadY3;
int quadX4;
int quadY4;

// Quad 2
int quadBX1;
int quadBY1;
int quadBX2;
int quadBY2;
int quadBX3;
int quadBY3;
int quadBX4;
int quadBY4;

// Arc
int arcX;
int arcY;
int arcW;
int arcH;

// Trianlge 
int triX1;
int triY1;
int triX2;
int triY2;
int triX3;
int triY3;

int quadAcolorR = 0;
int quadAcolorG = 0;
int quadAcolorB = 0;

int quadBcolor = 0;
int arcColor = 0;
int triColor = 0;


void setup() {
  //first parameter is width, second is height
  size(700, 700);
  background(bgColor);
  rectMode(CENTER);


  //linePosition = int(width*.25);

  //float converted/wrapped into an int
  linePosition = int(width*random(0.1));
  lineSize = int(width*.95);

  //quadPosition = int(width*.1);
  //quadSize = int(width*.2);

  triX1 = int(width*-.1);
  triY1 = 0;
  triX2 = 0;
  triY2 = int(height*-.1);
  triX3 = int(width*.1);
  triY3 = int(height*.1);



  arcX = int(width*.2);
  arcY = int(height*.4);
  arcW = int(width*.2);
  arcH = int(height*.2);


  quadX1 = int(width*-.3);
  quadY1 = int(height*.2);

  quadX2 = int(width*.2);
  quadY2 = int(height*.2);

  quadX3 = int(width*.3);
  quadY3 = int(height*-.2);

  quadX4 = int(width*-.2);
  quadY4 = int(height*-.2);


  //BBBBBB



  quadBX1 = int(width*-.2);
  quadBY1 = int(height*.3);

  quadBX2 = int(width*.2);
  quadBY2 = int(height*.3);

  quadBX3 = int(width*.1);
  quadBY3 = int(height*-.3);

  quadBX4 = int(width*-.1);
  quadBY4 = int(height*-.3);


  println (linePosition);
}

void draw() {
  background(225);

  // Draws line from top left to bottom right corner 
  //stroke (125, 125, 125);
  stroke(250);
  //translate(width*.125, height*.25);
  line(linePosition, linePosition, lineSize, lineSize);

  // Draws first quad in top left corner 
  pushMatrix();

  fill(quadAcolorR, quadAcolorG, quadAcolorB );
  translate(width*.35, height*.35);
  rotate(radians(mouseX));
  quad(quadBX1, quadBY1, quadBX2, quadBY2, quadBX3, quadBY3, quadBX4, quadBY4 );

  popMatrix();


  // Draws second quad on top left
  pushMatrix();

  //println(mouseX);
  //println(mouseY);
  scale(0.25);

  fill(quadBcolor);
  translate(width*.25, height*.25);
  rotate(radians(mouseX));
  quad(quadX1, quadY1, quadX2, quadY2, quadX3, quadY3, quadX4, quadY4);

  popMatrix();

  // Draws arc in the middle of the 
  pushMatrix();

  println(mouseX);
  println(mouseY);

  //scale(0.5);

  fill(arcColor);
  translate(width*.5, height*.5);
  rotate(radians(mouseX));
  arc(0, 0, arcW, arcH, 0, PI+QUARTER_PI, PIE);

  popMatrix();

  //Draws triangle in the bottom right corner 
  pushMatrix();  
  //scale(1.25);

  fill(triColor);
  translate(width*.75, height*.75);
  rotate(radians(mouseX));
  triangle(triX1, triY1, triX2, triY2, triX3, triY3);
  //triangle(triSize, triSize, triSize, triPosition, triPosition, triPosition);

  popMatrix();
}


void mousePressed() {
  quadAcolorR = int(random(255.0));
  quadAcolorG = int(random(255.0));
  quadAcolorB = int(random(255.0));


  if (quadBcolor == 0) {
    quadBcolor = int(random(255.0));
  } else {
    quadBcolor = 0;
  }

  if (arcColor == 0) {
    arcColor = int(random(255.0));
  } else {
    arcColor = 0;
  }

  if (triColor == 0) {
    triColor = int(random(255.0));
  } else {
    triColor = 0;
  }
}

void keyPressed () {
  if (key == CODED) {
    if (keyCode == UP) {
      arcW+=10;
      arcH+=10;

      //size += 5; to make it get bigger faster
      //everytime we press up it will get bigger
    }
    if (keyCode == DOWN) {
      arcW-=10;
      arcH-=10;
    }
  }
}
