class Cone {

  PImage img = loadImage("coneB.png");

  PVector position;

  //float easing;
  //float PMV;
  //float NMV;

  //contstructor
  Cone(PVector _position) {
    position = _position;
  }

  void update() {
    //position.x = mouseX;
    //position.y = mouseY;
  }
  void display() {


    image(img, map(mValue, 200, 600, 0, width), 480);



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
  
   if(NMV < 150){
  mValue += 100 * easing;
  }
     
     
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
