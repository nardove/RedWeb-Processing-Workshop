float diameter = 100;


float posX, posY;

// create noise variables
float noiseX, noiseY;
float noiseRadius;

void setup() {
  size( 800, 640 );
  
  posX = width / 2;
  posY = height / 2;
  
  // initialize noise values at different steps in time
  // for more information check noise in the Processing reference
  noiseX = 0;
  noiseY = 10000;
  noiseRadius = 1000;
  
  background( 220, 0, 0 );
}

void draw() {
  
  // noise() return values from 0.0 to 1.0
  // all we need to do is scale the returned value
  // by the desired amount
  posX = lerp( 0, width, noise( noiseX ) );
  posY = lerp( 0, height, noise( noiseY ) );
  
  // create a local radius variable
  float radius = lerp( 3, diameter, noise( noiseRadius ) );
  
  stroke( 220, 0, 0, 24 );
  fill( 255, 12 );
  ellipse( posX, posY, radius, radius );
  
  // increment noise variables
  // the smaller the number the smoother the change
  noiseX += 0.005;
  noiseY += 0.005;
  noiseRadius += 0.01;
}

