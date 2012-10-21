int MAX_PARTICLES;
int particleCount;

// create an array to store our particles
ArrayList particles;


void setup() {
  size( 640, 480 );
  
  // maximun number of particles that we allow to be created
  MAX_PARTICLES = 1000;
  
  // initialize our particle count to 0
  particleCount = 0;
  
  // initialize our particle array
  particles = new ArrayList();

}


void draw() {
  background( 255, 250, 206 );
  
  // if user press the mouse button
  if ( mousePressed ) {
    // AND particle count is less tham maximum number of particles
    if ( particleCount < MAX_PARTICLES ) {
      // we add a new particle position to our array
      particles.add( new PVector( mouseX, mouseY ) );
      // increment by 1 our particle count
      particleCount++;
    }
  }
  
  // loop through our particles array and
  // draw our particle positions
  for ( int i = 0; i < particles.size(); i++ ) {
    // we need to extract the element from the array,
    // because we store a PVector in the array we need to create a PVector variable
    // and get() the element "i" from the particles array
    // note the (PVector) before the particles array varialbe
    // that is necesary to make sure we are getting a PVector element
    // from the array
    PVector particle = (PVector)particles.get( i );
    
    // draw a particle in the PVector position
    noStroke();
    fill( 202, 14, 14 );
    ellipse( particle.x, particle.y, 10, 10 );
  }
  
  // shows number of particles created
  fill( 0 );
  text( "Number of particles: " + particleCount, 10, 20 );
}
