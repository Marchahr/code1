void setup() {
  size (600, 600);
  noLoop();
  noStroke();
}

void draw() {
    background(255);
    
    //single loop changing size based on position in loop
  for (int i = height-50; i > 0; i-= 20)
  {
    stroke(255); 
    fill(0);
    ellipse(width/2, height/2, i, i);
  }
 
  //how many circles per row/collum
  int circNumber = 10;
  //
  int size = width/circNumber;

  //nexted horizontal loop
  for (int i=size/2; i<width; i+=width/circNumber) {
    
    //vertical loop
    for (int j=size/2; j<height; j+=height/circNumber) {

     //calculates/sets distance between shapes and mouse
     float d = dist(mouseX, mouseY, i, j);

     //settting/calculating the distance of the mouse and the shapes its affecting
     float s = map(d, 100, height/2, 30, 50);
      fill (25,25,25);
      ellipse(i, j, s, s);
    }
  }
}


// Pressing the mouse activates looping
void mousePressed() {
  if (mouseX >= width/2){
   loop(); 
 } 
  }

// Releasing the mouse stops looping 
void mouseReleased() {
  noLoop();  
}
