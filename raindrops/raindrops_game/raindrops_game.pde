Rain[] drops = new Rain[200];

void setup(){
  size(500,500);
  for(int i=0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
}

void draw() {
  background(0);
  for(int i=0; i < drops.length; i++) {
    drops[i].display();
    drops[i].move();
  }
}
