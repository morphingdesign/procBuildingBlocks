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
   // 
   rectGrid = new Grid(50, 150, 900, 200, whiteAlpha100, whiteSolid, 10);
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
  translate(0, 0);
  rectGrid.drawGrid();
  rectGrid.drawFrame();
  popMatrix();   
}
