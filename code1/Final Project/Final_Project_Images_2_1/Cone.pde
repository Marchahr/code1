class Cone {

  PImage img = loadImage("coneB.png");

  PVector position;
  //float triSize;

  float x = 0;
  float y = 0;

  PVector pos =new PVector(0, 0);

  //pos = 
  //contstructor
  Cone(PVector _position) {
    //position = _position;


    //triSize = 100;
  }

  void update() {
    //position.x = mouseX;
    //position.y = mouseY;
  }

  void display(PVector mouse) {
    noStroke();
    fill(166, 124, 82);
    //ellipse(mouse.x,mouse.y,20,20);

    pushMatrix();
    translate(mouse.x, height-115);

    //rotate(degrees(150));
    //println(mouseX);
    //triangle(x, y, x+38, y-45, x+66, y);
    //img.resize(100, 100);

    image(img, pos.x, pos.y);
     //image(img, x, y);
    

    popMatrix();
    //triangle(mouse.x, mouse.y, mouse.x+100,mouse.y+100, mouse.x+200, 
    //mouse.y+200);
  }
}
