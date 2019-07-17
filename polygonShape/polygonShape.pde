// Building block for polygon shape
// Modify pos, size, sides, colors, outline, fill, and pts

// Color scheme
color whiteAlpha100 = color(255, 100);
color whiteSolid = color(255);
color blackSolid = color(0);
color redSolid = color(255, 0, 0);
color greenSolid = color(0, 255, 0); 
color blueSolid = color(0, 0, 255);

// Object
Polygon polygon;

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
    size(200, 200);
    // Parameter(Polygon Radius, Num Of Sides, Outline Visibility, Outline Color, 
    // Outline Weight, Fill Visibility, Fill Color)
    polygon = new Polygon(80, 8, true, whiteSolid, 2, true, whiteAlpha100);    
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
      translate(0, 0);
      // Parameter(xPos, yPos, Pts Vis, Pts Weight, Pts Color); centered pos
      polygon.drawPolygon(100, 100, true, 10, blueSolid);
  popMatrix();   
}
