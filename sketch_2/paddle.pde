//paddle

class Paddle {
  float x, y, w, h;
  float xVel = 5;

  Paddle (float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    fill(0);
    rect(x, y, w, h);
  }

  void update() {
    if (rightPressed == true) {
      x+=xVel;
    }
    if (leftPressed == true) {
      x-=xVel;
    }
  }
}
