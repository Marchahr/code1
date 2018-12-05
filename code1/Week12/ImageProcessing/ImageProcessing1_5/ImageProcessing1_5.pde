PImage img;

void setup() {
  size(675, 450);
  img = loadImage("image.jpg");
  background(255);
  noStroke();
  frameRate(300);
}

void draw() {

  //img.resize(100, 100);


  //name of image and then postion to draw it at
  //image(img, 0, 0);
  //int w = int(random(0,width));
  //int h = int(random(0,height));
  
    int w = mouseX;
    int h = mouseY;
  
  color c = img.get(w,h);
  
  float b = brightness(c);
  
  //int f;
  //if (b<150){
  //  f = 0;
  //}else{
  //  f = 255;
  //}
  
  fill(c);
  rect(w,h,5,5);
  
  
}
