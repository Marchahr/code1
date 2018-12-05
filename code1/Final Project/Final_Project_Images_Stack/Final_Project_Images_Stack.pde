Cone cone; 
PVector playPos[] = new PVector[2];

ArrayList <Scoops> iceCream;

boolean hit;

int score;


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
  
  
   if(iceCream.size() <=100){
 
 if(frameCount % 50 == 0){
  iceCream.add(new Scoops());

 } 
 } 

   if(iceCream.x >= cone.position.x -(5+iceCream.size/2) &&
   iceCream.y >= cone.position.y - cone.img/2
&& iceCream.y <= cone.position.y + cone.img/2){
   hit = true; 
   iceCream.spawn();
  }
  
  
   fill(0);
 text("score: " + str(score), 50, 50);
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

void spawn() {
  for (int i = 0; i< l; i++)
   { 
     cone.play();
     y1 = 0;
     x = int(random(50,350));
     canHit = true;
      
     }
}
