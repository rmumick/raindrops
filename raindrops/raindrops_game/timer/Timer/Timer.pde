color c;
color b;
float currentTime = 0;

void setup() {
  textSize(80);
  textAlign(CENTER, CENTER);
  frameRate(300);
  size(500,500);
  noStroke();
  
}

void draw() {
  background(c);
  fill(b);
  ellipse(width/2, height/2, 200,200);
  fill(255);
  text(millis(), width/2, height/2);
//  if(frameCount%500==0) {
//    b=color(random(255), random(255), random(255));
//  }
//  if (frameCount%500==0) {
//    c=color(random(255), random(255), random(255));
//  }
if(millis()-currentTime >=500) {
  c=color(random(255), random(255), random(255));
  b=color(random(255), random(255), random(255));
  currentTime = millis();
}
println(millis());
}

