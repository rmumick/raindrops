//initialize button class 
Button b1;
PImage clouds;
int index = 0;
int oldTime = 0;

void setup() {
  //  size(500,500);
  clouds = loadImage("stormCloud.jpg");
  size(clouds.width, clouds.height);
  b1 = new Button();
}
  void draw() {
  background(clouds);
  b1.display();
  b1.push();
  }


