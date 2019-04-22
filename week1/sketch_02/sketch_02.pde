void setup() {
  size(600, 600);
}

void draw() {
  float x = width/2;
  background(0, 0, 0);
  ellipseMode(CENTER);
  float y = sin(TWO_PI *frameCount/360)*height;
  float d = dist(x, y, mouseX, mouseY);
  if (mousePressed == true && d < 80) {
    x = sin(TWO_PI *frameCount/360)*height;
    y = height/2;
  }
  ellipse(x, y, 80, 80);
}

//void mousePressed(){
//}
