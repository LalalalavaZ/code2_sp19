float offset = 0;

void  setup() {
  size(600, 600);
}

void draw() {
  background(255);
  beginShape();
  noiseDetail(8);
  for (int i = 0; i <= width; i+=20) {
    vertex(i, map(noise(offset + i), 0, 1, 0, height));
  }
  offset+=0.01;
  endShape();
}
