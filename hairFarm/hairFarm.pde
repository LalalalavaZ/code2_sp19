//state1 
//"95% of the worldwide population are encountering serious hair loss" 
//"press enter to get more hair"
//state2
//face detecttion draw Rectangle over face
//"G to grow some hair" 
//random draw fur with noise in 3d rect plane
//"M to grow more" "S to save image"
//ref https://idea9201lab2016.wordpress.com/2016/08/24/lab-12-computer-vision-in-processing/

import processing.video.*;
import processing.video.*;
import gab.opencv.*;
import java.awt.Rectangle;
OpenCV opencv;
Capture cam;

PImage small;    //smaller image for faster real-time

void setup() {
  size(640, 480, P3D);
  opencv = new OpenCV(this, width, height);
  //small = createImage(opencv.width, opencv.height, RGB);
  cam = new Capture(this, width, height);
  cam.start();
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
}

void captureEvent(Capture cam) {
  cam.read();
}

void draw() {
  background(0);
  image(cam, 0, 0);
  //small.updatePixels();
  opencv.loadImage(cam);

  noFill();
  stroke(255);
  strokeWeight(1);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for(int i = 0; i<faces.length; i++){
    println(faces[i].x + " " + faces[i].y);
    //ellipseMode(CORNER);
    //ellipse((faces[i].x) * 7/6, faces[i].y, faces[i].width/6*5, faces[i].height);
    float r = faces[i].width/2;
    sphereDetail(8);
    translate(faces[i].x + r, faces[i].y + r);
    sphere(r);
  }
}
