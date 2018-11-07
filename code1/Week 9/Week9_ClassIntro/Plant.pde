class Plant{
//data
float plantHeight;
int numLeaves;
color plantColor;
int xPos;

//Contructor
//name of class and then () with parametors/place holder we'll be changing
Plant(int _xPos, int _plantHeight){
  xPos = _xPos;
  plantHeight = _plantHeight;
}

//put place holders _XYZ

void grow(){
plantHeight+= .01;
}
void display(float _plantHeight, int _numLeaves, color _plantColor){


fill(_plantColor);
numLeaves = _numLeaves;

for(int i = 0; i<_numLeaves; i++){
ellipse(xPos, plantHeight + 30*i, 50 + i*5,20);
}
  
rect(xPos, plantHeight, 10, 500);
  
  
}



}
