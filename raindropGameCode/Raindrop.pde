class Raindrop {
  PVector loc, vel, acc;
  int diam;




  Raindrop(float tX, float tY) {
    diam = 20;
    loc = new PVector(tX, tY);
    vel = new PVector(0, .05);
    acc = new PVector(0, .1);
  }

  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  void display() {
    fill(0, 50, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void reset() {
    loc.x = random(0, width);
    loc.y = 0;
    vel.y = .05;
  }
  boolean isGone() {
    if (loc.y >= height) {
      return true;
    } else {
      return false;
    }
  }
  boolean isInContactWith(Catcher b) {
    if (loc.dist(b.loc) <= diam/2 + b.diam/2) {
      return true;
    } else {
      return false;
    }
  }
}