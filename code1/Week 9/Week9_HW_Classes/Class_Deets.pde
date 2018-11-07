//name
class Lollipop {

  //data
  int stickHeight;
  color flavor;
  int candySize;
  int xPos;
  int yPos;
  boolean isShrinking;

  //PVector velocity; 




  //constuctor
  Lollipop(int _xPos, int _yPos, int _candySize, boolean _isShrinking) {
    xPos = _xPos;
    yPos = _yPos;
    candySize = _candySize;
    isShrinking= _isShrinking;
    // velocity = new PVector(int(random(1, 10)), 0);
  }

  boolean getIsShrinking() {
    return isShrinking;
  }

  void reverseGrowth() {
    isShrinking = !isShrinking;
  }

  int getSize() {
    return candySize;
  }

  void shrink() {
    candySize-=1;
  }

  void grow() {
    candySize+=1;
  }

  void display( int stickHeight, int yPos, int xPos, color flavor) {
  fill(125, 125, 125);
    rect(xPos+10, yPos, 10, stickHeight);
    
    fill(flavor);

    // for(int i = 0; i <_candySize; i++){
    //ellipse(xPos, stickHeight, 20*i, 30*i);
    //}
    
    ellipse(xPos+10, yPos, candySize, candySize);
    
    //println(xPos,yPos, 30, stickHeight);
    //println(" ~~~ circle");
    //println(xPos, yPos, candySize, candySize);
  }
}
