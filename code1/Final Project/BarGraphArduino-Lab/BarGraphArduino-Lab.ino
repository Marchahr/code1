// reads analog input from the five inputs from your arduino board 
// and sends it out via serial

// variables for input pins and
int analogInput[6] = {A0, A1, A2, A3, A4, A5};
  
// variable to store the value 
int value[6] = {0, 0, 0, 0, 0, 0};  
 
void setup()
{
  // declaration of pin modes
  for(int i=0;i<6;i++)
    pinMode(analogInput[i], INPUT);    

  
  // begin sending over serial port
  Serial.begin(9600);
}

void loop()
{
  // read the value on analog input
//  for(int i=0;i<6;i++)
//  {
//    value[i] = analogRead(analogInput[i]);
//  }


  for(int i=0;i<200;i++)
  {
    value[1] += analogRead(1);
  }

value[1]=value[1]/200;

Serial.println(abs(value[1]));

  // print out value over the serial port
//  for(int i=0;i<6;i++)
//  {
////    Serial.println(10000 + i + 1); //prefix
//    Serial.println(value[i]);
////    Serial.println(10010); //end signal
//  }
  // wait for a bit to not overload the port
  //delay(10);
}
