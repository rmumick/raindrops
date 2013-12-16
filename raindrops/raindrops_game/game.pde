class Game {
  //declare variables
  int index = 1;
  float currentTime = 0;
  PImage clouds;
  //initiate array
  Rain[] drops = new Rain[500];
  //initate one catcher
  Catcher c1;
  Button b1;

  Game() {
    //make the clouds the background
    clouds = loadImage("stormCloud.jpg");
    size(clouds.width, clouds.height);
    //initiate the array for 500 drops 
    for (int i=0; i < drops.length; i++) {
      drops[i] = new Rain();
    }
    c1 = new Catcher();
    b1 = new Button();
  }


  void play() {
    //make the picture of clouds the background
    background(clouds);
    //call the display function for the catcher 
    c1.display();
    b1.display();
    b1.push();
    //score is kept at top right of screen
    textSize(72);
    fill(251, 255, 36);
    text("Score " + c1.score, width-400, 90);
    //raindrops come in at intervals
    if (millis() - currentTime >= 5000) {
      index++;
      currentTime = millis();
    }
    //calls all functions for the raindrops in the drops array 
    for (int i=0; i < index; i++) {
      drops[i].display();
      drops[i].move();
      drops[i].check(c1);
    }
  }
}

