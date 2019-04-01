Ball[] balls = new Ball[20];
float num =20;

void setup() {
  background(250);
  size(500, 500);
  for (int i=0; i<num; i++) {
    balls[i] = new Ball("sfdgfhgjk");
  }
}


void draw() {
  for (int i=0; i<num; i++) {
    balls[i].display();
  }
}

class Ball {

  color c = color(random(255), random(255), 250);
  float siz = random(50, 100);
  float posX;
  float posY;
  String text;

  Ball(String text) {
    posX = random(0, width);
    posY = random(0, height);
    this.text = text;
  }

  void display() {
    fill(c);
    text(text, posX, posY);
    ellipse(posX, posY, siz, siz);
  }
}
