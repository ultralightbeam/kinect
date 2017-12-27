import org.openkinect.processing.*;

Kinect2 kinect2;

void setup() {
  size(512, 424);
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
  
  //// kinect.initDevice();
}

int c = 0;

void draw() {
  background(0);
  //PImage rgb = kinect2.getVideoImage();
  PImage z = kinect2.getDepthImage();
  
  //PImage z = kinect2.getRegisteredImage();
  //int[] depth = kinect.getRawDepth();
  
  
  //rgb.save("rgb.png");
  
  z.save("z"+c+".png");
  
  delay(1000);
  c += 1;
  
  image(z, 0, 0);
  
}