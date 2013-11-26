class Catcher {
  PVector loc;
  int d=100;
  Catcher() {
    loc = new PVector(mouseX, height - d/2);
    
  }
  
  void display() {
//       loc = new PVector(mouseX, height - d/2);
    fill(255);
    ellipse(loc.x, loc.y, d,d);
  }
}

