// create variables for grid parameters
int cols, rows;

float cellWidth, cellHeight;
float ratio;


void setup() {
  size( 640, 480 );
  
  // stop draw() from looping on every frame
  // so draw will execut only once
  noLoop();
  
  // store app window dimensions on float variables
  float w = width;
  float h = height;
  
  // calculate window aspect ratio
  ratio = w / h;
  
  // given the number of columns
  cols = 30;
  // calculate how many rows we can fit on our window
  rows = int(cols / ratio);
  
  // calculate grid cell dimensions
  cellWidth = w / cols;
  cellHeight = h / rows;
}


void draw() {
  background( 0 );
  
  // loop through number of columns
  for ( int c = 0; c < cols; c++ ) {
    
    // then we loop through the number of rows
    for ( int r = 0; r < rows; r++ ) {
      
      // calculate cell x/y positions
      float posX = c * cellWidth;
      float posY = r * cellHeight;
      
      // draw a rectangle cell
      noStroke();
      fill( random( 255 ) );
      rect( posX, posY, cellWidth, cellHeight );
    }
  }
}
