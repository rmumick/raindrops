class Rain {
  //declare variables necessary for the rain class
  PVector loc, vel, acc;
  PImage drop;
  //scale for resizing the raindrop
  float sc = .05;


  
  Rain() {
    //declare velocities, positions, and accelerations for the raindrops 
    loc = new PVector (random(width), random(-height, 0));
    vel = new PVector (0, 8);
    acc = new PVector (0, .001);
    drop = loadImage("raindrop.gif");
    //resize the raindrop to be the appropriate size
    drop.resize(int(drop.width * sc), int(drop.height * sc));
  }
//show the raindrop
  void display() {
    image(drop, loc.x, loc.y);
  }
//raindrop moves down with a velocity and acceleration
  void move() {
    vel.add(acc);
    loc.add(vel);
    //raindrop goes back to top if reaches bottem of the screen
    if ( loc.y >= height) {
      loc.y = random(-height, 0);
      loc.x = random(width);
    }
  }
  //make the raindrops start over and make the scroe increase when the umbrella touches it 
  void check(Catcher c) {
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < ((130) ) && loc.y>=height-200 && loc.y <= height-130) {
      loc.y = random(-height, 0);
      loc.x = random(width);
      //increase the score when the umbrella catches the raindrop
      c.score+=1;
    }
  }
}

