float size = height/3;

void setup() {
  JSONObject data = loadJSONObject("https://api.openweathermap.org/data/2.5/weather?id=1816670&appid=9c7057869b04a7c0332a0fa52d52d2ad");
  int visib = data.getInt("visibility");
  println(visib);

  size(600, 600, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  sphere(size);
  float xr = (mouseX-width/2);
  float yr = (mouseX-height/2);
  rotateX(xr);
  rotateY(yr);
}

class Ball {

  void display() {
    beginShape(POINTS);
    stroke(255);
    strokeWeight(11);
    endShape();
  }
}
