  <classpathentry kind="src" path="src"/>
   <classpathentry kind="lib" path="lib/jbox2d-library-2.2.1-ds.jar"/>
   <classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER"/>
   <classpathentry combineaccessrules="false" kind="src" path="/processing-core"/>
   <classpathentry kind="output" path="bin"/>
 </classpath>

Cone cone; 
PVector playPos[] = new PVector[2];

ArrayList <Scoops> iceCream;

import processing.serial.*;

//MUSCLE CODE BEGIN

// definition of window size
// you can change the size of the window as you like
// the thresholdGraph will be scaled to fit
// the optimal size for the thresholdGraph is 1000 x 400
//nt xWidth = 1200;
//int yHeight = 750;

// xPos input array, using prefix
int[] xPosArr= {0,0,0,0,0,0}; 

// 
int[] messageArr= {0,0,0,0,0,0}; 
  
// Arrays for threshholding
int[] threshMax= {0,0,0,0,0,0}; 
int[] threshMin= {0,0,0,0,0,0}; 
  
// variables for serial connection. portname and baudrate are user specific
Serial port1;

//Set your serial port here (look at list printed when you run the application once)
String V3 = Serial.list()[2];
String portname1 = V3;
int baudrate = 9600;
  
int prefix = 10001;
boolean myCatch = false;
String serialIN = "";
String serialINPUT = ""; 
String buffer = ""; 
int value = 0; 

// ThresholdGraph draws grid and poti states
ThresholdGraph in;


//END MUSCLE CODE



void setup() {
  size (600, 600);
  
  //SETUP MUSCLE CODE BEGIN
    frameRate(25);
  background(255);
  strokeWeight(5);
  stroke(0);
  smooth();
  strokeCap(ROUND);

  // establish serial port connection      
  port1 = new Serial(this, Serial.list()[2], 9600);
  port1.bufferUntil('\n') ;
  println(Serial.list());  // print serial list

  // create DisplayItems object
  in = new ThresholdGraph();
  
  // THRESHOLD VALUES:
  // using the thresholdGraph you can determine the MIN and MAX values
  // of your sensors. Enter these here. They must lie between 0 and 1000.
  
    //MIN trashhold
    threshMin[0] = 20;   // one
    threshMin[1] = 20;   // two
    threshMin[2] = 20;   // three
    threshMin[3] = 20;   // four
    threshMin[4] = 20;   // five
    threshMin[5] = 20;   // six
    
    //MAX trashhold
    threshMax[0] = 600;   // one
    threshMax[1] = 600;   // two
    threshMax[2] = 600;   // three
    threshMax[3] = 600;   // four
    threshMax[4] = 600;   // five
    threshMax[5] = 600;   // six
    //END SETUP MUSCLE CODE
  
  
  
  
  playPos[0] = new PVector(mouseX, mouseY);
  cone = new Cone(playPos[0]);

iceCream = new ArrayList<Scoops>();

}
void draw() {

 // background(255);

 color c1 = color(#CEFBFF);
 color c2 = color(#FFFEF0);
 gradientBackground(c1, c2);
    
  
  for(int i = 0; i < iceCream.size(); i+=1){
   Scoops s = iceCream.get(i);
   s.fall();
   s.gravity();
   s.display();
    if(s.position.y < 0){
   iceCream.remove(i);
    }
   
      if(s.position.x>0 && s.position.x <199){
   s.position.x = 100;
    }
    if(s.position.x>100 && s.position.x <299){
   s.position.x = 200;
    }
    if(s.position.x>200 && s.position.x <399){
   s.position.x = 300;
    }
    if(s.position.x>300 && s.position.x <499){
   s.position.x = 400;
    }
    if(s.position.x>400 && s.position.x <599){
   s.position.x = 500;
    }
    
    
  }
  
  
   if(iceCream.size() <=100){
 
 if(frameCount % 50 == 0){
  iceCream.add(new Scoops());

 } 
 } 
 
  cone.update();
  cone.display();
  
  
}

void gradientBackground(color c1, color c2) {
  for (int i=0; i<=width; i++) {
    for (int j = 0; j<=height; j++) {
      color c = color(
      (red(c1)+(j)*((red(c2)-red(c1))/height)), 
      (green(c1)+(j)*((green(c2)-green(c1))/height)), 
      (blue(c1)+(j)*((blue(c2)-blue(c1))/height))
        );
      set(i, j, c);
    }
  }
    println(mValue); 
 
 //x = map(x,0, 9600, 0, width);
}//end draw()


//getting number values for muscle sensor 
int mValue; 
void serialEvent(Serial port){
  String inString = port.readStringUntil('\n'); 
  if(inString != null){
    inString = trim(inString); 
    mValue = int(inString); 
  }

}
  //END MUSCLE CODE
