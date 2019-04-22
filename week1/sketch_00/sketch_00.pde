String[] sayings = new String[3];
float[] pos = new float[3];


void setup() {
  size (500, 500);
  sayings[0] = "1 + 1 = 9";
  sayings[1] = "7 + 5 = 9";
  sayings[2] = "16 + 3 = 9";
  for (int i = 0; i < pos.length; i++) {
    pos[i] += 50;
  }
}

void draw() {
  float yPos = height/2;
  String saying = "";

  for (int i = 0; i < pos.length; i++) {
    //pos[i] += 50;
    ellipseMode(CENTER);
    ellipse(pos[i], yPos, 50, 50);
    
    if (dist(mouseX, mouseY, pos[i], yPos) < 50) {
      saying = sayings[0];
      fill(0);
    } else {
      fill(255);
    }
  }
  text(saying, width/2, 400);
}
