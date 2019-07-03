// Class for arrow shape creation
class Arrow {  
  
  // Class Variables
  int w, h;
  boolean outlineVis, fillVis;
  color outlineColor, fillColor;
  int outlineWeight;
     
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Class Constructor
  // Used to construct arrow object
  Arrow(int widthDim, int heightDim, boolean lineVis, color lineColor, int lineWeight, boolean filledVis, color filledColor){     
      this.w = widthDim;
      this.h = heightDim;
      this.outlineVis = lineVis;
      this.fillVis = filledVis;
      this.outlineColor = lineColor;
      this.fillColor = filledColor;
      this.outlineWeight = lineWeight;
  }
 
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Class Methods
  
  // *******************************************************
  // Draw series of arrows
  void drawArrowSeries(int x, int y, float angle, int series, int spacing){   
      pushMatrix();
      rotate(angle);
      for(int i=1; i < series + 1; i++){
          pushMatrix();
              translate(x, y);       // Define pos for each iteration
              drawArrow(0, 0);       // Draw single arrow
              x += w/2 + spacing;    // Increment x-pos
          popMatrix();
      }
      popMatrix(); 
  }
  
  // *******************************************************
  // Draw single arrow shape at defined x- and y-pos
  void drawArrow(int x, int y){
      pushMatrix();
          // Controls option for fill visibility
          if(fillVis){
              fill(fillColor);
          }
          else{
              noFill();
          }
          
          // Controls option for outline visibility
          if(outlineVis){
              stroke(outlineColor);
              strokeWeight(outlineWeight);
          }
          else{
              noStroke();
          }
          translate(x, y);     // Defines actual pos of arrow shape
          quad(0, 0, w/2, 0, w, h/2, w/2, h/2);
          quad(w/2, h/2, w, h/2, w/2, h, 0, h);
      popMatrix();
  }
}
