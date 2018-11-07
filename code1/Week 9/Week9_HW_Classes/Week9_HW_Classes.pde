int num = 10;
Lollipop candyS [] = new Lollipop [num];


float incr = 5;

void setup() {
  size (500, 500);
  noStroke();

  for (int i = 0; i<candyS.length; i++) {
    candyS[i] = new Lollipop (int(random(10, width)), int(random(30, height)), 60, false);
  }
}


void draw() {
  background(255);
  fill(0);
  rect(0,125,500,100);
    rect(0,325,500,100);

  //int stickHeight, int yPos, int xPos, color flavor, int candySize){

  for (int i=0; i<candyS.length; i++) {
    int stickHeight = 75;
    int yPos = 100;
    int xPos=50*i;
    color flavor = color(0, 114, 54);

    // int candySize = 60; 

    if (candyS[i].getSize() >= 60 && candyS[i].getIsShrinking()== false) {
      candyS[i].reverseGrowth();
      candyS[i].shrink();
      println("shrink");
      println(candyS[i].getSize());
    } else if (candyS[i].getSize() == 15 && candyS[i].getIsShrinking()== true) {
      candyS[i].reverseGrowth();
      candyS[i].grow();
      println("grow");
      println(candyS[i].getSize());
    } else if (candyS[i].getIsShrinking()== true) {
      candyS[i].shrink();
    } else if (candyS[i].getIsShrinking()== false) {
      candyS[i].grow();
    }


    candyS[i].display(stickHeight, yPos, xPos, flavor);
    
          color flavor2 = color(158, 11, 15);

    candyS[i].display(stickHeight, yPos+200, xPos, flavor2);


    //candyS[i].shrink();
  }
}
