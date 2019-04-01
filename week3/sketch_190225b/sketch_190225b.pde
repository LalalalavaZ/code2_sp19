Donut[] donuts = new Donut[10];

void setup(){
  size(500, 500);
  background(50);
}

void draw(){
  donuts[10].display();
}

class Donut{
  PVector pos;
  float s;
  float c;
  
  Donut(int i, int j){
    s = 30;
    c = color(random(200), 250, random(200));
    pos = new PVector(i*s, j*s);
  }
  
  void display(){
    fill(c);
    ellipse(pos.x, pos.y, s, s);
  }
}
