/*

  kinect_raw.pde
  processing sketch that dumps time-synced kinect v1,v2 data
  
  requirements:
    - kinect v1,v2 hardware USB connected to machine
    - openkinect.processing
  
*/


import org.openkinect.processing.*;

Kinect kinect1;
Kinect2 kinect2;


void setup() {
  size(1280, 1000);
  // load kinect1
  kinect1 = new Kinect(this);
  kinect1.activateDevice(0);
  kinect1.initDepth();
  kinect1.enableIR(true);
  // load kinect2
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
}


void draw() {
  background(0);
  
  PImage z_kinect1 = kinect1.getDepthImage();
  PImage z_kinect2 = kinect2.getDepthImage();
  PImage ir_kinect1 = kinect1.getVideoImage();

  image(z_kinect1, 0, 0);
  image(ir_kinect1, 0, 500);
  scale(-1, 1);
  image(z_kinect2, -1280, 0);
  
}