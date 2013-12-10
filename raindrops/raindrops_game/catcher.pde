class Catcher {
  //declare variables for catcher class
  PVector loc;
  PImage umbrella;
  //scale for the umbrella
  float uScale = .3;
  //declare score variable 
  int score = 0;

  Catcher() {
    imageMode(CENTER);
    umbrella = loadImage("umbrella.png");
    //resize the umbrella for the appropriate size
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

