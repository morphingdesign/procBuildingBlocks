// 

// Color scheme
color whiteAlpha100 = color(255, 100);
color whiteSolid = color(255);
color blackSolid = color(0);

// Object
Grid rectGrid;

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
   size(1000, 1000);
   // Parameters(xPos, yPos, Width, Height, Line Color, Grid Spacing)
   rectGrid = new Grid(50, 150, 900, 200, whiteAlpha100, 10);
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
      translate(0, 0);
      // Grid
      // No parameters
      rectGrid.drawGrid();
      // Frame
      // Parameters(Line Color)
      rectGrid.drawFrame(whiteSolid);
      // Corners
      // Parameters(Line Color, Stroke Weight, Line Length)
      rectGrid.drawAllCorners(whiteSolid, 4, 30);
  popMatrix();   
}
