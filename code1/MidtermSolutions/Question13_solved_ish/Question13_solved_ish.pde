String str = "I am a string!";
String anotherString = "I want to use the myFunc function to print this String!";
void setup() {
  String anotherStr = "I want to use the myFunc function to print this String!";
  myFunc(anotherStr);
  myFuncTwo(2,3);
}

void myFunc(String myStr) {
  println(myStr);
  //println(myStr);
  //println(anotherString);
}
void myFuncTwo(int num1, int num2){
  
 println(num1+num2);
 
}
