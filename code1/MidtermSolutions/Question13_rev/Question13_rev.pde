String str = "I am a string!";
String anotherString = "I want to use the myFunc function to print this String!";
void setup() {
  String anotherStr = "I want to use the myFunc function to print this String!";
  myFunc(anotherStr);
}


//just had to pass function myStr into it or just do Str
void myFunc(String myStr) {
  println(myStr);
}
