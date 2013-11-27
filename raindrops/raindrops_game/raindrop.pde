class Rain {
  PVector loc, vel, acc;
  PImage drop;
  float sc = .05;

  Rain() {
    loc = new PVector (random(width), random(-height, 0));
    vel = new PVector (0, 8);
    acc = new PVector (0, .001);
    drop = loadImage("raindrop.gif");
    drop.resize(int(drop.width * sc), int(drop.height * sc));
  }

  void display() {
    image(drop, loc.x, loc.y);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
    if ( loc.y >= height) {
      loc.y = random(-height, 0);
      loc.x = random(width);
    }
  }
  void check(Catcher c) {
    if (loc.x <= c.loc.x+c.d || loc.x >= c.loc.x - c.d) {
      loc.y = random(-height, 0);
      loc.x = random(width);
    }
    
  }
}

