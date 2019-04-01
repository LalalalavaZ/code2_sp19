void setup() {
  size(600, 600);
  background(0, 0, 0);
}

void draw() {
  float x = width/2;
  for (int i=0; i<height; i+=20) {
    float y = sin(frameCount)*600;
    //if (mousePressed && ) {
    //  float x = sin(frameCount*600);
    //}
    ellipse(x, y, 50, 50);
  }
}
