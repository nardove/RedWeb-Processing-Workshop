// Create a function to draw a shape at random positions
// Create a function to return a random number

void setup() {
  size( 800, 600 );
  
  background( 220, 0, 0 );
  
  // sets rect drawing mode to start from the centre of the specified position
  rectMode( CENTER );
  
  strokeWeight( 2 );
}

void draw() {
  // check if user has pressed "left" mouse button
  if ( mousePressed && (mouseButton == LEFT) ) {
    // if so draw a circle
    renderCircle();
  }
  // otherwise check if user pressed the "right" mouse button
  else if ( mousePressed && (mouseButton == RIGHT) ) {
    // if so draw a square
    renderSquare();
  }
}


// this method draw a square at random positions on the X axis
// with different dimensions
void renderSquare() {
  float radius = random( 10, 50 );
  noFill();
  stroke( 225 );
  rect( mouseX + randomOffset( 10 ), mouseY + randomOffset( 70 ), radius, radius );
}

// draw an ellipse at random positions on the Y axis
void renderCircle() {
  float radius = random( 10, 50 );
  noFill();
  stroke( 225 );
  ellipse( mouseX + randomOffset( 70 ), mouseY + randomOffset( 10 ), radius, radius );
}

// this method returns a random number from negative input value
// to positiove input value
float randomOffset( float offsetAmount ) {
  return random( -offsetAmount, offsetAmount );
}
