class Button {
  boolean button;
  PVector loc;
  int w;
  int h;
  int oldTime = 0;

  Game g1;

  Button() {

    button = false;
    loc = new PVector(width/2, height/2);
    w = 200;
    h = 130;
    g1 = new Game();
  }

  void display() {
    //    background(0);
    if (!button) {
//draw a start button
      rectMode(CENTER);
      noStroke();
      fill(251, 255, 36);
      rect(loc.x, loc.y, w, h, 20);
      textSize(50);
      textAlign(CENTER, CENTER);
      fill(162, 163, 167);
      text("START", width/2, height/2-9);
      //display score of previous game under start button
      fill(251, 255, 36);
      text(g1.c1.score, width/2, height-150);
    }
    if (button) {
      g1.play();
    }
  }
  void push() {
    if (mousePressed) {
      //start a game if the mouse is pressed inside the bounds of the button
      if(!button) {
      if (mouseX >= loc.x - w/2 && mouseX <= loc.x + w/2 && mouseY >= loc.y - h/2 && mouseY <= loc.y + h/2) {
        g1.oldTime = millis();
        button = true;
        g1.index = 0;
        g1.init();
        //score is 0 in beginning of each game 
        g1.c1.score = 0;
        g1.c1.uScale -= .0005;
      }
      }
    }
  }
}

