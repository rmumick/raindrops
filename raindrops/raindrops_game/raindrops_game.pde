//declare variables
int index = 1;
float currentTime = 0;
PImage clouds;
//initiate array
Rain[] drops = new Rain[500];
//initate one catcher
Catcher c1;

void setup() {
  //make the clouds the background
  clouds = loadImage("stormCloud.jpg");
  size(clouds.width, clouds.height);
  //initiate the array for 500 drops 
  for (int i=0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c1 = new Catcher();
}

void draw() {
  background(clouds);
  c1.display();
  textSize(72);
  fill(251,255,36);
  //score is kept at top right of screen
  text("Score " + c1.score, width-400, 90);
  //raindrops come in at intervals
  if (millis() - currentTime >= 5000) {
    index++;
    currentTime = millis();
  }
  //calls all functions for the raindrops 
  for (int i=0; i < index; i++) {
    drops[i].display();
    drops[i].move();
    drops[i].check(c1);
  }
}

