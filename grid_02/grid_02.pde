int cols, rows;

float cellWidth, cellHeight;
float ratio;


void setup() {
  size( 640, 480 );
  
  noLoop();
  
  float w = width;
  float h = height;
  
  ratio = w / h;
  
  cols = 30;
  rows = int(cols / ratio);
  
  cellWidth = w / cols;
  cellHeight = h / rows;
  
  // change stroke appereance
  strokeCap( PROJECT );
  strokeWeight( 8 );
}


void draw() {
  // get a random window background color
  background( random( 255 ), 130, 210 );
  
  // loop through every cell
  for ( int c = 0; c < cols; c++ ) {
    for ( int r = 0; r < rows; r++ ) {
      float posX = c * cellWidth;
      float posY = r * cellHeight;
      
      // create a on/off variable "toggle"
      // in this case we will get a random number 0 or 1
      int toggle = (int)random( 0, 2 );
      
      stroke( 255 );
      if ( toggle == 0 ) {
        line( posX, posY, posX + cellWidth, posY + cellHeight );
      }
      else {
        line( posX, posY + cellHeight, posX + cellWidth, posY );
      }
    }
  }
}
