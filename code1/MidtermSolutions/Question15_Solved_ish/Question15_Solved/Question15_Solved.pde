void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  translate(mouseX, mouseY);
  //rotate(radians(45));
  noStroke();
  rect(mouseX/75, mouseY/75, 100, 100);
}
