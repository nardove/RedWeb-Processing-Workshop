// Create circles on mousepress
// modify appereance attributes

void setup() {
  // create app window
  // 2 parameters ( width, height )
  size( 800, 600 );
  
  // sets window background color
  background( 220, 0, 0 );
}


void draw() {
  // if statement to check if the user has press a mouse button
  if ( mousePressed ) {
    // creates a local variable "radius"
    // and assigns a random value from 10 to 200
    float radius = random( 10, 200 );
    
    // tells the next drawing elemnt to have no fill color
    noFill();
    
    // set stroke attributes
    strokeWeight( random(1, 10) );
    stroke( 245 );
    
    // draw an ellipse at mouse x/y position with "radius" dimensions
    ellipse( mouseX, mouseY, radius, radius );
  }
}

