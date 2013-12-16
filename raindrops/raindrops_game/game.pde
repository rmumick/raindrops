class Game {
  //declare variables
  float currentTime = 0;
  int index = 0;
  int oldTime = 0;
  //initiate array
  Rain[] drops = new Rain[500];
  //initate one catcher
  Catcher c1;


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
  

  if (millis()%8 == 0) {
    if (index < drops.length) {
      index += 1;
    }
  }
  if (millis() - oldTime > 15000) {
    fill(255);
    rect(b1.loc.x, b1.loc.y, b1.w, b1.h);
    textSize(50);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("OVER", width/2, height/2);
  }
}
}
