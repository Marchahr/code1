PImage img;

void setup() {
  size(590, 428);
  img = loadImage("image2.jpg");
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
  
    //int w = mouseX;
    //int h = mouseY;
  
  //color c = img.get(w,h);
  
  //float b = brightness(c);
  
  //int f;
  //if (b<150){
  //  f = 0;
  //}else{
  //  f = 255;
  //}
  
  //fill(c);
  //rect(w,h,5,5);
  
  
  
  img.loadPixels();
  
  for(int i =0; i<img.width; i++){
    for(int j =0; i<img.height; j++){
      //will return every postion on the 2d grid
      //make 1d matrix into 2d matrix
    int pos = i + j*img.width;
    
    if(brightness(img.pixels[pos]) < 150){
      //have to convet to color bc that's how the data is stored
      img.pixels[pos] = color (0);
    }else{
      img.pixels[pos] = color(255);
      }
  
    }
  }
  
  img.updatePixels();
  image(img, 0, 0);
}
