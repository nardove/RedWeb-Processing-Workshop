// position and previous position veriables
float posX;
float posY;
float prevPosX;
float prevPosY;

// create "easing" variable that will smooth the line segments
float easing;


void setup() {
  size(640, 480);
  background( 220, 0, 0 );
  
  easing = 0.1;
}


void draw() {
  float targetX = mouseX;
  float targetY = mouseY;
  
  // add the difference between current position
  // and our target position
  // we scale the value with the "easing" variable
  posX += (targetX - posX) * easing;
  posY += (targetY - posY) * easing;
  
  // store the distance between current and previous positions
  // in the "weight" variable
  float weight = dist(posX, posY, prevPosX, prevPosY);
  
  // use "weight" to change line stroke thickness
  strokeWeight(weight);
  
  if ( mousePressed ) {
    stroke( 237, 237, 224 );
    line( posX, posY, prevPosX, prevPosY );
  }
  
  // update previous position variable
  // to our current position to use in the next draw loop
  prevPosX = posX;
  prevPosY = posY;
  
}

// on SPACEBAR keypressed we clear the window
void keyPressed() {
  if ( key == ' ' ) {
    background( 220, 0, 0 );
  }
}
