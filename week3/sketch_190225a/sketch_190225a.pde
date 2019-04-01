int gridW = 10;
int gridH = 10;
float[][] xPositions = new float[gridW][gridH];
float[][] yPositions = new float[gridW][gridH];

void setup() {
  size(500, 500);
  background(50);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      xPositions[i][j] = map(i, 0, gridW, 30, width);
      yPositions[i][j] = map(j, 0, gridH, 30, height);
    }
  }
}

void  draw() {
for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      noStroke();
      float s = 30;
      ellipseMode(CENTER);
      fill(random(200), 250, random(200));
      ellipse(xPositions[i][j], yPositions[i][j], s, s);
      fill(50);
      ellipse(xPositions[i][j], yPositions[i][j], s-15, s-15);
    }
  }
}
