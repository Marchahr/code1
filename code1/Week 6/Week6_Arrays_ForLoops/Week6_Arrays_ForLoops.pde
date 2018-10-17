//out of bounds means youre assiging more values than in array

int myIntegerArray [] = new int [100];

void setup(){
  for (int i = 0; i<100; i++){
  myIntegerArray[i] = i*2;
  println(myIntegerArray[i]);
  }
  
}
