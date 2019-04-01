//elements: ball (x, y, velx, vely, collision, update, keypressed), 
//paddle (x, y. update, display), 
//bricks (array, x, y, w, h, active)

//paddle 

Paddle myPaddle;
Ball myBall;

int cellWidth = 40;
int cellHeight = 10;
int col = 20;
int row = 15;
PVector[][] Bricks = new PVector[col][row];

void setup() {
  size(500, 500);
  myPaddle = new Paddle(width/2, height/2 + 100, 40, 10);
  myBall = new Ball();
  for (int i=0; i<col; i++) {
    for (int j=0; i<row; j++) {

    }
  }
}

void draw() {
  background(255);
  myPaddle.display();
  myPaddle.update();
  myBall.display();
  myBall.update();
}

boolean rightPressed = false;
boolean leftPressed = false;

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      rightPressed = true;
    }
    if (keyCode == LEFT) {
      leftPressed = true;
    }
  }
}

void keyReleased() {
  rightPressed= false;
  leftPressed= false;
}
