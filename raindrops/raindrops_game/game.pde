class Game {
  //declare variables
  float currentTime = 0;
  int index = 0;
  int oldTime = 0;
  //initiate array
  Rain[] drops = new Rain[500];
  //initate one catcher
  Catcher c1;
  boolean game = true;
  


  Game() {
    //make the clouds the background
    //initiate the array for 500 drops 
    for (int i=0; i < drops.length; i++) {
      drops[i] = new Rain();
    }
    c1 = new Catcher();
//    b1 = new Button();
  }


  void play() {
    if(game = true) {
    //make the picture of clouds the background
    background(clouds);
    //call the display function for the catcher 
    c1.display();
//    b1.display();
//    b1.push();
    //score is kept at top right of screen
    textSize(72);
    fill(251, 255, 36);
    text("Score " + c1.score, width-300, 90);
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
  
//game over after a certain amount of time
  if (millis()%8 == 0) {
    if (index < drops.length) {
      index += 1;
    }
  }
  if (millis() - oldTime > 20000) {
    //make game go away
    b1.button = false;
    //restart time so a new game can play
    oldTime = millis();

  

    
  }

  }
}
