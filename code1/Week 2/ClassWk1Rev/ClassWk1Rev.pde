float x1, y1, x2, y2, x3, y3; //first triangle


void setup() {
size (500,500);

x1=width*.5;
y1=height*.5;
x2 = 0;
y2 = height;
x3 = width;
y3 = height;


}


void draw() {

triangle(x1, y1, x2, y2, x3, y3);

}
