String[] sayings = new String[3];


void setup() {
  size (300, 300);
  sayings[0] = "1 + 1 = 9";
  sayings[1] = "7 + 5 = 9";
  sayings[2] = "16 + 3 = 9";
}

void draw() {

  for (int i=50; i<width; i+=100) {
    ellipseMode(CENTER);
    ellipse(i, height/2, 50, 50);
    float d = dist(i, height/2, mouseX, mouseY);
    
  }
}
