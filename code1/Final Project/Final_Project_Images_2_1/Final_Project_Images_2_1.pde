Cone cone; 
PVector playPos[] = new PVector[2];

ArrayList <Scoops> iceCream;




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
  cone.display(new PVector(mouseX, mouseY));

  for (int i = 0; i < iceCream.size(); i+=1) {
    Scoops s = iceCream.get(i);

    s.fall();
    s.gravity();
    s.display();
    //println(s.position.y);
    
    
    float distance = dist( cone.pos.x,cone.pos.y,mouseX,mouseY);
    

    
    
    
    
    
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
    
    
    if (s.position.y < 0) {
      iceCream.remove(i);
    }
  }


  if (iceCream.size() <=100) {

    if (frameCount % 50 == 0) {
      iceCream.add(new Scoops());
     
    }
  } 

  //scoops
  //for (int i =0 ; i< iceCream.size(); i++) {
  //  //iceCream[i].position
  //}
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
