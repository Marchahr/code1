class Shape{
  float x, y; 
  float size = random(40,70); 
  
  Shape(float _x, float _y){
    x = _x; 
    y = _y; 
    
  }
  
  void display(){
    //size = _size; 
    
    ellipse(x, y, size, size);  
    triangle(x, y-size/2, x+size/3, y+size/3, x-size/3, y+size/3); 
  }
}
