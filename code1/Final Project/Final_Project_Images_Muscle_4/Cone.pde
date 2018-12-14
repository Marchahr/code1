class Cone {

  PImage img = loadImage("coneB.png");

  PVector pos =new PVector(0, 0);

  float x = 0;
  float y = 0;


  //float easing;
  //float PMV;
  //float NMV;

  //contstructor
  Cone(PVector _position) {
    //position = _position;
  }

  void update() {
    pos.x = mValue;
    pos.y = height-115;
  }
  void display() {


    image(img, map(mValue, 200, 600, 0, width), pos.y);



    //if (mValue>0 && mValue <50) {
    //  mValue = 150;
    //}
    //if (mValue>50 && mValue <150) {
    //  mValue = 200;
    //}

    //if (mValue>150 && mValue<200) {
    //  mValue = 300;
    //}
    //if (mValue>200 && mValue<250) {
    //  mValue = 400;
    //}
    //if (mValue>250 && mValue<300) {
    //  mValue = 500;
    //}




//EASING
  float easing = 0.05;
  float PMV = 0.0;
  float NMV = mValue - PMV;
  
  
  //mValue += mValue * easing;
     
  //if(NMV < 150){
  //mValue += 100;
  //}
  
   if(NMV < 100){
  mValue += 100 * easing;
  }
  
    //   if (cone.pos.x>0 && cone.pos.x <199) {
    //  cone.pos.x = 100* easing;
    //}
    //if (cone.pos.x>100 && cone.pos.x <299) {
    //  cone.pos.x = 200* easing;
    //}
    //if (cone.pos.x>200 && cone.pos.x <399) {
    //  cone.pos.x = 300* easing;
    //}
    //if (cone.pos.x>300 && cone.pos.x <499) {
    //  cone.pos.x = 400* easing;
    //}
    //if (cone.pos.x>400 && cone.pos.x <599) {
    //  cone.pos.x = 500* easing;
    //}
  
  
  
     if (cone.pos.x>0 && cone.pos.x <299) {
      cone.pos.x = 100;
      delay(25);
    }
    //if (cone.pos.x>100 && cone.pos.x <299) {
    //  cone.pos.x = 200;
    //  delay(25);
    //}
    if (cone.pos.x>200 && cone.pos.x <399) {
      cone.pos.x = 200;
      delay(25);
    }
    if (cone.pos.x>300 && cone.pos.x <499) {
      cone.pos.x = 300;
      delay(25);
    }
    if (cone.pos.x>400 && cone.pos.x <599) {
      cone.pos.x = 400;
      delay(25);
    }
      
       
       
    //   if (cone.pos.x>0 && cone.pos.x <199) {
    //  cone.pos.x = 100* easing;
    //  delay(50);
    //}
    //if (cone.pos.x>100 && cone.pos.x <299) {
    //  cone.pos.x = 200* easing;
    //  delay(50);
    //}
    //if (cone.pos.x>200 && cone.pos.x <399) {
    //  cone.pos.x = 300* easing;
    //  delay(50);
    //}
    //if (cone.pos.x>300 && cone.pos.x <499) {
    //  cone.pos.x = 400* easing;
    //  delay(50);
    //}
    //if (cone.pos.x>400 && cone.pos.x <599) {
    //  cone.pos.x = 500* easing;
    //  delay(50);
    //}
  
     
     
     
     
     
     
    //if(mValue>100 && mValue <300){
    //   mValue = 100;
    //    }
    // if(mValue>300 && mValue<450){
    //   mValue = 300;
    //    }
    // if(mValue>450 && mValue<600){
    //   mValue = 500;
    //    }
   
    //popMatrix();
  }
}
