// array list of a class and then names it
ArrayList <Sky> skyRaining;

void setup(){
 size(800,800); 
 skyRaining = new ArrayList<Sky>();
}

void draw(){
 background (255);
 //makes size change
 for(int i = 0; i < skyRaining.size();i++){
   Sky s = skyRaining.get(i);
   s.rain();
   s.gravity();
   s.display();
   
    //  if(s.position.y < height){
    // skyRaining.remove(i); 
    //}
   
  
 }
  
  skyRaining.add(new Sky());
  fill(255,210,0);
ellipse(40,40,125,125);

  
}
