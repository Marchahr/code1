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
