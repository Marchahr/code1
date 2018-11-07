float diam = 100;
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
 println(diam);
 println(shrink);
  
  if(diam > width || diam>height){
    shrink=true;
  }else if(diam<=5){
    shrink=false;
  }
  
  if(shrink==true){
    diam-=incr;
  }else{
    diam+=incr;
  }
  
  ellipse(width/2, height/2, diam, diam);
}
