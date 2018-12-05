Cone cone; 
PVector playPos[] = new PVector[2];

ArrayList <Scoops> iceCream;

int numStacked; 


void setup() {
  size (600, 600);


  playPos[0] = new PVector(mouseX, mouseY);
  cone = new Cone(playPos[0]);

  iceCream = new ArrayList<Scoops>();
}


void draw() {

  // background(255);

  color c1 = color(#CEFBFF);
  color c2 = color(#FFFEF0);
  gradientBackground(c1, c2);

  cone.update();
  cone.display();

  for (int i = 0; i < iceCream.size(); i+=1) {
    Scoops s = iceCream.get(i);

    s.fall();
    s.gravity();
    s.display();
    //s.stick
    //println(s.position.y);


    //float distance = dist( cone.pos.x,cone.pos.y,mouseX,mouseY);



    //PVector dist = cone.pos;
    //dist.sub(s.position);
    //println(dist);

    //if(dist.x<100){
    //println("works");
    //s.position.y = cone.y;
    //s.gravity.y=0;
    //s.velocity.y=0;
    //}

    //if((s.position.y< 485 )&&(s.)){
    //}
    //println(cone.x);


    float distance = dist(cone.pos.x, cone.pos.y, s.position.x, s.position.y);

    
    if (s.position.x >= (cone.pos.x-50) && s.position.x<= (cone.pos.x+50) && 
        s.position.y <= (height-155 - (numStacked*40))) {
        s.stick = true;
        numStacked ++; 
        println(s.stick); 
        s.position.y= cone.pos.y - numStacked*40; 
    } 
    
    if (s.stick) {

      s.position.x= cone.pos.x ;
     
      s.velocity.y=0;
      s.gravity.y=0;
    }
      //} else {
      //  s.gravity.y =5;
      //}


      if (s.position.y < 0) {
        iceCream.remove(i);
      }
 

    //scoops
    //for (int i =0 ; i< iceCream.size(); i++) {
    //  //iceCream[i].position
    //}
    
  }
  
   if (iceCream.size() <=100) {

      if (frameCount % 50 == 0) {
        iceCream.add(new Scoops());
      }
    }
}


  //void mousePressed() {
  //  stick = !stick;
  //  position.x =random(width);
  //  s.position.y= 0;
  //}


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
