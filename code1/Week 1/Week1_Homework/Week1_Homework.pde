int bgColor = 225;
int linePosition;
int lineSize;
int triPosition;
int triSize;
int quadPosition;
int quadSize;
int arcPosition;
int arcSize;


void setup() {
  //first parameter is width, second is height
  size(700, 700);
  background(bgColor);

  //linePosition = int(width*.25);
  
  linePosition = int(width*random(0.1));
  lineSize = int(width*.95);


  quadPosition = int(width*.1);
  quadSize = int(width*.2);

  arcPosition = int(width*.15);
  arcSize = int(width*.45);

  triPosition = int(width*.65);
  triSize = int(width*.85);

  //triPosition = int(width*random(1.3));
  //triSize = int(width*.75);  

  //quadPosition = int(width*random(3.1));
  //quadSize = int(width*.2);

  //arcPosition = int(width*random(0.1));
  //arcSize = int(width*.35);

  println (linePosition);
}

void draw() {
  //ellopse(x position, y position, width, height)

  //stroke(169,152,75);
  //line(30, 20, 85, 75);

  //fill(102,145,217);
  //triangle(30, 75, 58, 20, 86, 75);

  //fill(97,131,166);
  //quad(38, 31, 86, 20, 69, 63, 30, 76);

  //stroke(169,152,75);
  //line(300, 300, 85, 75);

  //fill(102,145,217);
  //triangle(30, 75, 58, 20, 86, 75);

  //fill(97,131,166);
  //quad(38, 31, 86, 20, 69, 63, 30, 76);


  stroke(125, 125, 125);
  line(linePosition, linePosition, lineSize, lineSize);

  fill(112, 112, 112);
  //quad(quadSize+38, quadSize+31, quadSize+86, quadSize+20, quadPosition+69, quadPosition+63, quadPosition+30, quadPosition+76);
  quad(quadSize, quadSize, quadSize, quadSize+quadSize, quadPosition, quadPosition+quadSize, quadPosition, quadPosition);

  fill(99, 99, 99);
  arc(arcSize, arcSize, arcPosition, arcPosition, 0, PI+QUARTER_PI, PIE);

  fill(85, 85, 85);
  triangle(triSize, triSize, triSize, triPosition, triPosition, triPosition);
}
