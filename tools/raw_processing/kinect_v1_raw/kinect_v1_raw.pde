import org.openkinect.processing.*;

Kinect kinect;

void setup() {
  //size(512, 424);
  size(640, 480);
  kinect = new Kinect(this);
  kinect.activateDevice(0);
  //kinect.initVideo();
  kinect.initDepth();
  kinect.enableIR(true);
}

void draw() {
  background(0);
  PImage rgb = kinect.getVideoImage();
  PImage z = kinect.getDepthImage();
  //PImage z = kinect.getRegisteredImage();
  int[] depth = kinect.getRawDepth();
  
  
  rgb.save("rgb.png");
  z.save("z.png");
  
 
  image(rgb, 0, 0);

}