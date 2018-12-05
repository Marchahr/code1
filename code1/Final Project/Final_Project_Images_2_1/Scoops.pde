class Scoops {
  //data
  PVector position;
  PVector velocity;
  PVector gravity;



//in your class 
//set up boolean in class for stacked or not

boolean stacked;

  //PImage img1 = loadImage("Choc.png");
  //PImage img2 = loadImage("ChocChip.png");
  //PImage img3 = loadImage("Blue.png");

  PImage img1 = loadImage("IC2.png");
  PImage img2 = loadImage("IC3.png");
  PImage img3 = loadImage("IC4.png");


int img;
  
  color b;

  float size = 10;

  //No paramiters in the constructor
  Scoops () {
    //sets the x and y position of the pvector
    position = new PVector (random(0, 600), 0);

    velocity = new PVector (0,.5);
    //makes it go faster as it gets lower
    gravity = new PVector (0, .25);
  }

//moves scoops up and down
  void fall () {
//add position to the velocity
    position.add(velocity);
    //println(position.y, position.x);
  }

  void gravity() {
    velocity.add(gravity);
  }




  void display() {

    noStroke();
    //img = random(img1, img2);
    //b = color(map(position.x, 0, width, 90, 192), 
    //  map(position.y, 0, height, 90, 192), 255);
    fill(b);
    //ellipse(position.x, position.y, 30, 30);
    image(img1, position.x, position.y);
  }
}
