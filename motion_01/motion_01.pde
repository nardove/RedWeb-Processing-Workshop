int radius = 50;

// create position and velocity variables for x/y coordinates
float posX, posY;
float velX, velY;


void setup() {
  size( 800, 640 );

  // initialize position variables at the center of the window
  posX = width / 2;
  posY = height / 2;
  
  // calulate initial random velocity
  velX = random( -2, 2 );
  velY = random( -2, 2 );
  
  // tell Processing to draw an ellipse
  // using the dimension varialbes as radius size instead of diameter
  ellipseMode( RADIUS );
}

void draw() {
  background( 220, 0, 0 );

  // if the user click a mouse button 
  // reset position and velocity variables
  if ( mousePressed ) {
    posX = width / 2;
    posY = height / 2;

    velX = random( -2, 2 );
    velY = random( -2, 2 );
  }

  // increment position varialbe with velocity to achieve animation
  posX += velX;
  posY += velY;
  
  checkBounds();
  
  noFill();
  strokeWeight( 3 );
  stroke( 255 );
  ellipse( posX, posY, radius, radius );
}


// method to check if our position goes outside our window
// if so invert velocity value respectively 
void checkBounds() {
  if ( posX < radius ) {
    velX *= -1;
  }
  else if ( posX > width - radius ) {
    velX *= -1;
  }
  
  if ( posY < radius ) {
    velY *= -1;
  }
  else if ( posY > height - radius ) {
    velY *= -1;
  }
}
