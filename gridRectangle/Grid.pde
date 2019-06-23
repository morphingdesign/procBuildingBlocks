// Class for rectangular grid graphics construction
class Grid {  
  
  // Class Variables
  int xGridPos;
  int yGridPos;
  int wGridSize;
  int hGridSize;
  int gridColor;
  int frameColor;
  int gridSpace;  
   
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Class Constructor
  // Used to construct rectangular grid graphics
  Grid(int x, int y, int w, int h, int gridLineColor, int gridFrameColor, int gridSpacing){
      this.xGridPos = x;
      this.yGridPos = y;
      this.wGridSize = w;
      this.hGridSize = h;
      this.gridColor = gridLineColor;
      this.frameColor = gridFrameColor;
      this.gridSpace = gridSpacing; 
  }
 
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Class Methods
 
  // *******************************************************
  // Rectangular Grid
  void drawGrid(){
      pushMatrix();
      strokeWeight(1);
      stroke(gridColor);
      translate(xGridPos, yGridPos);           // X-value used to vary start position
      for(int i=0; i < hGridSize; i+=gridSpace){
         line(0, i, wGridSize, i);       // Horizontal Lines
      }                              // Line spacing varies by passed through parameter
      for(int i=0; i < wGridSize; i+=gridSpace){
         line(i, 0, i, hGridSize);       // Vertical Lines
      }
      popMatrix();
  }
  
  // *******************************************************
  // Rectangle frame
  void drawFrame(){
    pushMatrix();
    translate(xGridPos, yGridPos);
    noFill();
    stroke(frameColor);
    rect(0, 0, wGridSize, hGridSize);
    popMatrix();  
  }
  
}
