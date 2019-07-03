// Building block for arrow shape
// Modify pos, size, series, colors, outline, and fill

// Color scheme
color whiteAlpha100 = color(255, 100);
color whiteSolid = color(255);
color blackSolid = color(0);
color redSolid = color(255, 0, 0);
color greenSolid = color(0, 255, 0); 
color blueSolid = color(0, 0, 255);

// Object
Arrow arrowOne;

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
    size(1000, 1000);
    // Parameter(Width, Height, Outline Visibility, Outline Color, 
    // Outline Weight, Fill Visibility, Fill Color)
    arrowOne = new Arrow(40, 80, true, whiteSolid, 1, true, whiteAlpha100);    
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
      translate(0, 0);
      
      // Pt to confirm location of origin in shape
      strokeWeight(5);
      stroke(redSolid);
      point(width/2, height/2);
      
      // Parameter(xPos, yPos); pos is top left corner
      arrowOne.drawArrow(width/2, height/2);
      
      // Parameter(xPos, yPos, Rotation Angle, Num of Arrows in Series, 
      // Spacing Between Arrows)
      arrowOne.drawArrowSeries(width/2, height/2 + 100, 0, 4, 20);
  popMatrix();   
}
