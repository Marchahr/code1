String dayArray [] = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};

color dayColor [] = {color(25,24,25), color(124,125,125), color(255,255,255), color(0,0,0), color(200,200,200), color(112,112,112), color(85,85,85)};

int dayNums = 7;

int daysXPosition [] = new int [dayNums];
int daysYPosition [] = new int [dayNums];

int currentColorIndex = 0;

void setup(){
 size(500, 500);


for (int i = 0; i< dayNums; i++){
  daysXPosition [i] = int(random(width*i/dayNums+50, width*i/dayNums+50));
  daysYPosition [i] = int(random(height*i/dayNums+50, width*i/dayNums+50));
 } 
  
}

void draw(){
 background(255);

  for(int i = 0; i < dayNums; i++){
    fill(dayColor[currentColorIndex]);
    text(dayArray[i], daysXPosition[i], daysYPosition[i]);
    
  }
  
}

void mousePressed(){
  
 if(dist(mouseX, mouseY, daysXPosition[0], daysYPosition[0]) <= textWidth(dayArray[0])) {
   currentColorIndex = 0;
 }else if (dist(mouseX, mouseY, daysXPosition[1], daysYPosition[1]) <= textWidth(dayArray[1])) {
   currentColorIndex = 1;
   }else if (dist(mouseX, mouseY, daysXPosition[2], daysYPosition[2]) <= textWidth(dayArray[2])) {
   currentColorIndex = 2;
   }else if (dist(mouseX, mouseY, daysXPosition[3], daysYPosition[3]) <= textWidth(dayArray[3])) {
   currentColorIndex = 3;
   }else if (dist(mouseX, mouseY, daysXPosition[4], daysYPosition[4]) <= textWidth(dayArray[4])) {
   currentColorIndex = 4;
   }else if (dist(mouseX, mouseY, daysXPosition[5], daysYPosition[5]) <= textWidth(dayArray[5])) {
   currentColorIndex = 5;
   }else if (dist(mouseX, mouseY, daysXPosition[6], daysYPosition[6]) <= textWidth(dayArray[6])) {
   currentColorIndex = 6;
   }
  
  
}
