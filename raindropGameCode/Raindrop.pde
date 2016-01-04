class Raindrop {
  PVector loc, vel, acc; //declared PVectors
  int diam; //declared intervals




  Raindrop(float tX, float tY) {
    diam = 20;
    loc = new PVector(tX, tY);
    vel = new PVector(0, .05);
    acc = new PVector(0, .1); //gave value to PVectors loc, vel, and acc
  }

  void fall() {
    loc.add(vel);
    vel.add(acc); //Allows the raindrops to fall
  }
  void display() {
    fill(0, 50, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam); //display the raindrops
  }
  void reset() {
    loc.x = random(0, width);
    loc.y = 0;
    vel.y = .05; //returns the drops to the top of the screen
  }
  boolean isGone() {
    if (loc.y >= height) {
      return true;
    } else {
      return false; //raindrops touching the bottom of the screen reset
    }
  }
  boolean isInContactWith(Catcher b) {
    if (loc.dist(b.loc) <= diam/2 + b.diam/2) {
      return true; //if the raindrops are within the circle, they will be regarded as true
    } else {
      return false; //if there is nothing in the circle, it is considered false
    }
  }
}