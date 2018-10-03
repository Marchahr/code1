void setup(){
 size(800,800);
 
 noStroke();
}

void draw(){
  
  background(255);
  
  int numCircles = 20;
  //size/2 for i and j to fix boarders
  int size = width/numCircles;
 for(int i = size/2; i<width; i+=width/numCircles){
   for(int j = size/2; j<height; j+=height/numCircles){
     int g = int(map(i,0,width, 0, 255));
     int r = int(map(j, 0, height, 0,255));
     
     //dist between mouse and all shapes
     //local bc it would change change the whole sketch if global
     float d = dist(mouseX, mouseY, i, j);
     
     //width changed can make affect change
    float s = map(d, 50, width/2, 20, 40);
    //change opacity based on mouse
    float o = map(d, 100, 155, 20, 150);
    fill(r, g, 200, o);
    ellipse(i, j, s, s); 
   }
   
 }
  
}
