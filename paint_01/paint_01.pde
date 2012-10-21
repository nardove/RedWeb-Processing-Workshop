// position and previous position veriables
float posX;
float posY;
float prevPosX;
float prevPosY;


void setup() {
  size( 640, 480 );
  background( 10 );
}

void draw() {
  // create target position variables
  float targetX = mouseX;
  float targetY = mouseY;
  
  // add the difference between current position
  // and our target position
  posX += targetX - posX;
  posY += targetY - posY;
  
  // store the distance between current and previous positions
  // in the "weight" variable
  float weight = dist(posX, posY, prevPosX, prevPosY);
  
  // use "weight" to change line stroke thickness
  strokeWeight( weight );
  
  if ( mousePressed ) {
    stroke(255, 180);
    line(posX, posY, prevPosX, prevPosY);
  }
  
  // update previous position variable
  // to our current position to use in the next draw loop
  prevPosX = posX;
  prevPosY = posY;
}
