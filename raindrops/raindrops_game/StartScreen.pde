class Button {
  boolean button;
  PVector loc;
  int w;
  int h;
  Game g1;

  Button() {

    button = false;
    loc = new PVector(width/2, height/2);
    w = 200;
    h = 130;
    g1 = new Game();
  }

  void display() {
    background(0);
    if (!button) {

      rectMode(CENTER);
      fill(255);
      rect(loc.x,loc.y, w, h);
      textSize(50);
      textAlign(CENTER);
      fill(255, 0, 0);
      text("START", width/2, height/2);
    }
    if (button) {
      g1.play();
    }
//    if (millis() == 5000) {
//      fill(255);
//      rect(loc.x, loc.y, w, h);
//      textSize(50);
//      textAlign(CENTER);
//      fill(255, 0, 0);
//      text("OVER", width/2, height/2);
//    }
  }
  void push() {
    if (mousePressed) {
      if (mouseX >= loc.x - w/2 && mouseX <= loc.x + w/2 && mouseY >= loc.y - h/2 && mouseY <= loc.y + h/2) {
        button = true;
      }
    }
  }
}

