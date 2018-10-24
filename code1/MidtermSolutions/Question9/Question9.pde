void setup() {
  size(600, 600);
}


//void draw() {
//  background(204);
//  int s = second();  // Values from 0 - 59
//  int m = minute();  // Values from 0 - 59
//  int h = hour();    // Values from 0 - 23
//  line(s, 0, s, 33);
//  line(m, 33, m, 66);
//  line(h, 66, h, 100);
//}
void draw() {
  background(20);
  
    int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  
  fill(255);
  
  float hourPos = map(hour(), 0, 60, 0, width);
  rect(hourPos,400, width/60, 600);
  
  float minutePos = map(minute(), 0, 60, 0, width);
  rect(minutePos, 400, width/60, 600);
  
  float secondPos = map(second(), 0, 60, 0, width);
  rect(secondPos, 400, width/60, 600);
}
