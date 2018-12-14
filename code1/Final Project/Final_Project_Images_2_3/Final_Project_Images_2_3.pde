Cone cone; 
PVector playPos[] = new PVector[2];

ArrayList <Scoops> iceCream;

//PImage img = loadImage("intro.jpg");

int numStacked; 

int scoHi = 70;


int score;

void setup() {
  size (600, 600);

  // playPos[0] = new PVector(mouseX, height-115);

  score = 0;

  playPos[0] = new PVector(mouseX, mouseY-115);
  cone = new Cone(playPos[0]);

  iceCream = new ArrayList<Scoops>();
}


void draw() {

  // background(255);

  //image(img, width, height);
  //delay(50);

  color c1 = color(#CEFBFF);
  color c2 = color(#FFFEF0);
  gradientBackground(c1, c2);



  for (int i = 0; i < iceCream.size(); i+=1) {
    Scoops s = iceCream.get(i);

    s.fall();
    s.gravity();
    s.display();



    float distance = dist(cone.pos.x, cone.pos.y, s.position.x, s.position.y);



    if (s.position.x >= (cone.pos.x-5) && s.position.x<= (cone.pos.x+5) && 
      s.position.y <= (height-155 - (numStacked*40))) {
      s.stick = true;
      score += 1;
      numStacked ++; 
      s.position.y= cone.pos.y - numStacked*40;
    } 
    
  println(numStacked); 
    //if (numStacked >= 8){
    //  cone.pos.y = height-115 + 40*(numStacked-11);
      
    //}
    if (s.stick) {

      s.position.x= cone.pos.x ;
      s.velocity.y=0;
      s.gravity.y=0;
      
    }



    if (s.position.y < 0) {
      iceCream.remove(i);
    }
  }

  if (iceCream.size() <=100) {

    if (frameCount % 50 == 0) {
      iceCream.add(new Scoops());
    }
  }

  cone.update();
  cone.display();


  fill(0);
  text("score: " + str(score), 25, 25);
}



void gradientBackground(color c1, color c2) {
  for (int i=0; i<=width; i++) {
    for (int j = 0; j<=height; j++) {
      color c = color(
        (red(c1)+(j)*((red(c2)-red(c1))/height)), 
        (green(c1)+(j)*((green(c2)-green(c1))/height)), 
        (blue(c1)+(j)*((blue(c2)-blue(c1))/height))
        );
      set(i, j, c);
    }
  }
}
