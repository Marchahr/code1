class Particle {
  //data
  PVector position;
  PVector velocity;
  PVector gravity;

  color c;

  float size = 20;

  //no peramiters in constructor 
  Particle() {
    //sets x and y postion pvector to our mouse position
    position = new PVector(random(0,800),0);

    velocity = new PVector(0,5);

    gravity = new PVector(0, .1);
  }

  //move up and down
  void fall() {
    //add position to velocity
    position.add(velocity);
  }

  void gravity() {
    velocity.add(gravity);
  }

  //doesn't go all the way up bc of gravity
  void bounce() {
    velocity.y = -velocity.y;
  }

  void sideBounce() {
    velocity.x = -velocity.x;
  }

  void display() {
    noStroke();
    c = color(map(position.x, 0, width, 0, 255),
    map(position.y, 0,width, 100,255), 175);
    fill(c);
    size = map(position.y, 0, height, 10, 50);
    ellipse(position.x, position.y, size, size);
  }
}
