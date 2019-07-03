// Class for polygon shape creation
class Polygon {  
  
  // Class Variables
  PShape s;                // The PShape object
  PVector[] pts;
  
  color outlineColor;       // Used in constructor and method
   
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Class Constructor
  // Used to construct polygon object
  Polygon(int radius, int numOfSides, boolean outlineVis, color lineColor, int outlineWeight, boolean fillVis, color fillColor){
      this.outlineColor = lineColor;  
      
      pts = new PVector[numOfSides];
      float angle = 0;  
      //println("angle[first]: " + angle);
      for(int i=1; i < pts.length + 1; i++){
         float x = radius * cos(angle);
         float y = radius * sin(angle);
         pts[i - 1] = new PVector(x, y);
         angle = (TWO_PI / numOfSides) * i;
         //println("pt[" + i + "]: (" + pts[i - 1].x + ", " + pts[i - 1].y + ")");
         //println("pt[" + i + "]: (" + angle + ")");
      }
      s = createShape();
      s.beginShape();
      
      // Controls option for fill visibility
      if(fillVis){
          s.fill(fillColor);
      }
      else{
          s.noFill();
      }
      
      // Controls option for outline visibility
      if(outlineVis){
          s.stroke(outlineColor);
          s.strokeWeight(outlineWeight);
      }
      else{
          s.noStroke();
      }
      
      for(int i=0; i < numOfSides; i++){
         s.vertex(pts[i].x, pts[i].y);
      }
      s.endShape(CLOSE);
  }
 
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Class Methods
  
  // *******************************************************
  // Draw polygon shape at defined x- and y-pos w/option for either outline or pts
  void drawPolygon(int x, int y, boolean points, int ptsWeight, color ptsColor){
      pushMatrix();
          translate(x, y);     // Defines actual pos of polygon
          shape(s, 0, 0);      // 0, 0 denotes center point position
          
          // Controls option for points visibility 
          if(points){
              stroke(ptsColor);
              strokeWeight(ptsWeight);
              for(int i=0; i < pts.length; i++){
                   point(pts[i].x, pts[i].y);
              } 
          }
      popMatrix();
  }
}
