Rain[] drops = new Rain[200];
Catcher c1;

void setup(){
  size(500,500);
  for(int i=0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c1 = new Catcher();
}

void draw() {
  background(0);
  for(int i=0; i < drops.length; i++) {
    drops[i].display();
    drops[i].move();
    drops[i].check();
  }
  c1.display();
}
