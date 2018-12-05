Cone cone; 
PVector playPos[] = new PVector[2];

ArrayList <Scoops> iceCream;

boolean canHit = true;

 x = int(random(100,350));
 y1 = 0;
    s = 5;
    l = 0;

//int score;
//String l;

void setup() {
  size (600, 600);

  playPos[0] = new PVector(mouseX, mouseY);
  cone = new Cone(playPos[0]);

iceCream = new ArrayList<Scoops>();

}


void draw() {

  background(255);

  cone.update();
  cone.display(new PVector(mouseX,mouseY));
  
  for(int i = 0; i < iceCream.size(); i+=1){
   Scoops s = iceCream.get(i);
   s.fall();
   s.gravity();
   s.display();
   
   if(s.position.y < 0){
   iceCream.remove(i);
    }

   
  }
  
  
   if(iceCream.size() <=10){
 
 if(frameCount % 40 == 0){
  iceCream.add(new Scoops());

 } 
 } 

  
}



 void hitCone() {
  if (canHit == true && (cone.position.x + 150 > iceCream.x - 40) && (cone.position.x + 150 < iceCream.x + 40) 
    && (iceCream.y1 > cone.position.y +30) && iceCream.y1 < cone.position.y + 60) {
    player1.loop();
    iceCream.spawn();
    //icecream.l++;
   //score++;
  }
}

void spawn() {
  for (int i = 0; i< l; i++)
   { 
     cone.play();
     y1 = 0;
     x = int(random(50,350));
     canHit = true;
      
     }
   //if (score % 5 == 0) {
   //    s++;  
    
   //}
     }
