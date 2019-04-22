// position, color, active
final int COL =30; //"final" sets the value to constant that can't be changed
final int ROW =30;
final int CELLSIZE = width;

PVector[][] pos = new PVector[COL][ROW];
color[][] col = new color[COL][ROW];
boolean[][] isActive = new boolean[COL][ROW];

void setup() {
  size(600, 600);
  final int CELLSIZE = width/COL;
  for (int i=0; i<COL; i++) {
    for (int j =0; j<ROW; j++) {
      pos[i][j] = new PVector(i*CELLSIZE, j*CELLSIZE);
      col[i][j] = color(random(255), random(255), random(255));
      println(pos[i][j]);
      noStroke();
      isActive[i][j] = false;
    }
  }
  background(250, 250, 250);
}

void draw() {
  for (int i =0; i<COL; i++) {
    for (int j = 0; j<ROW; j++) {
      if (mouseX > pos[i][j].x && mouseX < pos[i][j].x+CELLSIZE &&
        mouseY >pos[i][j].y && mouseY<pos[i][j].y+CELLSIZE) {
        isActive[i][j] =true;
        }
        if (isActive[i][j]) {
          fill(col[i][j]);
          rect(pos[i][j].x, pos[i][j].y, CELLSIZE, CELLSIZE);
      }
    }
  }
}
