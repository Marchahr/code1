class Scoops {
  //data
  PVector position;
  PVector velocity;
  PVector gravity;

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
    b = color(map(position.x, 0, width, 90, 192), 
      map(position.y, 0, height, 90, 192), 255);
    fill(b);
    ellipse(position.x, position.y, 30, 30);
  }
}
