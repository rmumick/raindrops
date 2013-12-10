class Catcher {
  //declare variables for catcher class
  PVector loc;
  int d=80;
  PImage umbrella;
  float uScale = .3;
  int score = 0;

  Catcher() {
    imageMode(CENTER);
    umbrella = loadImage("umbrella.png");
    umbrella.resize(int(umbrella.width * uScale), int(umbrella.height * uScale));
//    loc = new PVector(mouseX, height-(umbrella.height-50));
  }
//show an umbrella that moves with the mouse in the x direction and stays put in the y direction
  void display() {
    loc = new PVector(mouseX, height - 100);
    fill(255);;
    image(umbrella, loc.x, loc.y);
  }
  
}

