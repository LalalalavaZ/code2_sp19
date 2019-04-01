class Ball {
  PVector velocity;
  PVector position;

  Ball() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(3, 3);
  }

  void display() {
    fill(0);
    rect(position.x, position.y, 10, 10);
  }

  void update() {
    position.add(velocity);
    if ((position.x>width) || (position.x < 0)) {
      velocity.x = velocity.x*-1;
    }
    if ((position.y>height) || (position.y < 0)) {
      velocity.y = velocity.y*-1;
    }
  }
}
