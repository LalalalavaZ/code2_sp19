Mover[] mover = new Mover[500]; 

void setup() {
  size(1000, 800);
  for (int i = 0; i < 500; i++) {
    mover[i] = new Mover();
  }
}

void draw() {
  background(255);
  PVector gravity = new PVector(0, 0.1);

  for (int i = 0; i < 500; i++) {
    //mover[i].applyForce(gravity);

    //PVector wind = new PVector(-0.1, 0);
    //mover.applyForce(wind);

    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(mover[i].pos);
    mouse.normalize();
    mouse.mult(0.1);
    mover[i].applyForce(mouse);
    //line(mouseX, mouseY, mover.pos.x, mover.pos.y);

    mover[i].update();
    mover[i].display();
  }
}

class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  
  Mover() {
    pos = new PVector(random(width), random(height));
    vel = new PVector(0,0);
    acc = new PVector(0, 0);
    mass = random(1, 5);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass); 
    acc.add(f);
  }
  
  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    
    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  }
  
  void display() {
    fill(100);
    ellipse(pos.x, pos.y, 10 * mass, 10 * mass);
  }
}
