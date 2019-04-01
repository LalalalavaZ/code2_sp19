////position height color
//final int NUM_SHA =15;
//float[] pos = new float[NUM_SHA];
//color[] colors = new color[NUM_SHA];
//float[] heights = new float[NUM_SHA];


//void setup() {
//  size(600, 600);

//  for (int i=0; i<NUM_SHA; i++) {
//    pos[i] = map(i, 0, NUM_SHA, 0, width);
//    colors[i] = color(map(i, 0, NUM_SHA, 0, 255));
//    heights[i] = random(100,300);
//  }
//}

//void draw() {
//  for (int i=0; i<NUM_SHA; i++) {
//    rectMode(CENTER);
//    fill(colors[i]);
//    rect(pos[i], height/2, 30, heights[i]);
//  }
//}


//classver

final int COLS =15;
Bar[] bars = new Bar[COLS];

void setup() {
  size(500,500);
  for(int i=0; i<COLS; i++){
    bars[i] = new Bar(i);
  }
}

void draw() {
  for(int i=0; i<COLS; i++){
    bars[i].display();
  }
}


class Bar {

  float x;
  float h = random(100, 300);
  color c;
  
  Bar(int i) {
    fill(c);
    rect(x, height/2, 30, h);
    c = color(map(i, 0, COLS, 0, 255));
    x = map(i, 0, COLS, 20, width);
  }
  
  void display(){
    rectMode(CENTER);
    fill(c);
    rect(x, height/2, 20,h);
  }
}
