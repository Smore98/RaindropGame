int score;
PVector mouse;   //declare a P
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>(); //declare a new Raindrop called r
Catcher bucket;


// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();  //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(random(0, width), 0));
  bucket = new Catcher(150);
  score = 0;
}
void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  bucket.display();
  if (score <= 300 && score >= -200) {
    raindrops.add(new Raindrop(random(0, width), 0));
  }
  if (score >= 300) {
    text("YOU WIN!", width/2, height/2);
  }
  if (score <= -200){
  text("YOU LOSE!", width/2, height/2);
  }
  for (int i = raindrops.size()-1; i >= 0; i--) {
    Raindrop r = raindrops.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(bucket)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      raindrops.remove(i);       //if it is, reset the raindrop and add a point
      score = score + 1;
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      raindrops.remove(i);
      score = score - 1; //if it does, reset the raindrop and remove a point
    }
    //if (score >= 1000){
    //  i = 0;
    //}
  }
  fill(255, 0, 0);
  text(score, 50, 100);
}