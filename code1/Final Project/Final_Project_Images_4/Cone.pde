class Cone {

  PImage img = loadImage("coneB.png");

  //PVector position;
  //float triSize;

  float x = 0;
  float y = 0;

  PVector pos =new PVector(0, 0);


  //contstructor
  Cone(PVector _position) {
    //position = _position;

    pos = new PVector(width/2, height-115); 
    //triSize = 100;
  }

  void update() {
    pos.x = mouseX;
    //pos.y = height-115;
  }

  void display() {
    noStroke();
    fill(166, 124, 82);


    image(img, pos.x, pos.y);
    //image(img, x, y);
  }
}
