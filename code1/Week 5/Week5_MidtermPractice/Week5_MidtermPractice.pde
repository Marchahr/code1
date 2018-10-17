//create a button that generates the product of two random integers
//the multiplication sentence should be displayed somewhere on the screen 
//the sketch is started for you, but isn't quite right 


int x, y; 
int size; 
float dist; 
boolean buttonClicked; 

String stringResult = "";
int result; 
int num1, num2; 
//^changed to int

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
      textSize(32); 

}

void draw(){
    background(255); 
    
   
    
    if(buttonClicked){
      buttonClicked = false;
      //ALSO instead of int could have changed multiply function to floats
      //Also could move this to if statement 
    num1 = int(random(0,100)); 
    num2 = int(random(0,100)); 
  
    result = multiply(int(num1), int(num2)); 
    
    stringResult = num1 + " x " + num2 + " = " + result; 
    } 
    text(stringResult, 0, height*.8); 
    
   
    fill(25,25,25);
    ellipse(x, y, size, size);  
}
//could also turn this into a float
int multiply(int a, int b){
    int product; 
    product = a * b; 
    return product;
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = true; 
  }else{
    buttonClicked= false;
  }
}
