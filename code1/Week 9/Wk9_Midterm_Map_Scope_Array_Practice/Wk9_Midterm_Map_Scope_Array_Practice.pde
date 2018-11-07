int num = 255;

float [] b = new float [num];
float [] xPos = new float [num];

float size = 50;
float incr = 5;

boolean grow;

void setup(){
  size(600,600);
  
   for (int i = 0; i<num; i++){
     b[i] = map(i,0,num,0,255);
     xPos[i] = map(i,0,num,0,600);
  }
   
}


void draw(){
background(0,0,125);
     if(size>width || size>height){
       grow=false;
     }else if(size<1){
       grow=true;
     }
     
     if(grow==false){
       size-=incr;
     }else{
       size+=incr;
     }
     
         fill(0,0,155);
       rect (0,0, size, size);
       
       
            for (int i = 0; i<num; i++){
       for(int j= 0; i<num; i++){
  fill(255,255,b[i]);
  rect(xPos[i], 50, 25,50);
  //rect(xPos[i], 500, 25,50);
     
 
}
     }  
}
