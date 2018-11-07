//Plant daryl;
//Plant eugene;
int num = 10;
Plant garden [] = new Plant [num];

void setup(){
 size(700,500);
 
 
noStroke();

 for(int i = 0; i <garden.length; i++){
   garden[i] = new Plant(int(random(10,50)) int(random(100,width))));
   }

}


void draw(){  
  background(255);
   //eugene.display(10,4,color(0,15,55));  
   //daryl.display(100,150,color(25,25,25));  
   
   for(int i = 0; i <garden.length; i++){
   garden[i].display(2+i*3,2+i*3, color(0, i*20,50));
 garden[i].grow(); 
 println(garden[i].plantHeight);
 }
   
  
}


//Class plant(){
  
//}
