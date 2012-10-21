int radius = 50;

// create a target variable
float targetX, targetY;
float posX, posY;
float velX, velY;

// create an easing variable the smaller the amount
// the slower the velocity
float easing = 0.02;


void setup() {
  size( 800, 640 );

  targetX = width / 2;
  targetY = height / 2;
  
  posX = targetX;
  posY = targetY;
  
  ellipseMode( RADIUS );
}

void draw() {
  background( 220, 0, 0 );
  
  // update target variable to mouse position on every mousepress
  if ( mousePressed ) {
    targetX = mouseX;
    targetY = mouseY;
  }
  
  // calculate distance from current position
  // to our new target position
  float dx = targetX - posX;
  float dy = targetY - posY;
  
  // get a fraction of the distance we need to travel
  velX = dx * easing;
  velY = dy * easing;
  
  // add new velocity to our current position
  posX += velX;
  posY += velY;
  
  fill( redColor );
  strokeWeight( 3 );
  stroke( 255 );
  ellipse( posX, posY, radius, radius );
}


