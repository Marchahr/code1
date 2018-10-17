//[] denote array

int myIntegerArray[] = {1,2,3,4,5};

String myStringArray[] = {"whateve", "we", "want"};

// empty array with 4 slots to put into it - 
//so we can start pushing things into it
int newArray[] = new int [4]; //{ , , , , }

void setup(){
 println(myIntegerArray [4]);
  
  println(myStringArray [1]);
  
  for(int i = 0; i<3; i++){
   println(myStringArray[i]); 
      text(myStringArray[i],10, myIntegerArray[i]*10); 
  }
  
  newArray[0] = 3;
  newArray[3] = 5;

  //default value is 0
  for (int i = 0; i<4; i++){
    println(newArray[i]);
  }
}
