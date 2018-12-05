//Particle myParticle; 

ArrayList <Particle> myParticle;

void setup(){
  size(600, 600); 
  
  //myParticle = new Particle(width/2, height/2); 
  
    myParticle = new ArrayList<Particle>(); 

}

void draw(){
  background(0); 
  
  for(int i = 0; i<myParticle.size(); i++){
 Particle p = myParticle.get(i);
  p.move();
  p.bounce(); 
  p.display(); 
  //p.dead();
  
  
   println(p.dead()); 

   if(p.dead() == true){
     myParticle.remove(i); 
  }
  }
  
  //to check to see if a particle is still alive, can use .dead() method
  
 //  if(myParticle.size() <=10){
 
   
   
     
 if(frameCount % 30 == 0){
  myParticle.add(new Particle(random(width,height),random(width,height))); 
 

 } 
}
