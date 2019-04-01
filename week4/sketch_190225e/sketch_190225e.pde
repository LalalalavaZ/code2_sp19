Table data;

void setup() {
  background(150,50,200);
  size(600,600);
  data = loadTable("data2.csv", "header");
  
  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    int x = row.getInt("x");
    int y = row.getInt("y");
    int size = row.getInt("size");
    int c = row.getInt("c");
    fill(c);
    ellipse(x, y, size, size);
  }
}

void draw() {  
}

void mousePressed() {
  int s = int(random(50, 200));
  int c = color(random(250), random(250), 150);
  fill(c);
  ellipse(mouseX, mouseY, s, s);
  TableRow newRow = data.addRow();
  newRow.setInt("x", mouseX);
  newRow.setInt("y", mouseY);
  newRow.setInt("size", s);
  newRow.setInt("color", c);
  saveTable(data, "data/data2.csv");
}
