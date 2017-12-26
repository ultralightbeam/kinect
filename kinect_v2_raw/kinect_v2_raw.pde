import org.openkinect.processing.*;

Kinect2 kinect2;

void setup() {
  size(512, 424);
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
  
  //// kinect.initDevice();
}

void draw() {
  background(0);
  //PImage rgb = kinect2.getVideoImage();
  //PImage z = kinect2.getDepthImage();
  PImage ir = kinect2.getIrImage();
  
  //PImage z = kinect2.getRegisteredImage();
  //int[] depth = kinect.getRawDepth();
  
  
  //rgb.save("rgb.png");
  //z.save("z.png");
  

  image(ir, 0, 0);
  
}