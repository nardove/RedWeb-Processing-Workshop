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
      // create a PVector position using mouse coordinates
      PVector mousePosition = new PVector( mouseX, mouseY );
      // create a new Particle object and pass the "mousePosition" variable
      particles.add( new Particle( mousePosition ) );
      // increment or particle count by 1
      particleCount++;
    }
  }
  
  // loop through the particles array
  for ( int i = 0; i < particles.size(); i++ ) {
    // create a new particle instance
    // and get() the element "i" from the array
    Particle particle = (Particle)particles.get( i );
    // we call the method run() from the particle object
    particle.run();
  }
  
  // shows number of particles created
  fill( 0 );
  text("Number of particles: " + particleCount, 10, 20 );
}
