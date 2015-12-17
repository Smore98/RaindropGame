class Catcher {
  PVector loc;
  int diam;
  
  Catcher(int tDiam){
    diam = tDiam;
    loc = new PVector(mouseX,mouseY);
  }
  void display(){
    fill(255,0,0);
    noStroke();
    loc.set(mouseX,mouseY);
    ellipse(loc.x,loc.y,diam,diam);
  }
}
      
        
   