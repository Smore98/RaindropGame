class Raindrop {
  PVector loc, vel, acc;
  int diam;


 
  
  Raindrop(float tX, float tY){
    diam = 20;
    loc = new PVector(tX, tY);
    vel = new PVector(0,1);
    acc = new PVector(0,1.1);
  }
    
    void fall(){
      loc.add(vel);
      vel.add(acc);
    }
    void display() {
      fill(0,150,255);
      noStroke();
      ellipse(tX,tY,diam,diam);
    }
    void reset() {
      loc.x = random(0,width);
      loc.y = 0;
    }
    boolean isInContactWith(){
      if(loc.dist(mouse) <= diam/2){
      reset() = true;
      }else
      reset() = false;
      }
    }
}
      
        
   