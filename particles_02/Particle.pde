// Particle class
// classes can be created in the New Tab button
// for more information on working with Processing classes
// visit: http://processing.org/learning/objects/

class Particle {
  
  // public particle variables
  PVector position;
  PVector velocity;
  
  float radius;
  
  color fillColor;
  
  // Class constructor
  // PVector is required at the moment
  // you create a new instance of the particle class
  Particle( PVector _position ) {
    // initialize our public variables
    position   = _position;
    velocity   = new PVector( random( -1, 1 ), random( -1, 1 ) );
    radius     = random( 5, 10 )
    fillColor  = color( random(127, 255), random(55), random(55, 127) );
  }
  
  // public run method
  void run() {
    // add velocity to our current position
    position.x += velocity.x;
    position.y += velocity.y;
    
    // render the particle
    noStroke();
    fill( fillColor );
    ellipse( position.x, position.y, radius, radius );
  }
  
}
