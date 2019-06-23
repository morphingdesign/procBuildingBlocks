// 

// Color scheme
color whiteAlpha100 = color(255, 100);
color whiteAlpha15 = color(255, 15);
color whiteSolid = color(255);
color blackSolid = color(0);

// Object
Frame tabFrame;

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
   size(1000, 1000);
   // Parameters(xPos, yPos, Width, Height, Cut Size, Line Color, Fill Option, Fill Color)
   tabFrame = new Frame(50, 100, 100, 200, 10, whiteAlpha100, true, whiteAlpha15);
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
      translate(0, 0);
      // Tabbed frame object
      // No parameters
      tabFrame.drawFrame();
  popMatrix();   
}
