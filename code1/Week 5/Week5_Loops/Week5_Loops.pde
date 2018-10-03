void setup() {

  int index = 10;
  while (index>0) {
    println (index);
    index--;
  }

  //for(int i =0; i<105; i+=5){
  // println("for loop: i is " + i);
  //}

  for(int i =0; i<10; i++){
   println(i);
  }

  //nested
  //does i then runs though j then i again and then j again
  for (int i =0; i<105; i+=5) {
    for (int j = 0; j<105; j+=5) {
      println("for loop: i is " + i + " j is " + j);
    }
  }
}
//can use i for all bc its global
