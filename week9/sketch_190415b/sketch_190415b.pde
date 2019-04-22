void setup() {
  size(600, 600, P3D);
  rect(0, 0, 300, 300);
}

void draw() {
  background(255);
  ambientLight(0, 150, 190);
  pointLight(255, 255, 190, mouseX, mouseY, 100);
  translate(width/2, height/2, -mouseX);
  rectMode(CENTER);
  rotateY(radians(frameCount/2));
  rotateZ(radians(frameCount/3));
  fill(255);
  box(300);
}
