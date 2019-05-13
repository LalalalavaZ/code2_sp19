class Hair{
  float radio;
  float hairLong = random(1.5, 1.7);
  float theta = asin(z/radio);
  
  void display(){
    
    float xa;
    float ya;
    float za;
    
    float xb;
    float yb;
    float zb;
    
    beginShape(LINES);
    stroke(0);
    vertex(xa, ya, za);
    stroke(200, 150);
    vertex(xb, yb, zb);
    endShape();
  }
}
