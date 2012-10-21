int diameter = 100;

float speed = 8;
float posX;
float posY;


void setup() {
  size( 800, 640 );
  
  // initilize position variable to the centre of the window
  posX = width / 2;
  posY = height / 2;
  
  background( 220, 0, 0 );
}

void draw() {
  // on every draw loop, we get a random number in the range
  // of negative "speed" to positive "speed"
  posX += random(-speed, speed);
  posY += random(-speed, speed);
  
  fill( 220, 0, 0, 12 );
  strokeWeight( 2 );
  stroke( 255 );
  ellipse( posX, posY, diameter, diameter );
}

